// John Finley
// jpfinley@gmail.com
// Color Swapper

int r = 255;
int b = 0;
boolean descending = true;

void setup(){
  size(200, 200);
  noStroke();
}

void draw(){
  if(descending){

    //left
    fill(r, 0, b);
    rect(0, 0, 100, 200);

    //right
    fill(b, 0, r);
    rect(100, 0, 100, 200);

    r--;
    b++;
    println(r+" "+b);
    
    if(r == 0){
      descending = false;
    }
  }
  else{
    //left
    fill(r, 0, b);
    rect(0, 0, 100, 200);

    //right
    fill(b, 0, r);
    rect(100, 0, 100, 200);

    r++;
    b--;
    println(r+" "+b);
    
    if(r == 255){
      descending = true;
    }
  }
}

