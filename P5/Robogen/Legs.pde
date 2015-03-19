class Legs extends Part {
  
  Hips hips;
  
  Legs(Hips hips) {
    setSize(10,60);
    this.hips  = hips;
  }
  
  void draw() {
    
    pushMatrix();
    translate(-hips.W/2, hips.H/2);
    rotate(a);
    rect(-W/2,0, W,H);
    rotate(-a);
    
    translate(hips.W, 0);
    rotate(-a);
    rect(-W/2,0, W, H);
    popMatrix();
  
  };
  
}
