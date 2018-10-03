int sum = 0;
int r = 50;
int g = 0;
int b = 0;
void setup()
{
	size(500, 510);
	noLoop();
}
void draw()
{
	background(197);
	for(int y=0; y<500; y+=25){
		for(int x=0; x<500; x+=25){
			Die one = new Die(x, y);
			one.show();
			one.roll();
		}
	}
	textSize(12);
	text("SUM: "+sum, 0, 510);
}
void mousePressed()
{
	sum = 0;
	redraw();
	r = 50;
	g = 0;
	b = 0;
}
class Die //models one single dice cube
{
	int myNum, myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		myNum = (int)(Math.random()*6+1);
	}
	void roll()
	{
		fill(0);
		if(myNum == 1){
			ellipse(myX+10, myY+10, 2, 2);
			sum++;
		}else if(myNum == 2){
			ellipse(myX+6, myY+6, 2, 2);
			ellipse(myX+20-6, myY+20-6, 2, 2);
			sum+=2;
		}else if(myNum == 3){
			ellipse(myX+5, myY+5, 2, 2);
			ellipse(myX+10, myY+10, 2, 2);
			ellipse(myX+20-5, myY+20-5, 2, 2);
			sum+=3;
		}else if(myNum == 4){
			int f = 6;
			ellipse(myX+f, myY+f, 2, 2);
			ellipse(myX+20-f, myY+f, 2, 2);
			ellipse(myX+f, myY+20-f, 2, 2);
			ellipse(myX+20-f, myY+20-f, 2, 2);
			sum+=4;
		}else if(myNum == 5){
			int g = 5;
			ellipse(myX+g, myY+g, 2, 2);
			ellipse(myX+20-g, myY+g, 2, 2);
			ellipse(myX+g, myY+20-g, 2, 2);
			ellipse(myX+20-g, myY+20-g, 2, 2);
			ellipse(myX+10, myY+10, 2, 2);
			sum+=5;
		}else if(myNum == 6){
			int h = 6;
			ellipse(myX+h, myY+5, 2, 2);
			ellipse(myX+h, myY+10, 2, 2);
			ellipse(myX+h, myY+15, 2, 2 );
			ellipse(myX+20-h, myY+5, 2, 2);
			ellipse(myX+20-h, myY+10, 2, 2);
			ellipse(myX+20-h, myY+15, 2, 2 );
			sum+=6;
		}
			
	}
	void show()
	{
		setColor();
		rect(myX, myY, 20, 20, 5, 5, 5, 5);
	}
}
void setColor(){
	if(r < 100){
		r++;
	}else if(g < 100){
		g++;
	}else if(b < 200){
		b++;
	}
	fill(r, g, b);
}
