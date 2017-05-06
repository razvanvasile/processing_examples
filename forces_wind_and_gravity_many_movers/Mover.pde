class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover(float m, int x, int y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = m;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void update() { 
    velocity.add(acceleration);
    location.add(velocity);
    
    acceleration.mult(0);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, mass*16, mass*16);
  }
  
  void checkEdges() {
    PVector invisible_force = new PVector(-1.0, 0);
    if(location.x > width) {
      location.x = width;
      velocity.x *= -1;
      applyForce(invisible_force);
  } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
      applyForce(invisible_force);
  }
    
    if(location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}