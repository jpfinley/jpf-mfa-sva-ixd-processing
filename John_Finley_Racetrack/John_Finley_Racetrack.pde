// John Finley
// jpfinley@gmail.com
// Racetrack

int boxSize = 10;
int xPos = 0;
int yPos = 0;

void setup(){
  size(200, 200);
  noStroke();
  frameRate(300);
}

void draw(){
  if((width-boxSize) > xPos && (yPos == 0)){
    background(0);
    rect(xPos, yPos, boxSize, boxSize);
    xPos++;
  }
  else if((height-boxSize) >= yPos && (xPos == width-boxSize)){
    background(0);
    rect(xPos, yPos, boxSize, boxSize);
    yPos++;
  }
  else if( xPos > 0){
    background(0);
    rect(xPos, yPos, boxSize, boxSize);
    xPos--;
  }
  else{
    background(0);
    rect(xPos, yPos, boxSize, boxSize);
    yPos--;
  }
}
