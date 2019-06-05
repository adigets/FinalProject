public class Timer {
  int savedTime;
  int totalTime;
  
public Timer(int total) {
  totalTime = total;
}

void start() {
  savedTime = millis();
}

public boolean isFinished() {
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    return true;
  } else {
    return false;
  }
}
}
