//your variable declarations here
Spaceship nebuchadnezzar;

Star [] space;

public void setup() 
{
	size(600,600);
	space=new Star[200];
	for(int i=0;i<space.length;i++){
		space[i]=new Star();
	}
	nebuchadnezzar=new Spaceship();
	frameRate(60);
}
public void draw() 
{
	background(37, 0, 63);
	for(int i=0;i<space.length;i++){
		space[i].show();
	}
	nebuchadnezzar.show();
	nebuchadnezzar.move();
}
public void keyPressed(){

	if(key=='w') nebuchadnezzar.accelerate(0.3);

	if(key=='s') nebuchadnezzar.accelerate(-0.3);

	if(key=='a') nebuchadnezzar.turn(-5);

	if(key=='d') nebuchadnezzar.turn(5);

	if(key=='q'){
		nebuchadnezzar.setX((int)(Math.random()*601));
		nebuchadnezzar.setY((int)(Math.random()*601));
	}

}	

