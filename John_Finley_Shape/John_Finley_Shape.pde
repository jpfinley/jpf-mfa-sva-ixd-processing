
int whichShape = 0;

void setup() {
  size(400, 400);
  background(0);
  smooth();
}

void draw() {

  // Paint when the mouse is pressed
  if((mousePressed) && (mouseX < 340)) {      
    if(whichShape == 0) {
      stroke(200,0,0);
      fill(200,0,0);
      triangle(mouseX, mouseY-15, mouseX+15, mouseY+15, mouseX-15, mouseY+15);
    } 
    else if(whichShape == 1) {
      stroke(0,200,0);
      fill(0,200,0);
      rect(mouseX, mouseY, 20, 20);      
    } 
  }

  // Draw the Clear Button
  fill(255);
  rect(350, 30, 30, 20);

  // Draw Shape 0 Button
  fill(200,0,0);
  triangle(360, 65, 375, 95, 345, 95);

  // Draw Shape 1 Button
  fill(0,200,0);
  line(350, 110, 20, 20);


  // Check for the click on the clear button
  if( (mousePressed) && (mouseX > 350) && (mouseX < 380) && (mouseY > 30) && (mouseY < 50) ) {
    // Refresh your screen here  
    background(0);
  }

  // Check for the click on the shape 0 button
  if( (mousePressed) && (mouseX > 350) && (mouseX < 380) && (mouseY > 80) && (mouseY < 100) ) {
    whichShape = 0;
  }

  // Check for the click on the shape 1 button
  if( (mousePressed) && (mouseX > 350) && (mouseX < 380) && (mouseY > 110) && (mouseY < 130) ) {
    whichShape = 1;
  }  
}

