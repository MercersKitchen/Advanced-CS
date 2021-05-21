// Illustrates first Interface

ArrayList<Drawable> shapes = new ArrayList<Drawable>();

void setup() {
  size(100, 100);

  shapes.add(new Rectangle(10, 10, 80, 10, color(255, 0, 0)));
  shapes.add(new Circle(40, 60, 20, color(0, 255, 0)));
 }

void draw() {
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
}

//First Example
//Not a class
//Cannot be instantiated like a class with Drawable d = new Drawable(); 
interface Drawable {
  void draw();
}

class Rectangle implements Drawable {

  float x;
  float y;
  float width;
  float height;
  color c;

  Rectangle(float x, float y, float width, float height, color c) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.c = c;
  } 

  void draw() {
    fill(c);
    rect(x, y, width, height);
  }
}

class Circle implements Drawable{

  float x;
  float y;
  float radius;
  color c;

  Circle(float x, float y, float radius, color c){
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.c = c;
  }

  void draw(){
    fill(c);
    ellipse(x, y, radius, radius);
  }
}