using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

public class SoundCube : MonoBehaviour
{
    private TextMesh locationUI;
    private TextMesh nameUI;
    private Hand.AttachmentFlags attachmentFlags = Hand.defaultAttachmentFlags & (~Hand.AttachmentFlags.SnapOnAttach) & (~Hand.AttachmentFlags.DetachOthers) & (~Hand.AttachmentFlags.VelocityMovement);
    private Interactable interactable;

    private SoundManager sound;


    //-------------------------------------------------
    void Awake()
    {
        var textMeshs = GetComponentsInChildren<TextMesh>();
        locationUI = textMeshs[0];
        nameUI = textMeshs[1];

        interactable = this.GetComponent<Interactable>();
        sound = FindObjectOfType<SoundManager>();
    }

    private void Start()
    {
        locationUI.text = "";
        nameUI.text = this.name;

        locationUI.transform.rotation = Camera.main.transform.rotation;
        nameUI.transform.rotation = Camera.main.transform.rotation;
    }


    //-------------------------------------------------
    // Called when a Hand starts hovering over this object
    //-------------------------------------------------
    private void OnHandHoverBegin(Hand hand)
    {
    }


    //-------------------------------------------------
    // Called when a Hand stops hovering over this object
    //-------------------------------------------------
    private void OnHandHoverEnd(Hand hand)
    {
    }


    //-------------------------------------------------
    // Called every Update() while a Hand is hovering over this object
    //-------------------------------------------------
    private void HandHoverUpdate(Hand hand)
    {
        GrabTypes startingGrabType = hand.GetGrabStarting();
        bool isGrabEnding = hand.IsGrabEnding(this.gameObject);

        if (interactable.attachedToHand == null && startingGrabType != GrabTypes.None)
        {
            // Call this to continue receiving HandHoverUpdate messages,
            // and prevent the hand from hovering over anything else
            hand.HoverLock(interactable);

            // Attach this object to the hand
            hand.AttachObject(gameObject, startingGrabType, attachmentFlags);
        }
        else if (isGrabEnding)
        {
            // Detach this object from the hand
            hand.DetachObject(gameObject);

            // Call this to undo HoverLock
            hand.HoverUnlock(interactable);
        }

        locationUI.transform.rotation = Camera.main.transform.rotation;
        nameUI.transform.rotation = Camera.main.transform.rotation;
    }

    private bool attached;
    //-------------------------------------------------
    // Called when this GameObject becomes attached to the hand
    //-------------------------------------------------
    private void OnAttachedToHand(Hand hand)
    {
        attached = true;
    }


    //-------------------------------------------------
    // Called when this GameObject is detached from the hand
    //-------------------------------------------------
    private void OnDetachedFromHand(Hand hand)
    {
        attached = false;
        if (lastPoint != null && Vector3.Distance(transform.position, lastPoint.position) > 0.01f)
        {
            StartCoroutine(SnapToPos());
        }
    }

    private IEnumerator SnapToPos()
    {
            Vector3 initialScale = this.transform.position;
            Vector3 targetScale = lastPoint.transform.position;

            Quaternion initialRot = this.transform.rotation;
            Quaternion targetrot = Quaternion.LookRotation(lastPoint.parent.transform.position - transform.position);

        float startTime = Time.time;
            float overTime = 0.3f;
            float endTime = startTime + overTime;

            while (Time.time < endTime)
            {
                this.transform.position = Vector3.Slerp(initialScale, targetScale, (Time.time - startTime) / overTime);
                this.transform.rotation = Quaternion.Slerp(initialRot, targetrot, (Time.time - startTime) / overTime);

            if (Vector3.Distance(transform.position, lastPoint.position) < 0.01f)
            {
                this.transform.SetParent(lastPoint);
                sound.addSound(this.name, int.Parse(lastPoint.name));
            }

            yield return null;
        }
    }
    //-------------------------------------------------
    // Called every Update() while this GameObject is attached to the hand
    //-------------------------------------------------
    private void HandAttachedUpdate(Hand hand)
    {
    }

    private Transform lastPoint;

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "TrackPosition")
        {
            if (attached)
            {
                locationUI.text = other.name;
                lastPoint = other.transform;

            }
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "TrackPosition")
        {
            if (attached)
            {
                //sound.removeSound(this.name, int.Parse(other.name));
                //this.transform.SetParent(null);
                locationUI.text = null;
                sound.removeSound(this.name, int.Parse(lastPoint.name));
                
                lastPoint = null;
                this.transform.SetParent(null);
            }
        }
    }

    private bool lastHovering = false;
    private void Update()
    {

    }


    //-------------------------------------------------
    // Called when this attached GameObject becomes the primary attached object
    //-------------------------------------------------
    private void OnHandFocusAcquired(Hand hand)
    {
    }


    //-------------------------------------------------
    // Called when another attached GameObject becomes the primary attached object
    //-------------------------------------------------
    private void OnHandFocusLost(Hand hand)
    {
    }
}

