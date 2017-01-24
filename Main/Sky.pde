class Sky
{ 
  float speed = 5;
  color c;
  int y = 0;
  float x, x1;
  float w1;
  float w2;
  
  Sky(float x, float x1, color c)
  {
    this.c = c;
    this.w1 = x;
    this.w2 = x1;
  }
  
  void update()
  { 
      y = y + 1;
      w1 = w1 - speed;
      w2 = w2 - speed;
    
    if(y > 1498)
    {
      w1 = w1 + 1000;
      w2 = w2 + 1000;
      y = 0;
      
    }
  }
  
  void render()
  {
    fill(this.c);
    rect(w1, 0, w2, height/1.3);
  }
}