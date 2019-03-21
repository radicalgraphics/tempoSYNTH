using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class JointControl : MonoBehaviour
{
   
   
    private GameObject TriggerCube;
    private Vector3 Dest;
    private float cubeSpeed;
    private GameObject TrigCubeCpy;
    // Start is called before the first frame update
    void Start()
    {
        TriggerCube = (GameObject)AssetDatabase.LoadAssetAtPath("Assets/Prefab/TriggerCube.prefab", typeof(GameObject));
    }

    // Update is called once per frame
    void Update()
    {
        if(TrigCubeCpy != null){
            TrigCubeCpy.transform.position = Vector3.MoveTowards(TrigCubeCpy.transform.position, Dest, cubeSpeed* Time.deltaTime);
            if (TrigCubeCpy.transform.position.Equals(Dest))
            {
                Destroy(TrigCubeCpy);
            }
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TriggerNote"){

                cubeSpeed = other.gameObject.GetComponent<Circular>().rotationSpeed;
                Quaternion rot = other.gameObject.transform.rotation;

            TrigCubeCpy = Instantiate(TriggerCube, this.transform.position, this.transform.rotation);
               
        }
        if (other.tag == "Track")
        {
            if(other.gameObject.name.Contains("Linear")){
                Vector3 linearPos = other.gameObject.transform.position;
                Vector3 linearSca = other.gameObject.transform.lossyScale;

                Dest = new Vector3(linearPos.x + linearSca.x / 2, linearPos.y,linearPos.z);
                Debug.Log(Dest);

            }

        }

    }


}
