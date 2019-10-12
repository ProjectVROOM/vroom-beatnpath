using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BikeTrackAlign : MonoBehaviour
{
    public Transform animTransform;
    public Transform leftCast;
    public Transform rightCast;
    public Transform lookTransform;

    public LayerMask trackLayer;

    private Vector3 pivotOffset;
    [SerializeField]
    private Vector3 rightRoadPos = Vector3.one;
    [SerializeField]
    private Vector3 leftRoadPos = Vector3.one;

    private void Start() 
    {
        pivotOffset = transform.position - animTransform.position;
    }

    void Update () {
        transform.position = animTransform.position + pivotOffset;
	}

    private void FixedUpdate() 
    {
        RaycastHit leftHit;
        if (Physics.Raycast(leftCast.position, -leftCast.up, out leftHit, 50f, trackLayer)) {
            Debug.DrawRay(leftCast.position, leftCast.TransformDirection(Vector3.down) * leftHit.distance, Color.blue);
            leftRoadPos = leftHit.point;
        }

        RaycastHit rightHit;
        if (Physics.Raycast(rightCast.position, -rightCast.up, out rightHit, 50f, trackLayer)) {
            Debug.DrawRay(rightCast.position, rightCast.TransformDirection(Vector3.down) * rightHit.distance, Color.blue);
            rightRoadPos = rightHit.point;
        }

        Vector3 alignVector = rightRoadPos - leftRoadPos;
        Debug.DrawLine(leftRoadPos + new Vector3(0, 1, 0), rightRoadPos + new Vector3(0, 1, 0), Color.white);
        lookTransform.position = transform.position;
        lookTransform.rotation = Quaternion.FromToRotation(Vector3.forward, alignVector);
        transform.rotation = Quaternion.Euler(lookTransform.eulerAngles.x, animTransform.eulerAngles.y, animTransform.eulerAngles.z);

    }

    void OnDrawGizmos()
    {
        // Gizmos.color = Color.white;
        // Gizmos.DrawWireSphere(leftRoadPos, 0.5f);
        // Gizmos.DrawWireSphere(rightRoadPos, 0.5f);
    }
}
