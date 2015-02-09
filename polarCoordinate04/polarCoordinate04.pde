float rayon;
float vitesse;

void setup()
{
  size(500, 500);
  rayon = 100;
  vitesse = 0.1;
}

void draw()
{
  background(255);
 
   //cercle debug
  stroke(255, 0, 0);
  noFill();
  ellipse(width/2, height/2, rayon*2, rayon*2);

  for(int i=0; i<20; i++)
  {
    float angle = map(i, 0, 20, 0, TWO_PI);
    //angle += vitesse;
    float rad = rayon;
    float x = width/2 + cos(angle) * rad;
    float y = height/2 + sin(angle) * rad;
    float blue = sin(i+vitesse)*255;
    fill(0, 0, blue);
    noStroke();
    ellipse(x, y, 20, 20);
  }
  
  vitesse += 0.05;
}
