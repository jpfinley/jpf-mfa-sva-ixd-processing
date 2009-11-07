// John Finley
// jpfinley@gmail.com
// Square Lights

void setup(){
  size(403, 403);
  fill(0);
}

void draw(){
  background(255);
  
  // top left
  if(mouseX > 1 && mouseX < 202 && mouseY > 1 && mouseY < 202){
    rect(202, 1, 199, 199); // top right
    rect(1, 202, 199, 199); // bottom left
    rect(202, 202, 199, 199); // bottom right
  }

  // bottom right
  if(mouseX > 202 && mouseX < 402 && mouseY > 202 && mouseY < 402){
    rect(202, 1, 199, 199); // top right
    rect(1, 202, 199, 199); // bottom left
    rect(1, 1, 199, 199); // top left
  }

  // bottom left
  if(mouseX > 1 && mouseX < 202 && mouseY > 202 && mouseY < 402){
    rect(202, 1, 199, 199); // top right
    rect(202, 202, 199, 199); // bottom right
    rect(1, 1, 199, 199); // top left
  }

  // top right
  if(mouseX > 202 && mouseX < 402 && mouseY > 1 && mouseY < 202){
    rect(1, 202, 199, 199); // bottom left
    rect(202, 202, 199, 199); // bottom right
    rect(1, 1, 199, 199); // top left
  }
}

