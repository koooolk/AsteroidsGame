class Bullet extends Floater
{
	protected double dRadians;
		
	public Bullet(Spaceship ship){

		myCenterX=ship.getX();
		myCenterY=ship.getY();
		
		myPointDirection=ship.getPointDirection();

		dRadians=myPointDirection*(Math.PI/180);

		myDirectionX=5*Math.cos(dRadians)+ship.getDirectionX();
		myDirectionY=5*Math.sin(dRadians)+ship.getDirectionY();
	
	}
	public void show(){
		fill(255);
		ellipse((int)myCenterX,(int)myCenterY,5,5);}
	public void setX(int x){myCenterX=x;}  
	public int getX(){return (int)myCenterX;}   
	public void setY(int y){myCenterY=y;}   
	public int getY(){return (int)myCenterY;}   
	public void setDirectionX(double x){myDirectionX=x;}   
	public double getDirectionX(){return (int)myDirectionX;}   
	public void setDirectionY(double y){myDirectionY=y;}   
	public double getDirectionY(){return (int)myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection=degrees;}   
	public double getPointDirection(){return (int)myPointDirection;} 
}