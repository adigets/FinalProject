Targets[] tar = new Targets[4];
Bubbles[] b = new Bubbles[1000];
void setup() {
  surface.setSize(600, 600);
  for (int i = 0; i < tar.length; i++) {
    tar[i] = new Targets();
  }
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubbles();
  }
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
}

//void clickTarget() {
//  cursor(ARROW);
//  if ((mouseX < 600 && mouseX > 0) && (mouseY < 600 && mouseY > 0)) {
//    cursor(HAND);
//    ////if ((mouseClicked()&&(!((mouseX < 170 && mouseX > 70 && mouseY < 210 && mouseY > 110)))){
//    ////  textSize(50);
//    ////  fill(244, 66, 66);
//    ////  text("You lose!", 200, 300);
//    //}
//  }
//}

void mouseClicked() {
  cursor(HAND);
  if (!(mouseX < 170 && mouseX > 70 && mouseY < 210 && mouseY > 110)) {
    textSize(50);
    fill(244, 66, 66);
    text("You lose!", 200, 300);
  }
}
