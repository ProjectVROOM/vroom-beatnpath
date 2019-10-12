//C#
using UnityEngine;
using System.Collections;
using System.IO.Ports;
using System;
using System.Linq;
using UnityEngine.Audio;


// R:1:400:0
public class ArduinoControllerInterface : MonoBehaviour
{
    SerialPort sp;
    string[] stringDelimiters = new string[] { ":", "R", }; //Items we want to ignore in strings.
    public int Com_Port = 2;
    private float current_throttle_value;
    private int current_button_blue = 0; 
    private int current_button_red = 0;
    public AudioMixer low_pass;
    private AudioSource audio;
    void Start()
    {
        audio = GetComponent<AudioSource>();
        
        sp = new SerialPort("COM" + Com_Port, 9600, Parity.None, 8, StopBits.One); //Replace "COM4" with whatever port your Arduino is on.
        sp.DtrEnable = false; //Prevent the Arduino from rebooting once we connect to it. 
                              //A 10 uF cap across RST and GND will prevent this. Remove cap when programming.
        sp.ReadTimeout = 1; //Shortest possible read time out.
        sp.WriteTimeout = 1; //Shortest possible write time out.
        sp.Open();
        
      //  InvokeRepeating("Buttons",0.5f,0.1f);
    }

    void Update()
    {
        string cmd = CheckForRecievedData();
        if (cmd.StartsWith("R")) //Got a rotation command
        {
            //Debug.Log("GOT IT");
            Vector3 accl = ParseAccelerometerData(cmd);
            //Smoothly rotate to the new rotation position.
            current_button_blue = (int) accl.x;
            current_throttle_value = accl.y;
            current_button_red = (int) accl.z;
            Debug.Log(current_throttle_value);
            // bikeMovement.vertInput = input;
        }

        if (Input.GetKeyDown(KeyCode.Escape) && sp.IsOpen)
            sp.Close();

        Reverb();
    }

    Vector3 lastAccData = Vector3.zero;
    Vector3 ParseAccelerometerData(string data) //Read the rotation command string and return a proper Vector3
    {
        try
        {
            string[] splitResult = data.Split(stringDelimiters, StringSplitOptions.RemoveEmptyEntries);
            int x = int.Parse(splitResult[0]);
            int y = int.Parse(splitResult[1]);
            int z = int.Parse(splitResult[2]);
            lastAccData = new Vector3(x, y, z);
            return lastAccData;
        }
        catch { Debug.Log("Malformed Serial Transmisison"); return lastAccData; }
    }

    string CheckForRecievedData()
    {
        try //Sometimes malformed serial commands come through. We can ignore these with a try/catch.
        {
            string inData = sp.ReadLine();
            int inSize = inData.Count();
            if (inSize > 0)
            {
               // Debug.Log("ARDUINO->|| " + inData + " ||MSG SIZE:" + inSize.ToString());
            }
            //Got the data. Flush the in-buffer to speed reads up.
            inSize = 0;
            sp.BaseStream.Flush();
            sp.DiscardInBuffer();
            return inData;
        }
        catch { return string.Empty; }
    }


    float Remap ( float value, float from1, float to1, float from2, float to2) {
    return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
    }

    float volumeUp()
    {
        return 0;    
    }


    IEnumerator Reverb()
    {
        float remap = Math.Abs(Remap(current_throttle_value, -360, 360,7000, 19500 ));
        Debug.Log(remap+ " Remapped");
        low_pass.SetFloat("Filter",20000-remap);
        return null;
    }
    IEnumerator Buttons(){
        if(current_button_blue == 1){
           
            //audio.volume -= 2f;
        }
        if(current_button_red == 1){
            audio.volume += 2f;
        }
        return null;
    }
}