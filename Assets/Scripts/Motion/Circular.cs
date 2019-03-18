using UnityEngine;
using System.Collections;

public class Circular : MonoBehaviour
{
    public bool On = true;
    public Transform center;
    public Vector3 axis = Vector3.right;
    public Vector3 moveTo;


    public float radius = 2.0f;
    public float radiusSpeed = 0.5f;
    public float BPM = 500.0f;
    private float rotationSpeed;
    public OSC osc;


    // Use this for initialization
    void Start()
    {
        osc = (OSC)FindObjectOfType(typeof(OSC));
    }

    private void OnValidate()
    {
        rotationSpeed = BPM / 60 * 2 * radius / 2;
        OSCSetBPM();
        //OSCPlayStatus();
    }

    void Update()
    {

        if (On == true)
        {
            transform.RotateAround(center.position, axis, rotationSpeed);
            moveTo = (transform.position - center.position).normalized * radius + center.position;
            transform.position = Vector3.MoveTowards(transform.position, moveTo, radiusSpeed);
        }
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TriggerPoint")
        {
            Debug.Log("collided");

            OSCPlaySound();

            other.GetComponent<Renderer>().material.color = Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f);

        }
    }

    private void OSCPlaySound(){
        OscMessage message;
        message = new OscMessage();
        message.address = "/PlaySound";
        osc.Send(message);
    }

    private void OSCSetBPM()
    {
        OscMessage message;
        message = new OscMessage();
        message.address = "/SetBPM";
        message.values.Add(BPM);
        osc.Send(message);
    }

    private void OSCPlayStatus(){
        OscMessage message;
        message = new OscMessage();
        message.address = "/PlayStatus";
        if(On == true){
            message.values.Add(1);
        }
        if (On == false)
        {
            message.values.Add(0);
        }

        osc.Send(message);
    }

}