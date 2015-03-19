class Head extends Part {

  Torso torso;
  
  Head(Torso torso) {
    
     this.torso = torso;
     
     setSize(20,20);

  }
  
  void draw() {
    
    pushMatrix();
    
    translate(0,-torso.H-H/2);
    rotate(a);
    rect(-W/2, -H, W, H);
    
    popMatrix();
  };
  
}
