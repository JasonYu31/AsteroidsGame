Spaceship bob;
Star[]craig= new Star[50];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots= new ArrayList<Bullet>();
public void setup() 
{
  size(800,800);
  bob= new Spaceship();
  for(int i=0; i<craig.length;i++){
    craig[i]=new Star();
  }
  for (int i=0;i<5;i++){
     rocks.add(new Asteroid());
  }
}
public void draw() {
  background (0);
  for(int i=0;i<craig.length;i++){
   craig[i].show();
  }
  bob.move();
  bob.show();
 
 for(int i= shots.size()-1; i>=0; i--){
    Bullet b = shots.get(i);
    b.move();
    b.show();
  }
  
  for(int i=rocks.size()-1;i>=0;i--){
  Asteroid a= rocks.get(i);
  float d = dist((float)bob.myCenterX, (float)bob.myCenterY,(float)a.getX(), (float)a.getY());
  if (d < 20) {
      rocks.remove(i);
    } else {
      a.move();
      a.show();
    }
  }

    for(int i= shots.size()-1; i>=0; i--){
      Bullet b = shots.get(i);
      for(int j= rocks.size()-1; j>=0; j--){
        Asteroid a= rocks.get(j);
        float d= dist((float)b.getX(), (float)b.getY(), (float)a.getX(), (float)a.getY());
        if(d<20){
          shots.remove(i);
          rocks.remove(j);
          break;
        }
      }
    }
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
  if(key == ' '){
  shots.add(new Bullet(bob));
  }
}
