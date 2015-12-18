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