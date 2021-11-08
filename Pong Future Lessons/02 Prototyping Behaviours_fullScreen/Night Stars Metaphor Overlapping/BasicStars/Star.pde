class Star {
  //Global Variables
  float x, y, diameter;
  //
  Star(float xParameter, float yParameter, float diameterParameter) {
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
  }//End Constructor
  //
  void draw() {
    ellipse(x, y, diameter, diameter);
  }//End draw()
  //
}//End Star
