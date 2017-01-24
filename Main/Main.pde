/* C15329301
   Tom Kearney
   DT228/2 
   Object Orientated Programing
   Project 2                    */

color n = color(223, 97, 252);
color d = color(33, 46, 255);


float dStart = 0;
float dStart1 = 1000;

float nStart = 1000;
float nStart1 = 2000;

Sky day = new Sky(dStart, dStart1, d);
Sky night = new Sky(nStart, nStart1, n);


void setup()
{
  size(1000, 800);
  background(255);
}


void draw()
{
  fill(#126F11);
  noStroke();
  rect(0, height/1.30, width, height);
  
  day.update();
  day.render();
  night.update();
  night.render();
  
  
}