// Global Variables & Objects
Star stars;

void setup() {
  fullScreen(); //displayWidth & displayHeight //size();
  // Landscape vs. portrait views, leads to screenSize Checker
  //
  stars = new Star(width*1/2, height*1/2, width*1/120);
}

void draw() {
  stars.draw();
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}
