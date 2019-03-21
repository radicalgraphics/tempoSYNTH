using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Linear : MonoBehaviour
{
    public bool On = true;
    public Transform pA;
    public Transform pB;
    public float speed = 4f;

    // Start is called before the first frame update
    void Start()
    {
        pA = this.transform;
    }

    // Update is called once per frame
    void Update()
    {
        if (On == true)
        {
            transform.position = Vector3.MoveTowards(transform.position, pB.position, speed * Time.deltaTime);
        }
    }
}