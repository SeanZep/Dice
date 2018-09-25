void setup()
{
	size(100, 100);
	noLoop();
}
void draw()
{
	Die one = new Die(50, 50);
	one.show();
	one.roll();
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
		myX = x;
		myY = y;
	}
	void roll()
	{
		for(int i=0; i<6; i++){
			myNum = (int)(Math.random()*6+1);
			fill(0);
			if(myNum == 1){
				ellipse(myX+10, myY+10, 2, 2);
			}else if(myNum == 2){
				ellipse(myX+7, myY+7, 2, 2);
			}
			
		}
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 20, 20, 5, 5, 5, 5);

	}
}
