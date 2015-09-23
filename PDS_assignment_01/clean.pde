class objectClean { 

  float ypos, xpos,lSize;

  objectClean (float x, float y) {  
    ypos = y; 
    xpos = x;
    lSize = 100;
  } 

  void display() {

    stroke(100,100,100);
    strokeWeight(3);
    fill(0);
    ellipse(xpos,ypos,size,size);

  }
  
} 