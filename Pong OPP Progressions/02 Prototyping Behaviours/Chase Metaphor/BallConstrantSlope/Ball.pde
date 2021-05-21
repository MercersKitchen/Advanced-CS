class Ball {
  //Global Variables
  float x, y, diameter;
  color colour;
  float targetX, targetY;
  //
  //Ball Constructor
  Ball(float xParameter, float yParameter, float diameterParameter) {
    this.x=xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    //Random Ball Color Selector: trucating & casting
    int r = colourSection(); //Truncating the decimal by casting
    int g = colourSection();
    int b = colourSection();
    colour = color(r, g, b);
    targetX = xParameter;
    targetY = yParameter;
  }
  //
  void step() {
    if (x < targetX) {
      x += abs(targetX-x)/20;
    } else {
      x -= abs(targetX-x)/20;
    }
    if (y < targetY) {
      y += abs(targetY-y)/20;
    } else {
      y -= abs(targetY-y)/20;
    }
  }//End step()
  //
  void draw() {
    fill (colour);
    ellipse(x, y, diameter, diameter);
  }//End draw()
  //
  int colourSection() {
    return abs(int(random (0-256)));
  }//End colourSection
  //
}//End Ball
