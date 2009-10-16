//John Finley
//jpfinley@gmail.com

void setup(){
  size(400, 400);
  background(255);

  stroke(255,0,0);
  point(1, 398);    
  line(0,0,width, height);
  
  noStroke();

  fill(75,175,125);
  ellipse(width/2,height/2,width,height);
  
  fill(190,190,120);
  quad(294, 296, 220, 215, 278, 333, 334, 370);
  
  fill(13, 44, 74);
  triangle(150, 195, 178, 20, 86, 75);
  
  fill(150,60,180, 102);
  rect(289, 20, 95, 55);
}

