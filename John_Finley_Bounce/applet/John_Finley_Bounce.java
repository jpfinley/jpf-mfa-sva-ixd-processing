import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class John_Finley_Bounce extends PApplet {

// John Finley
// jpfinley@gmail.com

// Programming Lab 2
// Bounce

int boxWidth = 20;
float yPos = 30;
float acc = 1.0f; //acceleration
int startHeight = 30;
int ground=0;
int direction = 1;

public void setup() {  
  size(400, 400);
  background(0);
  noStroke();
  smooth();
  ground = height-boxWidth-1;
  frameRate(30);
}

public void draw() {
  drawRect();
  if(yPos < ground){
    println("in while loop, position: " + yPos);
    move();
  }
  else{
    direction = direction * -1;
  }
}

public void drawRect(){
  background(0);
  rect((width/2)-(boxWidth/2), yPos, boxWidth, boxWidth);
}

public void move(){
  yPos = yPos + (acc * direction);
 // startHeight = startHeight + 10;
}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "John_Finley_Bounce" });
  }
}
