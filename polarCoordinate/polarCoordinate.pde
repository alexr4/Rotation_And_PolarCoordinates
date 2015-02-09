float angle;
float rayon;


void setup()
{
  size(500, 500);
  angle = 0;
  rayon = 100;
}

void draw()
{
  background(255);
 
   //cercle debug
  stroke(255, 0, 0);
  noFill();
  ellipse(width/2, height/2, rayon*2, rayon*2);

  float x = width/2 + cos(angle) * rayon;
  float y = height/2 + sin(angle) * rayon;
  angle += 0.1;
  
  fill(0, 255, 0);
  noStroke();
  ellipse(x, y, 40, 40);
}
