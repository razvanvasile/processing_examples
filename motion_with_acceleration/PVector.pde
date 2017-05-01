class PVector {
  float x;
  float y;
  
  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void add(PVector v) {
    x = x + v.x;
    y = y + v.y;
  }
  
  void sub(PVector v) {
    x = x - v.x;
    y = y - v.y;
  }
  
  void mult(float scalar) {
    x = x * scalar;
    y = y * scalar;
  }
  
  void div(float scalar) {
    x = x / scalar;
    y = y / scalar;
  }
  
  float mag() {
    return sqrt(x*x + y*y);
  }
  
  void normalize() {
    float m = mag();
    if (m != 0) {
      div(m);
    }
  }
  
  void limit(float max) {
    if (mag() > max) {
      normalize();
      mult(max);
    }
  }
}