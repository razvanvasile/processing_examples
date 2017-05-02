Mover mover;
void setup () {
  size(640, 480);
  mover = new Mover();
}

void draw() {
  background(255);

  if(mousePressed) {
    PVector wind = new PVector(0.2, 0);
    mover.applyForce(wind);
  }
  mover.update();
  mover.checkEdges();
  mover.display();  
}