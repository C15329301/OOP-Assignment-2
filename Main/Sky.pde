class Sky
{
  float h;
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
    float cirY = map(w2, 0, width, 0, 500);
    ellipse(this.cent + 200, cirY, r, r);

  }
 
  void rainbow()
  {
    fill(#9400D3);
    triangle(w2, height/1.1, w2 + 115, 0, w2 -115, 0);
    fill(#4B0082);
    triangle(w2, height/1.1, w2 + 100, 0, w2 - 100, 0);
    fill(#0000FF);
    triangle(w2, height/1.1, w2 + 85, 0, w2 - 85, 0);
    fill(#00FF00);
    triangle(w2, height/1.1, w2 + 70, 0, w2 - 70, 0);
    fill(#FFFF00);
    triangle(w2, height/1.1, w2 + 55, 0, w2 - 55, 0);
    fill(#FF7F00);
    triangle(w2, height/1.1, w2 + 40, 0, w2 - 40, 0);
    fill(#FF0000);
    triangle(w2, height/1.1, w2 + 25, 0, w2 - 25, 0);
    
  }

}