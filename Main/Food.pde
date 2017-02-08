class Food
{
   float x, y;
   float flag;
   Food(float x_)
   {
      this.x = x_;
      
   }
     void update()
  {
    if(x > 0)
    {
      this.x = x - speed/2;
    }
    else
    {
      if(flag == 0)
      {
        goodguys1 = false;
      }
      else
      {
        goodguys = false;
      }
      
      this.x = width;
      println(2);
    }
    if(this.x == width/8 + 70 && this.flag == gameState)
    {
      if(flag == 0)
      {
        score = score + 1;
        goodguys1 = false;
        this.x = width;
      }
      if(flag == 1)
      {
        score = score + 1;
        goodguys = false;
        this.x = width;
      }
      
    
    }
    
  }
   void display(float y_, float f)
   {
     this.flag = f;
    this.y = y_;
    fill(#327121);
    strokeWeight(2);
    stroke(0);
    rect(x, y, 80, 30);
    textSize(15);
    fill(255);
    text("SF", x + 35,y + 20);
    noStroke();
   }
}