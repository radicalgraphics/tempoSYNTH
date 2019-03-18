using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagneticChangeDir : MonoBehaviour
{

    public Vector3 magneticDir;

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Magnet"){
            Debug.Log("Here");
            other.GetComponent<MagneticAttract>().newPosition = magneticDir;
        }
    }
}
