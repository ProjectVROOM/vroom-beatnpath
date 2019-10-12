using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;



public class Score_System : MonoBehaviour{
  public GameObject note;
  public Material activated;
  public List<Vector3>vectorData_middle;
  public List<Vector3> vectorData_left;
  public List<Vector3>vectorData_right;
  void Start(){
    
    vectorData_middle = new List<Vector3>();
    readVector();
    spawnNotes();

  }

  void Update(){

  }


  public void readVector(){
  //Reads Vector positions

    BinaryFormatter bf = new BinaryFormatter();
    FileStream file = File.Open(Directory.GetCurrentDirectory()+@"\assets\resources\note_possible_locations_rainbow_road_v2.save", FileMode.Open);
    Vector3Data vec = (Vector3Data)bf.Deserialize(file);
    List<string> data = vec.data;
    for(int x = 0; x<data.Count; x+=3){
      string[] splitter = data[x].Split(',');
      vectorData_middle.Add(new Vector3(float.Parse(splitter[0]),float.Parse( splitter[1]),float.Parse( splitter[2])));
      //Debug.Log(splitter[0]);
      splitter = data[x+1].Split(',');
      vectorData_left.Add(new Vector3(float.Parse(splitter[0]),float.Parse( splitter[1]),float.Parse( splitter[2])));
      splitter = data[x+2].Split(',');
      vectorData_right.Add(new Vector3(float.Parse(splitter[0]),float.Parse( splitter[1]),float.Parse( splitter[2])));
    }
    vectorData_middle.RemoveAt(vectorData_middle.Count-1);
    vectorData_left.RemoveAt(vectorData_left.Count-1);
    vectorData_right.RemoveAt(vectorData_right.Count-1); 
  }

  public void spawnNotes(){
    GameObject currentObj;
    MeshRenderer meshRenderer = null;
    for(int x = 0; x< vectorData_middle.Count; x++){
      int rand = (int)Random.Range(0,3);
      Vector3 standard = vectorData_middle[x];
      Vector3 left_side = vectorData_left[x];
      Vector3 right_side = vectorData_right[x];
      bool [] activationState = new bool[3];
      activationState[rand] = true;
      currentObj = Instantiate(note, standard,Quaternion.identity);
      meshRenderer = currentObj.GetComponent<MeshRenderer>();
      if (activationState[0]){
        meshRenderer.material = activated;
        currentObj.name = "activated";
      }
      currentObj = Instantiate(note, left_side,Quaternion.identity);
      meshRenderer = currentObj.GetComponent<MeshRenderer>();

      if (activationState[1]){
        meshRenderer.material = activated;
        currentObj.name = "activated";
      }
      currentObj = Instantiate(note, right_side,Quaternion.identity);
      meshRenderer = currentObj.GetComponent<MeshRenderer>();

      if (activationState[2]){
        meshRenderer.material = activated;
        currentObj.name = "activated";
      }
    }


  }


}
