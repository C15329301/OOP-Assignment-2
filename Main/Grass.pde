class Grass
{ 
  float x, x1, x2, y;
  
  Grass(float x, float x1)
  {
    this.x = x;
    this.x1  = x1;
  }
  
  void update()
  { 
      float yGrass = random(10, 60);
      y = yGrass;
      if(x>0)
      {
        this.x = x - 10;
        this.x1 = x1 - 10;
      }
      if(x<1)
      {
        this.x = x +1000;
        this.x1 = x1 + 1010;
      }
  }
  
  void render()
  {
    for(int i = 0; i < gra.size()-1; i++)
    {
      noStroke();
      fill(#126F11);
      triangle(x, height/1.3, x, height/1.3 - y, x1, height/1.3); 
    }
  }
}