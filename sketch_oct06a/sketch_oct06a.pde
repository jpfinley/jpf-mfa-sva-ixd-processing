//let's make a generic rectangle
class Rectangle{
  int xpos = width/2;
  int ypos = height/2;
  Rectangle (int x, int y) {
    xpos = x;
    ypos = y;
  }
  void reDraw(){
    rect(xpos, ypos, 100, 100);
    xpos = +10;
    ypos = +10;
  }
}

//setting up the instance of a rectangle
Rectangle r1 = new Rectangle(mouseX, mouseY);
  
//gimme a canvas
void setup(){
  size(200, 200);
}

//make a bkgrnd and draw the rectangle
void draw(){
  background(0,0,0);
  r1.reDraw();
}
