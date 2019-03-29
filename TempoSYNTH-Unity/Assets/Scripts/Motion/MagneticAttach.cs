using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagneticAttach : MonoBehaviour
{
    private Vector3 newPosition;
    private bool moveYah = false;
    private Transform trans;

    void Update()
    {
        if (moveYah)
        {
            Vector3.Lerp(this.transform.position, Vector3.zero, Time.deltaTime * 1.5f);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TrackPosition")
        {
            this.transform.SetParent(other.transform);
            moveYah = false;
        }
    }

    //private void OnTriggerExit(Collider other)
    //{
    //    if (other.tag == "TrackPosition")
    //    {
    //        this.transform.SetParent(other.transform.parent);
    //        moveYah = true;
    //    }
    //}
}
