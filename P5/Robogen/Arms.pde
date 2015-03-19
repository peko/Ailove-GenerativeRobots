class Arms extends Part {

  Torso torso;
  
  Arms(Torso torso) {
    
    this.torso = torso;
      
    setSize(10, 60);
    
  }

  void draw(){
    
    pushMatrix();
    // left arm
    translate(-torso.W/2-W/2, -torso.H);
    rotate(a);
    rect(-W, 0, W, H);
    rotate(-a);
    
    // right arm
    translate(torso.W+W, 0);
    rotate(-a);
    rect(0,0,W,H);
    
    popMatrix();
  };
  
}
