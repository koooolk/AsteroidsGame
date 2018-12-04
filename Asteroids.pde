class Asteroid extends Floater
{
	/*protected int corners;  //the number of corners, a triangular floater has 3   
  	protected int[] xCorners;   
  	protected int[] yCorners;   
  	protected int myColor;   
 	protected double myCenterX, myCenterY; //holds center coordinates   
 	protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
 	protected double myPointDirection;*/
 	double rotSpeed;
	Asteroid(){
		rotSpeed=(Math.random()*3)-1;
		corners=4;
		myColor=color(255, 255, 255);

		myCenterX=(int)(Math.random()*601)-1;
		myCenterY=-10;
		myDirectionX=(Math.random()*5)-2;
		myDirectionY=(Math.random()*5)-2;
		myPointDirection=(int)(Math.random()*3)-1;
		
		xCorners=new int[corners];
		yCorners=new int[corners];
		xCorners[0]=-8;	
		xCorners[1]=8;
		xCorners[2]=8;
		xCorners[3]=-8;

		yCorners[0]=-8;
		yCorners[1]=-8;
		yCorners[2]=8;
		yCorners[3]=8;

	}
	public void move(){
		//change the x and y coordinates by myDirectionX and myDirectionY       
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;     

    	//wrap around screen    
    	if(myCenterX >width)
    	{     
      		myCenterX = 0;    
    	}    
    	else if (myCenterX<0)
    	{     
      		myCenterX = width;    
    	}    
    	if(myCenterY >height)
    	{    
      		myCenterY = 0;    
    	} 
    
    	else if (myCenterY < 0)
    	{     
      		myCenterY = height;    
    	}
    	myPointDirection+=rotSpeed;
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