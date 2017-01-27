class Sky
{float h;
  float speed = 10;
  color c, sphere;
  int y = 0;
  float x, x1;
  float w1;
  float w2;
  float r;
  float cent;
  Sky(float x, float x1, color c, float cent)
  {
    this.c = c;
    this.w1 = x;
    this.w2 = x1;
    this.r = random(100, 200);
    this.h = random(100, height/2);
    this.cent = cent;
  }
  
  void update(color sphere)
  { 
    fill(this.c);
      this.sphere = sphere;
      if(w1 > 0)
      {
        this.w1 = w1 - speed;
      }
      if(w2 > 0)
      {
        this.w2 = w2 - speed;
        this.w1 = w1 - speed;
        this.cent = w1 + 400;
      }
      if(w2 < 1)
      {
        this.w1 = 1000;
        this.w2 = 2000;
      }
  }
  
  void render(float r)
  {
    this.r = r;
    fill(this.c);
    rect(this.w1, 0, this.w2, height/1.3);
    fill(sphere);
    ellipse(this.cent + 200, this.h, r, r);
    int timer = second() - start;
    if(timer % 10 == 0)
    {
      x = 1;
    }
    if(count == 3 && timer % 10 == 0)
    {
       count = 0;
    }
    if(x == 1)
    {
       count = count + 1;
       x = 0;
    }
    image(sassy[count], width/8, height/3);
  }

}