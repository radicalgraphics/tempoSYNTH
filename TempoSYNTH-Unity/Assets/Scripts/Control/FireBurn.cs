using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

public class FireBurn : MonoBehaviour
{
    private SoundManager sound;
    private Interactable it;
    // Start is called before the first frame update
    void Start()
    {
        it = GetComponent<Interactable>();
        sound = FindObjectOfType<SoundManager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public GameObject fire;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "SoundCube" || other.gameObject.tag == "Track")
        {
            if (this.transform.parent!=null && this.transform.parent.name.Contains("Hand"))
            {
                StartCoroutine(BurnStuff(other.gameObject));
            }
            
        }
    }



    private IEnumerator BurnStuff(GameObject toBurn)
    {
        Vector3 initialScale = toBurn.transform.localScale;
        Vector3 targetScale = Vector3.one * 0.01f;

        float startTime = Time.time;
        float overTime = 2f;
        float endTime = startTime + overTime;

        while (Time.time < endTime)
        {
            if (toBurn != null)
            {
                toBurn.transform.localScale = Vector3.Slerp(initialScale, targetScale, (Time.time - startTime) / overTime);
            }
            yield return null;
        }

        Destroy(toBurn);


    }
}

