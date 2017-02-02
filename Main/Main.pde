/* C15329301
   Tom Kearney
   DT228/2 
   
   Object Orientated Programing
   Project 2                    */
   
boolean showImage = false;

color n = color(76, 14, 119);
color d = color(45, 86, 233);

int count = 0;
int start;

color Sun = color(255);
color Moon = color(256, 223, 0);

ArrayList<Grass> gra;

int x=0;
PImage[] sassy = new PImage[4];

float w1;
float w2;

float nr, dr;

Path p1;

Sky n1, d1;
int timer = 0;

void setup()
{
  for ( int i = 0; i< sassy.length; i++ )
  {
    sassy[i] = loadImage( "Sassy" + i + ".png" );
  }
  int i;
  gra = new ArrayList<Grass>();
  for(i = 0; i< 20; i++)
  {
    gra.add(new Grass((10*i), (10*i)));
  }
  size(1000, 800);
  background(255);
  w1 = 0;
  w2 = 1000;
  
  d1 = new Sky(0, 1000, d, width/2);
  n1 = new Sky(1000, 2000, n, width/2);
  
  p1 = new Path();
  
  dr = random(150,200);
  nr = random(50,100);

}


void draw()
{
  d1.render(dr);
  n1.render(nr);
  int i, x = 0;
  fill(#126F11);
  noStroke();
  rect(0, height/1.30, width, height);
  
  n1.update(Sun);
  d1.update(Moon);
  
  
  for(i = 0; i < gra.size()-1; i++)
  {
    Grass grass = gra.get(i);
    grass.update();
    grass.render();
  }
  timer++;
  if(timer % 15 == 0)
  {
    x = 1;
  }
  if(count == 3 && timer % 15 == 0)
  {
     count = 0;
  }
  if(x == 1)
  {
     count = count + 1;
     x = 0;
     
  }
   
  int path = 0;

switch(path) {
  case 0: 
    image(sassy[count], width/8, height/3);
    break;
  case 1: 
    image(sassy[count], width/8, height/3);
    break;
  case 2:
    image(sassy[count], width/8, height/3);
    break;
}
  image(sassy[count], width/8, height/3);
}