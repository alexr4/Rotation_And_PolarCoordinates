float rayon;
float vitesse;
float xInc;


void setup()
{
  size(500, 500);
  rayon = 150;
  vitesse = 0.1;
}

void draw()
{
  background(255);

  //cercle debug
  stroke(255, 0, 0);
  noFill();
  //ellipse(width/2, height/2, rayon*2, rayon*2);

  float incV = noise(xInc)*2;
  for (int i=0; i<100; i++)
  {
    float angle = map(i, 0, 100, 0, TWO_PI);
    float angle2 = angle + vitesse;

    float rad = 100+(sin(3*angle)*50)*incV;

    float x = width/2 + cos(angle2) * rad;
    float y = height/2 + sin(angle2) * rad;
    float size = map(rad, 0, rayon, 0, incV*20);

    float blue = sin(i+vitesse)*255;
    fill(0, 0, blue);
    noStroke();

    pushMatrix();
    translate(x, y);
    rotate(angle2);
    rectMode(CENTER);
    rect(0, 0, size, size);
    popMatrix();
  }
  vitesse += radians(1);
  xInc += 0.01;
}

