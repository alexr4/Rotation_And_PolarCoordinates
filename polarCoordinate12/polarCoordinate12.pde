float rayon;
float vitesse;
float xInc;


void setup()
{
  size(500, 500);
  rayon = 250;
  vitesse = 0.1;
  background(40);
}

void draw()
{
  //background(255);

  //cercle debug
  stroke(255, 0, 0);
  noFill();
  //ellipse(width/2, height/2, rayon*2, rayon*2);

  float incV = noise(xInc)*2;
  float minRad = noise(xInc) * 100;
  for (int i=0; i<100; i++)
  {
    float angle = map(i, 0, 100, 0, TWO_PI);
    float angle2 = angle + vitesse;

    float rad = minRad+(sin(3*angle)*50)*incV;

    float x = width/2 + cos(angle2) * rad;
    float y = height/2 + sin(angle2) * rad;
    float size = map(rad, 0, rayon, incV, incV*20);

    float blue = sin(i+vitesse)*255;
    float green = map(rad+vitesse, 0, 150, incV*255, 0);
    float red = map(incV, 0, 2, 255, 0);
    
    fill(red, green, blue, 10);
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

