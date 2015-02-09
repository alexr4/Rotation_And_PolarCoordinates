
void setup()
{
  size(500, 500);
}

void draw()
{
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(45));
  noStroke();
  fill(127);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  popMatrix();
  
  fill(255, 0, 255);
  rect(width/2, height/2+20, 40, 40);
  
}
