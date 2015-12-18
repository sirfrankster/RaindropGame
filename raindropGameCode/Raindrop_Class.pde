class Raindrop {
   PVector loc, vel, acc;
   float diam;
   

Raindrop(float x, float y) {
  loc = new PVector(x,y);
  vel = newPVector(random(-2,2), random(-2, 2);
  acc= new PVector(0.0001,.00002);
  diam = 15;
}

void display() {
  fill(0,0,255);
  noStroke();
  ellipse(loc.x,loc.y,diam,diam);
}

void reset() {
  loc.y = 0;
  vel.set(0,9);
}

boolean isInContactWith(PVector c) {
  float d = dist(c.loc)<diam/2 +c.diam/2;
  boolean e;
  if(d<diam/2) {
    e=true;
  } else {
    e = false;
  }
    return e;
}
}