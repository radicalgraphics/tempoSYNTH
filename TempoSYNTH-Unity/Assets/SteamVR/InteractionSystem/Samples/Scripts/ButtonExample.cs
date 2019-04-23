﻿using UnityEngine;
using System.Collections;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ButtonExample : MonoBehaviour
    {
        public HoverButton hoverButton;

        public GameObject prefab;
        public float size;
        public string name;
        public bool randomColor = false;
        public float[] colorCode = { 0, 1, 0, 1, 0, 1, 0, 1 };
         public TextMesh valueDisp;

        private void Start()
        {
            hoverButton.onButtonDown.AddListener(OnButtonDown);
            valueDisp = this.transform.parent.GetComponentInChildren<TextMesh>();
            valueDisp.text = name;
        }

        private void OnButtonDown(Hand hand)
        {
                StartCoroutine(DoPlant());
        }

        private IEnumerator DoPlant()
        {
            GameObject planting = GameObject.Instantiate<GameObject>(prefab);
            planting.transform.position = this.transform.position;
            planting.transform.rotation = this.transform.rotation;

            if (randomColor == true)
            {
                Color newColor = Random.ColorHSV(colorCode[0], colorCode[1], colorCode[2], colorCode[3], colorCode[4], colorCode[5], colorCode[6], colorCode[7]);
                planting.GetComponent<Renderer>().material.color = newColor;
            }
            planting.name = name;
            Vector3 initialScale = Vector3.one * 0.01f;
            Vector3 targetScale = Vector3.one * size;

            float startTime = Time.time;
            float overTime = 0.5f;
            float endTime = startTime + overTime;

            while (Time.time < endTime)
            {
                planting.transform.localScale = Vector3.Slerp(initialScale, targetScale, (Time.time - startTime) / overTime);
                yield return null;
            }
        }
    }
}