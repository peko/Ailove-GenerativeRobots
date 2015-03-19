
Robot robot;
int cnt=0;

void setup(){
  size(640, 640);
  background(0);
  robot = new Robot();
};

void draw() {
  robot.update();
  
  if((cnt++)%150==0) {
    float x,y;
    
    x = random(5)+0.5;
    y = random(5)+0.5;
    robot.torso.scale(x, y);
    
    x = random(5)+0.5;
    y = random(5)+0.5;
    robot.hips.scale(x,y);
    
    x = random(5)+0.5;
    y = random(5)+0.5;
    robot.head.scale(x,y);
    
    x = random(5)+0.5;
    robot.legs.scale(1,x);
    robot.arms.scale(1,x);
    //robot.head.scale(x,x)
    
  }
  
  float a;
  a = sin(cnt/20.0)/4.0;
  robot.head.a = a;
  robot.torso.a = a;
  
  a = sin(cnt/10.0)/4.0;
  robot.arms.a = a;
  //robot.torso.a = a;
   
  pushMatrix();
  translate(width*0.5, height-robot.getHipsPosition());
  robot.draw();
  popMatrix();
}

