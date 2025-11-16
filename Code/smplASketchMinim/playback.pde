//Frequency Variables
String[] note = {"", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", ""};
float[] noteHz = {Frequency.ofPitch("F#2").asHz(),
  Frequency.ofPitch("F#3").asHz(),
  Frequency.ofPitch("G3").asHz(),
  Frequency.ofPitch("G#3").asHz(),
  Frequency.ofPitch("A3").asHz(),
  Frequency.ofPitch("A#3").asHz(),
  Frequency.ofPitch("B3").asHz(),
  Frequency.ofPitch("C4").asHz(),
  Frequency.ofPitch("C#4").asHz(),
  Frequency.ofPitch("D4").asHz(),
  Frequency.ofPitch("D#4").asHz(),
  Frequency.ofPitch("E4").asHz(),
  Frequency.ofPitch("F4").asHz(),
  Frequency.ofPitch("F#4").asHz(),
  Frequency.ofPitch("G4").asHz()};
float fineAdjust = 0.0;
float[] oct = {0.25, 0.5, 1.0, 2.0, 4.0};
int noteIndex = 7;
int octIndex = 2;
//PS Wav Usage
float[] wavR;
float[] wavG;
float[] wavB;
float[] wavY;
float[] wavP;
float[] wavO;
boolean[] wavSet = {false, false, false, false, false, false};
boolean recordEnabled=false;


//ADSR Generation Code
float[] mapADSR() {
  float attack;
  float decay;
  float sustain;
  float release;
  if (noSliderTouched) {
    attack = 0.5;
    decay = 0.5;
    sustain = 0.5;
    release = 0.5;
  } else {
    attack = map(sliderVals[0], 0, 10, 0., 1.);
    decay = map(sliderVals[1], 0, 10, 0., 1.);
    sustain = map(sliderVals[2], 0, 10, 0., 1.);
    release = map(sliderVals[3], 0, 10, 0., 1.);
  }
  return new float[]{attack*envMult, decay*envMult, sustain*envMult, release*envMult};
}

ADSR genADSR(float maxAmp, float attTime, float decTime, float relTime, float susLvl) {
  return new ADSR( maxAmp, attTime, decTime, susLvl, relTime );
}


//Playback Master Function
void smpl() {
  if (!showPlayLine) {
    noShow = true;
    linecounter = 700;
  } else {
    linecounter = 0;
  }
  if (mode != 4.0) {
    float[] wav;
    float[] lfo;
    if (clearWav && wavControl) {
      wav = resetSin;
    } else if (!wavControl) {
      wav = defaultWav;
    } else {
      wav = processWavImage();
    }
    if (clearLFO && lfoControl) {
      lfo = invertFlArr(genSinWav());
    } else if (!lfoControl) {
      lfo = invertFlArr(defaultLFO);
    } else {
      lfo = invertFlArr(processLFOImage());
    }
    float[] envVals = mapADSR();
    ADSR env = genADSR(volume, envVals[0], envVals[1], envVals[3], 0.275);
    float dur = (envVals[2]*envMult) +(envMult);
    float mappedAdj = map(fineAdjust, -20.0, 20.0, noteHz[noteIndex-1]+0.5-noteHz[noteIndex], noteHz[noteIndex+1]-0.5-noteHz[noteIndex]);
    float freq = (noteHz[noteIndex]+mappedAdj)*oct[octIndex];
    if (recordEnabled) {
      recorder.beginRecord();
    }
    out.playNote( 0.0, dur, new SmplInstrument(wav, lfo, env, freq));
    if (recordEnabled) {
      wait(9000);
      recorder.endRecord();
      recorder.save();
    }
  } else {
    photowaveformSmpl();
  }
}

//Playback for Photosynthesis Mode
void photowaveformSmpl() {
  ArrayList<float[]> processed = processMultiImage(imageMode);
  float photoSampleRate;
  if (photoPitch) {
    photoSampleRate = (noteHz[noteIndex]+fineAdjust)/2;
  } else {
    photoSampleRate = (noteHz[7]+fineAdjust)/2;
  }
  if (photsynthesisDots[0] == true) {
    wavR = processed.get(0);
    wavSet[0] = true;
  } else {
    wavSet[0] = false;
  }
  if (photsynthesisDots[2] == true) {
    wavG = processed.get(1);
    wavSet[1] = true;
  } else {
    wavSet[1] = false;
  }
  if (photsynthesisDots[1] == true) {
    wavB = processed.get(2);
    wavSet[2] = true;
  } else {
    wavSet[2] = false;
  }
  if (photsynthesisDots[3] == true) {
    wavY = processed.get(3);
    wavSet[3] = true;
  } else {
    wavSet[3] = false;
  }
  if (photsynthesisDots[4] == true) {
    wavP = processed.get(4);
    wavSet[4] = true;
  } else {
    wavSet[4] = false;
  }
  if (photsynthesisDots[5] == true) {
    wavO = processed.get(5);
    wavSet[5] = true;
  } else {
    wavSet[5] = false;
  }

  float[] envVals = mapADSR();
  ADSR env = genADSR(volume, envVals[0], envVals[1], envVals[3], 0.275);
  float dur = (envVals[2]*envMult) +(envMult);
  if (recordEnabled) {
    recorder.beginRecord();
  }
  out.playNote( 0.0, dur, new Photosynthesizer(wavR, wavG, wavB, wavY, wavP, wavO, env, photoSampleRate, freqArrPhotoMode, wavSet));
  if (recordEnabled) {
    wait(9000);
    recorder.endRecord();
    recorder.save();
  }
}
