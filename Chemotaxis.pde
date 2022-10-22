Squidppl [] ali;
int moneyX, moneyY;
void setup() {
  size(300, 300);
  frameRate(5);
  ali = new Squidppl[20];
  for (int i = 0; i < ali.length; i++) {
    ali[i] = new Squidppl();
  }
}  
void draw() {
  background(255);
  moneyX = (int)(Math.random()*100) + 100;
  moneyY = (int)(Math.random()*100) + 100;
  fill(255, 255, 0);
  ellipse(moneyX, moneyY, 30, 30);
  fill(0, 0, 0);
  text("$1B", moneyX-10, moneyY);
  fill(255, 255, 255);
  for (int i = 0; i < ali.length; i++) {
    ali[i].show();
    ali[i].move();
  }
}

class Squidppl
{
  int myX, myY, shirtColor;
  Squidppl() {
    myX = (int)(Math.random()*50) + 100;
    myY = (int)(Math.random()*50) + 100;
    shirtColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
  fill(shirtColor);
  triangle(myX, myY, myX - 10, myY + 10, myX + 10, myY + 10);
  ellipse(myX, myY, 10, 10);

}
  void move() {
  if (moneyX > myX && moneyY > myY) {
    myX = myX + (int)(Math.random()*20);
    myY = myY + (int)(Math.random()*20);
  }
  else if (moneyX > myX && moneyY < myY) {
    myX = myX + (int)(Math.random()*20);
    myY = myY - (int)(Math.random()*20);
  }
  else if (moneyX < myX && moneyY > myY) {
    myX = myX - (int)(Math.random()*20);
    myY = myY + (int)(Math.random()*20);
  }
  else {
    myX = myX - (int)(Math.random()*20);
    myY = myY - (int)(Math.random()*20);
  }
}
}
