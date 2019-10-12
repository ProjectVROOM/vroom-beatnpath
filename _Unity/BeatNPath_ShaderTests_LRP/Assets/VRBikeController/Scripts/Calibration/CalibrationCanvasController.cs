using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CalibrationCanvasController : MonoBehaviour {
    public Text ButtonText;
    public Slider RightSlider;
    public Slider LeftSlider;
    public Slider CenterSlider;
    public Slider calibratingSlider;
    public Calibrate calibrationComponent;
    public GazeTracker gazeClicker;
    public BoxCollider buttonCollider;
    bool begun = false;

	// Update is called once per frame
	void Update () {
        RightSlider.value = calibrationComponent.rightTrackingCompletion;
        CenterSlider.value = calibrationComponent.centerTrackingCompletion;
        LeftSlider.value = calibrationComponent.leftTrackingCompletion;
        // calibratingSlider.value = (gazeClicker.currentDurationGazed / gazeClicker.durationUntilTriggered);
        if (!begun)
        {
            calibratingSlider.value = (gazeClicker.currentDurationGazed / gazeClicker.durationUntilTriggered);
        } else  {
            calibratingSlider.value = 0f;
        }
        ButtonText.text = calibrationComponent.GuideText;
    }

    public void Begin()
    {
        begun = true;
        buttonCollider.enabled = false;
        calibrationComponent.BeginCalibrating();
    }
}