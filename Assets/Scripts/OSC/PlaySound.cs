using UnityEngine;
using System.Collections;

public class PlaySound : MonoBehaviour
{

    public OSC osc;

    private Color oriColor ;

    // Use this for initialization
    void Start()
    {
        osc = (OSC)FindObjectOfType(typeof(OSC));
    }

    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TriggerPoint")
        {
            Debug.Log("collided");

            OscMessage message;
            message = new OscMessage();
            message.address = "/PlaySound";

            osc.Send(message);

            other.GetComponent<Renderer>().material.color = Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f);
           
        }
    }



}
