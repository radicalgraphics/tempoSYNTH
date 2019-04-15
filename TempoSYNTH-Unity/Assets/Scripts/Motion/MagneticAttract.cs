using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagneticAttract : MonoBehaviour
{

    //Manage magnet movement

    //Public var
    public Vector3 newPosition;

    //Private var
    private Transform trans;


    private void Awake()
    {
        trans = transform; 
    }



    // Update is called once per frame
    void Update()
    {
        trans.position = Vector3.Lerp(trans.position, newPosition, Time.deltaTime * 1.5f); 

        if(Mathf.Abs (newPosition.x - trans.position.x) < 0.05){
            trans.position = newPosition;
        }

    }
}
