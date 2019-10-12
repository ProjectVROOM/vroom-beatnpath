using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;

public class Notes_Play : MonoBehaviour
{
    
    GameObject[] bike;
    public PlayerUIManager uIManager;

    private void OnTriggerEnter(Collider other) 
    {
        
        Debug.Log("Hit");   
        if (other.name == "activated")
        {
            uIManager.IncreaseScore();
        }
        else
        {
            uIManager.DecreaseScore();
        }
       
    }
}
