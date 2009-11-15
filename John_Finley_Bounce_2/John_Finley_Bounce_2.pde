int boxSize = 10;
int startHeight = 20;
int boxPos = startHeight;

boolean descending = true;

void setup() {  
  size(200, 200);
  background(0);
  noStroke();
  smooth();
}

void draw() {
  if(descending){
    boxDraw();
    boxPos++;
    
    if(boxPos == (height-boxSize)){
      startHeight = startHeight + 20;
      println(startHeight);
      descending = false;
    }
    if(startHeight == 200){
      boxDraw();
    }
  }
  else{
    boxDraw();
    boxPos--;
    
    if(boxPos == startHeight){
      descending = true;
    }
  }
} //end draw

void boxDraw(){
  background(0);
  rect((width/2)-(boxSize/2), boxPos, boxSize, boxSize);
}
