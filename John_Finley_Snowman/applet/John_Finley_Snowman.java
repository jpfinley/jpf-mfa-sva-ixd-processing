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

public class John_Finley_Snowman extends PApplet {

// Add your variables here
public void setup() {
  size(600, 600);  
}
public void draw() {
  background(255);
  house(100, 100);
  snowMan(150, 110);
  snowMan(150, 400);
  snowMan(200, 300); 
  snowMan(475, 110);
  tree(260);
}

// Draws a house
// xpos - the x position of the house
// ypos - the y position of the house
public void house(int xpos, int ypos) {
  stroke(0,0,255);
  fill(0,0,255);
  rect(xpos, ypos, 30, 30);
  line(xpos - 5, ypos + 5, xpos + 15, ypos - 15);
  line(xpos + 15, ypos - 15, xpos + 35, ypos + 5);
}

public void snowMan(int x, int y){ //x is the x position of the snowman's circles
  stroke(0,0,0);          //y is the y [position of the snowman's circles
  fill(0,100,0);
  ellipse(x, y+20, 15, 15);
  ellipse(x, y+8, 10, 10);
  ellipse(x, y, 5, 5);
}

public void tree(int y){
  noStroke();
  fill(0,255,0);
  triangle(360, y,    375, y+30, 345, y+30);
  triangle(360, y+15, 375, y+45, 345, y+45);
  triangle(360, y+30, 375, y+60, 345, y+60);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "John_Finley_Snowman" });
  }
}