using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using DG.Tweening;

public class PlayerUIManager : MonoBehaviour
{
    public TextMeshProUGUI playerScoreText;
    public TextMeshProUGUI multiplierText;
    public TextMeshProUGUI finalScoreTitleText;
    public TextMeshProUGUI endScoreText;
    public TextMeshProUGUI headsetOffText;
    public RectTransform horizontalLine;

    [Header("ActiveUIAnimations")]
    public float multAnimUpSpeed = 1;
    public float multAnimDownSpeed = 1;
    public AnimationCurve multUpAnimCurve;
    public AnimationCurve multDownAnimCurve;

    [Header("EndUIAnimations")]
    public float endAnimSpeed = 1;
    public AnimationCurve endBarAnimCurve;
    public AnimationCurve endTitleAnimCurve;
    public AnimationCurve endScoreAnimCurve;
    public AnimationCurve headsetOffAnimCurve;

    [Header("Score Data")]
    public int score;
    public int noteVal = 100;

    [HideInInspector]
    public bool rideActive = true;

    private int multiplierCount = 0;
    private bool multUp = false;
    private bool multDown = false;
    // private Sequence multIncreaseAnim;
    // private Sequence multDecreaseAnim;
    // private Sequence endScoreAnim;

    private void Start() 
    {
        StartCoroutine(IncreaseScoreRoutine());
        StartCoroutine(DecreaseScoreRoutine());
    }

    public IEnumerator IncreaseScoreRoutine()
    {
        while(rideActive)
        {
            yield return new WaitUntil(() => multUp);
            float animTime = 0;
            float scale = 1;
            while(animTime < 1)
            {
                animTime += Time.deltaTime * multAnimUpSpeed;
                scale = multUpAnimCurve.Evaluate(animTime);
                multiplierText.rectTransform.localScale = new Vector3(scale, scale, scale);
                yield return null;
            }
            multUp = false;
        }
    }

    public IEnumerator DecreaseScoreRoutine()
    {
        while(rideActive)
        {
            yield return new WaitUntil(() => multDown);
            float animTime = 0;
            float scale = 1;
            while(animTime < 1)
            {
                animTime += Time.deltaTime * multAnimDownSpeed;
                scale = multDownAnimCurve.Evaluate(animTime);
                multiplierText.rectTransform.localScale = new Vector3(scale, scale, scale);
                multiplierText.color = Color.Lerp(Color.red, Color.white, animTime);
                yield return null;
            }
            multDown = false;
        }
    }

    public IEnumerator PlayEndRoutine()
    {
        multiplierText.color = new Color(1,1,1,0);
        playerScoreText.color = new Color(1,1,1,0);
        float animTime = 0;
        float titleScale = 1;
        float scoreScale = 1;
        float barScale = 0;
        while(animTime < 1)
        {
            animTime += Time.deltaTime * endAnimSpeed;
            titleScale = endTitleAnimCurve.Evaluate(animTime);
            scoreScale = endScoreAnimCurve.Evaluate(animTime);
            barScale = endBarAnimCurve.Evaluate(animTime);
            finalScoreTitleText.rectTransform.localScale = new Vector3(titleScale, titleScale, titleScale);
            endScoreText.rectTransform.localScale = new Vector3(scoreScale, scoreScale, scoreScale);

            finalScoreTitleText.color = Color.Lerp(new Color(1,1,1,0), new Color(1,1,1,1), animTime);
            endScoreText.color = Color.Lerp(new Color(1,1,1,0), new Color(1,1,1,1), animTime);
            
            horizontalLine.localScale = new Vector3(barScale, barScale, barScale);
            yield return null;
        }
        yield return new WaitForSeconds(2);
        animTime = 0;
        while(animTime < 1)
        {
            headsetOffText.color = Color.Lerp(new Color(1,1,1,0), new Color(1,1,1,1), animTime);
            yield return null;
        }
    }

    public void IncreaseScore()
    {
        if(multiplierCount == 0)
        {
            score += noteVal;
        }
        else if(multiplierCount > 0)
        {
            score += noteVal * multiplierCount;
        }
        multiplierCount++;
        playerScoreText.text = "SCORE: " + score;
        endScoreText.text = ""+score;
        multiplierText.text = "MULT: x" + multiplierCount;
        multUp = true;
    }

    public void DecreaseScore()
    {
        score -= (noteVal/2);
        multiplierCount = 0;
        multiplierText.text = "MULT: x0";
        playerScoreText.text = "SCORE: " + score;
        endScoreText.text = ""+score;
        multDown = true;
    }

    public void PlayEndSequence()
    {
        StartCoroutine(PlayEndRoutine());
    }

}
