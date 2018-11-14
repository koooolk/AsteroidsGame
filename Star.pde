class Star //note that this class does NOT extend Floater
{
	protected int x,y;
	public Star(){
		x=(int)(Math.random()*601);
		y=(int)(Math.random()*601);
	}
	public void show(){
		fill(124, 174, 255); 
		ellipse(x, y, 2, 2);
	}

}
