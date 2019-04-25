using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectSpawn : MonoBehaviour
{
    public GameObject prefab;
    public GameObject current;
    public float size = 1.0f;
    public string soundName;

    public bool randomColor = false;
    public float[] colorCode = { 0, 1, 0, 1, 0, 1, 0, 1 };

    private void Start()
    {
        current = this.transform.GetChild(0).gameObject;
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject == current)
        {
            StopAllCoroutines();
            StartCoroutine(CopyTarget());
        }
    }

    private IEnumerator CopyTarget()
    {
        GameObject planting = GameObject.Instantiate<GameObject>(prefab);
        current = planting;
        planting.transform.position = this.transform.position;
        planting.transform.rotation = this.transform.rotation;

        if (randomColor == true)
        {
            Color newColor = Random.ColorHSV(colorCode[0], colorCode[1], colorCode[2], colorCode[3], colorCode[4], colorCode[5], colorCode[6], colorCode[7]);
            planting.GetComponent<Renderer>().material.color = newColor;
        }
        planting.name = soundName;
        
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
