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
