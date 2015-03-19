class Part {

  float w=10;
  float h=10;
  
  float W=10;
  float H=10;
  
  float TW=10;
  float TH=10;
  
  float a=0;
  
  void scale(float ws, float hs) {
     TW = w*ws;
     TH = h*hs;
  }
  
  void update() {
      W+=(TW-W)/10.0;
      H+=(TH-H)/10.0;
  }
  
  void draw() {
    
    pushMatrix();
    rect(-W/2, -H/2, W, H);
    popMatrix();
    
  };
  
  void setSize(float a, float b) {
     w = W = a;
     h = H = b;
  }
  
}
