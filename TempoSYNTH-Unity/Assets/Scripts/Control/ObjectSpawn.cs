using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

public class ObjectSpawn : MonoBehaviour
{
    public GameObject prefab;
    public GameObject current;
    public float size = 1.0f;
    public string soundName;
    private SoundManager sound;
    private Hand.AttachmentFlags attachmentFlags = Hand.defaultAttachmentFlags & (~Hand.AttachmentFlags.SnapOnAttach) & (~Hand.AttachmentFlags.DetachOthers) & (~Hand.AttachmentFlags.VelocityMovement);

    public bool randomColor = false;
    public float[] colorCode = { 0, 1, 0, 1, 0, 1, 0, 1 };

    private void Start()
    {
        current = this.transform.GetChild(0).gameObject;
        sound = FindObjectOfType<SoundManager>();
    }


    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject == current)
        {
                StopAllCoroutines();
                StartCoroutine(CopyTarget());
            
        }
    }
    private void OnHandHoverBegin(Hand hand)
    {

        sound.PreviewSound(soundName, 1);
    }

    private void OnHandHoverEnd(Hand hand) { 
    
            sound.PreviewSound(soundName, 0);
        
    }

    private IEnumerator CopyTarget()
    {
        GameObject planting = GameObject.Instantiate<GameObject>(prefab);
        current = planting;
        current.transform.SetParent(this.transform);
        planting.transform.position = this.transform.position;
        planting.transform.rotation = this.transform.rotation;

        if (randomColor == true)
        {
            Color newColor = Random.ColorHSV(colorCode[0], colorCode[1], colorCode[2], colorCode[3], colorCode[4], colorCode[5], colorCode[6], colorCode[7]);
            planting.GetComponent<Renderer>().material.color = newColor;
        }
        planting.name = soundName;
        yield return null;
    }
}
