Mover mover;
void setup () {
  size(640, 480);
  mover = new Mover();
}

void draw() {
  background(255);

  PVector wind = new PVector(0.005, 0);
  PVector gravity = new PVector(0, 0.1);
  
  float c = 0.01;
  float normal = 1;
  float fricMag = c*normal;
  
  PVector friction = mover.velocity.get();
  friction.mult(-1);
  friction.normalize();
  friction.mult(fricMag);
  
  mover.applyForce(friction);
  mover.applyForce(wind);
  mover.applyForce(gravity);
 
  mover.update();
  mover.checkEdges();
  mover.display();  
}