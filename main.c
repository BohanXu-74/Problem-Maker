#include <stc15.h>
#include <stdlib.h>
#include <time.h>

#define unchar unsigned char
#define RS P1_2
#define E P1_4

#define DT P1_5
#define SW P5_4
#define CLK P3_2

#define menu 0
#define adds 1
#define subs 2
#define divs 3
#define mults 4

unchar turn = 0;
char quesNum, correctNum, numA, numB = 0;
unchar answer = 0;
unchar sec = 0;
unchar tsec = 0;
unchar min,e = 0;
unchar tmin = 0;
__bit timeStuck = 0;
__bit next = 0;
unchar doneNum = 0;

unchar display[2][16];
					  
unchar displaySelect = 0;
unsigned int speed = 0;

void timerInt() __interrupt 1
{
	TH0 = 0x10;
	TL0 = 0x00;
	e++;
	if(e >= 16)
	{
		e = 0;
		sec++;
	}
	if(sec >= 10)
	{
		tsec++;
		sec = 0;
	}

	if(tsec == 6)
	{
		sec = 0;
		tsec = 0;
		min++;
	}
	if(min >= 10)
	{
		tmin++;
		min = 0;
	}
	if(tmin >= 100)
	{
		timeStuck = 1;
	}
}

void delay(unchar time)
{
	unsigned int h,a;
	for(h = 0; h < time; h++)
	{
		for(a = 0; a < 150; a++);
	}
}

void delayl(unchar time)
{
	unsigned int h,a;
	for(h = 0; h < time; h++)
	{
		for(a = 0; a < 10000; a++);
	}
}

void setupInt()
{
	TMOD = 0x11;
	TH0 = 0x10;
	TL0 = 0x00;
	ET0 = 1;
	EA = 1;
	TR0 = 1;
}

/********************************888show*******************************88888*/
void LCD4to(unchar num)
{
	P1_1 = ((num >> 4) & 1);
	P1_0 = ((num >> 5) & 1);
	P3_7 = ((num >> 6) & 1);
	P3_6 = ((num >> 7) & 1);
}

void com(unchar data)
{
	unchar lcd;
	lcd =(lcd & 0x0F) | (data & 0xF0);
	LCD4to(lcd);
	delay(2);
	RS=0;
	delay(2);	
	E=1; 
	delay(2);	
	E=0;
	lcd = (lcd & 0x0F) | (data << 4);
	LCD4to(lcd);
	delay(2);	
	E=1;
	delay(2);	
	E=0;
	delay(2);	
}

void dat(unchar data)
{
	unchar lcd;
	lcd =(lcd & 0x0F) | (data & 0xF0);
	LCD4to(lcd);
	delay(2);	
	RS=1;
	delay(2);	
	E=1; 
	delay(2);	
	E=0;
	lcd = (lcd & 0x0F) | (data << 4);
	LCD4to(lcd);
	delay(2);	
	E=1;
	delay(2);	
	E=0;
	delay(2);	
}

void write(unchar line[16],unchar choose)
{
	unchar columm;
	if(choose == 1)
	{
		com(0xC0);
	}
	else
	{
		com(0x80);
	}
	for(columm = 0; columm < 17; columm++)
	{
		delay(10);
		dat(line[columm]);
	}
}

void writeArray(unchar line[16],unchar d2)
{
	unchar columm;
	for(columm = 0; columm < 17; ++columm)
	{
		display[d2][columm] = line[columm];
	}
}

void writeQues(unchar numQuess, unchar numsA, unchar numsB, unchar symbols)
{
	writeArray("  .       =     ", 0);	
	display[0][0] = (numQuess/10)+0x30;
	display[0][1] = (numQuess%10)+0x30;
	display[0][4] = (numsA/10) + 0x30;
	display[0][5] = (numsA%10) + 0x30;
	display[0][6] = symbols;
	display[0][7] = (numsB/10) + 0x30;
	display[0][8] = (numsB%10) + 0x30;
	display[0][15] = ' ';
	if(display[0][0] == 0x30)
	{
		display[0][0] = (numQuess%10)+0x30;
		display[0][1] = '.';
		display[0][2] = ' ';
	}
}

void writeAnswer()
{
	writeArray("                ", 1);
	writeArray("   left!        ",1);
	display[1][0] = ((quesNum-doneNum)/10)+0x30;
	display[1][1] = ((quesNum-doneNum)%10)+0x30;
	display[0][12] = (turn/100)+0x30;
	display[0][13] = ((turn/10)%10)+0x30;
	display[0][14] = (turn%10)+0x30;
	if(display[0][12] == 0x30)
	{
		if(display[0][13] == 0x30)
		{
			if(display[0][14] == 0x30)
			{
				display[0][12] = '0';
				display[0][13] = ' ';
				display[0][14] = ' ';
				return;
			}
			display[0][12] = (turn%10)+0x30;
			display[0][13] = ' ';
			display[0][14] = ' ';
			return;
		}
		display[0][12] = ((turn/10)%10)+0x30;
		display[0][13] = (turn%10)+0x30;
		display[0][14] = ' ';
		return;
	}
	display[0][12] = (turn/100)+0x30;
	display[0][13] = ((turn/10)%10)+0x30;
	display[0][14] = (turn%10)+0x30;
}

void writeYesOrNo(unchar yesOrNo)
{
	if(yesOrNo == 'yes')
	{
		write("       YES      ",1);
	}
	if(yesOrNo == 'no')
	{
		
		write("       NO       ",1);
	}
	delayl(70);
}



void displayFlip()
{
	com(0x80);
	write(display[0],0);
	write(display[1],1);
}

/**************************solve****************************/

void exint0() __interrupt 0
{
	delay(3);
	if (!P3_2)
	{
		if (DT == 0)
		{
			if(turn == 255)
				turn = 0;
			else if(speed < 1)
				turn = turn + 2;
			else
				turn++;
		}
		
		if(DT == 1)
		{
			if(turn == 0)
			{
				turn = 255;
			}
			if(speed < 1)
				turn = turn - 2;
			else
				turn--;	
		}
	}
	speed = 0;
}

void enter()
{
	while(1)
	{
		if(SW == 0)
		{
			while(SW == 0);
			break;
		}
	}
}

void clear()
{
	com(0x01);
}

void add()
{
	while(numA + numB > 100)
	{
		numA = rand()%100;
		numB = rand()%100;
	}
	writeQues(doneNum+1, numA, numB,'+');
	writeAnswer();
	if(answer == 1)
	{
		if(turn == numA + numB)
		{
			writeYesOrNo('yes');
			correctNum++;
			clear();
		}
		else
		{
			writeYesOrNo('no');
			clear();
		}
		doneNum++;
		next = 1;
	}
}

void sub()
{
	while(numA - numB < 0)
	{
		numA = rand()%100;
		numB = rand()%100;
	}
	writeQues(doneNum+1, numA, numB,'-');
	writeAnswer();
	if(answer == 1)
	{
		if(turn == numA - numB)
		{
			writeYesOrNo('yes');
			correctNum++;
			clear();
		}
		else
		{
			writeYesOrNo('no');
			clear();
		}
		doneNum++;
		next = 1;
	}
}

void mult()
{
	while(numA * numB > 144)
	{
		numA = rand()%100;
		numB = rand()%100;
	}
	writeQues(doneNum+1, numA, numB,'*');
	writeAnswer();
	if(answer == 1)
	{
		if(turn == numA * numB)
		{
			writeYesOrNo('yes');
			correctNum++;
			clear();
		}
		else
		{
			writeYesOrNo('no');
			clear();
		}
		doneNum++;
		next = 1;
	}
}

void div()
{
	while(numA%numB != 0)
	{
		numA = rand()%100;
		numB = rand()%100;
	}
	writeQues(doneNum+1, numA, numB,'/');
	writeAnswer();
	if(answer == 1)
	{
		if(turn == numA / numB)
		{
			writeYesOrNo('yes');
			correctNum++;
			clear();
		}
		else
		{
			writeYesOrNo('no');
			clear();
		}
		doneNum++;
		next = 1;
	}
}

void end(/*unchar f*/)
{
	unchar percent = (correctNum)*10;
	clear();
	writeArray("YOU GOT      AND", 0);
	writeArray("YOUR TIME   :   ", 1);
	display[0][8] = (percent/100)+0x30;
	display[0][9] = ((percent/10)%10)+0x30;
	//display[0][9] = '5';
	display[0][10] = ((percent)%10)+0x30;
	display[0][11] = '%';
	display[1][10] = tmin+0x30;
	display[1][11] = min+0x30;
	display[1][13] = tsec+0x30;
	display[1][14] = sec+0x30;
	displayFlip();
	enter();
}

/***************************************main*********************************************/

void loop()
{	
	com(0x01);
	displaySelect = menu;
	//setupInt();
	while(1)
	{
		/**************** solve ******************/
		speed++;
		if(displaySelect == menu)
		{
			answer = 0;
			quesNum = 10;
			correctNum = 0;
			doneNum = 0;
			timeStuck = 0;
			next = 0;
			numA = 0;
			numB = 0;
			tsec = 0;
			sec = 0;
			min = 0;   
			tmin = 0;                     
			
			if(turn == 0)
				writeArray("  1. Addition   ", 0);
			if(turn == 1)
				writeArray(" 2. Subtraction ", 0);
			if(turn == 2)
				writeArray("   3. Division  ", 0);
			if(turn == 3)
				writeArray("4.Multiplication", 0);
			if(turn > 3)
				turn = 0;
			writeArray("                ", 1);
			if(SW == 0)
			{
				while(SW == 0)
				{
					numA = rand()%100;
					numB = rand()%100;
				}
				displaySelect = turn + 1;
				setupInt();
				com(0x01);
			}
		}
		else
		{
			if(SW == 0)
			{
				while(SW == 0);
				answer = 1;
			}
		}
		if(displaySelect == adds)
		{
			add();
			displaySelect = adds;
			if(doneNum == quesNum)
			{
				TMOD = 0x00;
				end();
				com(0x01);
				displaySelect = menu;
			}
			if(next == 1)
			{
				do
				{
					numA = rand()%100;
					numB = rand()%100;
				}while(numA+numB > 254);
				next = 0;
				answer = 0;
				turn = 0;
			}
		}
		if(displaySelect == divs)
		{
			div();
			displaySelect = divs;
			if(doneNum == quesNum)
			{
				TMOD = 0x00;
				end();
				com(0x01);
				displaySelect = menu;
			}
			if(next == 1)
			{
				do
				{
					numA = rand()%100;
					numB = rand()%100;
				}while(numA%numB != 0);
				next = 0;
				answer = 0;
				turn = 0;
			}
		}
		if(displaySelect == subs)
		{
			sub();
			displaySelect = subs;
			if(doneNum == quesNum)
			{
				TMOD = 0x00;
				end();
				com(0x01);
				displaySelect = menu;
			}
			if(next == 1)
			{
				do
				{
					numA = rand()%100;
					numB = rand()%100;
				}while(numA-numB < 0);
				next = 0;
				answer = 0;
				turn = 0;
			}
		}
		if(displaySelect == mults)
		{
			mult();
			displaySelect = mults;
			if(doneNum == quesNum)
			{
				TMOD = 0x00;
				end();
				com(0x01);
				displaySelect = menu;
			}
			if(next == 1)
			{
				do
				{
					numA = rand()%100;
					numB = rand()%100;
				}while(numA*numB > 254);
				next = 0;
				answer = 0;
				turn = 0;
			}
		}
		if(displaySelect != menu)
		{
			if(timeStuck == 0)
			{
				display[1][11] = tmin+0x30;
				display[1][12] = min+0x30;
				display[1][13] = ':';
				display[1][14] = tsec+0x30;
				display[1][15] = sec+0x30;
			}
			else
			{
				display[1][11] = ' ';
				display[1][12] = 'O';
				display[1][13] = 'V';
				display[1][14] = 'E';
				display[1][15] = 'R';
			}
		}
		//display[1][0] = ' ';
		displayFlip();
	}
}

void setup()
{
	DT = 1;
	SW = 1;
	CLK = 1;
	com(0x02);
	delay(5);
	com(0x28);
	delay(5);
	com(0x0E);
	delay(5);
	com(0x06);
	delay(5);
	com(0x01);
	delay(5);
	com(0x80);
	//delay(5);
	//dat(0x30);
	//delay(5);
	//dat(0x31);
	//delay(5);
	INT0 = 1;
	IT0 = 0;
	EX0 = 1;
	EA = 1;
	write(" HP by Bohan Xu ",0);
	write("      2025      ",1);
	delayl(100);
}

void main()
{
	//P3M1 = 0;
	//P3M0 = 1;
	//P1M1 = 0;
	//P1M0 = 1;
	setup();
	loop();
	while(1);
}

