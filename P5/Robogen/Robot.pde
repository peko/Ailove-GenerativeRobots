class Robot {
  
  Hips  hips;
 
  Torso torso;
  Head  head;
  
  Legs  legs;
  Arms  arms;
  
  int cnt;
  
  Robot() {
    
    hips  = new Hips (this);
    torso = hips.torso;
    head  = hips.torso.head;
    legs  = hips.legs;
    arms  = hips.torso.arms;
    
  }
  
  void update() {
    hips.update();
    torso.update();
    head.update();
    legs.update();
    arms.update();
  }
  
  void draw() {
      background(0,0,0,10);   
      hips.draw();
  }
  
  float getHipsPosition(){
    return legs.H+hips.H/2;
  }

}
