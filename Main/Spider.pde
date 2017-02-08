class Spider
{
  float x, y;
 Spider(float x_, float y_)
 {
   this.x = x_;
   this.y = y_;
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

      
    
    
    
  }
  void display(float f)
  {
    flag = f;
    if(flag<=5)
    {
      this.y = 650;
    }
    else
    {
      this.y = 700;
    }
    stroke(0);
    strokeWeight(2);
    fill(0);
    ellipse(x, y, 100, 50);
    strokeWeight(5);
    
    
    noFill();
    stroke(0);
    arc(x, y + 40, 120, 100, PI, 2*PI);
    arc(x, y + 30, 150, 80, PI, 2*PI);

    fill(255);
    ellipse(x + 10, y, 10, 10);
    ellipse(x - 10, y, 10, 10);
    noStroke();
  }
  
}