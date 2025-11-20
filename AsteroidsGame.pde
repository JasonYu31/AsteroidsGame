Spaceship bob;
Star[]craig= new Star[50];
public void setup() 
{
  size(800,800);
  bob= new Spaceship();
  for(int i=0; i<craig.length;i++){
    craig[i]=new Star();
  }
}
public void draw() 
{
  background (0);
  for(int i=0;i<craig.length;i++){
   craig[i].show();
  }
  bob.move();
  bob.show();
}

void keyPressed(){
  if(key=='a'||key=='A'){
  bob.turn(-10);
  }
  if(key=='d'||key=='D'){
  bob.turn(10);
  }
  if(key=='w'||key=='W'){
  bob.accelerate(0.5);
    }
  if(key=='h'||key=='H'){
    bob.hyperspace();
  }
}
