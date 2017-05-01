class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    float topspeed;
    float tx, ty;
    
    Mover() {
      location = new PVector(width/2, height/2);
      velocity = new PVector(0, 0);
      acceleration = new PVector(-0.001, 0.01);
      tx = 0;
      ty = 10000;
      topspeed = 5;
    }
    
    void update() {
      acceleration.x = map(noise(tx), 0, 1, -topspeed, topspeed);
      acceleration.y = map(noise(ty), 0, 1, -topspeed, topspeed);
      velocity.add(acceleration);
      velocity.limit(topspeed);
      location.add(velocity);
      
      tx += 0.01;
      ty += 0.01;
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