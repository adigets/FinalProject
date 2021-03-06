Targets[] tar = new Targets[4];
Bubbles[] b = new Bubbles[1000];
Timer timer = new Timer(15000);
private int score;
public boolean lost;
void setup() {
  cursor(HAND);
  surface.setSize(600, 600);
  ellipseMode(CENTER);
  lost = false;
  for (int i = 0; i < tar.length; i++) {
    tar[i] = new Targets();
  }
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubbles();
  }
  timer.start();
}

void draw() {
  background(0);
  tar[0].show();
  tar[0].wshow();
  tar[0].yshow();
  tar[1].show2();
  tar[1].wshow2();
  tar[1].yshow2();
  tar[2].show3();
  tar[2].wshow3();
  tar[2].yshow3();
  tar[3].show4();
  tar[3].wshow4();
  tar[3].yshow4();
  for (int i = 0; i < b.length; i++) {
    b[i].move();
    b[i].bubblesshow();
  }
  mouseClicked();
  for (int i = 0; i < tar.length; i++) {
    tar[i].score();
  }
  if (timer.isFinished() == true) {
    background(0, 0, 0);
    textSize(36);
    fill(244, 206, 66);
    text("Your score is: " + score, 125, 300);
  }
  if (lost) {
    background(0, 0, 0);
    textSize(50);
    fill(175, 59, 59);
    text("You lose!", 200, 300);
  }
}

void mouseClicked() {
  if (mousePressed) {
    for (Bubbles i : b) {
      if (i.getSize() >= Math.sqrt(((mouseX - i.getX())*(mouseX - i.getX())) + ((mouseY - i.getY())*(mouseY - i.getY())))) {
        lost = true;
        return;
      }
    }
    if (mouseX < 170 && mouseX > 70 && mouseY < 210 && mouseY > 110) {
      tar[0].gotTarget();
    } else if (mouseX < 470 && mouseX > 370 && mouseY < 150 && mouseY > 50) {
      tar[1].gotTarget2();
    } else if (mouseX < 230 && mouseX > 130 && mouseY < 470 && mouseY > 370) {
      tar[2].gotTarget3();
    } else if (mouseX < 530 && mouseX > 430 && mouseY < 550 && mouseY > 450) {
      tar[3].gotTarget4();
    } else {
      lost = true;
    }
  }
}
