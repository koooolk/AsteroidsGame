//your variable declarations here
Spaceship nebuchadnezzar;

Star [] space;
Asteroid [] ooph;

public void setup() 
{
	frameRate(60);
	size(600,600);

	space=new Star[200];
	ooph=new Asteroid[15];

	for(int i=0;i<space.length;i++){
		space[i]=new Star();
	}
	for(int i=0;i<ooph.length;i++){
		ooph[i]=new Asteroid();
	}
	nebuchadnezzar=new Spaceship();
}
public void draw() 
{
	background(37, 0, 63);

	for(int i=0;i<space.length;i++){
		space[i].show();
	}
	for(int i=0;i<ooph.length;i++){
		ooph[i].show();
		ooph[i].move();
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

