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
      fill(c);
      this.sphere = sphere;
      if(w1 >= 0)
      {
        w1 = w1 - speed;
      }
      if(w2 >= 0)
      {
        w2 = w2 - speed;
        cent = w2 - 700;
      }
      if(w2 <= 0)
      {
        this.w1 =+ 1000;
        this.w2 =+ 2000;
      }
  }
  
  void render(float r)
  {
    this.r = r;
    fill(this.c);
    rect(w1, 0, w2, height/1.3);
    fill(sphere);
    ellipse(this.cent + 200, this.h, r, r);

  }

}