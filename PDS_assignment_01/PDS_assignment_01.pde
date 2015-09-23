// Declare and construct two objects (h1, h2) from the class HLine 
Timer timer = new Timer(10);

objectClean[] clean;
int cleanx;
int cleany;

objectNoise[] noise;
int noisex;
int noisey;

int expN = 1;
int totalTries[] = {0, 0, 0};
int timeAvarage[] = {0, 0, 0};
int expTime[] = {0,0,0};

boolean expSetup = false;
int size = 50;
int offsetx; 
int offsety;
boolean buttonpressd = false;

void setup() 
{
  //fullScreen();
  size(1280, 800);
  frameRate(60);
  offsetx = width/2-300;
  offsety = height/2-300;
}

void draw() { 
  background(0);


  println("realtime:", timer.realTime(), "exptime:", expTime);
  println("tries[0]:", totalTries[0], "Avarage[0]", timeAvarage[0]);
  println("tries[0]:", totalTries[1], "Avarage[0]", timeAvarage[1]);
  println("tries[0]:", totalTries[2], "Avarage[0]", timeAvarage[2]);

  //println(timeAvarage);

  if (expN == 1) {
    if (exp01(25)) {
      expSetup = false;
    }
  } else if (expN == 2) {
    if (exp02(25)) {
      expSetup = false;
    }
  } else if (exp03(25)) {
    expSetup = false;
  }

  nextExpt();
}

void nextExpt() {

  int offset = -25;

  rect(width-150+offset, height-150+offset, 100, 50);
  fill(255);
  text("change expt", width-140+offset, height-125+offset);

  text("exp01 - time:" + str(timeAvarage[0]), width-140+offset, height-125+offset-50);
  text("exp02 - time:"+ str(timeAvarage[1]), width-140+offset, height-125+offset-75);
  text("exp03 - time:"+ str(timeAvarage[2]), width-140+offset, height-125+offset-100);

  if (buttom(width-150, height-150, 100, 50)) {
    expN = ((expN + 1)%3)+1;
    expSetup = false;
    timer.reset();
  }
}

void mouseReleased() {
  buttonpressd = false;
}