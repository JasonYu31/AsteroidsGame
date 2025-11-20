class Star //note that this class does NOT extend Floater
{
 int x;
 int y;
 int myColor;
 int size;
  Star(){
    x=(int)(Math.random()*width);
    y=(int) (Math.random()*height);
    myColor= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    size=(int)(Math.random()*10);
  }

public void show(){
  stroke(myColor);
  ellipse(x,y,size,size);
  }
}
