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
  snowMan(250, 400); 
  snowMan(475, 110);
  if( second()%2 == 0){
    tree_light_on(450, 490);
    println("on");
  }
  else{
    tree_light_off(450, 490);
    println("off");
  }
  tree_light_on(223, 420);
  tree_light_on(256, 450);
  tree_light_on(288, 460);
  tree_light_on(212, 460);
  MakeTweety(460,  300);
  MakeTweety(90,  200);
  MakeTweety(80,  380);
  MakeTweety(400, 500);
  MakeTweety(250, 300);
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

void tree_light_on(int x, int y){
  noStroke();
  fill(150,120,80); //brown
  rect(x+5,y+59,10,10); //stump

  fill(0,255,0); //green
  triangle(x+10, y+15, x+18, y+30, x+1, y+30); //top
  triangle(x+10, y+15, x+20, y+45, x,   y+45); //middle
  triangle(x+10, y+30, x+25, y+60, x-5, y+60); //bottom

  fill(255,0,0); //red
  ellipse(x+5,y+23,4,4); //ornament
  ellipse(x+15,y+36,4,4); //ornament
  ellipse(x+9,y+48,4,4); //ornament
}

void tree_light_off(int x, int y){
  noStroke();
  fill(150,120,80); //brown
  rect(x+5,y+59,10,10); //stump

  fill(0,255,0); //green
  triangle(x+10, y+15, x+18, y+30, x+1, y+30); //top
  triangle(x+10, y+15, x+20, y+45, x,   y+45); //middle
  triangle(x+10, y+30, x+25, y+60, x-5, y+60); //bottom

  fill(255,0,0); //red
  ellipse(x+5,y+23,4,4); //ornament
  ellipse(x+9,y+48,4,4); //ornament
//
//  fill(0,255,225); //green
//  ellipse(x+45,y+36,4,4); //ornament
}

void MakeTweety(int posX, int posY){
  // Draw fat tweetie
  fill(150,150,255);
  noStroke();
  ellipse(posX, posY, 40, 40);
  ellipse(posX+25, posY-10, 20, 20);
  triangle(posX-15, posY-15, posX-40, posY-30, posX-35, posY-35);
  fill(#000000);
  ellipse(posX+25, posY-10, 7, 7);
  triangle(posX+35, posY-15, posX+40, posY-11, posX+35, posY-7);
  fill(#000000);
  rect(posX-2, posY+20, 2, 10);
  triangle(posX-2, posY+30, posX+7, posY+30, posX+3, posY+35);
}
