#include "dac_pt8211.h"
#include "N76E003.h"
#include "Function_define.h"

#define digitalWrite(X,Y) DAC_##X=Y

#if 1 // n76e003 용 GPIO, 라인파이 마스터 보드 Ver1.2 24.06.26
#define DAC_BCK		P03 	//OUT
#define DAC_WS		P14 	//OUT
#define DAC_DIN		P01 	//OUT
#endif

void set_gpio_dac_pt8211()
{
	P03_PushPull_Mode;
	P14_PushPull_Mode;
	P01_PushPull_Mode;
	digitalWrite(BCK,0);
	digitalWrite(WS,0);
	digitalWrite(DIN,0);
}

void set_dac_single(int aiValue)
{
	int i;
	for (i = 15; i >= 0; i--) {
		digitalWrite(BCK,0);
		//delay_us(1);
		if((aiValue >> i) & 1){
			digitalWrite(DIN,1); // DAC_DIN
								 //print_uart("1");
		}
		else{
			digitalWrite(DIN,0);
			//print_uart("0");
		}
		//delay_us(1);
		digitalWrite(BCK,1);
		//delay_us(1);
	}

	digitalWrite(BCK,0);
}

void set_dac(int aiL, int aiR)
{
	/*
	0x7FFF(+32767) ==> 3.740V
	0x8000(-32767) ==> 1.243V
	0 ==> 2.49V
	*/
	digitalWrite(WS,1);
	set_dac_single(aiL);

	digitalWrite(WS,0);
	set_dac_single(aiR);

	digitalWrite(WS,1);
}

void set_mV(int aiLmV, int aiRmV)
{
/*
y1 = a * x1 + b
y2 = a * x2 + b

y1 - y2 = a * (x1 - x2)
a = (y1-y2) / (x1-x2)
b = y1 - a * x1

*/
	int iDacL;
	int iDacR;

	long int i32A;

	i32A = (-3400 + 5798);
	i32A *= aiLmV;
	i32A -= 5798000;
	i32A /= 1000;
	iDacL = i32A;
	
	i32A = (-3400 + 5798);
	i32A *= aiRmV;
	i32A -= 5798000;
	i32A /= 1000;
	iDacR = i32A;

	set_dac(iDacL, iDacR);
	/*

-12994 : -3.000V
-10593 : -2.000V
-8205 : -1.000V
-5798 : 0.000V	
-3400 : 1.000V
-993 : 2.000V
1411 : 3.000V
3812 : 4.000V
6125 : 5.000V
8614 : 6.000V


-11000 :-2.169V
		(418mV)
-10000 :-1.751V
		(418mV)
-9000 :-1.333V
		(414mV)
-8000 :-0.919V
		(417mV)
-7000 :-0.502V
		(417mV)
-6000 :-0.085V
		(420mV)
-5000 : 0.335V
		(415mV)
-4000 : 0.750V
		(416mV)
-3000 : 1.166V
		(417mV)
-2000 : 1.583V
		(414mV)
-1000 : 1.997V
		(415mV)
    0 : 2.412V
		(417mV)
 1000 : 2.829V
		(416mV)
 2000 : 3.245V
		(417mV)
 3000 : 3.662V
		(416mV)
 4000 : 4.078V
		(416mV)
 5000 : 4.494V
		(418mV)
 6000 : 4.912V
		(416mV)
 7000 : 5.328V
		(419mV)
 8000 : 5.747V
		(415mV)
 9000 : 6.162V
		(418mV)
10000 : 6.580V
		(430mV)
11000 : 7.01V
		(420mV)
12000 : 7.43V
		(410mV)
13000 : 7.84V
*/
}


