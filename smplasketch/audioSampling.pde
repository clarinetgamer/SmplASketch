float volume = 0.2;
float wavMult = 1;
float envMult = 1;

//Waveform Generation
AudioSample createSample(float[] wav) { //create sample object from float array
  AudioSample sample = new AudioSample(this, wav, 200 * camwidth);
  return sample;
}

void playWav(AudioSample sample) { //takes in sample object and plays it
  sample.rate(0.7 * wavMult); //add pitch shift due to button input
  sample.loop();
}

void playWav(AudioSample sample, float rate) { //takes in sample object and plays it
  sample.rate(rate); //add pitch shift due to button input
  sample.loop();
}


// Envelope Generation
float[] getTimeVals() { //translate envImage processing code into values needed to play the envelope back
  float[] timeVals = new float[3];
  float[] splits = processEnvImage();
  timeVals[0] = (splits[0]/100) * 0.45;
  timeVals[1] = ((splits[1]-splits[0])/100) * 0.45;
  timeVals[2] = ((100-splits[1])/100) * 0.45;
  return timeVals;
}

void playEnv(AudioSample sample) { //takes in a sample object and using the variables plays an envelope
  Env env = new Env(this);
  float[] time = getTimeVals();
  float attackTime = time[0];
  float sustainTime = time[1];
  float releaseTime = time[2];
  env.play(sample, attackTime * envMult, sustainTime * envMult, 1.0, releaseTime);
}

void playDemoEnv(AudioSample sample) { //takes in a demo object and using the variables plays a demo envelope
  Env env = new Env(this);
  float[] time = resetEnv;
  float attackTime = time[0];
  float sustainTime = time[1];
  float releaseTime = time[2];
  env.play(sample, attackTime * envMult, sustainTime * envMult, 1.0, releaseTime);
}
