// Global Variables & Objects
Star[] stars = new Star[50]; //Star.starCount

void setup() {
  fullScreen(); //displayWidth & displayHeight //size();
  // Landscape vs. portrait views, leads to screenSize Checker
  //
  createStar();
}

void draw() {
  background(0);
  for (int i=0; i<stars.length; i++) {
    ellipse(stars[i].x, stars[i].y, stars[i].diameter, stars[i].diameter);
  }//End FOR
  
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
  createStar();
}
