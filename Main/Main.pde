/* C15329301
 Tom Kearney
 DT228/2 
 
 Object Orientated Programing
 Project 2                    */

color n = color(76, 14, 119);
color d = color(45, 86, 233);

int gameState;

int count = 0;
int start;
int p = 0;
float div = 2.5;
int speed = 10;

color Sun = color(255);
color Moon = color(256, 223, 0);

int score = 0;

PShape star;
PShape spider;
PShape food;

boolean badguys = false;
boolean goodguys = true;
boolean goodguys1 = true;
boolean difficulty = false;

Star star1;
Spider s1;
Food f1, f2;

ArrayList<Grass> gra;

PImage[] sassy = new PImage[4];
PImage menu;

float w1;
float w2;

float yImg = width/8;
float sped = 0.5;
int flag = 0;

PVector location;
PVector velocity;



float nr, dr;

Menu m1;

Sky n1, d1;

int timer = 0;

int option = 0;

void setup()
{

  smooth();

  menu = loadImage("Background.jpg");

  for ( int i = 0; i< sassy.length; i++ )
  {
    sassy[i] = loadImage( "Sassy" + i + ".png" );
  }
  int i;
  gra = new ArrayList<Grass>();
  for (i = 0; i< 20; i++)
  {
    gra.add(new Grass((10*i), (10*i)));
  }
  size(1000, 800);
  background(255);
  w1 = 0;
  w2 = 1000;

  d1 = new Sky(0, 1000, d, width/2);
  n1 = new Sky(1000, 2000, n, width/2);

  star1 = new Star();
  s1 = new Spider(width, 650);
  
  f1 = new Food(width);
  f2 = new Food(width);

  m1 = new Menu();

  dr = random(150, 200);
  nr = random(50, 100);
}

boolean[] keys = new boolean[1000];

void keyPressed()
{ 
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];
  }
  return false;
}

void draw()
{
  switch(option) 
  {
  case 0: 
    m1.display();
    m1.detect();
    break;
  case 1: 
    if(score == 10)
    {
      speed = 12;
    }
    if(score == 20)
    {
      speed = 15;
    }
    if(score == 30)
    {
      speed = 18;
    }
    d1.render(dr);
    n1.render(nr);
    d1.rainbow();
    n1.rainbow();
    int i, x = 0;
    fill(#126F11);
    noStroke();
    rect(0, height/1.30, width, height);

    fill(#A0683A);
    rect(0, height/1.25, width, 50);

    rect(0, height/1.10, width, 50);

    n1.update(Sun);
    d1.update(Moon);


    for (i = 0; i < gra.size()-1; i++)
    {
      Grass grass = gra.get(i);
      grass.update();
      grass.render();
    }
    timer++;
    if (timer % 15 == 0)
    {
      x = 1;
    }
    if (count == 3 && timer % 15 == 0)
    {
      count = 0;
    }
    if (x == 1)
    {
      count = count + 1;
      x = 0;
    }
    

    if (checkKey('w') && p <= 1)
    {
      p = p + 1;
    }
    if (checkKey('s') && p >= 0)
    {
      p = p - 1;
    }
    if (timer % 200  == 0)
    {
      badguys = true;
    }
    if (badguys == true)
    {

      s1.display();
      s1.update();
    }
    if (timer % 100  == 0)
    {
      goodguys = true;
    }
    if (goodguys == true)
    {
      f1.display(650, 1);
      f1.update();
    }
    if (timer % 250  == 0)
    {
      goodguys1 = true;
    }
    if (goodguys1 == true)
    {
      f2.display(700, 0);
      f2.update();
    }
    if (p == 0)
    {
      div = 2.75;
      gameState = 0;
    }
    if (p == 1)
    {
      div = 4;
      gameState = 1;
    }
    textSize(40);
    text("Score: " + score, 40, 40);
    image(sassy[count], width/8, height/div);
    break;
  }
}