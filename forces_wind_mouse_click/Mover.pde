class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    float topspeed;
    
    Mover() {
      location = new PVector(width/2, height/2);
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
      topspeed = 5;
    }
    
    void applyForce(PVector force) {
      acceleration.add(force);
    }
    
    void update() {
      velocity.add(acceleration);
      velocity.limit(topspeed);
      location.add(velocity);
      acceleration.mult(0);
    }
    
    void checkEdges() {
      if(location.x > width) {
        location.x = 0;
      } else if(location.x < 0) {
        location.x = width;
      }
      
      if(location.y > height) {
        location.y = 0;
      } else if(location.y < 0) {
        location.y = height;
      }
    }
    
    void display() {
      stroke(0);
      fill(175);
      ellipse(location.x, location.y, 16, 16);
    }
}