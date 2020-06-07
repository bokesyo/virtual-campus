﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mapping : MonoBehaviour
{
    private GameObject model;

    /*
    private List<Sprite> sprites;
    private int index;
    */


    void Start()
    {
        /*
        List<GameObject> temp = GameObject.FindGameObjectWithTag("SkinBag").GetComponent<SkinBag>().testItems;
        foreach (GameObject g in temp)
        {
            sprites.Add(g.GetComponent<Item>().image);
        }
        */
        int index = GameObject.FindGameObjectWithTag("SkinBag").GetComponent<SkinBag>().index;
        GameObject temp = GameObject.FindGameObjectWithTag("SkinBag").GetComponent<SkinBag>().testItems[index];
        model = gameObject;
        if (model != null)
        {
            model.GetComponent<SpriteRenderer>().sprite = temp.GetComponent<SpriteItem>().image;
            //model.GetComponent<SkinnedMeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(5, 5));

        }
    }

    public void ChangeMapping(SpriteItem item)
    {
        if (model != null)
        {
            model.GetComponent<SpriteRenderer>().sprite = item.image;
        }
    }
}
