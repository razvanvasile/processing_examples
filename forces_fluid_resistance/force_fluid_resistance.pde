Mover mover;
Liquid liquid;
void setup () {
  size(640, 480);
  mover = new Mover(random(0.1,5),width/2,0);
  liquid = new Liquid(0, height/2, width, height/2, 0.1);  
}

void draw() {
  background(255);
  
  liquid.display();
  
  if(mover.isInside(liquid)) {
    mover.drag(liquid);
  }
  
  float m = 0.1*mover.mass;
  PVector gravity = new PVector(0, m);
  mover.applyForce(gravity);
 
  mover.update();
  mover.checkEdges();
  mover.display();  
}