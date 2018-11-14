class Spaceship extends Floater  
{   
	/*protected int corners;  //the number of corners, a triangular floater has 3   
  	protected int[] xCorners;   
  	protected int[] yCorners;   
  	protected int myColor;   
 	protected double myCenterX, myCenterY; //holds center coordinates   
 	protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
 	protected double myPointDirection;*/
	public Spaceship(){

		corners=3;
		myColor=color(255, 61, 138);
		myCenterX=width/2;
		myCenterY=height/2;
		myDirectionX=0;
		myDirectionY=0;
		myPointDirection=0;
		xCorners=new int[corners];
		yCorners=new int[corners];
		xCorners[0]=-8;
		xCorners[1]=16;
		xCorners[2]=-8;

		yCorners[0]=-8;
		yCorners[1]=0;
		yCorners[2]=8;

	}
	public void setX(int x){
		myCenterX=x;
	}  
	public int getX(){
		return (int)myCenterX;
	}   
	public void setY(int y){
		myCenterY=y;
	}   
	public int getY(){
		return (int)myCenterY;
	}   
	public void setDirectionX(double x){
		myDirectionX=x;
	}   
	public double getDirectionX(){
		return (int)myDirectionX;
	}   
	public void setDirectionY(double y){
		myDirectionY=y;
	}   
	public double getDirectionY(){
		return (int)myDirectionY;
	}   
	public void setPointDirection(int degrees){
		myPointDirection=degrees;
	}   
	public double getPointDirection(){
		return (int)myPointDirection;
	} 
}
