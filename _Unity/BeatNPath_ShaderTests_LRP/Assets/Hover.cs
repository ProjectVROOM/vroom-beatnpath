using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hover : MonoBehaviour
{
    int xRange = Random.Range(-10, 10);
    int yRange = Random.Range(-10, 10);
    int zRange = Random.Range(-10, 10);

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(xRange, yRange, zRange);
        transform.Translate(1, 1, 1);
    }
}
