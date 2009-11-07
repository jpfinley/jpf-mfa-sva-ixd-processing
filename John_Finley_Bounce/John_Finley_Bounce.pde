// John Finley
// jpfinley@gmail.com

// Programming Lab 2
// Bounce

int boxWidth = 20;
float yPos = 30;
float acc = 1.0; //acceleration
int startHeight = 30;
int ground=0;
int direction = 1;

void setup() {  
  size(400, 400);
  background(0);
  noStroke();
  smooth();
  ground = height-boxWidth-2;
  frameRate(30);
}

void draw() {
  drawRect();
  if(yPos < ground){
    println("moving down, position: " + yPos);
    direction = 1;
    move();
  }
  else{
    println("moving up, position: " + yPos);
    decrementStartHeight();
    direction = -1;
    move();
  }
}

void drawRect(){
  background(0);
  rect((width/2)-(boxWidth/2), yPos, boxWidth, boxWidth);
}

void move(){
  yPos = yPos + (acc * direction);
}

void decrementStartHeight(){
  startHeight = startHeight - 10;
}
