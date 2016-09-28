NormalParticle[] swag;
void setup()
{
	size(500,500);
	background(125);
	swag = new NormalParticle[100];
	for(int i=0; i < swag.length; i++) {
		swag[i] = new NormalParticle();
	}
}
void draw()
{
	background(125);
	for(int i=0; i < swag.length; i++) {
		swag[i].move();
		swag[i].show();
	}
}
class NormalParticle
{
	int myColor;
	double myX, myY, speed, angle;
	NormalParticle() {
	myColor = (int)(Math.random()*255);
	myX = 200;
	myY = 200;
	speed = Math.cos(PI) * 50;
	angle = Math.cos(PI) * speed;
	}
void move() {
myX = (angle) + myY;
myY = (angle) + myX;
}
void show() {
	fill(0,255,0);
	ellipse((int)myX, (int)myY, 10, 10);
	}
}
interface Particle
{

}
class OddballParticle 
{

}
class JumboParticle 
{

}

