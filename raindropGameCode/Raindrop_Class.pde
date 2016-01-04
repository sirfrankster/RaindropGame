class Raindrop {
  PVector loc;
  PVector vel, acc;
  int diam; 
  float locx;
  float locy;
  float t;
  int num;
  PImage img;

  Raindrop(float locx, float locy) {  
    t = random(200, 255);
    vel = new PVector(0, random(1, 3));
    acc = new PVector(0, random(.2));
    loc = new PVector(locx, locy);
    diam = 20;
    img = loadImage("umbrella.png");
  }

  void display() {
    fill(255, 255, 255, t);
    noStroke();

    image(img, loc.x - 50, loc.y -50, diam, diam);
    
    //ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.y += vel.y;
    vel.add(acc);
  }

  void reset() {
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
    return p;
  }
}