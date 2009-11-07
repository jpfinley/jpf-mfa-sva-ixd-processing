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
  ground = height-boxWidth-1;
  frameRate(30);
}

void draw() {
  drawRect();
  if(yPos < ground){
    println("in while loop, position: " + yPos);
    move();
  }
  else{
    direction = direction * -1;
  }
}

void drawRect(){
  background(0);
  rect((width/2)-(boxWidth/2), yPos, boxWidth, boxWidth);
}

void move(){
  yPos = yPos + (acc * direction);
 // startHeight = startHeight + 10;
}

