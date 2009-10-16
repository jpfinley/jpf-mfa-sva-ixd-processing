//John Finley
//jpfinley@gmail.com

class Button{
  int xpos, ypos, wth, hgt;
  
  Button(int x, int y, int w, int h){
    xpos = x;
    ypos = y;
    wth = w;
    hgt = h;
  }//end Rectangle
  
  void create(){
    fill(255,128,128);
    rect(xpos, ypos, wth, hgt);
  }
  
  void rollover(){
    fill(255,0,128);
    rect(xpos, ypos, wth, hgt);
  }
  
  void click(){
    //a new rectangle for feedback
    fill(55,0,020);
    rect(xpos, ypos, wth, hgt);   
    
    //redraw the canvas
    fill(255,255,255);
    rect(40,40,340,340);
  }
  
  //wayyyyy hacky, should subclass instead
  void print(){
    //a new rectangle for feedback
    fill(55,0,020);
    rect(xpos, ypos, wth, hgt);

    //write to disk
    save("saveee.tif");
  }
}//end ClearButton

int rectHeight = 100;
Button clearThing = new Button(160,410,100,40);
Button printThing = new Button(60,410,40,40);

void setup(){
  size(420, 480);
  noStroke();
  
  //this is the *initial* canvas on which to draw
  fill(255,255,255);
  rect(40,40,340,340);
  
  //creating our two buttons, woot woot
  clearThing.create();
  printThing.create();
}

void draw(){
  //paint the brush if the mouse is one the canvas
  //and if the brush will fit
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
  
  //if the clear button is clicked, redraw a new canvas
  if(mouseX > 160 && mouseX < 260){
    if(mouseY > 410 && mouseY < 450){
      //at this point, we have the mouse on the clear button
      
      //change the color of the button on rollover
      clearThing.rollover();
      
      //draw a new canvas on mouse click
      if(mousePressed){
        clearThing.click();
      }
    }
  }
  //refresh the button when the mouse leaves
  else{
    clearThing.create();
  }
  
  //save the file to disk when we click on the print button
  if(mouseX > 60 && mouseX < 100){
    if(mouseY > 410 && mouseY < 450){
      //we are now inside the button
      //do a rollover
      printThing.rollover();
      //save to disk on mouse click
      if(mousePressed){
        printThing.print();
      }
    }
  }
  //reset button on mouse out
  else{ printThing.create(); }
} //end draw

