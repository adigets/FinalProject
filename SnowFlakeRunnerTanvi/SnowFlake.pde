class SnowFlake {
  private double x;
  private int y;
  private double xspeed;
  private int yspeed;
  private int size;
  private double velx;
  private double vely;
  private double grow;
  
public SnowFlake() {
  x = (int)(Math.random()*801);
  y = (int)(Math.random()*421) - 210;
  xspeed = (int)(Math.random()*1.5) -1;
  yspeed = (int)(Math.random()*1.5) + 1;
  size = (int)(Math.random()*5) + 1;
  //gspeed = .01;
  BankY= 425;
  velx = .25;
}

public void show() {
  fill(255, 255, 255);
  ellipse((int)x, y, size, size);
}
public void move() {
  x = x + xspeed;
  y = y + yspeed;
  if (y > 420) {
    y = -20;
    x = (int)(Math.random()*width);
  }
}

public void addWestVelocity() {
  xspeed = xspeed + velx;
}

public void addEastVelocity() {
  xspeed = xspeed - velx;
}
}
