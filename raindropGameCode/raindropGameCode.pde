PVector mouse;   //declare a P
int count = 20;
int caught = 0;
//Raindrop [] x = new Raindrop[count];
ArrayList<Raindrop> drops = new ArrayList<Raindrop>();


Catcher c;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  c = new Catcher();
  size(1200, 800);
  mouse = new PVector();   //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  drops.add(new Raindrop(random(width), 0));
  //for (int i = 0; i < count; i++) {
  //  x[i] = new Raindrop(random(width), random(0)) ;
  //}
}



void draw() {

  if ( drops.size() <2000) {
    drops.add(new Raindrop(random(width), 0));
  }

  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  c.display();

  for (int i = drops.size()-1; i >= 0; i--) {
    Raindrop x = drops.get(i);
    x.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    x.display();      //display the raindrop
    if (x.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      x.reset();        //if it is, reset the raindrop
      caught++;
      println(caught);
    }
    if (x.loc.y > height + x.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      x.reset();                           //if it does, reset the raindrop
    }
    if (x.loc.x> mouseX) {
      x.loc.x +=3;
    }
    if (x.loc.x< mouseX) {
      x.loc.x -=3;
    }
  }
}