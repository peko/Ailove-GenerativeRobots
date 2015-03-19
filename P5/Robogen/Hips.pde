class Hips extends Part {

  
  Robot robot;
  Torso torso;
  Legs  legs;
  
  Hips(Robot robot) {
    setSize(20,10);
    
    this.robot = robot;
    
    torso = new Torso(this);
    legs  = new Legs (this);
  }
  
  void draw() {
    
    pushMatrix();
    rect(-W/2, -H/2, W, H);
    legs.draw();
    torso.draw();
    popMatrix();
    
  };
  
}
