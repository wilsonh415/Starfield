NormalParticle[] swag;
void setup()
{
	size(500,500);
	background(255);
	swag = new NormalParticle[200];
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
	for(int i=0; i < swag.length; i++) {
		swag[i] = new NormalParticle();
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
	if(myX > 500) {
		myX = 250;
	}
	}

public void move() {
myX = Math.cos(angle) * speed + myX;
myY = Math.sin(angle) * speed + myY;
myX2 = Math.cos(angle) * speed/1.3 + myX2;
myY2 = Math.sin(angle) * speed/1.3 + myY2;
myX3 = Math.cos(angle) * speed/2 + myX3;
myY3 = Math.sin(angle) * speed/2 + myY3;
	if(myX > 500) {
		myX = 250;
	}
	if(myX < 0) {
		myX = 250;
	}
	if(myY > 500) {
		myY = 250;
	}
	if(myY < 0) {
		myY = 250;
	}
	if(myX2 > 500) {
		myX2 = 250;
	}
	if(myX2 < 0) {
		myX2 = 250;
	}
	if(myY2 > 500) {
		myY2 = 250;
	}
	if(myY2 < 0) {
		myY2 = 250;
	}
	if(myX3 > 500) {
		myX3 = 250;
	}
	if(myX3 < 0) {
		myX3 = 250;
	}
	if(myY3 > 500) {
		myY3 = 250;
	}
	if(myY3 < 0) {
		myY3 = 250;
	}
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
public void move() {

 }
public void show() {

}
}
class JumboParticle 
{

}

