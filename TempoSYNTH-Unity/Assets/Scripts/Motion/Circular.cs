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



    // Use this for initialization
    void Start()
    {
        //osc = (OSC)FindObjectOfType(typeof(OSC));
        //center = GameObject.FindWithTag("Center").transform;
    }

    private void OnValidate()
    {
        rotationSpeed = BPM / 60 * 2 * radius / 2;
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

}