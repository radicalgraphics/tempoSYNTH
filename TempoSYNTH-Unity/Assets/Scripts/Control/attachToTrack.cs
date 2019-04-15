using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class attachToTrack : MonoBehaviour
{
    private Transform lastPoint;
    public float speed;
    
    // Start is called before the first frame update
    void Start()
    {

        if (this.transform.parent != null && this.transform.parent.tag.Equals("TrackPosition")) {
            lastPoint = this.transform;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (lastPoint != null)
        {
            transform.position = Vector3.MoveTowards(transform.position, lastPoint.position, speed * Time.deltaTime);
            if (Mathf.Abs(this.transform.position.x - lastPoint.position.x) < 0.05)
            {
                this.transform.SetParent(lastPoint);
            }
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TrackPosition") {
            Debug.Log(other.name);
            lastPoint = other.transform;
        }

    }


}
