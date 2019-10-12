using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class timer_pause : MonoBehaviour
{
    public float time;
    public string time_s;
    public Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        
    }
    private bool isOn = true;
    // Update is called once per frame
    void Update()
    {
        time_s = time/1000 +"";
        if (isOn)
            time += Time.deltaTime;
        if (Input.GetKey(KeyCode.Space)){
            anim.speed = 0;
            isOn = false;
        }
        if (Input.GetKey(KeyCode.W)){
            anim.speed = 1f;
            isOn = true;
        }

        
    }
}
