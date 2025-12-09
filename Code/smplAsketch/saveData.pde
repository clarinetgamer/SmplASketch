String[] varData = new String[42];
String[] inData;

PImage savWav;
PImage savLFO;

void saveAll() {
  saveColorVariableData();
  saveCalibVariables();
  saveEnvData();
  saveMainControls();
  saveWavControls();
  saveLFOControls();
  saveStrings(savePresetLoc+"/"+trueFileName+".smpl", varData);
  saveImages();
}

void importPreset(String loc) {
  inData = loadStrings(loc);
  String revloc = reviseLoc(loc);
  openImages(revloc);
  openColorVariableData();
  openCalibVariables();
  openEnvData();
  openMainControls();
  openWavControls();
  openLFOControls();
}

String reviseLoc(String loc) {
  char[] chars = loc.toCharArray();
  int dot = 0;
  for (int i = 0; i < loc.length(); i ++) {
    if (chars[i] == '.') dot = i;
  }
  String modSelection = loc;
  if (dot != 0) {
    modSelection = "";
    for (int i = 0; i < dot; i ++) {
      modSelection += chars[i];
    }
  }
  println(modSelection);
  println();
  return modSelection;
}

void saveColorVariableData() {//15Vars
  varData[0] = Integer.toString(drawColor[0][0]);
  varData[1] = Integer.toString(drawColor[0][1]);
  varData[2] = Integer.toString(drawColor[0][2]);
  varData[3] = Integer.toString(drawColor[1][0]);
  varData[4] = Integer.toString(drawColor[1][1]);
  varData[5] = Integer.toString(drawColor[1][2]);
  varData[6] = Integer.toString(drawColor[2][0]);
  varData[7] = Integer.toString(drawColor[2][1]);
  varData[8] = Integer.toString(drawColor[2][2]);
  varData[9] = Integer.toString(screenColorNum);
  varData[10] = Integer.toString(thickStroke);
  varData[11] = Integer.toString(saveColor[0]);
  varData[12] = Integer.toString(saveColor[1]);
  varData[13] = Integer.toString(saveColor[2]);
  varData[14] = Integer.toString(screenSlide);
}

void saveCalibVariables() {
  varData[15] = String.valueOf(camVsCapCalib);
  varData[16] = String.valueOf(extraction);
  varData[17] = Float.toString(threshold);
  varData[18] = Float.toString(shift);
}

void saveEnvData() {
  varData[19] = Float.toString(sliderVals[0]);
  varData[20] = Float.toString(sliderVals[1]);
  varData[21] = Float.toString(sliderVals[2]);
  varData[22] = Float.toString(sliderVals[3]);
}

void saveMainControls() {
  varData[23] = note[noteIndex];
  varData[24] = Float.toString(volume);
  varData[25] = fileName.getPromptText();
  varData[26] = wavSlot.getText();
  varData[27] = LFOSlot.getText();
  varData[28] = Float.toString(envMult);
  varData[29] = Integer.toString(octIndex);
  varData[30] = String.valueOf(photoPitch);
}

void saveWavControls() {
  varData[31] = Integer.toString(indexForDefWav);
  varData[32] = Float.toString(fineAdjust);
  varData[33] = Integer.toString(noteIndex);
  varData[34] = String.valueOf(wavControl);
}
void saveLFOControls() {
  varData[35] = Integer.toString(indexForDefLFO);
  varData[36] = Float.toString(lfoMods[0]);
  varData[37] = Float.toString(lfoMods[1]);
  varData[38] = Float.toString(lfoMods[2]);
  varData[39] = String.valueOf(lfoOn);
  varData[40] = String.valueOf(fmOn);
  varData[41] = String.valueOf(lfoControl);
}

void saveImages() {
  if(!varData[26].equals("Empty")){
  savWav = wavImg;
  savWav.save(savePresetLoc+"/"+trueFileName+"wavPreset.jpg");
  }
  if(!varData[27].equals("Empty")){
  savLFO = lfoImg;
  savLFO.save(savePresetLoc+"/"+trueFileName+"lfoPreset.jpg");
  }
}

void openImages(String loc) {
  if(!inData[26].equals("Empty")){
    try{
      wavImg = loadImage(loc+"wavPreset.jpg");
      clearWav = false;
    } catch(Exception e) {
    inData[26] = "In Use";
    }
  
  }
  if(!inData[27].equals("Empty")){
    try{
      lfoImg = loadImage(loc+"lfoPreset.jpg");
      clearLFO = false;
    } catch(Exception e) {
    inData[27] = "In Use";
    }
  }

}

void openWavControls() {
  indexForDefWav = Integer.valueOf(inData[31]);
  fineAdjust = Float.valueOf(inData[32]);
  noteIndex = Integer.valueOf(inData[33]);
  wavControl = Boolean.valueOf(inData[34]);
  if (indexForDefWav == 0) {
    defaultSin(true);
    sinButt.setSelected(true);
  } else if (indexForDefWav == 1) {
    defaultTri(true);
    triButt.setSelected(true);
  } else if (indexForDefWav == 2) {
    defaultRamp(true);
    rampButt.setSelected(true);
  } else if (indexForDefWav == 3) {
    defaultSqr(true);
    sqrButt.setSelected(true);
  } else if (indexForDefWav == 4) {
    defaultSaw(true);
    sawButt.setSelected(true);
  } else if (indexForDefWav == 5) {
    defaultStep(true);
    stepButt.setSelected(true);
  }
  freq_slider1.setLimits(fineAdjust, -20.0, 20.0);
  bigtone_slider1.setLimits(noteIndex-1, 0, 12);
  if (wavControl) {
    DevControWav.setSelected(true);
  } else {
    DefaultWav.setSelected(true);
  }
}

void openLFOControls() {
  indexForDefLFO = Integer.valueOf(inData[35]);
  lfoMods[0] = Float.valueOf(inData[36]);
  lfoMods[1] = Float.valueOf(inData[37]);
  lfoMods[2] = Float.valueOf(inData[38]);
  lfoOn = Boolean.valueOf(inData[39]);
  fmOn = Boolean.valueOf(inData[40]);
  lfoControl = Boolean.valueOf(inData[41]);
  if (indexForDefLFO == 0) {
    defaultSin(false);
    lfosin.setSelected(true);
  } else if (indexForDefLFO == 1) {
    defaultTri(false);
    lfotri.setSelected(true);
  } else if (indexForDefLFO == 2) {
    defaultRamp(false);
    lforamp.setSelected(true);
  } else if (indexForDefLFO == 3) {
    defaultSqr(false);
    lfosqr.setSelected(true);
  } else if (indexForDefLFO == 4) {
    defaultSaw(false);
    lfosaw.setSelected(true);
  } else if (indexForDefLFO == 5) {
    defaultStep(false);
    lfostep.setSelected(true);
  }
  if (lfoOn) {
    lfoOnSwitch.setSelected(true);
  } else {
    lfoOnSwitch.setSelected(false);
  }
  if (fmOn) {
    fmTog.setSelected(true);
  } else {
    amTog.setSelected(true);
  }
  if (lfoControl) {
    lfosaveslot.setSelected(true);
  } else {
    defaulttheLFO.setSelected(true);
  }
  lfoLen_slider1.setLimits( lfoMods[0], 0.0, 1.0);
  lowFreq_slider2.setLimits( lfoMods[1], 0.0, 1.0);
  highFreq_slider1.setLimits( lfoMods[2], 0.0, 1.0);
}

void openMainControls() {
  note[noteIndex] = inData[23];
  volume = Float.valueOf(inData[24]);
  fileName.setPromptText(inData[25]);
  wavSlot.setText(inData[26]);
  LFOSlot.setText(inData[27]);
  envMult= Float.valueOf(inData[28]);
  octIndex= Integer.valueOf(inData[29]);
  photoPitch = Boolean.valueOf(inData[30]);
  pitch.setText(note[noteIndex]);
  volknob1.setLimits(volume*10, 0.0, 10.0);
  psPitch.setSelected(photoPitch);
  envDur_slider1.setLimits(envMult, 0.5, 2.0);
  octave_slider1.setLimits(octIndex, 0.0, 4.0);
}

void openEnvData() {
  sliderVals[0] = Float.valueOf(inData[19]);
  sliderVals[1] = Float.valueOf(inData[20]);
  sliderVals[2] = Float.valueOf(inData[21]);
  sliderVals[3] = Float.valueOf(inData[22]);
  attack_slider.setLimits(Float.valueOf(inData[19]), 0.0, 10.0);
  decay_slider1.setLimits(Float.valueOf(inData[20]), 0.0, 10.0);
  sustain_slider.setLimits(Float.valueOf(inData[21]), 0.0, 10.0);
  release_slider.setLimits(Float.valueOf(inData[22]), 0.0, 10.0);
}

void openCalibVariables() {
  camVsCapCalib = Boolean.valueOf(inData[15]);
  extraction =Boolean.valueOf(inData[16]);
  threshold =Float.valueOf(inData[17]);
  shift =Float.valueOf(inData[18]);
  showCam.setSelected(camVsCapCalib);
  capturecali.setSelected(!camVsCapCalib);
  showExtract.setSelected(extraction);
  threshold_slider1.setLimits(Float.valueOf(inData[17]), 0.591, 0.991);
  zoom_slider2.setLimits(Float.valueOf(inData[18]), 0.8, 1.2);
}

void openColorVariableData() {
  drawColor[0][0] = Integer.valueOf(inData[0]);
  drawColor[0][1] = Integer.valueOf(inData[1]);
  drawColor[0][2] = Integer.valueOf(inData[2]);
  int wInd = Integer.valueOf(inData[11]);
  wavColor.setLimits(wInd, 0, 9);
  drawColor[1][0] = Integer.valueOf(inData[3]);
  drawColor[1][1] = Integer.valueOf(inData[4]);
  drawColor[1][2] = Integer.valueOf(inData[5]);
  int eInd = Integer.valueOf(inData[12]);
  envColor.setLimits(eInd, 0, 9);
  drawColor[2][0]= Integer.valueOf(inData[6]);
  drawColor[2][1]= Integer.valueOf(inData[7]);
  drawColor[2][2] = Integer.valueOf(inData[8]);
  int lInd = Integer.valueOf(inData[13]);
  lfoColor.setLimits(lInd, 0, 9);
  screenColorNum = Integer.valueOf(inData[9]);
  thickStroke = Integer.valueOf(inData[10]);
  screenColor.setLimits(Integer.valueOf(inData[14]), 0, 3);
  thickness.setLimits(Integer.valueOf(inData[10]), 1, 10);
}
