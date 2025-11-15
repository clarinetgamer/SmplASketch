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

//Wav Device Control
void  wavDeviceOn(GEvent event){
  if (event == GEvent.SELECTED) {
    wavControl = true;
  }
}

void  wavDeviceOff(GEvent event){
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
void pitchFineAdjust(GCustomSlider source, GEvent event){
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

void pitchCoarseAdjust(GCustomSlider source, GEvent event){
  if (event == GEvent.RELEASED) {
    noteIndex = source.getValueI()+1;
    pitch.setText(note[noteIndex]);
  }
}

//LFO Device Control
void  lfoDeviceOn(GEvent event){
  if (event == GEvent.SELECTED) {
    lfoControl = true;
  }
}

void  lfoDeviceOff(GEvent event){
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

//Envelope Slider Extraction
void sliderUpdate(GCustomSlider source, GEvent event, int index) {
  noSliderTouched = false;
  if (event == GEvent.RELEASED) {
    sliderVals[index] = source.getValueF();
  }
  for (float f : sliderVals) {
    println(f);
  }
}

//Photosynthesis Info Extraction
void getDropdownData(GDropList source, GEvent event, int index){
  if(event == GEvent.SELECTED){
  freqArrPhotoMode[index] = source.getSelectedIndex();
  }
}

void toggleUpdate(GEvent event, int index) {
  if (event == GEvent.CLICKED) {
    photsynthesisDots[index] = !photsynthesisDots[index];
  }
}
