# Tic_Tac_Toe-Game
#include <avr/io.h>
#define F_CPU 1000000UL
#include <util/delay.h>
#include <avr/sfr_defs.h>

int main(void)
{
	int i = 0;
	int check[9] = {1,1,1,1,1,1,1,1,1};
	int led1[9] = {0,0,0,0,0,0,0,0,0};
	int led2[9] = {0,0,0,0,0,0,0,0,0};
	DDRA = 0xFF;
	DDRB = 0xFF;
	DDRC = 0x3C;
	DDRD = 0x00;
	
	PORTD = 0xFF;
	
	PORTA = 0xFF;
	_delay_ms(1);
	PORTC =0x10;
	_delay_ms(1000);
	PORTA = 0x00;
	_delay_ms(1);
	PORTC =0x00;
	_delay_ms(10);
	PORTB = 0xFF;
	_delay_ms(1);
	PORTC = 0x20;
	_delay_ms(1000);
	PORTB = 0x00;
	_delay_ms(1);
	PORTC = 0x00;
	_delay_ms(10);
	PORTC |= 1<<PINC6;
	while(1)
	{

		
		/*if(i>8)
		{
			check[0] = 1;
			check[1] = 1;
			check[2] = 1;
			check[3] = 1;
			check[4] = 1;
			check[5] = 1;
			check[6] = 1;
			check[7] = 1;
			check[8] = 1;
			i = 0;
			PORTA = 0x00;
			PORTB = 0x00;
			PORTC &= ~(0x3C);
			_delay_ms(10000);
		}*/
		
			
		if (bit_is_clear(PIND,0) && check[0])
		{
			
			if(i%2==0)
			{PORTA |= 0x01;i++;led1[0]=1;}
			else
			{PORTB |= 0x01;i++;led2[0]=1;}
			check[0]--;
			_delay_ms(1000);
		}
		
		else if (bit_is_clear(PIND,1) && check[1])
		{
			if(i%2==0)
			{PORTA |= 0x02;i++;led1[1]=1;}
			else
			{PORTB |= 0x02;i++;led2[1]=1;}
				
			_delay_ms(1000);
			check[1]--;
		}
		else if (bit_is_clear(PIND,2) && check[2])
		{
			
			if(i%2==0)
			{PORTA |= 0x04;i++;led1[2]=1;}
			else
			{PORTB |= 0x04;i++;led2[2]=1;}
			_delay_ms(1000);
			check[2]--;
		}
		else if (bit_is_clear(PIND,3) && check[3])
		{
			if(i%2==0)
			{PORTA |= 0x08;i++;led1[3]=1;}
			else
			{PORTB |= 0x08;i++;led2[3]=1;}
			check[3]--;
			_delay_ms(1000);
		}
		else if (bit_is_clear(PIND,4) && check[4])
		{
			if(i%2==0)
			{PORTA |= 0x10;i++;led1[4]=1;}
			else
			{PORTB |= 0x10;i++;led2[4]=1;}
			check[4]--;
			_delay_ms(1000);
		}
		else if (bit_is_clear(PIND,5) && check[5])
		{
			if(i%2==0)
			{PORTA |= 0x20;i++;led1[5]=1;}
			else
			{PORTB |= 0x20;i++;led2[5]=1;}
			check[5]--;
			_delay_ms(1000);
		}
		else if (bit_is_clear(PIND,6) && check[6])
		{
			if(i%2==0)
			{PORTA |= 0x40;i++;led1[6]=1;}
			else
			{PORTB |= 0x40;i++;led2[6]=1;}
			check[6]--;
			_delay_ms(1000);
		}
		else if (bit_is_clear(PIND,7) && check[7])
		{
			if(i%2==0)
			{PORTA |= 0x80;i++;led1[7]=1;}
			else
			{PORTB |= 0x80;i++;led2[7]=1;}
			check[7]--;
			_delay_ms(1000);
		}
		else if (bit_is_clear(PINC,6) && check[8])
		{
			if(i%2==0)
			{PORTC |= 0x10;i++;led1[8]=1;}
			else
			{PORTC |= 0x20;i++;led2[8]=1;}
			check[8]--;
			_delay_ms(1000);
		}
		if(i>4)
		{
			if(led1[0]&&led1[1]&&led1[2])	
			{PORTC |= 0x04;}
			else if(led1[3]&&led1[4]&&led1[5])
			{PORTC |= 0x04;}
			else if(led1[6]&&led1[7]&&led1[8])
			{PORTC |= 0x04;}
			else if(led1[0]&&led1[3]&&led1[6])
			{PORTC |= 0x04;}
			else if(led1[1]&&led1[4]&&led1[7])
			{PORTC |= 0x04;}
			else if(led1[2]&&led1[5]&&led1[8])
			{PORTC |= 0x04;}
			else if(led1[0]&&led1[4]&&led1[8])
			{PORTC |= 0x04;}
			else if(led1[6]&&led1[4]&&led1[2])
			{PORTC |= 0x04;}
			
			
			if(led2[0]&&led2[1]&&led2[2])
			{PORTC |= 0x08;}
			else if(led2[3]&&led2[4]&&led2[5])
			{PORTC |= 0x08;}
			else if(led2[6]&&led2[7]&&led2[8])
			{PORTC |= 0x08;}
			else if(led2[0]&&led2[3]&&led2[6])
			{PORTC |= 0x08;}
			else if(led2[1]&&led2[4]&&led2[7])
			{PORTC |= 0x08;}
			else if(led2[2]&&led2[5]&&led2[8])
			{PORTC |= 0x08;}
			else if(led2[0]&&led2[4]&&led2[8])
			{PORTC |= 0x08;}
			else if(led2[6]&&led2[4]&&led2[2])
			{PORTC |= 0x08;}
			if(bit_is_set(PINC ,3))
			{
				for(;;)
				{PORTC |= 0x08;_delay_ms(100);
				 PORTC &= 0xF7;_delay_ms(100);}
			 }
			else if(bit_is_set(PINC ,2))
			{
				for(;;)
				{PORTC |= 0x04;_delay_ms(100);
				 PORTC &= 0xFB;_delay_ms(100);}
			}
			if(i==9)
			{
				for(;;)
				{PORTC |= 0x04;_delay_ms(200);
				PORTC &= 0xFB;_delay_ms(100);
				PORTC |= 0x08;_delay_ms(100);
				PORTC &= 0xF7;_delay_ms(100);}
			}
			}
		}
		
	
	}
