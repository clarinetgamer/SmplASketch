// Help Menu
synchronized public void help_draw(PApplet appc, GWinData data) { 
  appc.background(230);
}

GWindow helpMenu;
GImageButton helpMenuImg;

void createHelpGUI() {
  helpMenu = GWindow.getWindow(this, "Help", 0, 0, 240, 480, JAVA2D);
  helpMenu.noLoop();
  helpMenu.setActionOnClose(G4P.CLOSE_WINDOW);
  helpMenu.addDrawHandler(this, "help_draw");
  helpMenuImg = new GImageButton(helpMenu, 0, 0, new String[] { "HelpMenu.png", "HelpMenu.png", "HelpMenu.png" } );
  helpMenu.loop();
}
