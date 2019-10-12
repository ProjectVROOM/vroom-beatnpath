using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;
public class RotationCSV : MonoBehaviour
{
    private String data ;
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("write_rotations", 0f, 0.25f);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void write_rotations(){
    
    if (Time.time > 120f){
        if (!File.Exists(Directory.GetCurrentDirectory() + @"\assets\Resources\rotations_half_second.txt"));
        {
            // Create a file to write to.
            using (StreamWriter sw = File.CreateText(Directory.GetCurrentDirectory() + @"\assets\Resources\rotations_half_second.txt"))
            {
               sw.Write(data);
            }
        }
    }

    data += transform.position.y+"\n";



    }
}
