class Timer {

  Timer (int _x) {
    startTime = millis();
    countDownLimit = _x * 1000;
  }

  int startTime;
  int currentTime;
  int elapsedTime;
  int countDownLimit;
  int print;

  void reset() {
    startTime = millis();
    elapsedTime = 0;
  }


  int realTime() {
    currentTime = millis();
    elapsedTime = currentTime - startTime;
    return elapsedTime;
  }

  boolean TimerOver() {

    currentTime = millis();
    elapsedTime = currentTime - startTime;
    if (elapsedTime >= countDownLimit ) {
      
      return true;
    } else {
      return false;
    }
  }
}