Die bob, jeff;
void setup()
{
	size(500, 500);
	bob = new Die(140,200);
	jeff = new Die(290,200);
	noLoop();
}
void draw()
{
	background(125,110,24);
	jeff.roll();
	bob.roll();
	bob.show();
	jeff.show();
	textSize(100);
	text(bob.numDots + jeff.numDots, 100, 100);
		

}

void mousePressed()
{
	redraw();
}

class Die      //models one single dice cube
{
	int myX, myY,numDots, size;   //variable declarations here
	Die(int x, int y)    //constructor
	{
		myX = x;     //variable initializations here
		myY = y;
		size = 100;
		
	}
	void roll()
	{
		numDots = (int)(Math.random()*6)+1;
			
	}
	void show()
	{
	 	
	 	fill(255);
	 	rect(myX,myY,100,100);
	 	int circleSize = size/8;
		fill(0);
		if (numDots == 1) {
      
     ellipse(myX+(size/2), myY+(size/2), circleSize, circleSize); //one
      
    }
    if (numDots == 2) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize, circleSize);
      ellipse(myX+3*(size/4), myY+3*(size/4), circleSize, circleSize); 
      
    }
    if (numDots == 3) {
      ellipse(myX+(size/4), myY+(size/4), circleSize, circleSize); //three
      ellipse(myX+(size/2), myY+(size/2), circleSize, circleSize); //three
      ellipse(myX+3*(size/4)+1, myY+3*(size/4)+1, circleSize, circleSize); //three
      
    }
    if (numDots == 4) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize, circleSize); //four
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize, circleSize); //four
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //four
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //four
      
    }
    if (numDots == 5) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize,circleSize); //five
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize,circleSize); //five
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //five
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //five
      ellipse(myX+(size/2)+1, myY+(size/2)-1, circleSize,circleSize);   //five  
      
    }
    if (numDots == 6) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize,circleSize); //six
      ellipse(myX+(size/4)+1, myY+2*(size/4), circleSize,circleSize); //six
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //six
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize,circleSize);//six
      ellipse(myX+3*(size/4)+1, myY+2*(size/4), circleSize,circleSize); //six 
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //six  
      
    }
		
	}


}
