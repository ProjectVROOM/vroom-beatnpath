using UnityEngine;

public class Main : MonoBehaviour
{
    float max = 130f;//float.MinValue;
    float min = -5f;
    //Min: -3.449933 Max: 125.2584
    // Update is called once per frame
    float normalized_y_increase;
    public float offset_start;
    void FixedUpdate()
    {   
        normalized_y_increase = map(transform.position.y-offset_start);
       QuPlaySimtools.QuSimtools_SendTelemetry(0,transform.position.y-offset_start,0,0,0,0,0,0,0);
    }

    void highLow(){
        min =  transform.position.y < min ?  transform.position.y : min;   
        max =  transform.position.y > max ?  transform.position.y : max;    

            // QuPlaySimtools.QuSimtools_SendTelemetry(Random.RandomRange(-30000, 30000), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180), Random.RandomRange(-180, 180));
        if (Time.time >= 120f){
            Debug.Log("Min: "+min+"Max: "+max);
        }
    }


    float map(float value){
        // float aValue;
        float normal = Mathf.InverseLerp(min-offset_start, max-offset_start, value);
        float bValue = Mathf.Lerp(-30000, 30000, normal);
        return bValue;
    }
}
