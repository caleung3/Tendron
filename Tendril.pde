class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here
    int startX = myX;
    int startY = myY;
    
    if(myNumSegments >= 100)
      stroke(202, 0, 42);
    else if(myNumSegments >= 30)
      stroke(212, 175 ,55);
    else if(myNumSegments >= 10)
      stroke(0, 0, 0);
    else 
      stroke(255, 36, 0);
      
    for(int i = 0; i<myNumSegments; i++){
      myAngle += Math.random()*0.4 - 0.2;
      
      int endX = startX + (int)(SEG_LENGTH*Math.cos(myAngle));
      int endY = startY + (int)(SEG_LENGTH*Math.sin(myAngle));
      
      line(startX, startY, endX, endY);
      
      startX = endX;
      startY = endY;
    }
    if(myNumSegments > 10){
    Cluster A  = new Cluster(myNumSegments / 3, startX, startY);
   }
  }
}
