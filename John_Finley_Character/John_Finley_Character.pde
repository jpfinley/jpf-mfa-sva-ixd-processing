// John Finley
// jpfinley@gmail.com

// Programming Lab 2


void setup() {  
  size(400, 400);
  background(0);
  noStroke();
  fill(33, 157, 255);
  smooth();
}

void draw() {
  background(0);
  //Nerdglasses McGee
  fill(33, 157, 255);
  ellipse(mouseX-15, mouseY, 20, 20); //eye1
  ellipse(mouseX+15, mouseY, 20, 20); //eye2
  rect(mouseX-35, mouseY-3, 70, 5); //bridge
  stroke(33, 157, 255);
  line(mouseX-35, mouseY-3, mouseX-15, mouseY-50); //arm1
  line(mouseX+35, mouseY-3, mouseX+15, mouseY-50); //arm2
}

