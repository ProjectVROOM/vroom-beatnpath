using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneHandler : MonoBehaviour
{
    private bool sceneLoaded;
    private bool sceneUnloaded;

    private IEnumerator LoadSceneRoutine(string sceneToLoad, LoadSceneMode mode)
    {
        SceneManager.LoadSceneAsync(sceneToLoad, mode);
        yield return new WaitUntil(() => sceneLoaded);
        sceneLoaded = false;
    }

    // Start is called before the first frame update
    void Awake()
    {
        DontDestroyOnLoad(gameObject);
        SceneManager.sceneLoaded += OnSceneLoaded;
        SceneManager.sceneUnloaded += OnSceneUnloaded;
        LoadScene("PlayerController");
    }

    // called second
    void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        sceneLoaded = true;
        Debug.Log("SceneLoaded: " + scene.name);
    }

    void OnSceneUnloaded(Scene scene)
    {
        sceneUnloaded = true;
        Debug.Log("SceneUnloaded: " + scene.name);
    }

    public void LoadScene(string sceneToLoad, LoadSceneMode mode = LoadSceneMode.Additive)
    {
        StartCoroutine(LoadSceneRoutine(sceneToLoad, mode));
    }

}
