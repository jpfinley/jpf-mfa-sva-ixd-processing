int boxSize = 10;
//int dec = 2;

float boxPos = 10;
float velo = 0;
float acc = 0.02;

boolean descending = true;

void setup() {  
  size(200, 200);
  background(0);
  noStroke();
  smooth();
}

void draw() {
  println(descending); // for debugging
  bounce();
  boxDraw();
}

void bounce(){
  if(descending){ //going down
    if(boxPos > (height - boxSize)){ //we have reached the bottom
      descending = false;
    }
    else{ //not yet at bottom
      boxPos = boxPos + velo;
      velo = velo + acc;
    }
  } //descending
  else{ //ascending now
    if(velo <= 0){ //we have reached the top
      descending = true;
    }
    else{
      boxPos = boxPos - velo;
      velo = velo - acc;
    }
  }
} //end bounce

void boxDraw(){
  background(0);
  rect((width/2)-(boxSize/2), boxPos, boxSize, boxSize);
}
