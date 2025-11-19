// Need G4P library
import g4p_controls.*;


public void setup() {
  size(1512, 850, P2D);
  createGUI();
  // Place your setup code here
}

public void draw() {
  drawDarkMode();
}

void drawDarkMode() {
  background(102);
  noStroke();
  fill(51);
  rect(0, 0, 1512, 57);
  rect(0, 830, 1512, 57);
  fill(200);
  rect(420, 120, 670, 325);
}

void drawLightMode() {
  background(240);
  noStroke();
  fill(220);
  rect(0, 0, 1512, 57);
  rect(0, 830, 1512, 57);
  fill(255);
  rect(420, 120, 670, 325);
}
