void settings()
{
  size(500,400);
}

void setup()
  {
      noLoop();
  }
  void draw()
  {
      //your code here
      background(6699);
      int total = 0;
      for(int y=90; y<=270; y=y+90){
        for(int x=0; x<=180; x=x+90){
         Die Wilbert = new Die (x,y);
         Wilbert.roll();
         Wilbert.show();
         total = total + Wilbert.numRoll;
        }
      }
      fill(255);
      text ("Your Grand Total Is: " +total,300,220);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int xX, yY, numRoll;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          xX=x;
          yY=y;
      }
      void roll()
      {
          //your code here
          numRoll = (int)((Math.random()*6)+1);
      }
      void show()
      {
          //your code here
          fill(255);
          rect (xX,yY,80,80);
          if (numRoll == 1){
            fill(0);
            ellipse (xX+40, yY+40, 8, 8);
          }
          else if(numRoll == 2){
            fill(0);
            ellipse (xX+60, yY+20, 8, 8);
            ellipse (xX+20, yY+60, 8, 8);
          }
          else if (numRoll == 3){
            fill(0);
           ellipse (xX+40, yY+40, 8, 8);
           ellipse (xX+20, yY+60, 8, 8);
           ellipse (xX+60, yY+20, 8, 8);
          }
          else if (numRoll == 4){
            fill(0);
           ellipse (xX+20, yY+20, 8, 8);
           ellipse (xX+20, yY+60, 8, 8);
           ellipse (xX+60, yY+20, 8, 8);
           ellipse (xX+60, yY+60, 8, 8);
          }
          else if (numRoll == 5){
            fill(0);
           ellipse (xX+20, yY+20, 8, 8);
           ellipse (xX+20, yY+60, 8, 8);
           ellipse (xX+60, yY+20, 8, 8);
           ellipse (xX+60, yY+60, 8, 8);
           ellipse (xX+40, yY+40, 8, 8);
          }
          else{
            fill(0);
           ellipse (xX+20, yY+20, 8, 8); 
           ellipse (xX+20, yY+40, 8, 8);
           ellipse (xX+20, yY+60, 8, 8);
           ellipse (xX+60, yY+20, 8, 8);
           ellipse (xX+60, yY+40, 8, 8);
           ellipse (xX+60, yY+60, 8, 8);
          }
      }
  }
