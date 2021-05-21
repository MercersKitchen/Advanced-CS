// Global Variables

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
  Ball myBall = new Ball(); //Line can be anywhere
  println("Exiting, not exciting."); //Ball Object immeidately deleted, local
  exit();
} //End of setup()
//Variable is garbage collected when setup() finished

void draw() {
} //End of draw() //Empty Loop

void keyPressed () {
}

void mousePressed() {
}
