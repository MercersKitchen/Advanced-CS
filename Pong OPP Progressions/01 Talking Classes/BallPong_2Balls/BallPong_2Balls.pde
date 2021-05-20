//Driver Program
//Author: Mr. Mercer; 20210517

// Objects
Ball myBall;
Ball yourBall;
PongTable table;

// Global Variables for Driver
Boolean darkModeButton = false;
float value; //placeholder variable, not secure //meant illustrate how classes communicate

void setup() {
  //size(1000, 400);
  fullScreen(); //displayWidth, displayHeight
  //Populating Objects
  myBall = new Ball (displayWidth, displayHeight); //dispalyWidth & displayHeight if using fullScreen()
  yourBall = new Ball (displayWidth, displayHeight);
  table = new PongTable (displayWidth, displayHeight, darkModeButton);
  //Setting Bottom of Table for Bouncing Pong Ball
  value = table.getScoreBoardStartY();
  myBall.setTopTable(value);
  yourBall.setTopTable(value);
  //
  value = table.getButtonStartY();
  myBall.setBottomTable(value);
  yourBall.setBottomTable(value);
  
}

void draw() {
  table.draw();
  myBall.draw();
  yourBall.draw();
}

//void keyPressed() {}

//void mousePressed() {
  //Dark Mode Button using darkModeButton
//}//End mousePressed
