//When key or button on device is pressed control the code base
void keyPressed() { //test true is for keyboard control test false is ascii to talk to teensy
  if ((test == true && key == 'w')||(test == false && key == '€')) {
    wavSnap();
    println("wavSnap");
  } else if ((test == true && key == 'e')||(test == false && key == 'ƒ')) {
    lfoSnap();
    println("envSnap");
  } else if ((test == true && key == '[')||(test == false && key == '†')) {
    decLFOMult();
    println("decEnv");
  } else if ((test == true && key == ']')||(test == false && key == '‡')) {
    incLFOMult();
    println("incEnv");
  } else if ((test == true && key == '-')||(test == false && key == '‰')) {
    decWavMult();
    println("decWav");
  } else if ((test == true && key == '=')||(test == false && key == '°')) {
    incWavMult();
    println("incWav");
  } else if ((test == true && key == 's')||(test == false && key == 'Œ')) {
    smpl();
    println("smpl");
  } else if ((test == true && key == 'r')||(test == false && key == '™')) {
    resetWav();
    println("resetWav");
  } else if ((test == true && key == 't')||(test == false && key == '◊')) {
    resetLFO();
    println("resetLFO");
  } else if (key == (char)27) {//Escape key always exits program
    clearCache();
    println("Program Exit");
    exit();
  } 
}

//Counters for /\ and \/ buttons on device
void incWavMult() {
  if (wavMult < 2.0) {
    wavMult += 0.1;
  }
}

void decWavMult() {
  if (wavMult > 0.5) {
    wavMult -= 0.1;
  }
}

void incLFOMult() {
  if (lfoMult < 2.0) {
    lfoMult += 0.1;
  }
}

void decLFOMult() {
  if (lfoMult > 0.5) {
    lfoMult -= 0.1;
  }
}
