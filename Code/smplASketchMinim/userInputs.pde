float[] defaultWav = resetSin;
float[] defaultLFO = resetSin;
boolean noSliderTouched = true;

//Main Window
void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
}

void helpLink(GEvent event) {
  if (event == GEvent.CLICKED) {
    helpButton();
  }
}

void smplUIButton(GEvent event) {
  if (event == GEvent.CLICKED) {
    smpl();
  }
}

void exportToDisk(GEvent event) {
  if (event == GEvent.CLICKED) {
    recordEnabled=true;
    if (saveLoc != "") {
      recorder = minim.createRecorder(out, saveLoc+"/"+fileName.getText()+".wav");
    } else {
      if (fileName.getText() == "") {
        recorder = minim.createRecorder(out, "untitled.wav");
      } else {
        recorder = minim.createRecorder(out, fileName.getText()+".wav");
      }
    }

    smpl();
    recordEnabled=false;
  }
}

//Main Controls
void playDisplay(GEvent event) {
  if (event == GEvent.SELECTED) {
    showPlayLine = true;
  } else {
    showPlayLine = false;
  }
}

void psEnv(GEvent event) {
  if (event == GEvent.SELECTED) {
    photoEnvDisplay = true;
  } else {
    photoEnvDisplay = false;
  }
}

void psPitch(GEvent event) {
  if (event == GEvent.SELECTED) {
    photoPitch = true;
  } else {
    photoPitch = false;
  }
}

void envelopeDuration(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    envMult = source.getValueF();
  }
}

void octaveSliderSet(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    octIndex = source.getValueI();
  }
}

//Wav Device Control
void  wavDeviceOn(GEvent event) {
  if (event == GEvent.SELECTED) {
    wavControl = true;
  }
}

void  wavDeviceOff(GEvent event) {
  if (event == GEvent.SELECTED) {
    wavControl = false;
  }
}

// Wav Selection
void sinWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSin(true);
  }
}
void triWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultTri(true);
  }
}
void sqrWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSqr(true);
  }
}
void sawWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSaw(true);
  }
}
void stepWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultStep(true);
  }
}
void rampWavSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultRamp(true);
  }
}

//Wave Slider Extraction
void pitchFineAdjust(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    fineAdjust = source.getValueF();
    if (fineAdjust == 0) {
      pitchFine.setText("");
    } else if (fineAdjust > 0) {
      pitchFine.setText("+");
    } else {
      pitchFine.setText("-");
    }
  }
}

void pitchCoarseAdjust(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    noteIndex = source.getValueI()+1;
    pitch.setText(note[noteIndex]);
  }
}

//LFO Controls
void lfoOnSwitch(GEvent event) {
  if (event == GEvent.SELECTED) {
    lfoOn = true;
  } else {
    lfoOn = false;
  }
}

//LFO Device Control
void  lfoDeviceOn(GEvent event) {
  if (event == GEvent.SELECTED) {
    lfoControl = true;
  }
}

void  lfoDeviceOff(GEvent event) {
  if (event == GEvent.SELECTED) {
    lfoControl = false;
  }
}

//LFO Selection
void sinLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSin(false);
  }
}
void triLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultTri(false);
  }
}
void sqrLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSqr(false);
  }
}
void sawLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultSaw(false);
  }
}
void stepLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultStep(false);
  }
}
void rampLFOSelect(GEvent event) {
  if (event == GEvent.SELECTED) {
    defaultRamp(false);
  }
}

//LFO Slider Extraction
void sliderUpdateLFO(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    lfoMods[index] = source.getValueF();
  }
}

void lfoFM(GEvent event) {
  if (event == GEvent.SELECTED) fmOn = true;
}
void lfoAM(GEvent event) {
  if (event == GEvent.SELECTED) fmOn = false;
}


//Envelope Slider Extraction
void sliderUpdate(GCustomSlider source, GEvent event, int index) {
  noSliderTouched = false;
  if (event == GEvent.RELEASED) {
    sliderVals[index] = source.getValueF();
  }
}

//Combined playback controls
void combEnv(GEvent event) {
  if (event == GEvent.SELECTED) {
    drawCombEnv=true;
  } else {
    drawCombEnv=false;
  }
}

void combLFO(GEvent event) {
  if (event == GEvent.SELECTED) {
    drawCombLFO=true;
  } else {
    drawCombLFO=false;
  }
}

void combWav(GEvent event) {
  if (event == GEvent.SELECTED) {
    drawCombWav=true;
  } else {
    drawCombWav=false;
  }
}

//Photosynthesis Info Extraction
void getDropdownData(GDropList source, GEvent event, int index) {
  if (event == GEvent.SELECTED) {
    freqArrPhotoMode[index] = source.getSelectedIndex();
  }
}

void toggleUpdate(GEvent event, int index) {
  if (event == GEvent.CLICKED) {
    photsynthesisDots[index] = !photsynthesisDots[index];
  }
}

void psSearchFile(GEvent event) {
  if (event == GEvent.CLICKED) {
    selectPhotosynthesisFile();
  }
}

//Calibration Control
void calibrationOn(GEvent event) {
  if (event == GEvent.SELECTED) {
    calibMode = true;
  }
  if (event == GEvent.DESELECTED) {
    calibMode = false;
    filereset.save("calib.jpg");
  }
}

void calibCam(GEvent event) {
  if (event == GEvent.SELECTED) {
    camVsCapCalib = true;
  }
}

void calibCapture(GEvent event) {
  if (event == GEvent.SELECTED) {
    camVsCapCalib = false;
  }
}

void calibExtract(GEvent event) {
  if (event == GEvent.SELECTED) {
    extraction = true;
  } else if (event == GEvent.DESELECTED) {
    extraction = false;
  }
}

//Color Controls
void strokeSet(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED || event == GEvent.PRESSED || event == GEvent.VALUE_STEADY) {
    thickStroke = source.getValueI();
  }
}

void colorControl(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    int colorDraw = source.getValueI();
    if (colorDraw == 0) {
      setColor(index, 255, 0, 0); //red
    } else if (colorDraw == 1) {
      setColor(index, 0, 255, 0); //green
    } else if (colorDraw == 2) {
      setColor(index, 0, 0, 255); //blue
    } else if (colorDraw == 3) {
      setColor(index, 255, 0, 255); //pink
    } else if (colorDraw == 4) {
      setColor(index, 102, 45, 145); //purple
    } else if (colorDraw == 5) {
      setColor(index, 255, 255, 0); //yellow
    } else if (colorDraw == 6) {
      setColor(index, 241, 90, 36); //orange
    } else if (colorDraw == 7) {
      setColor(index, 96, 56, 19); //brown
    } else if (colorDraw == 8) {
      setColor(index, 0, 0, 0); //black
    } else if (colorDraw == 9) {
      setColor(index, 255, 255, 255); //white
    }
  }
}

void screenColorControl(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    int colorDraw = source.getValueI();
    if (colorDraw == 0) {
      screenColorNum = 255; //white
    } else if (colorDraw == 1) {
      screenColorNum = 200; //light grey
    } else if (colorDraw == 2) {
      screenColorNum = 102; //dark grey
    } else if (colorDraw == 3) {
      screenColorNum = 0; //black
    }
  }
}

//Reset Controls
void setExport(GEvent event) {
  if (event == GEvent.CLICKED) {
    selectSaveLoc();
  }
}

void envRButton(GEvent event) {
  if (event == GEvent.CLICKED) {
    resetEnv();
  }
}
void wavRButton(GEvent event) {
  if (event == GEvent.CLICKED) {
    resetWav();
  }
}
void calibRButton(GEvent event) {
  if (event == GEvent.CLICKED) {
    resetCalib();
  }
}
void lfoRButton(GEvent event) {
  if (event == GEvent.CLICKED) {
    resetLFO();
  }
}
