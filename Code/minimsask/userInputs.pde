float[] defaultWav = resetSin;
float[] defaultLFO = resetSin;

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

void envMenuStart() {
  attack_slider.setLimits(5, 0, 10);
  sustain_slider.setLimits(5.005, 0.01, 10);
  release_slider.setLimits(5, 0, 10);
  sliderVals = new float[]{5, 5, 5};
  clearEnv = true;
  envMult = 1;
  envDur_slider1.setLimits(1.25, 0.5, 2.0);
}

void sliderUpdate(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    sliderVals[index] = source.getValueF();
  }
  for (float f : sliderVals) {
    println(f);
  }
}

//Main Window
void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
}
