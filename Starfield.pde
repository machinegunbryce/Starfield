
Particle[] part = new Particle[700];
void setup()
{
  background(0, 0, 0);
  size(500, 500);
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particle();
  }
  for (int i = 0; i < 5; i++) {
    part[i] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < part.length; i++) {
    part[i].move();
    part[i].show();
  }

}
class Particle
{
  double myX, myY;
  double mySpeed, mySize, myAngle;
  Particle() {
    myX = 250;
    myY = 250;
    myAngle = (double)(Math.random() * 2 *PI);
    mySpeed = (double)(Math.random() * 5);
  }

  void move() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }

  void show() {
    noStroke();
    fill(255, 255, 255, 255);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}


class OddballParticle extends Particle
{
  OddballParticle() {
    myX = (double)(Math.random()*300);
    myY = (double)(Math.random()*300);
    myAngle = (double)(Math.random() * 4);
    mySpeed = (double)(Math.random() * 4);
  }
  void move() {
    myX += Math.cos(myAngle)*mySpeed/4;
    myY += Math.sin(myAngle)*mySpeed/4;
  }

  void show() {
    noStroke();
    fill(0,0,139, 200);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
