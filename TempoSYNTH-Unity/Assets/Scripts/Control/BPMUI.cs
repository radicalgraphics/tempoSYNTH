using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

public class BPMUI : MonoBehaviour
{


    private LinearMapping lm;
    private TextMesh valueDisp;
    public int minBPM = 60;
    public int maxBPM = 220;
    private Hand.AttachmentFlags attachmentFlags = Hand.defaultAttachmentFlags & (~Hand.AttachmentFlags.SnapOnAttach) & (~Hand.AttachmentFlags.DetachOthers) & (~Hand.AttachmentFlags.VelocityMovement);
    private SoundManager sm;

    void Start()
    {
        sm = GameObject.FindGameObjectWithTag("SoundManager").GetComponent<SoundManager>();
        valueDisp = GetComponent<TextMesh>();
        lm = GetComponent<LinearMapping>();
        sm.BPM = valueToBPM(lm.value);
        valueDisp.text = "BPM: "+String.Format("{0:000}",sm.BPM.ToString());
    }
    private void HandHoverUpdate(Hand hand) {
        valueDisp.transform.rotation = Camera.main.transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
        bool curstate = SteamVR_Input.GetState("GrabPinch", SteamVR_Input_Sources.Any);

        if (curstate)
        {
            sm.BPM = valueToBPM(lm.value);
            valueDisp.text = "BPM: " + String.Format("{0:000}", sm.BPM.ToString());
            sm.UpdateBPM(sm.BPM);
        }
        
    }

    int valueToBPM(float x) {
        int y = (int)(Math.Round(x, 3) * (maxBPM - minBPM) + minBPM);
        return y;
    }

 
}
