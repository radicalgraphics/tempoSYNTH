using UnityEngine;
using System.Collections;

public class PlaySound : MonoBehaviour
{

    public OSC osc;

    // Use this for initialization
    void Start()
    {
        osc = (OSC)FindObjectOfType(typeof(OSC));
    }

    // Update is called once per frame
    void Update()
    {

    }

    
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("collided");

        OscMessage message;
        message = new OscMessage();
        message.address = "/PlaySound";

        osc.Send(message);
    }
}
