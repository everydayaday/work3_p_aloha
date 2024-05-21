/*-------------------------------------------------------*/

/*-------------------------------------------------------*/

#include <stdlib.h>
#include "N76E003.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "Common.h"
#include "Delay.h"
#include "ws2812b.h"
#include "uart.h"
#include "eeprom_iap.h"

#define TIMER0_VAL        (133*1) // 100usec

#define TH0_INIT (((65536-TIMER0_VAL)>>8)&0xFF)
#define TL0_INIT  ((65536-TIMER0_VAL)&0xFF)
#define REF_MOTOR_L_DUR		100
#define REF_MOTOR_R_DUR		100

#define STEP_DLT 10
#define DIR_CW (1)
#define DIR_CCW (-1)

#define STEP_SHORT (1)
#define STEP_LONG (10)

#ifndef TOGGLE
#define TOGGLE(X) X=((X==1)?0:1);
#endif

#define BASE_ADDRESS            0x3700
#define TIME_OUT_MY_ADDR            100
#define TIME_OUT_SETTING_ADDR       100
#define TIME_OUT_FACTORY_RESET      200
#define COUNT_OUT_FACTORY_RESET     10
#define COUNT_OUT_FACTORY_RESET_ALL     10

#define MSK_ADDR 	0xF0
#define MSK_CMD 	0x0F
#define LINEFI_CMD_ADDRESSING 	0x00
#define LINEFI_CMD_UARTSPEED 	0x01

__code __at (BASE_ADDRESS) char gpcEEPROM[128] = "";


#define BIG_STEP 8
enum {
	STATE_CW_SHORT,
	STATE_CW_LONG,
	STATE_CCW_SHORT,
	STATE_CCW_LONG,

	STATE_CW_SHORT_ROT,
	STATE_CW_LONG_ROT,
	STATE_CCW_SHORT_ROT,
	STATE_CCW_LONG_ROT,


	STATE_SHORT_STOP_WAIT,
	STATE_CW_SHORT_STOP_WAIT,
	STATE_CCW_SHORT_STOP_WAIT,
	STATE_LONG_STOP_WAIT,
	STATE_CW_LONG_STOP_WAIT,
	STATE_CCW_LONG_STOP_WAIT,
	STATE_WAIT,
	STATE_GO,
	STATE_GO1,
	STATE_GO2,
	STATE_GO3,
	STATE_GO4,
	STATE_GO5,
	STATE_GO6,
	STATE_GO7,
	STATE_INIT
};

enum {
	STATE_ADDR_MINE,
	STATE_ADDR_OTHER,
	STATE_ADDR_END
};


#define MotorL_M		P01 //output
#define MotorL_P		P00 //output
#define MotorL_ZP		P15 //input
#define MotorL_sensor1	P10 //input
#define MotorL_sensor2	P11 //input
#define MotorR_M		P04 //output
#define MotorR_P		P03 //output
#define MotorR_ZP		P12 //input
#define MotorR_sensor1	P13 //input
#define MotorR_sensor2	P14 //input
#define power_ctrl		P05 //output
#define sel_out1		P13 //output
#define sel_out2		P10 //output




//#define BUFFER_SIZE		16
#define BUFFER_SIZE		256
#define LOCAL_PWR_ON		(0)
#define LOCAL_PWR_OFF		(1)



UINT8 gu8STL_PauseCnt;
UINT8 gu8STR_PauseCnt;
UINT16 gu16StopL = 0;
UINT16 gu16StopR = 0;
UINT8 gucR=0;
UINT8 gucG=0;
UINT8 gucB=0;
UINT8 gucW=0;
UINT8 gucPos=0;

int gc16STL_Cnt  = 0; // Step Time Left Count
int gc16STR_Cnt  = 0; // Step Time Right Count
UINT8 gucStepTimeL_Short = 30;
UINT8 gucStepTimeL_Long  = 100;
UINT8 gucStepTimeR_Short = 30;
UINT8 gucStepTimeR_Long  = 100;

UINT8 gucWaitTimeL_Short  = 200;
UINT8 gucWaitTimeL_Long   = 25;
UINT8 gucWaitTimeR_Short  = 200;
UINT8 gucWaitTimeR_Long   = 25;

UINT8 guState  = STATE_INIT;
UINT8 guStateL  = STATE_INIT;
UINT8 guStateR  = STATE_INIT;

UINT8 gu8StepTimeL_CW2  = 100;
UINT8 gu8StepTimeL_CCW2 = 100;
UINT8 gu8StepTimeR_CW2  = 100;
UINT8 gu8StepTimeR_CCW2 = 100;
UINT8 __xdata gu8Tmp;

UINT16 gu16MotorL_Dur = 10;
UINT16 gu16MotorR_Dur = 10;

int __xdata g16TrgtStepCntL2 = 0;
int __xdata g16TrgtStepCntR2 = 0;
int __xdata g16TrgtStepCntL = 0;
int __xdata g16TrgtStepCntR = 0;
int __xdata g16CurrStepCntL = 0;
int __xdata g16CurrStepCntR = 0;
int __xdata gu16Cnt0 = 0;
//char  gc8MotorPWM = 30;
char gucMyAddr;

UINT8  __xdata UART_BUFFER[BUFFER_SIZE];

UINT32 __xdata gpu32UartSpeed[] = {
	2400,
	28800,
	38400,
	57600,
	115200, 
	230400, 
	300000, 
	460800, 
	500000, 
	600000, 
	700000, 
	800000, 
	900000, 
	921600 
};

void set_gpio()
{
	Set_All_GPIO_Quasi_Mode;

	//output
	P05_PushPull_Mode; //MotorL_M
	MotorL_M = 0;
	P00_PushPull_Mode; //MotorL_P
	MotorL_P = 0;
	P04_PushPull_Mode; //MotorR_M
	MotorR_M = 0;
	P03_PushPull_Mode; //MotorR_P
	MotorR_P = 0;
	P05_PushPull_Mode; //power_ctrl
	power_ctrl = LOCAL_PWR_OFF;

	//input
	P10_Input_Mode; // #define MotorL_sensor1	P10
	P11_Input_Mode; // #define MotorL_sensor2	P11
	P13_Input_Mode; // #define MotorR_sensor1	P13
	P14_Input_Mode; // #define MotorR_sensor2	P14
	P12_Input_Mode; // #define MotorR_ZP		P12
	P15_Input_Mode; // #define MotorL_ZP		P15

	//Schmitt triggered input select.
	set_P0S_3;
	set_P0S_4;
	set_P0S_1;
	set_P0S_0;
	set_P1S_4;
	set_P3S_0;

#if 1
	/**********************************************************************
	  PWM frequency = Fpwm/((PWMPH,PWMPL) + 1) <Fpwm = Fsys/PWM_CLOCK_DIV> 
	  = (22.1184MHz/8)/(0x3FF + 1)
	  = 2.7KHz
	 ***********************************************************************/

	//PWM2_P01_OUTPUT_ENABLE;//#define MotorL_M		P01 //output
	//PWM5_P00_OUTPUT_ENABLE;//#define MotorL_P		P00 //output
	//PWM0_P04_OUTPUT_ENABLE;//#define MotorR_M		P04 //output
	//PWM1_P03_OUTPUT_ENABLE;//#define MotorR_P		P03 //output
	PWM3_P00_OUTPUT_DISABLE;//#define MotorL_P		P00 //output
	PWM4_P01_OUTPUT_DISABLE;//#define MotorL_M		P01 //output
	PWM5_P03_OUTPUT_DISABLE;//#define MotorR_P		P03 //output
	PWM3_P04_OUTPUT_DISABLE;//#define MotorR_M		P04 //output

	//	PWM_INT_PWM2;	
	//	PWM_FALLING_INT;					//Setting Interrupt happen when PWM0 falling signal

	//PWM_CLOCK_DIV_8;
	PWM_CLOCK_DIV_128;
	PWMPH = 0x00;							//Setting PWM period
	PWMPL = 0x3F;

	//	set_EPWM;									//Enable PWM interrupt
	//	set_EA;									

	PWM2H = 0x00;
	set_SFRPAGE;
	PWM5H = 0x00;
	clr_SFRPAGE;
	PWM0H = 0x00;
	PWM1H = 0x00;

	set_LOAD;
	set_PWMRUN;
#endif
}

void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B
{
	unsigned char i;
	unsigned int k,l;
	TH0 = TH0_INIT;
	TL0 = TL0_INIT;
	// Left
	if (gu16MotorR_Dur < 30000) {
		gu16MotorR_Dur++;
	}
	gu16Cnt0++;
#if 1
	switch(guState) {
		case STATE_GO1 :
			for (i=0;i<gu8Tmp;i++) {
				LED_SendColorRGBW(gucR,gucG,gucB,gucW);
			}
			guState = STATE_GO;
			break;
		case STATE_GO2 :
			for (i=0;i<5*20;i++) {
				LED_SendColorRGBW(gucW,gucW,gucW,gucW);
			}
			guState = STATE_GO;
			break;
		case STATE_GO3 :
			for (i=0;i<5*20;i++) {
				if (i==gucPos) {
					LED_SendColorRGBW(gucW,gucW,gucW,gucW);
				}
				else {
					LED_SendColorRGBW(0,0,0,0);
				}
			}
			guState = STATE_GO;
			break;
		case STATE_GO4 :
			for (k=0;k<1000;k++) {
				for (i=0;i<15;i++) {
					if (i == (k>>0)) {
						LED_SendColorRGBW(gucR,gucG,gucB,gucW);
					}
					else {
						LED_SendColorRGBW(0,0,0,0);
					}
				}

				//RESET PERIOD
				for (l=0;l<10000;l++) {
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
					nop; nop; nop; nop; nop;
				}

				if (k == 20) {
					break;
				}
			}
			guState = STATE_GO;
			break;
		case STATE_GO5 :
			for (k=0;k<1000;k++) {
				for (i=0;i<50;i++) {
					if ((50 - i) == (k>>0)) {
						LED_SendColorRGBW(gucR,gucG,gucB,gucW);
					}
					else {
						LED_SendColorRGBW(0,0,0,0);
					}
				}
				for (l=0;l<70;l++) {
					nop;
				}
				if (k>>2 == 51) {
					break;
				}
			}
			guState = STATE_GO;
			break;

		case STATE_GO6 :
			for (k=0;k<1000;k++) {
				P03 = 1;
				P02 = 0;
				nop; nop; nop; nop; nop;
				nop; nop; nop; nop; nop;
				P03 = 0;
				P02 = 1;
				nop; nop; nop; nop; nop;
				nop; nop; nop; nop; nop;
			}
			guState = STATE_GO;
			break;

		default :
			break;
	}

	//switch(guStateL) 
#endif
#if 0
	switch(guStateL) {
		case STATE_CW_LONG : case STATE_CW_SHORT :
			MotorL_M = 1;
			MotorL_P = 0;
			break;
		case STATE_CCW_LONG : case STATE_CCW_SHORT :
			MotorL_M = 0;
			MotorL_P = 1;
			break;
		default :
			break;
	}

	//switch(guStateL) 
#endif
#if 0
	// Right
	switch(guStateR) {
		case STATE_CW_LONG : case STATE_CW_SHORT :
			MotorR_M = 1;
			MotorR_P = 0;
			break;
		case STATE_CCW_LONG : case STATE_CCW_SHORT :
			MotorR_M = 0;
			MotorR_P = 1;
			break;
		default :
			break;
	} //switch(guStateR) 
#endif
} //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B

/* Needed for printf */
void putchar (char c) 
{
	TI = 0;
	SBUF = c;
	while(TI==0);
}

char getchar(void)
{
	char c;
	while (!RI);
	c = SBUF;
	RI = 0;
	return (c);
}

char getchar_nb(char * pcResult)
{
	/*
	   nonblocking return for UART rx
	 */
	if (RI) {
		*pcResult = SBUF;
		RI = 0;
		return 1;
	}
	else {
		return 0;
	}
}

char getnumber_char()
{
	char c8Tmp = 0;
	char c;
	while(1) {
		c = getchar();
		if (c == '\r') {
			break;
		}
		else {
			c8Tmp *= 10;
			c8Tmp += c - '0';
		}
	}
	return c8Tmp;
}

#if 0
long getnumber()
{
	long i32Num = 0;
	char cSign = 1;
	char c;

	c = getchar();
	if (c == '-') {
		cSign = -1;
		c = getchar();
	}
	if (c == '+') {
		c = getchar();
	}
	while(1) {
		if ( c <= '9' && c >= '0' ) {
			i32Num *= 10;
			i32Num += c - '0';
		}
		else {
			break;
		}
		c = getchar();
	}
	return i32Num*cSign;
}
#endif

void getstring(char * pcBuf, unsigned char aucSize)
{
	char c;
	while(1) {
		c = getchar();
		putchar(c);
		if (c == '\r') {
			break;
		}
		*pcBuf = c;
		pcBuf++;
		aucSize--;
		if (aucSize == 1) {
			break;
		}
	}
	*pcBuf = '\0';
	return;
}

char chk_cw(UINT8 aucPrevSensor, UINT8 aucCurrSensor)
{
	if (((aucPrevSensor >> 1)&1) != ((aucCurrSensor >> 1)&1)) {
		// 변화된 비트는 1비트 위치
		if ((aucCurrSensor >> 1)&1) {
			if (aucCurrSensor&1) {
				return 1;
			}
			else {
				return -1;
			}
		}
		else {
			if (aucCurrSensor&1) {
				return -1;
			}
			else {
				return 1;
			}
		}
	}
	else if ((aucPrevSensor&1) != (aucCurrSensor&1)) {
		// 변화된 비트는 0비트 위치
		if (aucCurrSensor&1) {
			if ((aucCurrSensor>>1)&1) {
				return -1;
			}
			else {
				return 1;
			}
		}
		else {
			if ((aucCurrSensor>>1)&1) {
				return 1;
			}
			else {
				return -1;
			}
		}
	}
	else {
		return 0;
	}

}
void step_minus(unsigned char * apucVal, UINT16 auiCnt)
{
//	printf_fast_f("%d %d\r\n", *apucVal, auiCnt);
	if ((*apucVal) > 0) {
		if (auiCnt < 10000) {
			if (*apucVal > BIG_STEP+1) {
				(*apucVal) -= BIG_STEP;
			}
			else {
				(*apucVal) --;
			}
		}
		else {
			(*apucVal) --;
		}
	}
}

void step_plus(unsigned char * apucVal, UINT16 auiCnt)
{
//	printf_fast_f("%d %d\r\n", *apucVal, auiCnt);
	if ((*apucVal) < 255) {
		if (auiCnt < 10000) {
			if ((*apucVal) < 255 - BIG_STEP + 1) {
				(*apucVal) += BIG_STEP;
			}
			else {
				(*apucVal) ++;
			}
		}
		else {
			(*apucVal) ++;
		}
	}
}

void main (void)
{
	UINT8 u8RxUART;
	UINT8 u8RxUARTSpeedSetting = 0;
	bit bA = 1;
	UINT16 u16Cnt0 = 0;
	int i;
	Set_All_GPIO_Quasi_Mode;
	TIMER0_MODE1_ENABLE;
	//	InitialUART0_Timer3(115200);
	InitialUART0_Timer3(2400);
#define ALS_OUT			P11 //output for DOUT of ALS
	P11_PushPull_Mode; // pin 14
#define SEL_ALS_OUT		P12 //selecting 0:DIN from previous ALS, 1:이번 EALS 슬레이브에서 생성되는 신호
	P12_PushPull_Mode; //
#define UART_RXD			P07 //
	P07_Input_Mode; //
#define SEL_UART_RXD_POL	P04 //
	P04_PushPull_Mode; //
	SEL_UART_RXD_POL = 0;

	P03_PushPull_Mode; //
					   //clr_T0M;// 16/12 MHz
	set_T0M; // 16MHz

	TH0 = TH0_INIT;
	TL0 = TL0_INIT;

	set_ET0;                                    //enable Timer0 interrupt
	set_EA;                                     //enable interrupts

	set_TR0;                                    //Timer0 run

	P02 = 0;
	P03 = 1;


	for (i=0;i<100;i++) {
		nop; nop; nop; nop; nop; 
		nop; nop; nop; nop; nop; 
		nop; nop; nop; nop; nop; 
		nop; nop; nop; nop; nop; 
	}

	if (UART_RXD == 0) {
		SEL_UART_RXD_POL = 1;
	}
	SEL_ALS_OUT = 0;

#if 0
	while(1) {
		if (gu16Cnt0 == 10000) {
			printf_fast_f("timer0:%dsec\n\r",u16Cnt0++);
			gu16Cnt0 = 0;
		}
	}
#endif
	int iState = STATE_ADDR_OTHER;
	int iState_sub = 0;
	int iCnt = 0;
	gucMyAddr = gpcEEPROM[0];

	gucR = 10;
	gucG = 0;
	gucB = 0;
	gucW = 0;
	guState  = STATE_GO4;

	P03 = 0;
	while(1) {
		if (Receive_Data_From_UART0_nb(&u8RxUART)) {
			if (u8RxUARTSpeedSetting) {
				if ((gucMyAddr == 0x00) && ((u8RxUART & MSK_CMD) == LINEFI_CMD_ADDRESSING)) {
					// 초기 펌웨어 로딩 직후 어드레스 할당
					// 내 주소 재할당
					gucR = 10;
					gucG = 0;
					gucB = 0;
					gucW = 0;
					guState  = STATE_GO4;

					gucMyAddr = u8RxUART & MSK_ADDR;
					Erase_APROM_Page(BASE_ADDRESS);
					Write_APROM_BYTE(BASE_ADDRESS+0, gucMyAddr);
				}
				else if ((u8RxUART & MSK_ADDR) == gucMyAddr) {
					// 내 주소가 0xFF이 아니고(즉 할당 되어 있고)  
					// 내 주소로 온 명령어인 경우
					u8RxUART &= MSK_CMD;
					switch(u8RxUART) {
						case 2 :
							P03 = 1;
							gucR = 100;
							gucG = 0;
							gucB = 0;
							gucW = 0;
							guState  = STATE_GO4;
							break;
						case 3 :
							P03 = 0;
							gucR = 0;
							gucG = 100;
							gucB = 0;
							gucW = 0;
							guState  = STATE_GO4;
							break;
						case 4 :
							P03 = 1;
							gucR = 0;
							gucG = 0;
							gucB = 100;
							gucW = 0;
							guState  = STATE_GO4;
							break;
						case 5 :
							P03 = 0;
							gucR = 0;
							gucG = 0;
							gucB = 0;
							gucW = 100;
							guState  = STATE_GO4;
							break;
						case 6 :
							gu8Tmp = 10;
							gucR = 100;
							gucG = 0;
							gucB = 0;
							gucW = 0;
							guState  = STATE_GO1;
							break;
						case 7 :
							gu8Tmp = 5;
							gucR = 0;
							gucG = 100;
							gucB = 0;
							gucW = 0;
							guState  = STATE_GO1;
							break;
						case 8 :
							gu8Tmp = 4;
							gucR = 0;
							gucG = 0;
							gucB = 100;
							gucW = 0;
							guState  = STATE_GO1;
							break;
						case 9 :
							gu8Tmp = 2;
							gucR = 0;
							gucG = 0;
							gucB = 0;
							gucW = 100;
							guState  = STATE_GO1;
							break;

						case 10 :
							gu8Tmp = 10;
							gucR = 0;
							gucG = 0;
							gucB = 0;
							gucW = 0;
							guState  = STATE_GO1;
							break;
					} //switch(u8RxUART)
				}
				else if (((u8RxUART & MSK_CMD) == LINEFI_CMD_ADDRESSING) && ((u8RxUART & MSK_ADDR) == gucMyAddr)) {
					// 내 주소 재할당
					gucR = 0;
					gucG = 0;
					gucB = 0;
					gucW = 10;
					guState  = STATE_GO4;

					//				gucMyAddr = u8RxUART & MSK_ADDR;
					//				Erase_APROM_Page(BASE_ADDRESS);
					//				Write_APROM_BYTE(BASE_ADDRESS+0, gucMyAddr);
				}
				else {
				}
			} //if (u8RxUARTSpeedSetting)
			else {
				if ((u8RxUART & MSK_CMD) == LINEFI_CMD_UARTSPEED) {
					InitialUART0_Timer3(gpu32UartSpeed[(u8RxUART&MSK_ADDR)>>4]);
					u8RxUARTSpeedSetting = 1;
					gucR = 20;
					gucG = 20;
					gucB = 0;
					gucW = 0;
					guState  = STATE_GO4;
				}
			}
#if 1
		} //if (Receive_Data_From_UART0_nb(&u8RxUART))
#endif
	} //while(1)
}
