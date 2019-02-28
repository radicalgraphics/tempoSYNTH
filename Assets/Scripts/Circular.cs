using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Circular : MonoBehaviour {
    public Transform center;
    public Vector3 axis = Vector3.up;
    public float radius = 2.0F;
    public float radiusSpeed = 0.5F;
    public float rotationSpeed = 80.0F;

    void Start()
    {
        center = gameObject.transform;
        transform.position = (transform.position - center.position).normalized * radius + center.position;
    }

    void Update()
    {
        transform.RotateAround(center.position, axis, rotationSpeed * Time.deltaTime);
        var desiredPosition = (transform.position - center.position).normalized * radius + center.position;
        transform.position = Vector3.MoveTowards(transform.position, desiredPosition, Time.deltaTime * radiusSpeed);
    }
}
