//Main Program

//Global Variables and Other (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
//Static Variables, processing.java specific
int ballWidthStart, ballHeightStart, ballDiameter; //See Circle Class
//
void setup() {
  size(500, 300); //fullScreen(); //Geometry of displayWidth & displayHeight
  //
  //Population using Display Geometry
  Circle ball = new Circle(width*1/2, height*1/2, width*1/50, width*1/50); //Can create arrays here for multiple balls
  
  //
}//End setup

void draw() {
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
