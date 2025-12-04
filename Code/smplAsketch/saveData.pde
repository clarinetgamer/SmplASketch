String[] varData = new String[100];
String[] inData;

void saveAll() {
  saveColorVariableData();
  saveCalibVariables();
  saveEnvData();
  saveStrings("SaveFile.txt", varData);
}

void importPreset() {
  inData = loadStrings("SaveFile.txt");
  for (int i = 0; i < inData.length; i++) {
    println(inData[i]);
  }
  openColorVariableData();
  openCalibVariables();
  openEnvData();
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

//varData[16] = FileName.getText();
//varData[17] = (String)photsynthesisDots[0];
//varData[18] = (String)photsynthesisDots[1];
//varData[19] = (String)photsynthesisDots[2];
//varData[20] = (String)photsynthesisDots[3];
//varData[21] = (String)photsynthesisDots[4];
//varData[22] = (String)photsynthesisDots[5];
//varData[23] = (String)freqArrPhotoMode[0];
//varData[24] = (String)freqArrPhotoMode[1];
//varData[25] = (String)freqArrPhotoMode[2];
//varData[26] = (String)freqArrPhotoMode[3];
//varData[27] = (String)freqArrPhotoMode[4];
//varData[28] = (String)freqArrPhotoMode[5];
//varData[29] = (String)lfoMods[0];
//varData[30] = (String)lfoMods[1];
//varData[31] = (String)lfoMods[2];
//varData[32] = (String)lfoOn;
//varData[33] = (String)fmOn;
//varData[34] = (String)lfoControl;
//varData[35] = (String); //default index
//varData[36] = (String)sliderVals[0];
//varData[37] = (String)sliderVals[1];
//varData[38] = (String)sliderVals[2];
//varData[39] = (String)sliderVals[3];
//varData[40] = ;
//varData[41] = ;
//varData[42] = ;
//varData[43] = ;
//varData[44] = ;
//varData[45] = ;
//varData[46] = ;
//varData[47] = ;
//varData[48] = ;
//varData[49] = ;
//varData[50] = ;
//varData[51] = ;
//varData[52] = ;
//varData[53] = ;
//varData[54] = ;
//varData[55] = ;
//varData[56] = ;
//varData[57] = ;
