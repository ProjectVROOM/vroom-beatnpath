using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UILerp : MonoBehaviour
{
    public Transform uiTarget;
    public Transform uiPivot;
    public float rotationSpeed = 1000f;
    public float driftTime = 0.0001f;

    private Vector3 velocity = Vector3.zero;
    
    void Update()
    {
        transform.rotation = Quaternion.RotateTowards(transform.rotation, uiPivot.transform.rotation, Time.deltaTime * rotationSpeed);
        // transform.position = Vector3.Lerp(transform.position, uiTarget.transform.position, Time.deltaTime * driftTime);
        transform.position = Vector3.SmoothDamp(transform.position, uiTarget.transform.position, ref velocity, Time.deltaTime * driftTime);

    }
}
