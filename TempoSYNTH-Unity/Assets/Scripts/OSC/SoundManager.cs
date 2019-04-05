using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class SoundManager : MonoBehaviour
{
    public OSC osc;
    public bool activityState = false;
    public int BPM = 100;
    Dictionary<string, GameObject> notesParse = new Dictionary<string, GameObject>();
   
    // Start is called before the first frame update
    void Start()
    {
        InitParse();
        //osc.SetAddressHandler("/isPlaying", ColorOnPlay);
    }

    //private void ColorOnPlay(OscMessage message)
    //{
    //    int soundIndex = message.GetInt(0);
    //    String location = message.GetInt(1).ToString();
    //    string soundKey = null;
    //    notesParse[soundKey].GetComponent<Renderer>().material.color = Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f);
    //}

    private void InitParse(){
       
        GameObject[] sounds = GameObject.FindGameObjectsWithTag("TriggerPoint");
        for (int i = 0; i < sounds.Length; i++)
        {
            string soundKey = sounds[i].transform.name+","+ sounds[i].transform.parent.name;
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
            message.address = "Sound";
            string[] soundKey = entry.Key.ToString().Split(',');
            message.values.Add(soundKey[0]);
            message.values.Add(int.Parse(soundKey[1]));
            osc.Send(message);
        }
    }

    private void OnValidate()
    {
        if (Application.isPlaying & osc != null)
        {
            osc.Send(UpdateBPM());
            osc.Send(UpdateState());
        }
    }

    private OscMessage UpdateBPM(){
  
        OscMessage message;
        message = new OscMessage();
        message.address = "BPM";
        message.values.Add(BPM);

        return message;
    
    }

    private OscMessage UpdateState()
    {

        OscMessage message;
        message = new OscMessage();
        message.address = "State";
        if (activityState)
        {
            message.values.Add(1);
        }
        else{
            message.values.Add(0);
        }
        
        return message;

    }


    void onDestroy(){

    }
}
