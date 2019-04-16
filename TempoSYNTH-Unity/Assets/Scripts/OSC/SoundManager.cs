using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class SoundManager : MonoBehaviour
{
    public OSC osc;
    public bool activityState = false;
    public int BPM = 140;
    Dictionary<string, GameObject> notesParse = new Dictionary<string, GameObject>();

    // Start is called before the first frame update
    void Start()
    {
        InitParse();
        UpdateState(true);
        UpdateBPM(BPM);
    }

    //private void ColorOnPlay(OscMessage message)
    //{
    //    int soundIndex = message.GetInt(0);
    //    String location = message.GetInt(1).ToString();
    //    string soundKey = null;
    //    notesParse[soundKey].GetComponent<Renderer>().material.color = Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f);
    //}

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
        }
        else
        {
            message.values.Add(0);
        }

        osc.Send(message);
    }

    private void OnApplicationQuit()
    {
        UpdateState(false);
    }
}
