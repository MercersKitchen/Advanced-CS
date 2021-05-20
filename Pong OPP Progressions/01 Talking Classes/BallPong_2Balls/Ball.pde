//Ball Object
//
//To Do List
//How many balls are in play - 3, means Array List (many objects)
//Where does the ball start? (Middle first, then programming a serve with different behaviour)

class Ball {
  float x, y, diameterX, diameterY, xSpeed, ySpeed; //Ball Variables
  float topTable, bottomTable;
  color ballColour, defaultColour=#FFFFFF;

  Ball(int displayWidth, int displayHeight) {
    this.x = displayWidth/2;
    this.y = displayHeight/2;
    this.diameterX = displayHeight/60; //using smaler dimension
    this.diameterY = diameterX;
    this.ballColour = color(int(random(75, 175)), int(random(75, 175)), int(random(75, 175)));
    this.xSpeed = random(0, 5);
    this.ySpeed = random(0, 5);
  } //End Constructor

  void move () {
    if (x-(diameterX*0.5)+xSpeed < 0 || x+(diameterX*0.5)+xSpeed > displayWidth) xSpeed *= -1; //notice ball radius for bounce
    if (y-(diameterY*0.5)+ySpeed < topTable || y+(diameterY*0.5)+ySpeed > bottomTable) ySpeed *= -1; //notice ball radius for bounce
    //
    x += xSpeed;
    y += ySpeed;
  }//End move()


  void draw() {
    noStroke();
    fill(ballColour); //Ball Colour
    ellipse(x, y, diameterX, diameterY); 
    move(); //Draws ball, then moves ball for next drawing
    fill(defaultColour);
    stroke(1); //Reset Default
  }//End draw()
  //
  //Setters
  void setTopTable(float value) {
    topTable = value;
  }//End
  void setBottomTable(float value) {
    bottomTable = value;
  }//End
  //
}
