class Circle extends Shape {
  //Variables
  //
  //Static Variables exist without a Constructor
  //static int ballWidthStart, ballHeightStart, ballDiameter;
  //
  //Constructor
  Circle(float xParameter, float yParameter, float wParaemter, float hParameter) {
    super(x,y,w,h);
  }//End Constructor
  //
  void draw() {
    ellipse(x, y, w, h);
  }//End draw()
  //
  //
}//End class Circle
