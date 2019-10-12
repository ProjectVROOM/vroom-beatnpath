using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*
 * Original Author: Greg Kilmer
 * V2 Author: Matthew Napolillo
 * Function: Contols the movement of a bike object.
 * Last Updated: 4/25/2019
 */

public class BikeMovement : MonoBehaviour {
	
	public GameObject bike;
    public GameObject right, left;

	public LeanAxisControl leanAxisController;

	public float turnSpeed = 1;
    public float horizInput;
	public float bikePos = 0.5f;

	[Header("InEditorTesting")]
	public bool keyboardControl = false;
	public GameObject[] disableForTesting;
	public GameObject[] disableForVR;

	private void Awake() 
	{
		if(keyboardControl)
		{
			foreach(GameObject gObj in disableForTesting)
			{
				gObj.SetActive(false);
			}
		}
		else
		{
			foreach(GameObject gObj in disableForVR)
			{
				gObj.SetActive(false);
			}
		}
	}
	
	// Update is called once per frame
	void Update () 
	{

		Debug.DrawRay(bike.transform.position, bike.transform.right*10,Color.red);

        // pass the input to the car!
		if(keyboardControl)
		{
			horizInput = Input.GetAxis("Horizontal");
		}
		else
		{
        	horizInput = leanAxisController.combinedAxis;
		}
        Turn(horizInput);

    }

    public void Turn(float percent)
    {
        // transform.rotation = transform.parent.rotation;
		float moveSpeed = percent * turnSpeed;
		if(Mathf.Abs(percent) > 0)
		{
			bikePos += moveSpeed;
		}
		if(bikePos > 1)
			bikePos = 1;
		if(bikePos < 0)
			bikePos = 0;
        transform.position = Vector3.Lerp(left.transform.position, right.transform.position, bikePos);		
    }
}