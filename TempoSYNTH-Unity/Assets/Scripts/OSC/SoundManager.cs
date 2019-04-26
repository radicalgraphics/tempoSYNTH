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
    public List<string> fileName;
    public ButtonExample[] soundResCues;

    // Start is called before the first frame update
    private void Start()
    {
        osc = this.GetComponent<OSC>();
        osc.SetAddressHandler("/metro", ColorOnPlay);
        osc.SetAddressHandler("/file", FileOnLoad);
        soundResCues = GameObject.FindGameObjectWithTag("SoundSpawnController").GetComponentsInChildren<ButtonExample>();
        InitParse();
        UpdateState(true);
        UpdateBPM(BPM);
    }
    private void FileOnLoad(OscMessage message) {
        string a = message.ToString();
        a = a.Remove(a.IndexOf("/file "), "/file ".Length);
        if (!a.Contains("tempoSynth."))
        {
            if (!fileName.Contains(a)) {
               fileName.Add(a);

               soundResCues[fileName.Count-1].name = a;
               soundResCues[fileName.Count - 1].valueDisp.text = a;
            }
        }
    }

    private void ColorOnPlay(OscMessage message)
    {
        GameObject[] higlights = GameObject.FindGameObjectsWithTag("TrackPosition");
        for (int i = 0; i < higlights.Length; i++) {
            if (higlights[i].name == message.GetInt(0).ToString())
            {
                higlights[i].GetComponent<MeshRenderer>().enabled = true;
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

        GameObject[] sounds = GameObject.FindGameObjectsWithTag("SoundCube");
        for (int i = 0; i < sounds.Length; i++)
        {
            if (sounds[i].transform.parent != null)
            {
                if (sounds[i].transform.parent.CompareTag("TrackPosition"))
                {
                    string soundKey = sounds[i].transform.name + "," + sounds[i].transform.parent.name;
                    GameObject soundObject = sounds[i];

                    if (!notesParse.ContainsKey(soundKey))
                    {
                        notesParse.Add(soundKey, soundObject);
                    }
                    Debug.Log(soundKey);
                }
            }
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
    public void updateVolume(string name, int state)
    {

        OscMessage message;
        message = new OscMessage();
        message.address = "UpdateVolume";
        message.values.Add(name);
        message.values.Add(state);
        osc.Send(message);
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

    public void PreviewSound(string name,  int state) {

        OscMessage message;
        message = new OscMessage();
        message.address = "PreviewSound";
        message.values.Add(name);
        message.values.Add(state);
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
