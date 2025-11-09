String saveLoc = "";

void selectSaveLoc() {
  selectFolder("Select a folder to process:", "folderSelected");
}

void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    saveLoc = selection.getAbsolutePath();
    exportLocLabel.setText(getShortFileName(selection.getAbsolutePath()));
  }
}


void selectPhotosynthesisFile() {
  selectInput("Select an image to process:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FileName.setText(getShortFileName(selection.getAbsolutePath()));
    imageMode = loadImage(selection.getAbsolutePath());
    imageMode.resize(camwidth, camheight);
    photsynthesisImage = new GImageButton(this, 1241, 662, 218, 159, new String[] { selection.getAbsolutePath(), selection.getAbsolutePath(), selection.getAbsolutePath() } );
  }
}

String getShortFileName(String selection) {
  char[] chars = selection.toCharArray();
  int lastSlash = 0;
  for (int i = 0; i < selection.length(); i ++) {
    if (chars[i] == '/') lastSlash = i;
  }
  String modSelection = selection;
  if (lastSlash != 0) {
    modSelection = "";
    for (int i = lastSlash+1; i < selection.length(); i ++) {
      modSelection += chars[i];
    }
  }
  if (modSelection.length() >= 40){
  char[] modchararr = modSelection.toCharArray();
  String temp = "";
  for (int i = 0; i < 40; i ++) {
    temp += modchararr[i];
  }
  temp += "...";
  modSelection = temp;
  }
  return modSelection;
}

void helpButton() {
  link("https://github.com/clarinetgamer/SmplASketch");
}
