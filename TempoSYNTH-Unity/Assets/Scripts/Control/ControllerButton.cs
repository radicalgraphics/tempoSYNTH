using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;

public class ControllerButton : MonoBehaviour
{
    public bool menuVis;
    private GameObject controllerMenu;
    private SoundManager sm;

    // Start is called before the first frame update
    void Start()
    {
        controllerMenu = GameObject.FindGameObjectWithTag("ControllerMenu");
        menuVis = controllerMenu.active;
        sm = GameObject.FindGameObjectWithTag("SoundManager").GetComponent<SoundManager>();
    }

    // Update is called once per frame
    void Update()
    {
        bool menuB = SteamVR_Input.GetStateDown("menuToggle", SteamVR_Input_Sources.Any);

        if (menuB)
        {
           menuVis = !menuVis;
           controllerMenu.SetActive(menuVis);

        }

        bool doubleMenu = SteamVR_Input.GetStateDown("maxClock", SteamVR_Input_Sources.Any);

        if (doubleMenu)
        {
            sm.activityState = !sm.activityState;
            sm.UpdateState(sm.activityState);
        }
    }
}
