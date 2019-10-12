using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Timer : MonoBehaviour
{
    #region Variables

    private bool gameEnded = false;
    [HideInInspector]
    public bool bikeCalibrated = false;

    public float gameDuration = 3.0f;
    private float gameTime;

    public Renderer rend;
    public float fadeTime = 2.0f;

    public PlayerUIManager uIManager;

    #endregion

    #region Unity Methods

    private void Start()
    {
        gameTime = 0f;
        StartCoroutine(TimerUpdate());
    }

    private IEnumerator TimerUpdate()
    {
        yield return new WaitUntil(() => bikeCalibrated);
        yield return new WaitForSecondsRealtime(gameDuration);
        EndGame();
        yield return new WaitForSeconds(3);
        uIManager.PlayEndSequence();
    }

    /*
     * Performs the actions indicating the game has ended
     */
    private void EndGame()
    {
        gameEnded = true;

        StartCoroutine(FadeOutTest());

        // StartCoroutine(WaitToActivateAnimation(endGameTextAnimation));

        Debug.Log("End Game");
    }


    /*
     * Change alpha on black sphere to fade out for VR scene
     */
    private IEnumerator FadeOutTest()
    {
        Debug.Log("FadeOutTest Started");

        Color fadeColor = rend.material.GetColor("_BaseColor");
        float alphaVal = 0;
        while(alphaVal < 1)
        {
            alphaVal += Time.deltaTime * fadeTime;
            fadeColor.a = alphaVal;
            rend.material.SetColor("_BaseColor", fadeColor);
            yield return null;
        }
    }


    /*
     * Activate a gameObject after a designated amount of time
     */
    private IEnumerator WaitToActivateAnimation(GameObject objectToActivate)
    {
        yield return new WaitForSeconds(fadeTime);

        objectToActivate.SetActive(true);
    }

    #endregion
}
