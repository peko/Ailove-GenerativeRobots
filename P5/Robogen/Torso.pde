class Torso extends Part {

  Hips hips;
  Arms arms;
  Head head;
  
  Torso(Hips hips) {

    setSize(20,40);
    
    this.hips  = hips;
    
    head  = new Head (this);
    arms  = new Arms (this);
    
  }
  
  void draw() {
    
    pushMatrix();
    
    translate(0, -hips.H*0.5);
    rotate(a);
    beginShape();
    vertex(-W/2, -H);
    vertex(W/2, -H);
    vertex(hips.W/2, 0);
    vertex(-hips.W/2, 0);
    //rect(-W/2,-H, W,H);
    endShape();
    arms.draw();
    head.draw();
    
    popMatrix();
  };
  
}
