int limit;
boolean shape = true;
int cycle = 1;
public void setup()
{
  size(500,500);
  limit = 100;
}
public void draw()
{
  background(#C6F5E4);
  if (cycle == 1)
    sierpinski(0,500,500);
  else if (cycle == 2)
    sierpinskisq(0,500,550);
  else
    sierpinskirect(0,500,500);
}
public void mouseDragged()
{
  //limit = limit + ((int)(Math.random()*10));
  if (limit > 1)
    limit = limit - 1;
}
public void keyPressed(){
  if (key == 'c'){limit = 100;}
  if (key == 'a'){
    if (cycle == 3)
      cycle = 1;
    else if (cycle == 1)
      cycle = 2;
    else
      cycle = 3;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= limit){
    fill(#EA4E66);
    triangle(x,y,(x+(len/2)),(y-len),(x+len),y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski((x+(len/2)),y,len/2);
    sierpinski((x+(len/4)),(y-(len/2)),len/2);
  }
}

public void sierpinskirect(int x, int y, int len) 
{
  if (len <= limit){
    fill(#28F536);
    rect(x,y,(x+len),(y-(len/2)));
  }
  else{
    sierpinskirect(x,y,len/2);
    sierpinskirect((x+(len/2)),y,len/2);
    sierpinskirect((x+(len/4)),(y-(len/2)),len/2);
  }
}

public void sierpinskisq(int x, int y, int len) 
{
  if (len <= limit){
    fill(#FC36CE);
    circle(x,y,(len/2));
  }
  else{
    sierpinskisq(x,y,len/2);
    sierpinskisq((x+(len/2)),y,len/2);
    sierpinskisq((x+(len/4)),(y-(len/2)),len/2);
  }
}
