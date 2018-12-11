//your variable declarations here
Spaceship nebuchadnezzar;

Star [] space;
ArrayList<Asteroid> ooph=new ArrayList<Asteroid>();

public void setup() 
{
	frameRate(60);
	size(600,600);

	space=new Star[200];
	for(int i=0; i<15;i++){
		ooph.add(new Asteroid());
	}

	for(int i=0;i<space.length;i++){
		space[i]=new Star();
	}
	
	nebuchadnezzar=new Spaceship();
}
public void draw() 	
{
	background(37, 0, 63);

	for(int i=0;i<space.length;i++){
		space[i].show();
	}
	for(int i=0;i<ooph.size();i++){
		ooph.get(i).show();
		ooph.get(i).move();
		float d=dist(nebuchadnezzar.getX(),nebuchadnezzar.getY(),ooph.get(i).getX(),ooph.get(i).getY());
		if(d<15) ooph.remove(i);
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

