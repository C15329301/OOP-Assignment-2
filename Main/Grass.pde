class Grass
{ 
  float x, x1, x2, y;
  
  Grass(float x, float x1)
  {
    this.x = x;
    this.x1  = x1;
    this.x2 = (x1 - x) + x;
  }
  
  void update()
  { 
      float yGrass = random(20,30);
      this.y = yGrass;
      if(x>-100)
      {
        this.x = x - 10;
        this.x1 = x1 - 10;
        this.x2 = x2 - 10;
      }
      if(x<-90)
      {
        this.x = x +1000;
        this.x1 = x1 + 1000;
        this.x2 = x2 + 1000;
      }
  }
  
  void render()
  {
    for(int i = 0; i < gra.size()-1; i++)
    {
      noStroke();
      fill(#126F11);
      triangle(x, height/1.3, x2, height/1.3 - y, x1, height/1.3); 
    }
  }
}