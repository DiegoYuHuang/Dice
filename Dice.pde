void setup()
  {
    size(500, 550);
    noLoop();
    background(0);
  }
  Die dave;

void draw()
  {
      //your code here
      int sum =0;
      for (int x = 25; x < 450; x = x + 50 ){
        for (int y = 25; y <450; y = y+50){
          dave = new Die(x, y);
          dave.show();
          sum = sum + dave.num;
        }  
      }
   fill(0);
   rect(200, 475, 200,30);
   fill(255,255,255);
   textSize(20);
   text("Total: " + sum, 200, 500);
  }
void mousePressed()
  {
      redraw();
  }

class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, rad, num;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          rad = 5;
          roll();
      }
      void roll()
      {
          //your code here
          num = (int)(Math.random() * 6) +1;
      }
      void show()
      {
          //your code here
          fill(255,255,255);
          rect(myX,myY,40,40,rad);
          if (num == 1){
            fill(0,0,0);
            ellipse(myX+20,myY+20, 5,5);
          }
          else if (num == 2){
            fill(0,0,0);
            ellipse(myX+10,myY+10, 5,5);
            ellipse(myX+30,myY+30, 5,5);
          }
          else if (num == 3){
            fill(0,0,0);
            ellipse(myX+10,myY+10, 5,5);
            ellipse(myX+20,myY+20, 5,5);
            ellipse(myX+30,myY+30, 5,5);
          }
           else if (num == 4){
            fill(0,0,0);
            ellipse(myX+10,myY+10, 5,5);
            ellipse(myX+10,myY+30, 5,5);
            ellipse(myX+30,myY+10, 5,5);
            ellipse(myX+30,myY+30, 5,5);
          }
          else if (num == 5){
            fill(0,0,0);
            ellipse(myX+10,myY+10, 5,5);
            ellipse(myX+10,myY+30, 5,5);
            ellipse(myX+30,myY+10, 5,5);
            ellipse(myX+30,myY+30, 5,5);
            ellipse(myX+20,myY+20, 5,5);
          }
          else if (num == 6){
            fill(0,0,0);
            ellipse(myX+10,myY+10, 5,5);
            ellipse(myX+10,myY+20, 5,5);
            ellipse(myX+10,myY+30, 5,5);
            ellipse(myX+30,myY+10, 5,5);
            ellipse(myX+30,myY+20, 5,5);
            ellipse(myX+30,myY+30, 5,5);
          }
      }
  }
