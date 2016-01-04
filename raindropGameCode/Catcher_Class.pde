class Catcher {
  PVector loc;
  PImage img;
  int diam = 75;
 

  Catcher() {
    loc = new PVector();
    loc.set(mouseX, mouseY);
    img = loadImage("umbrella.png");
  }

  void display() {
    fill(0, 50, 200);
    //ellipse(mouseX, mouseY, diam, diam);
    image(img, mouseX, mouseY, diam, diam);
  }
}