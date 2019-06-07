class Bubbles {
  private int num;
  private int val;
  private int numspeed;
  private int valspeed;
  private int size;
  
public Bubbles() {
  num = (int)(Math.random()*1000);
  val = (int)(Math.random()*3000) - 1000;
  numspeed = (int)(Math.random()*1.5) - 1;
  valspeed = (int)(Math.random()*1.5) + 1;
  size = (int)(Math.random()*100) + 1;
}

public void bubblesshow() {
  fill(204, 228, 249);
  ellipse(num, val, size, size);
}

public void move() {
  num = num + numspeed;
  val = val + valspeed;
  if (val >= 3000) {
    val = -300;
    num = (int)(Math.random()*1000);
  }
}

public double getSize() {
  return size/2;
}

public int getX() {
  return num;
}

public int getY() {
  return val;
} 
}
