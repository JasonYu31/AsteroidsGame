class Asteroid extends Floater {

private double rotSpeed;  

public Asteroid() {
   corners = (int)(Math.random()*8)+5;
   xCorners = new int[corners];
   yCorners = new int[corners];
   
 for (int i = 0; i < corners; i++) {
      double angle = 2 * PI/ corners * i;
      double radius = (int) (Math.random() * 40 + 10); 
      xCorners[i] = (int)(radius * Math.cos(angle));
      yCorners[i] = (int)(radius * Math.sin(angle));
    }
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
