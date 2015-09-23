boolean buttom(int x, int y, int sizex, int sizey) {

  if (!buttonpressd) {


    if (mousePressed == true) {

      if (mouseX > x-sizex/2 && mouseX < x+sizex-size/2) {
        if (mouseY > y-sizey/2 && mouseY < y+sizey-sizey/2) {
          buttonpressd = true;
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  return false;
}