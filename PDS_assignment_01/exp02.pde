boolean exp02(int expSize) {
  

  if (!expSetup) {
    
    timer.reset();

    cleanx = int(random(100, 500)) + offsetx;
    cleany = int(random(100, 500)) + offsety;

    float positionsX[] = new float[expSize];
    float positionsY[] = new float[expSize];

    //------------------------------------------------------------------create Noise Object
    clean = new objectClean[expSize];

    int index = 0;

    for (int i= 0; i<sqrt(expSize); i++) {
      for (int l= 0; l<sqrt(expSize); l++) {
        positionsX[index] =  75+(i*100)+random(-20, 40);
        positionsY[index] = 75+(l*100)+random(-20, 40);
        clean[index] = new objectClean(positionsX[index]+offsetx, positionsY[index]+offsety);
        index++;
      }
    }

    //------------------------------------------------------------------create clean object

    float nextX= 0;
    float currentX = 0;

    float nextY = 0;
    float currentY = 0;

    noise = new objectNoise[1];
    noise[0] = new objectNoise(cleanx, cleany,50);

    expSetup = true;
  } else {

    //------------------------------------------------------------------DISPLAY ALL
    for (int i= 0; i<24; i++) {
      clean[i].display();
      noise[0].display();
    }
  }

  if (buttom(cleanx,cleany,size,size)) {
    expTime[1] = timer.realTime() + expTime[1];
    totalTries[1]++;
      timeAvarage[1] = expTime[1] / totalTries[1];
    return true;
  } else {
    return false;
  }
}