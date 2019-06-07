# FinalProject

# Don't Pop the Bubbles!

Try to hit the targets as much as you can, the closer to the center of the target, the more points you earn! Beware, however, for if you pop a bubble, it's game over!

### The Clicking Mechanics

The toughest part was trying to sort out how everything would work when the mouse was clicked. I couldn't get the "You Lose!" page to stay if you clicked anywhere but a target, and I couldn't figure out how to get the game to say "You Lose!" if you popped a bubble on the target. But, I figured it out with the help of a classmate!

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the Timer class that creates the timer for the game. In the runner, I set the time to be 15 seconds, so basically you have 15 seconds to hit as many targets as possible and earn as many points as you can! An interesting thing about this is that the time is actually counted in milliseconds, so actually the timer is set to 15,000 milliseconds!

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Tanvi Adige** 

## Acknowledgments

* Miles Leska
* Nyah Rudd
