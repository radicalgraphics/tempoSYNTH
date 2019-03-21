using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class SplitOnTrackContact : MonoBehaviour
{

    private Vector3 CollisionPoint;
    private Object JointPreFab;
    private GameObject newJoint;

    // Start is called before the first frame update
    void Start()
    {
        JointPreFab = Resources.Load<GameObject>("Assets/Prefab/TrackJoint");
        JointPreFab = (GameObject)AssetDatabase.LoadAssetAtPath("Assets/Prefab/TrackJoint.prefab", typeof(GameObject));
    }


    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Track")
        {
            CollisionPoint = other.gameObject.GetComponent<Collider>().ClosestPointOnBounds(transform.position);
            if(CheckJoint(CollisionPoint)){
                Debug.Log("Joint Already exist at" + CollisionPoint + " for Track " + this.name + "and Track " + other.name);
            }
            else{
                newJoint = (GameObject)Instantiate(JointPreFab, CollisionPoint, Quaternion.identity);
                Debug.Log("Joint Created at" + CollisionPoint + " for Track "+this.name + "and Track " + other.name);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Track"){
            Destroy(newJoint);
        }
    }

    bool CheckJoint(Vector3 loc){

        Debug.Log("Collision Point" + loc);
        GameObject[] joints = GameObject.FindGameObjectsWithTag("Joint");

        for (int i = 0; i < joints.Length; i++){
         if (Vector3.Distance(joints[i].transform.position, loc) <= 0.5){
                return true;
            }
        }

        return false;
    }

}
