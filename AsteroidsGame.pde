//your variable declarations here
Spaceship nebuchadnezzar=new Spaceship();

Star [] space;
ArrayList<Asteroid> ooph=new ArrayList<Asteroid>();
ArrayList<Bullet> gotem=new ArrayList<Bullet>();
Bullet temp=new Bullet(nebuchadnezzar);

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

	float d;

	for(int i=0;i<gotem.size();i++){
		gotem.get(i).show();
		gotem.get(i).move();
		for(int x=0;x<ooph.size();x++){
			d=dist(gotem.get(i).getX(),gotem.get(i).getY(),ooph.get(x).getX(),ooph.get(x).getY());
			
			if(d<12) {
				ooph.remove(x);
				gotem.remove(i);
				break;
			}	
		}	
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
	if(key=='e') gotem.add(new Bullet(nebuchadnezzar));

}	

