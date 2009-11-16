// Add your variables here
void setup() {
  size(600, 600);  
}
void draw() {
  background(255);
  house(100, 100);
  snowMan(150, 110);
  snowMan(150, 400);
  snowMan(200, 300); 
  snowMan(475, 110);
  tree(250, 490);
  tree(223, 420);
  tree(256, 450);
  tree(288, 460);
  tree(212, 460);
}

// Draws a house
// xpos - the x position of the house
// ypos - the y position of the house
void house(int xpos, int ypos) {
  stroke(0,0,255);
  fill(0,0,255);
  rect(xpos, ypos, 30, 30);
  line(xpos - 5, ypos + 5, xpos + 15, ypos - 15);
  line(xpos + 15, ypos - 15, xpos + 35, ypos + 5);
}

void snowMan(int x, int y){ //x is the x position of the snowman's circles
  stroke(0,0,0);          //y is the y [position of the snowman's circles
  fill(0,100,0);
  ellipse(x, y+20, 15, 15);
  ellipse(x, y+8, 10, 10);
  ellipse(x, y, 5, 5);
}

void tree(int x, int y){
  noStroke();
  fill(150,120,80); //brown
  rect(x+5,y+59,10,10); //stump
  fill(0,255,0); //green
  triangle(x+10, y+15, x+18, y+30, x+1, y+30); //top
  triangle(x+10, y+15, x+20, y+45, x,   y+45); //middle
  triangle(x+10, y+30, x+25, y+60, x-5, y+60); //bottom
  fill(255,0,0); //brown
  ellipse(x+5,y+23,4,4); //ornament
  ellipse(x+15,y+36,4,4); //ornament
  ellipse(x+9,y+48,4,4); //ornament
}
