void setup()
{
	size(500,500);
	background(255);
}
void draw()
{

}
class NormalParticle
{
	int myX, myY, myColor;
	double speed, angle;
	NormalParticle() {
	myX = 200;
	myY = 200;
	myColor = (int)(Math.random()*255);
	speed = Math.cos(PI) * 5;
	angle = Math.cos(PI) * speed;
}
void move() {

}
void show() {

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

