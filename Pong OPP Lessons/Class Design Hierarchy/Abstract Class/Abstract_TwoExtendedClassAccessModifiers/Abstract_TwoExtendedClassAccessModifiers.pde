// Global Variables
private ArrayList<Shape> shapes = new ArrayList<Shape>();
private Circle cHex;

public void setup() {
  size(500, 300);

  Rectangle rHex = new Rectangle (width*1/4, height*1/4, width*2/4, height*2/4, #0319FC);
  Rectangle rRGB = new Rectangle (width*3/5, height*3/5, width*1/5, height*1/5, color(random(255), random(255), random(255)) );
  cHex = new Circle(width*1/2, height*1/2, width*1/4, width*1/4, #FFF703);

  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cHex);
}

public void draw() {
  background(0);
  for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }
  cHex.step();
  shapes.get(2).draw();
}

private abstract class Shape {
  public float x;
  public float y;
  public float w;
  public float h;
  //Mistake with hierarchy variables

  //Parameter from extended declaration-population enters abstract constructor and any manipulation here is executed
  //Then variable is passed to super() in exended class
  //Thus, number and order of abstract constructor parameters must match extended constructors
  private Shape (float xParameter, float yParameter, float wParameter, float hParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.w = wParameter;
    this.h = hParameter;
  }//End Constructor

  public abstract void draw();
}//End class Shape