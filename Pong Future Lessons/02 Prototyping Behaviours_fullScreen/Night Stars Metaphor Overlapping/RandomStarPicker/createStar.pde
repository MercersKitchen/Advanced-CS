void createStar() {
  //Adjusts for overlapping off the display
  for (int i=0; i<stars.length; i++) {
    float diameterRandom = random(width*1/200, width*1/120);
    float xRandom = random (diameterRandom*1/2, displayWidth-diameterRandom*1/2); //Start with 0, displayWidth 
    float yRandom = random (diameterRandom*1/2, displayHeight-diameterRandom*1/2);
    stars[i] = new Star(xRandom, yRandom, diameterRandom);
  }//End FOR
  //Require Checking of Overlapping Stars - leads to ball bounce collision detection
}//End createStar()
//
//
