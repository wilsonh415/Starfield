Particle[] swag;
void setup()
{
	size(700,700);
	background(0);
	swag = new Particle[200];
	swag[0] = new JumboParticle();
	swag[1] = new JumboParticle();
	swag[2] = new JumboParticle();
	swag[3] = new OddballParticle();
	for(int i=4; i < swag.length; i++) {
		swag[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for(int i=0; i < swag.length; i++) {
		swag[i].move();
		swag[i].show();
	}
}
void mousePressed() {
}
class NormalParticle implements Particle
{
	int myColor;
	double myX, myY,myX2, myY2, myX3, myY3, speed, angle;
	NormalParticle() {
	myColor = (int)(Math.random()*255);
	myX = Math.random()*5 + 350;
	myY = Math.random()*5 + 350;
	myX2 = Math.random()*5 + 350;
	myY2 = Math.random()*5 + 350;
	myX3 = Math.random()*5 + 350;
	myY3 = Math.random()*5 + 350;
	speed = Math.cos(2*PI);
	angle = Math.random()*(Math.PI*2);
	if(myX > 700) {
		myX = 350;
	}
	}

public void move() {

myX = Math.cos(angle) * speed + myX;
myY = Math.sin(angle) * speed + myY;
myX2 = Math.cos(angle) * speed/1.3 + myX2;
myY2 = Math.sin(angle) * speed/1.3 + myY2;
myX3 = Math.cos(angle) * speed/2 + myX3;
myY3 = Math.sin(angle) * speed/2 + myY3;
	if(myX > 700) {
		myX = 350;
	}
	if(myX < 0) {
		myX = 350;
	}
	if(myY > 700) {
		myY = 350;
	}
	if(myY < 0) {
		myY = 350;
	}
	if(myX2 > 700) {
		myX2 = 350;
	}
	if(myX2 < 0) {
		myX2 = 350;
	}
	if(myY2 > 700) {
		myY2 = 350;
	}
	if(myY2 < 0) {
		myY2 = 350;
	}
	if(myX3 > 700) {
		myX3 = 350;
	}
	if(myX3 < 0) {
		myX3 = 350;
	}
	if(myY3 > 700) {
		myY3 = 350;
	}
	if(myY3 < 0) {
		myY3 = 350;
	}
	if(mousePressed) {
		myX = 350;
		myY = 350;
		myX2 = 350;
		myY2 = 350;
		myX3 = 350;
		myY3 = 350;
	}
 }
public void show() {
	fill(0,myColor,0);
	ellipse((int)myX, (int)myY, 10, 10);
	fill(myColor, 0, 0);
	ellipse((int)myX2,(int)myY2, 10, 10);
	fill(0,0,myColor);
	ellipse((int)myX3, (int)myY3, 10, 10);
	}
}
interface Particle
{
public void move();
public void show();
}
class OddballParticle implements Particle{

double apos, bpos, cspeed, dangle, ecolor;
OddballParticle() {
	apos = Math.random()*5 + 350;
	bpos = Math.random()*5 + 350;
	cspeed = Math.cos(8*PI);
	dangle = Math.random()*(Math.PI*4);
	ecolor = (int)(Math.random()*255);
	}
public void move() {
apos = Math.cos(dangle) * cspeed + apos + 10;
bpos = Math.sin(dangle) * cspeed + bpos + 10;
	if(apos > 700) {
		apos = 350;
	}
	if(bpos > 700) {
		bpos = 350;
	}
	if(apos < 0) {
		apos = 350;
	}
	if(bpos < 0) {
		bpos = 350;
	}
 }
public void show() {
	fill(125);
	ellipse((int)apos,(int)bpos, 60, 60);
}
}
class JumboParticle extends NormalParticle {
	public void show() 
{
	fill(255);
	rect((int)myX, (int)myY, 15, 15);
	fill(255);
	rect((int)myX2,(int)myY2, 15, 15);
	fill(255);
	rect((int)myX3, (int)myY3, 15, 15);
}
}

