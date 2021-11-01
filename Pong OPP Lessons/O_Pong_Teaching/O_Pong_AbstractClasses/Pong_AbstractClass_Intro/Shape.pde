abstract class Shape {
  //Variables

  //Constructor
  Shape(float Xparaemter, float yParameter, float wParaemter, float hParameter) {
  }//End Constructor

  abstract void draw(); //Manditory, references extended classes
  //Note: no braces, code in extended classes

  //Any other procedures common to all extended classes
  //Must be declared here, like draw();
}//End class Shape
