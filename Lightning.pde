int startX = mouseX;
int startY = 0;
int endX = 150;
int endY = 0;

int tY = 300;

int r; //red
int g; //green
int b; //blue



void setup()
{
  size(300,300);
  strokeWeight(1.5);
  frameRate(60);
}

void fire() 
{
 triangle(startX-10, tY, startX+10, tY, startX, tY-10);
}

void draw()
{
  background(0, 0, 0);
  r = (int)(Math.random()*255);
  g = (int)(Math.random()*255);
  b = (int)(Math.random()*255);

  stroke(r, g, b);
  while (startY< 300) //code for the random lightning shape
  {
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)((Math.random()*20)) - 10;
    line(startX, startY, endX, endY);

    startX = endX;
    startY = endY;
  }
}


void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endX = 150;
  endY = 0;
}

void mouseClicked() 
{
  background(255, 255, 255, 25);
  fill(255, 0, 0);
  fire();
}
