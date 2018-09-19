void setup()
{
	noLoop();
}
void draw()
{
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myNum, myX, myY;
	
	Die(int x, int y) //constructor
	{
		myNum = (int)(Math.random()*7);
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
