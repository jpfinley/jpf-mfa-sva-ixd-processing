// John Finley
// jpfinley@gmail.com

// Programming Lab 2
// Bounce

int boxSize = 10;
int boxPos = 0;

float a = 0.0;
float span = 90.0;

void setup() {  
  size(200, 200);
  background(0);
  noStroke();
  smooth();
}

void draw() {
  for(int i=0; i<100; i++) {
    background(0);
    rect((width/2)-(boxSize/2), ((height/2)+sin(a)*span), boxSize, boxSize);
    a--;
  }
}
