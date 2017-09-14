int startX = (int)(Math.random() * 301);
int startY = 0;
int endX = 0;
int endY = 0;
int opacity = 0;

void setup()
{
  size(300,300);
  background(0);
  stroke(#FAF43D);
  strokeWeight(2);
  frameRate(90);
}

void draw()
{
 while(endY < 301)
 {
   endX = startX + (int)((Math.random() * 19) - 9);
   endY = startY + (int)(Math.random() * 10);
   line(startX, startY, endX, endY);
   startX = endX;
   startY = endY;
 }
 if(endY >= 300)
 {
    fill(0, 0, 0, opacity);
    rect(-20, -20, 400, 400);
    opacity = opacity + 1;
 }
 if(opacity > 255)
 {
    opacity = 0;
    startX = (int)(Math.random() * 301);
    startY = 0;
    endX = 0;
    endY = 0;
 }
}