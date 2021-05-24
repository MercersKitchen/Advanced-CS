private class Rectangle extends Shape {
  //Varaibles
  private color colour;

  //Constructor
  //Note: if super-type variable is manipulated here, manipulation from abstract constructor is ignored
  //Only manipulation code here executed
  //CAUTION: in manipulation ignored, parameter entering here is from extended declaration-population
  //Order of abstract and extended parameters and types important in design 
  private Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this.colour = c;
  }//End Constructor

  public void draw() {
    fill(colour);
    rect(x, y, w, h);
  }//End draw()
}//End clas Rectangle
