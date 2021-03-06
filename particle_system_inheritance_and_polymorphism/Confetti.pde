class Confetti extends Particle {

  // We could add variables for only Confetti here if we so

  Confetti(PVector l) {
    super(l);
  }

  // Inherits update() from parent

  // Override the display method
  void display() {
    rectMode(CENTER);
    fill(127,lifespan);
    stroke(0,lifespan);
    strokeWeight(2);
    pushMatrix();
    translate(position.x,position.y);
    float theta = map(position.x,0,width,0,TWO_PI*2);
    rotate(theta);
    rect(0,0,12,12);
    popMatrix();
  }
}