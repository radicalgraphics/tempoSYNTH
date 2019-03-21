using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplitOnTrackContact : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Track")
        {
            Debug.Log(other.name + "  Need to split");
            Debug.Log(other.gameObject.GetComponent<Collider>().ClosestPointOnBounds(transform.position));
        }
    }
}
