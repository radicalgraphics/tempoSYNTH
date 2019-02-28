using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Circular : MonoBehaviour {
    float timeCounter = 0;
    public float speed = 1;
    public int radius = 10;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        timeCounter += Time.deltaTime * speed;
        float x = Mathf.Sin(timeCounter * radius);
        float y = Mathf.Cos(timeCounter * radius);
        transform.localPosition = new Vector3(x, 0, y);
	}
}
