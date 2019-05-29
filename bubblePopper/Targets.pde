public class Targets {
  private int x;
  private int x2;
  private int x3;
  private int x4;
  private int y;
  private int y2;
  private int y3;
  private int y4;
  private int size;
  private int wsize;
  private int ysize;
  
public Targets() {
  x = 120;
  x2 = 420;
  x3 = 180;
  x4 = 480;
  y = 160;
  y2 = 100;
  y3 = 420;
  y4 = 500;
  size = 100;
  wsize = 60;
  ysize = 30;
}

public void show() {
  fill(244, 66, 66);
  ellipse(x, y, size, size);
}

public void wshow() {
  fill(255, 255, 255);
  ellipse(x, y, wsize, wsize);
}

public void yshow() {
  fill(255, 213, 99);
  ellipse(x, y, ysize, ysize);
}

public void show2() {
  fill(244, 66, 66);
  ellipse(x2, y2, size, size);
}

public void wshow2() {
  fill(255, 255, 255);
  ellipse(x2, y2, wsize, wsize);
}

public void yshow2() {
  fill(255, 213, 99);
  ellipse(x2, y2, ysize, ysize);
}

public void show3() {
  fill(244, 66, 66);
  ellipse(x3, y3, size, size);
}

public void wshow3() {
  fill(255, 255, 255);
  ellipse(x3, y3, wsize, wsize);
}

public void yshow3() {
  fill(255, 213, 99);
  ellipse(x3, y3, ysize, ysize);
}

public void show4() {
  fill(244, 66, 66);
  ellipse(x4, y4, size, size);
}

public void wshow4() {
  fill(255, 255, 255);
  ellipse(x4, y4, wsize, wsize);
}

public void yshow4() {
  fill(255, 213, 99);
  ellipse(x4, y4, ysize, ysize);
}
public void gotTarget() {
  fill(156, 159, 163);
  ellipse(x, y, size, size);
}
public void gotTarget2() {
  fill(156, 159, 163);
  ellipse(x2, y2, size, size);
}
public void gotTarget3() {
  fill(156, 159, 163);
  ellipse(x3, y3, size, size);
}
public void gotTarget4() {
  fill(156, 159, 163);
  ellipse(x4, y4, size, size);
}
}
