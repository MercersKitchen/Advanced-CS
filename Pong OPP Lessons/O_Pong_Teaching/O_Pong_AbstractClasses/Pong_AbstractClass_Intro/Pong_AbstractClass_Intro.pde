//Main Program

//Global Variables and Other (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
//Static Variables, processing.java specificm, similar to final
//See Circle Class
//
void setup() {
  size(500, 300); //fullScreen(); //Geometry of displayWidth & displayHeight
  //
  //Population using Display Geometry
  final int ballWidthStart = width*1/2; //Garbage Collected
  final int ballHeightStart = height*1/2;
  final int ballDiameter = width*1/50;
  Circle ball = new Circle(ballWidthStart, ballHeightStart, ballDiameter, ballDiameter); //Can create arrays here for multiple balls
  
  //
}//End setup

void draw() {
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
