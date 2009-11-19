PImage earth;

void setup(){
  size(1064,383);
  earth = loadImage("imhof_3.jpg"); // 266 x 383
  earth.loadPixels();
  earthPixels = new int[earth.width][earth.height];
  for (int y = 0; y < earth.height; y++) {
    for (int x = 0; x < earth.width; x++) {
      color pixel = earth.get(x, mouseY); //!!!!
      values[x][y] = int(brightness(pixel));
    }
  }//end for
}//end setup

void draw(){
  background(255);
  image(earth, 0, 0);


  noStroke();
  color pixelColor = get(mouseX, mouseY);
  fill(pixelColor);
  rect(400,0,10,10);
}

