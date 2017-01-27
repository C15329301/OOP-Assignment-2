/* C15329301
   Tom Kearney
   DT228/2 
   
   Object Orientated Programing
   Project 2                    */
   
PShape gras;

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

Sky n1, d1;

void setup()
{
  start = second();
  for ( int i = 0; i< sassy.length; i++ )
  {
    sassy[i] = loadImage( "Sassy" + i + ".png" );   // make sure images "0.jpg" to "11.jpg" exist
  }
  /*sassy = loadImage("Sassy1.png");
  sassy2 = loadImage("Sassy2.png");
  sassy3 = loadImage("Sassy3.png");*/
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
  
  d1 = new Sky(0, width, d, 100);
  n1 = new Sky(width, 2*width, n, 500);
  
  dr = random(150,200);
  nr = random(50,100);

}


void draw()
{
  int timer = second() - start;
  int i;
  fill(#126F11);
  noStroke();
  rect(0, height/1.30, width, height);
  
  n1.update(Sun);
  d1.update(Moon);
  
  d1.render(dr);
  n1.render(nr);
  
  for(i = 0; i < gra.size()-1; i++)
  {
    Grass grass = gra.get(i);
    grass.update();
    grass.render();
  }
  if(count == 3 && timer % 1 == 0)
   {
      count = 0;
   }
   if(timer % 2 == 0)
   {
     count = count + 1;
   }
   image(sassy[count], width/8, height/3);
}