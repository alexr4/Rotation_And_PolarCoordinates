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

  for(int i=0; i<100; i++)
  {
    float angle = map(i, 0, 100, 0, TWO_PI);
    
    float angle2 = angle +vitesse;
    float rad = rayon+(sin(vitesse*(i*0.01))*rayon);
    float x = width/2 + cos(angle) * rad;
    float y = height/2 + sin(angle) * rad;
    float blue = sin(i+vitesse)*255;
    fill(0, 0, blue);
    noStroke();
    
    pushMatrix();
    translate(x, y);
    rotate(angle2);
    rectMode(CENTER);
    rect(0, 0, 20, 20);
    popMatrix();
  }
  
  vitesse += 0.05;
}
