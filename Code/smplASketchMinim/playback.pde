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
      lfo = resetSin;
    } else if (!lfoControl) {
      lfo = defaultLFO;
    } else {
      lfo = processLFOImage();
    }
    float[] envVals = mapADSR();
    ADSR env = genADSR(volume, envVals[0], envVals[1], envVals[3], 0.275);
    print(noteHz[noteIndex]);
    float dur = (envVals[2]*envMult) +(envMult);
    float mappedAdj = map(fineAdjust, -20.0, 20.0, noteHz[noteIndex-1]+0.5-noteHz[noteIndex], noteHz[noteIndex+1]-0.5-noteHz[noteIndex]);
    float freq = (noteHz[noteIndex]+mappedAdj)*oct[octIndex];
    out.playNote( 0.0, dur, new SmplInstrument(wav, lfo, env, freq));
  } else {
    photowaveformSmpl();
  }
}

//Playback for Photosynthesis Mode
void photowaveformSmpl() { //this is very rudimentary and will do more later
  //ArrayList<float[]> processed = processMultiImage(imageMode);
  //float photoSampleRate;
  //if (photoPitch) {
  //  photoSampleRate = (samplerate[noteIndex]+fineAdjust)/4;
  //} else {
  //  photoSampleRate = (samplerate[6]+fineAdjust)/4;
  //}

  //if (photsynthesisDots[0] == true) {
  //  float[] wavR = processed.get(0);
  //  AudioSample smplR = createSample(wavR);
  //  playWav(smplR, photoSampleRate*(1+freqArrPhotoMode[0]));
  //  playSliderEnv(smplR);
  //}
  //if (photsynthesisDots[2] == true) {
  //  float[] wavG = processed.get(1);
  //  AudioSample smplG = createSample(wavG);
  //  playWav(smplG, photoSampleRate*(1+freqArrPhotoMode[1]));
  //  playSliderEnv(smplG);
  //}
  //if (photsynthesisDots[1] == true) {
  //  float[] wavB = processed.get(2);
  //  AudioSample smplB = createSample(wavB);
  //  playWav(smplB, photoSampleRate*(1+freqArrPhotoMode[2]));
  //  playSliderEnv(smplB);
  //}
  //if (photsynthesisDots[3] == true) {
  //  float[] wavY = processed.get(3);
  //  AudioSample smplY = createSample(wavY);
  //  playWav(smplY, photoSampleRate*(1+freqArrPhotoMode[3]));
  //  playSliderEnv(smplY);
  //}
  //if (photsynthesisDots[4] == true) {
  //  float[] wavP = processed.get(4);
  //  AudioSample smplP = createSample(wavP);
  //  playWav(smplP, photoSampleRate*(1+freqArrPhotoMode[4]));
  //  playSliderEnv(smplP);
  //}
  //if (photsynthesisDots[5] == true) {
  //  float[] wavO = processed.get(5);
  //  AudioSample smplO = createSample(wavO);
  //  playWav(smplO, photoSampleRate*(1+freqArrPhotoMode[5]));
  //  playSliderEnv(smplO);
  //}
}
