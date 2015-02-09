float rayon;


void setup()
{
  size(500, 500);
  rayon = 100;
}

void draw()
{
  background(255);
 
   //cercle debug
  stroke(255, 0, 0);
  noFill();
  ellipse(width/2, height/2, rayon*2, rayon*2);

  for(int i=0; i<5; i++)
  {
    float angle = map(i, 0, 5, 0, TWO_PI);
    float x = width/2 + cos(angle) * rayon;
    float y = height/2 + sin(angle) * rayon;
    
    fill(0, 255, 0);
    noStroke();
    ellipse(x, y, 40, 40);
  }
}
