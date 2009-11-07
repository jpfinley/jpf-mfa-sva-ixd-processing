// John Finley
// jpfinley@gmail.com

// Programming Lab 2

// Put your variables here
int redColor, blueColor, greenColor = 0;

// Template Program for HW E
void setup() {  
  size(400, 400);
  background(255);
}

void draw() {
  // When the mouse is pressed an ellipse is drawn on the screen.
  if(mousePressed) {
    fill(redColor, blueColor, greenColor);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
  }

  // Draw the left button
  fill(123, 72, 222); //purple
  stroke(0);
  rect(80, 350, 30, 30);

  // Draw the left button
  fill(56,198,112); //green
  stroke(0);
  rect(120, 350, 30, 30);

  // Check for the click on the left button
  if( (mousePressed) && (mouseX > 80) && (mouseX < 110) && (mouseY > 350) && (mouseY < 380) ) {
    redColor = 123;
    blueColor = 72;
    greenColor = 222;
  }

  // Check for the click on the right button
  if( (mousePressed) && (mouseX > 120) && (mouseX < 150) && (mouseY > 350) && (mouseY < 380) ) {
    redColor = 56;
    blueColor = 198;
    greenColor = 122;
  }   
}

