/*Note: does not work with Abstract Classes
 Reviews general classes
 */

class Ball {
  //Global Variable
  float x, y, diameter;
  color colour;
  //
  Ball(float xParameter, float yParameter, float diameterParameter) {
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
    int r = colourSelection(); //Best Practice
    int g = colourSelection();
    int b = colourSelection();
    colour = color(r, g, b); 
  }//End Ball Constructor
  //
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }//End draw()
  //
  //Procedures
  int colourSelection() {
    // randomly chosen formulaic value
    return abs ( int ( random(0-256) ) );
  }//End colourSelection
  //
  //Getters and Setters
  //
}//End Ball
