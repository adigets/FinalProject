SnowFlake[] snow = new SnowFlake[1000];
  private float BankY;
   private float gspeed= .25;
void setup() {
  size(800, 400);
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new SnowFlake();
  }
}
void draw() {
  background(0);
  for (int i = 0; i < snow.length; i++) {
    snow[i].move();
    snow[i].show();
    //snow[i].SnowBank();
    //snow[i].GrowBank();
    //snow[i].Greeting();
    //snow[i].addWestWind();
    //snow[i].addEastWind();
  }
  SnowBank();
  GrowBank();
  Greeting();
  addWestWind();
  addEastWind();
}
public void Snowman() {
  noStroke();
  fill(255, 255, 255);
  ellipse(580, 300, 50, 50);
  stroke(100, 15, 15);
  strokeWeight(5);
  line(550, 300, 480, 280);
}

public void GrowBank() {
   if (BankY >= -10) {
      BankY -= gspeed;
  } else {
       BankY = 425; 
  }
}

public void Greeting() {
  textSize(50);
  fill(4, 140, 15);
  text("H", 300, 150);
  fill(173, 175, 178);
  text("A", 335, 150);
  fill(4, 140, 15);
  text("P", 370, 150);
  fill(173, 175, 178);
  text("P", 400, 150);
  fill(4, 140, 15);
  text("Y", 430, 150);
  fill(198, 17, 17);
  text("Holidays!", 270, 200);
  textSize(30);
  fill(4, 140, 15);
  text("Love,", 375, 250);
  fill(173, 175, 178);
  text("Tanvi", 400, 280);
}
public void SnowBank() {
  fill (255, 255, 255);
  rect (0, BankY, 801, 401);
}
void addWestWind() {
  fill(198, 17, 17);
  rect(625, 55, 100, 20);
  fill(255);
  textSize(13);
  text("Add West Wind", 628, 70);
  cursor(ARROW);
  if (mouseX<725&&mouseX>625&&mouseY<75&&mouseY>55) {
    cursor(HAND);
    if (mousePressed) {
      for (int i=0; i<snow.length; i++) {
        snow[i].addWestVelocity();
      }
    }
  }
}
void addEastWind() {
  fill(198, 17, 17);
  rect(75, 50, 100, 20);
  fill(255);
  textSize(13);
  text("Add East Wind", 79, 65);
  cursor(ARROW);
  if (mouseX<175&&mouseX>75&&mouseY<70&&mouseY>50) {
    cursor(HAND);
    if (mousePressed) {
      for (int i=0; i<snow.length; i++) {
        snow[i].addEastVelocity();
      }
    }
  }
}
