class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    float topspeed;
    
    Mover() {
      location = new PVector(width/2, height/2);
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
    }
    
    void applyForce(PVector force) {
      acceleration.add(force);
    }
    
    void update() {
      velocity.add(acceleration);
      location.add(velocity);
      acceleration.mult(0);
    }
    
    void checkEdges() {
      if(location.x > width) {
        location.x = width;
        velocity.x *= -1;
      } else if(location.x < 0) {
        location.x = 0;
        velocity.x *= -1;
      }
      
      if(location.y > height) {
        location.y = height;
        velocity.y *= -1;
      }
    }
    
    void display() {
      stroke(0);
      fill(175);
      ellipse(location.x, location.y, 16, 16);
    }
}