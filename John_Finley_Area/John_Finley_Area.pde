//John Finley
//jpfinley@gmail.com

int rectHeight = 100;

void setup(){
  size(420, 420);
  noStroke();
  /*draw a rectangle with points at:
  40, 40
  380, 40
  380, 380
  40, 380
  If I were to put it in draw(), it would be re-drawn over and over.
  That would erase all of the things I had drawn with my paintbrush.
  */
  fill(255,255,255);
  rect(40,40,340,340);
}

void draw(){
  if(mouseX > 40 && mouseX < 380 - rectHeight){
    if(mouseY > 40 && mouseY < 380 - rectHeight){
      if(mousePressed){
        fill(168,193,223, 114);
        rect(mouseX, mouseY, rectHeight, rectHeight);
        fill(221,187,77);
        rect(mouseX + 25, mouseY + 25, rectHeight/2, rectHeight/2);
      }
    }
  }
}
