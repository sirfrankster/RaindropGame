class Catcher {  //declare variables
  PVector loc;  //vector location
  PImage img;  //image name
  int diam = 75;  //image diameter
 

  Catcher() {  //set values for variables
    loc = new PVector();
    loc.set(mouseX, mouseY);  //location is set where the mouse travels
    img = loadImage("umbrella.png");  //load image of the umbrella
  }

  void display() {
    fill(0, 50, 200);  //fill color
    //ellipse(mouseX, mouseY, diam, diam);
    image(img, mouseX, mouseY, diam, diam);  //image moves where the mouse is
  }
}