//Table Class or Obect (1 table)
//
//To Do List

class PongTable {
  color tableColour, lineColour;
  Boolean darkMode;
  float scoreBoardStartX, scoreBoardStartY, scoreBoardEndX, scoreBoardEndY; 
  float buttonStartX, buttonStartY, buttonEndX, buttonEndY;

  PongTable(int displayWidth, int displayHeight, Boolean darkMode) {
    checkGeometry(displayWidth, displayHeight); //Since Geomtery can change at anytime, this needs to be checked every time
    this.darkMode = darkMode;
    darkMode(darkMode);
    this.scoreBoardStartX = displayWidth*0;
    this.scoreBoardStartY = displayHeight*1/10;
    this.scoreBoardEndX = displayWidth;
    this.scoreBoardEndY = scoreBoardStartY;
    this.buttonStartX = displayWidth*0;
    this.buttonStartY = displayHeight*9/10;
    this.buttonEndX = displayWidth;
    this.buttonEndY = buttonStartY;
  }//End Constructor
  //
  void draw() {
    darkMode(darkMode);
    background(tableColour); //Grey Scale
    strokeWeight(10);
    line(scoreBoardStartX, scoreBoardStartY, scoreBoardEndX, scoreBoardEndY);
    line(buttonStartX, buttonStartY, buttonEndX, buttonEndY);
    strokeWeight(1); //Resetting Default
  }
  //
  void darkMode(Boolean darkMode) {
    if (darkMode == true) {
      tableColour = 0;
      lineColour = 255;
    } else {
      tableColour = 255;
      lineColour = 0;
    }
  }//End darkMode
  //
  void checkGeometry(float displayWidth, float displayHeight) {
    //Note: this demosntrates 2-IFs but should be rewritten as single IF with single conditional
    if (displayWidth > displayHeight) { //Landscape Orientation
      //CAUTION: this should print to Canvas "Press Screen to Start or Space Bar"
      println("Let's Play");
      return;
    } //Check Acceptable Table
    if (displayWidth <= displayHeight) { //Square or Portrait Orientation
      println("Pong Table looks odd, adjust the orientation so the width is longer than the height.");
      exit(); //finished current procedure, then exits program
    }
  }//End checkGeometry()
  //
  //Getters
  float getScoreBoardStartY() {
    return scoreBoardStartY;
  }
  float getButtonStartY() {
    return buttonStartY;
  }
  /*
  float getButtonEndX() {
   return buttonEndX;
   }
   float getButtonEndY() {
   return buttonEndY;
   }
   */
}
