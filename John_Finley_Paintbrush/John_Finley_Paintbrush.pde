//John Finley
//jpfinley@gmail.com

void setup(){
  size(420, 420);
  background(255,255,255);
  noStroke(); 
}

void draw(){
  fill(168,193,223, 114);
  rect(mouseX, mouseY, 100, 100);
  fill(221,187,77);
  rect(mouseX + 25, mouseY + 25, 50, 50);
}
