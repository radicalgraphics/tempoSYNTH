using UnityEngine;
using System.Collections;

public class Circular : MonoBehaviour
{
    public Transform center;
    public Vector3 axis = Vector3.right;
    public Vector3 moveTo;

    public float radius = 2.0f;
    public float radiusSpeed = 0.5f;
    public float BPM = 500.0f;
    private float rotationSpeed;

    private void Start()
    {
        rotationSpeed = BPM / 60 * 2 * radius /2;
    }

    void Update()
    {
        //transform.RotateAround(center.position, axis, rotationSpeed * Time.deltaTime);
        //Debug.Log(Time.deltaTime * rotationSpeed);

        //moveTo = (transform.position - center.position).normalized * radius + center.position;
        //transform.position = Vector3.MoveTowards(transform.position, moveTo, Time.deltaTime * radiusSpeed);

        transform.RotateAround(center.position, axis, rotationSpeed);
        Debug.Log(Time.deltaTime * rotationSpeed);

        moveTo = (transform.position - center.position).normalized * radius + center.position;
        transform.position = Vector3.MoveTowards(transform.position, moveTo, radiusSpeed);

    }
}