// Global Variables
Ball myBall = new Ball(); //Object is Global

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
  
  //Contructor is ... illsrate numbers than ratios
  myBall.x = width*1/10; //50
  myBall.y = height*1/3; //100
  myBall.diameter = width*1/25; //20
  myBall.colour = color(31,255,3); //use hexidecimal from color selector, 
  //#1FFF03
  //
} //End of setup()
//Variable is garbage collected when setup() finished

void draw() {
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
} //End of draw() //Empty Loop

void keyPressed () {
}

void mousePressed() {
}
