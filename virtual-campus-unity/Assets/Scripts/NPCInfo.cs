﻿using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class NPCInfo : MonoBehaviour
{
    public string npcName { get; private set; }
    public GameObject npcCamera;
    public Transform playerDialoguePos;

    public GameObject mainCam;

    private void Awake()
    {
        npcName = transform.Find("Canvas/Name").GetComponent<TextMeshProUGUI>().text;
    }

    public void StartTalkMode()
    {
        npcCamera.SetActive(true);
        mainCam.SetActive(false);

        var player = GameObject.FindGameObjectWithTag("Player");
        var controller = player.GetComponent<PlayerController>();
        controller.FreezeUnfreezePlayer(true);
        player.transform.position = playerDialoguePos.position;
        controller.model.transform.forward = playerDialoguePos.forward;
    }

    public void EndTalkMode()
    {
        npcCamera.SetActive(false);
        mainCam.SetActive(true);

        var player = GameObject.FindGameObjectWithTag("Player");
        player.GetComponent<PlayerController>().FreezeUnfreezePlayer(false);
    }
}
