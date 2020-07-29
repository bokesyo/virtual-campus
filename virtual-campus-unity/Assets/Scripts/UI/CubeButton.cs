﻿using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CubeButton : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    [Header("Presentation")]
    public RectTransform frontFace, leftFace, bottomFace;
    public TextMeshProUGUI textHolder;

    public Color frontFaceUnselected, leftFaceUnselected, bottomFaceUnselected;
    public Color frontFaceSelected, leftFaceSelected, bottomFaceSelected;
    public Color colorToAddWhenClicked;
    public Color textUnselected, textSelected;

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip enterClip;
    public AudioClip clickClip;

    [Header("On Click")]
    public UnityEvent onClick;

    RectTransform[] rectTransforms;
    Color[] unselectedColors;
    Color[] selectedColors;

    private void Start()
    {
        rectTransforms = new RectTransform[]
        {
            frontFace,
            leftFace,
            bottomFace
        };

        unselectedColors = new Color[]
        {
            frontFaceUnselected,
            leftFaceUnselected,
            bottomFaceUnselected
        };

        selectedColors = new Color[]
        {
            frontFaceSelected,
            leftFaceSelected,
            bottomFaceSelected
        };
    }

	public void OnPointerEnter(PointerEventData eventData)
    {
        for(int i = 0; i < 3; i++)
		{
            LeanTween.color(
                rectTransforms[i],
                selectedColors[i],
                0.2f
                );
		}

        LeanTween.value(gameObject, (c) => { textHolder.color = c; }, textUnselected, textSelected, 0.2f);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        for (int i = 0; i < 3; i++)
        {
            LeanTween.color(
                rectTransforms[i],
                unselectedColors[i],
                0.2f
                );
        }

        LeanTween.value(gameObject, (c) => { textHolder.color = c; }, textSelected, textUnselected, 0.2f);
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        onClick.Invoke();

        LeanTween.value(gameObject, (x) => { var newPos = transform.localPosition; newPos.z = x; transform.localPosition = newPos; }, 0f, 40f, 0.1f)
            .setEaseOutQuad()
            .setLoopPingPong(1);
    }
}
