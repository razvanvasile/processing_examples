Mover mover;
void setup () {
  size(640, 480);
  mover = new Mover();
}

void draw() {
  background(255);
  
  mover.update();
  mover.checkEdges();
  mover.display();
}