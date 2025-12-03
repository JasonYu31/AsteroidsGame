class Asteroid extends Floater {

private double rotSpeed;  

public Asteroid() {
//corners
   corners = 8;
   xCorners = new int[]{30, 15, -10, -20, -30, -15, 5, 20};
    yCorners = new int[]{-15, -30, -25, -5, 10, 30, 25, 5};
   //speed
   myXspeed = (int)(Math.random()*4-2);
   myYspeed = (int)(Math.random()*4-2);
   //where it starts when press play
   myCenterX = (int)(Math.random() * width);
   myCenterY = (int)(Math.random() * height);
   
//direction when press play
   myPointDirection = (int)(Math.random() * 360);
   rotSpeed = (float)(Math.random()*6.7) ;
    myColor = color(67,67,67);
  }
  public void move() {
   turn(rotSpeed);
   super.move();
}
  public double getX() {return myCenterX;}
  public double getY() {return myCenterY;}
}
