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
  //mouse = new PVector(mouseX, mouseY);
  //centre = new PVector(width/2, height/2);
  //mouse.sub(centre);
  ////mouse.mult(1.5);
  
  //float m = mouse.mag();
  //fill(0);
  //rect(0,0,m,10);
  
  //translate(width/2, height/2);
  //line(0, 0, mouse.x, mouse.y);
}