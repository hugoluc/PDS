boolean exp01(int expSize) {
  

  if (!expSetup) {
    
    timer.reset();

    cleanx = int(random(100, 500)) + offsetx;
    cleany = int(random(100, 500)) + offsety;

    float positionsX[] = new float[expSize];
    float positionsY[] = new float[expSize];

    //------------------------------------------------------------------create Noise Object
    noise = new objectNoise[expSize];

    int index = 0;


    for (int i= 0; i<sqrt(expSize); i++) {
      for (int l= 0; l<sqrt(expSize); l++) {
        positionsX[index] =  75+(i*100)+random(-20, 40);
        positionsY[index] = 75+(l*100)+random(-20, 40);
        noise[index] = new objectNoise(positionsX[index]+offsetx, positionsY[index]+offsety,100);
        index++;
      }
    }

    //------------------------------------------------------------------create clean object

    float nextX= 0;
    float currentX = 0;

    float nextY = 0;
    float currentY = 0;

    clean = new objectClean[1];
    clean[0] = new objectClean(cleanx, cleany);

    expSetup = true;
  } else {

    //------------------------------------------------------------------DISPLAY ALL
    for (int i= 0; i<24; i++) {
      noise[i].display();
      clean[0].display();
    }
  }

  if (buttom(cleanx,cleany,size,size)) {
    expTime[0] = timer.realTime() + expTime[0];
    totalTries[0]++;
    timeAvarage[0] = expTime[0] / totalTries[0];
    return true;
  } else {
    return false;
  }
}