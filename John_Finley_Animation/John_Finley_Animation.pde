// John Finley
// jpfinley@gmail.com

// Programming Lab 2
int x, y = 0;

void setup() {  
  size(400, 400);
  background(0);
  noStroke();
  fill(33, 157, 255);
  smooth();
  x = 0;
  y = 400;
}

void draw() {
    
    // Move the TeddyBear 1 pixel to the right
    x = x + 1;
    
    // Check if TeddyBear is over the right edge of the sketch
    if(x > 400) { 
      x = 0; 
    }
    
    // Move TeddyBear 1 pixel up
    y = y - 1; 
    
    // Check if TeddyBear is over the top edge of the sketch
    if(y < 0) {
      y = 400; 
    }
  
  
  background(0);
  //Nerdglasses McGee
  fill(33, 157, 255);
  ellipse(x-15, y, 20, 20); //eye1
  ellipse(x+15, y, 20, 20); //eye2
  rect(x-35, y-3, 70, 5); //bridge
  stroke(33, 157, 255);
  line(x-35, y-3, x-15, y-50); //arm1
  line(x+35, y-3, x+15, y-50); //arm2
}

