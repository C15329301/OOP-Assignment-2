class Menu
{
   float wid = 50;
   float hig = 200;
   float hig1 = 220;
   int a = 100, b = 100, c = 100, d = 100;
   int white = 255;
   int grey = 100;
   
   void display()
   {
     strokeWeight(5);
     stroke(255);
     noFill();
     tint(100);
     image(menu, 0, 0);
     fill(b);
     triangle(width/2, height/2 - wid, width/2 - hig, height/2, width/2, height/2 + wid);
     fill(a);
     triangle(width/2, height/2 + wid, width/2 + hig, height/2, width/2, height/2 - wid);
     fill(c);
     triangle(width/2 + wid, height/2, width/2, height/2 + hig, width/2 - wid, height/2);
     fill(d);
     triangle(width/2 - wid, height/2, width/2, height/2 - hig, width/2 + wid, height/2);
    
    
     textSize(30);
     fill(255);
     text("Instructions", width/2 + hig1, height/2 + 15);
     text("ScoreBoard", width/2 - 370, height/2 + 15);
     text("Start Game", width/2 - 80, height/2 - hig1);
     text("Exit", width/2 - 30, height/2 + hig1 + 20);
    
     
    }
    
    void detect()
    {
      star1.rotateS();
      if(mouseX >= width/2 + wid*2 && mouseX <= width/2 + 350 && mouseY <= height/2 + 30 && mouseY >= height/2)
      {
        a = white;
        b = grey;
        c = grey;
        d = grey;
        if(mousePressed)
        {
          //instructions
          
          tint(255);
        }
      }
     else
     {
        a = grey; 
     }
     if(mouseX <= width/2 - wid*2 && mouseX >= width/2 - 350 && mouseY <= height/2 + 30 && mouseY >= height/2)
     {
        b = white;
        a = grey;
        c = grey;
        d = grey;
        if(mousePressed)
        {
          //leaderboard
          tint(255);
        }
     }
     else
     {
        b = grey; 
     }
     if(mouseX <= width/2 + width/37 && mouseX >= width/2 - width/55 && mouseY <= height/2 + height/2.85 && mouseY >= height/2 + height/8)
     {
        c = white;
        a = grey;
        b = grey;
        d = grey;
        if(mousePressed)
        {
           //exit
           exit();
           tint(255);
        }
     }
     else
     {
        c = grey; 
     }
     if(mouseX <= width/2 + width/37 && mouseX >= width/2 - width/55 && mouseY >= height/2 - height/2.85 && mouseY <= height/2 - height/8)
     {
        d = white;
        a = grey;
        b = grey;
        c = grey;
        if(mousePressed)
        {
          //this is start game
          option = 1;
          tint(255);
        }
     }
     else
     {
        d = grey; 
     }
    }
  
  
}