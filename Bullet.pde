class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection= theShip.getPointDirection();
    accelerate(6.7);
  }
  public void show(){
    fill(18,255,249);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  
}
