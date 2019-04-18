using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class SoundManager : MonoBehaviour
{
    private OSC osc;
    public bool activityState = false;
    public int BPM = 140;
    Dictionary<string, GameObject> notesParse = new Dictionary<string, GameObject>();

    // Start is called before the first frame update
    void Start()
    {
        osc = GetComponent<OSC>();
        InitParse();
        UpdateState(true);
        UpdateBPM(BPM);
        //osc.SetAddressHandler("/metro", ColorOnPlay);
    }

    private void ColorOnPlay(OscMessage message)
    {
        Debug.Log("hi");
        GameObject[] higlights = GameObject.FindGameObjectsWithTag("TrackPosition");
        for (int i = 0; i < higlights.Length; i++) {
            Debug.Log(higlights[i].name);
            Debug.Log(message.GetInt(0).ToString());
            if (higlights[i].name == message.GetInt(0).ToString())
            {
                higlights[i].GetComponent<MeshRenderer>().enabled = true;
                Debug.Log("match");
            }
            else {
                higlights[i].GetComponent<MeshRenderer>().enabled = false;
            }
        }
    }

    public void InitParse()
    {
        resetMax();
        notesParse = new Dictionary<string, GameObject>();

        GameObject[] sounds = GameObject.FindGameObjectsWithTag("TriggerPoint");
        for (int i = 0; i < sounds.Length; i++)
        {
            string soundKey = sounds[i].transform.name + "," + sounds[i].transform.parent.name;
            GameObject soundObject = sounds[i];

            if (!notesParse.ContainsKey(soundKey))
            {
                notesParse.Add(soundKey, soundObject);
            }
            Debug.Log(soundKey);
        }


        foreach (KeyValuePair<string, GameObject> entry in notesParse)
        {
            OscMessage message;
            message = new OscMessage();
            message.address = "AddSound";
            string[] soundKey = entry.Key.ToString().Split(',');
            message.values.Add(soundKey[0]);
            message.values.Add(int.Parse(soundKey[1]));
            osc.Send(message);
        }
    }

    private void resetMax()
    {
        OscMessage message;
        message = new OscMessage();
        message.address = "resetMatrix";
        osc.Send(message);
    }

    public void addSound(string name, int loc)
    {
        OscMessage message;
        message = new OscMessage();
        message.address = "AddSound";
        message.values.Add(name);
        message.values.Add(loc);
        osc.Send(message);
    }

    public void removeSound(string name, int loc)
    {
        OscMessage message;
        message = new OscMessage();
        message.address = "RemoveSound";
        message.values.Add(name);
        message.values.Add(loc);
        osc.Send(message);
    }

    public void UpdateBPM(int newBPM)
    {
        BPM = newBPM;
        OscMessage message;
        message = new OscMessage();
        message.address = "BPM";
        message.values.Add(newBPM);
        osc.Send(message);
    }

    public void UpdateState(bool newState)
    {
        activityState = newState;
        OscMessage message;
        message = new OscMessage();
        message.address = "State";
        if (newState)
        {
            message.values.Add(1);
            GetComponentInChildren<Light>().enabled = true;
        }
        else
        {
            message.values.Add(0);
            GetComponentInChildren<Light>().enabled = false;
        }

        osc.Send(message);
    }

    private void OnApplicationQuit()
    {
        UpdateState(false);
    }

}
