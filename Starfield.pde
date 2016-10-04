NormalParticle[] swag;
void setup()
{
	size(500,500);
	background(255);
	swag = new NormalParticle[100];
	for(int i=0; i < swag.length; i++) {
		swag[i] = new NormalParticle();
	}
}
void draw()
{
	background(255);
	for(int i=0; i < swag.length; i++) {
		swag[i].move();
		swag[i].show();
	}
}
void mousePressed() {
	background(255);
	for(int i=0; i < swag.length; i++) {
		swag[i].move();
		swag[i].show();
	}
}
class NormalParticle
{
	int myColor;
	double myX, myY,myX2, myY2, myX3, myY3, speed, angle;
	NormalParticle() {
	myColor = (int)(Math.random()*255);
	myX = Math.random()*5 + 250;
	myY = Math.random()*5 + 250;
	myX2 = Math.random()*5 + 250;
	myY2 = Math.random()*5 + 250;
	myX3 = Math.random()*5 + 250;
	myY3 = Math.random()*5 + 250;
	speed = Math.cos(2*PI);
	angle = Math.random()*(Math.PI*2);
	}
public void move() {
myX = Math.cos(angle) * speed/1.5 + myX;
myY = Math.sin(angle) * speed/1.5 + myY;
myX2 = Math.cos(angle) * speed/2 + myX2;
myY2 = Math.sin(angle) * speed/2 + myY2;
myX3 = Math.cos(angle) * speed/3 + myX3;
myY3 = Math.sin(angle) * speed/3 + myY3;
 }
public void show() {
	fill(0,myColor,0);
	ellipse((int)myX, (int)myY, 15, 15);
	fill(myColor, 0, 0);
	ellipse((int)myX2,(int)myY2, 15, 15);
	fill(0,0,myColor);
	ellipse((int)myX3, (int)myY3, 15, 15);
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

