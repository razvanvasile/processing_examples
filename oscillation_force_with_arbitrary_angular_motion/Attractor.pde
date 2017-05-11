class Attractor {
  float mass;
  PVector location;
  float g;
  
  Attractor() {
    location = new PVector(width/2,height/2);
    mass = 20;
    g = 0.4;
  }
  
  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5.0, 25.0);
    force.normalize();
    float strength = (g * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location   .x, location.y, 48, 48);
  }
}