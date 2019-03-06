using UnityEngine;
using System.Collections;

public class Circular : MonoBehaviour
{
    public Transform center;
    public Vector3 axis = Vector3.right;
    public Vector3 moveTo;

    public float radius = 2.0f;
    public float radiusSpeed = 0.5f;
    public float rotationSpeed = 80.0f;

    void Update()
    {
        transform.RotateAround(center.position, axis, rotationSpeed * Time.deltaTime);
        moveTo = (transform.position - center.position).normalized * radius + center.position;
        transform.position = Vector3.MoveTowards(transform.position, moveTo, Time.deltaTime * radiusSpeed);
    }
}