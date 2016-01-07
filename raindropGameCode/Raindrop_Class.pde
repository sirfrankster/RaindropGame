class Raindrop {  //declare variables
  PVector loc;
  PVector vel, acc;
  int diam; 
  float locx;
  float locy;
  float t;
  int num;
  PImage img;

  Raindrop(float locx, float locy) {  //set values for variables
    t = random(200, 255);
    vel = new PVector(0, random(1, 3));
    acc = new PVector(0, random(.2));
    loc = new PVector(locx, locy);
    diam = 20;
    img = loadImage("hail.png");
  }

  void display() {
    fill(255, 255, 255, t); //fill display screen
    noStroke();

    image(img, loc.x - 50, loc.y -50, diam, diam); //image of "hail" movement downward
    
    //ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {  //coding for the hail to fall
    loc.y += vel.y;
    vel.add(acc);  //adding velocity to hail going down
  }

  void reset() {  //reset hail after it hits 0
    loc.y = 0;
    vel.y = 0;
  }

  void num() {
  }

  boolean isInContactWith(PVector c) {
    boolean p;
    float d = dist(loc.x, loc.y, mouseX, mouseY);
    if (d-diam/2 >50) {
      p = false;
    } else {
      p = true;
    }
    return p;  //returns hail back on top once it is in contact with umbrella
  }
}