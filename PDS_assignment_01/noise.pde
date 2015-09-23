class objectNoise { 

  float ypos, xpos, lSize;

  objectNoise (float x, float y,int _lsize) {  
    ypos = y; 
    xpos = x;
    lSize = _lsize;
  } 

  void display() {

    stroke(100,100,100);
    strokeWeight(3);
    fill(0);
    ellipse(xpos,ypos,size,size);
    line(xpos,ypos,xpos,ypos+ lSize);

  }
  
} 