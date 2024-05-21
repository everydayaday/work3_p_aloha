


/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* Copyright(c) 2017 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  Nuvoton Technoledge Corp. 
//  Website: http://www.nuvoton.com
//  E-Mail : MicroC-8bit@nuvoton.com
//  Date   : Apr/21/2017
//***********************************************************************************************************

//***********************************************************************************************************
//  File Function: N76E003 Timer0/1 Mode1 demo code
//***********************************************************************************************************
#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "uart.h"

#define KEY_ESC (27)
//#define TIMER0_VAL        (133*10) // 1msec 1kHz
//#define TIMER0_VAL        (133*1) // 100usec 10kHz
//#define TIMER0_VAL        (13) // 10usec // 100kHz
//#define TIMER0_VAL        (10000) // 10초에 11255, 20초에 22100
#define TIMER0_VAL        (11000) // 약 1kHz

#define TH0_INIT (((65536-TIMER0_VAL)>>8)&0xFF)
#define TL0_INIT  ((65536-TIMER0_VAL)&0xFF)

#define PREAMBLE_CNT1 (2)
#define PREAMBLE_CNT2 (6)
#define PREAMBLE_CNT_MAX (100)

#define __VERSION__ "Version 1.4 on 20231026\r\n"

#if 1
#define UART_TX 	P16
#define SWITCH 		P15
#define ROT_SENSE 	P14
#define LED_B 		P13
#define LED_G 		P12
#define LED_R 		P11
#define MOTOR_EN 	P10
#define MOTOR_CW 	P00
#define MOTOR_CCW 	P01
#define UART_RX 	P02
#define SEL_RX_POL 	P04
#else
#define UART_TX 	P16
#define SWITCH 		P15
#define LED_B 		P12
#define LED_G 		P13
#define LED_R 		P14
#define MOTOR_EN 	P10
#define MOTOR_CW 	P00
#define MOTOR_CCW 	P01
#define PWR_OUT 	P03
#define UART_RX 	P02
#define SEL_RX_POL 	P04
#endif

#define SW_ON 	(1)
#define SW_OFF 	(0)
#define SW_DB 	(3)
#define SW_NONE 	(4)
#define ROT_SENSE_OPEN 		(1) //빛이 투과할 때
#define ROT_SENSE_CLOSE 	(0) //빛이 막혔을 때

#define LINEFI_RATE	8
#define MAX_RX_LEN			10
#define LINEFI_RX_TIMEOUT	10 // 10sec

#define LED_OFF 1
#define LED_ON 0

#define MY_ADDR (12)
UINT32 __xdata gpu32UartSpeed[] = {
	2400, // 0
	28800, // 1
	38400, // 2
	57600, // 3
	115200,  // 4
	230400,  // 5
	300000,  // 6
	460800,  //7
	500000,  // 8
	600000,  // 9
	700000,  // 10
	800000,  // 11
	900000,  // 12
	921600  // 13
};

UINT8 gu8UART = 0;
UINT16 gu16MilliSecCnt = 0;
UINT16 gu16SlitCnt = 0;
UINT16 gu16RotCnt = 0;

/* Needed for printf */
void putchar (char c) 
{
	if (gu8UART == 0)  {
		TI = 0;
		SBUF = c;
		while(TI==0);
	}
	else {
		TI_1 = 0;
		SBUF_1 = c;
		while(TI_1==0);
	}
}

enum {
	STATE_SELF,
	STATE_CROSS,
	STATE_BOTH
};

enum {
	STATE_RxCSC_INIT,
	STATE_RxCSC_RX,
	STATE_RxCSC_RX_RAW,
	STATE_RxCSC_RX_ASCII,
	STATE_RxCSC_STOP,
	STATE_RxCSC_END
};

enum {
	MS_STOP,
	MS_ROT_CW,
	MS_WAIT_UNTIL_ROT_SENSE_CLOSE,
	MS_END
};

enum {
	STATE_LINEFI_RX_INIT,
	STATE_LINEFI_RX_START,
	STATE_LINEFI_RX_TIMEOUT,
	STATE_LINEFI_RX_MAX_LEN,
	STATE_LINEFI_RX_END
};

void print_esc(UINT8 au8State)
{
	printf_fast_f("\n\r");
	switch(au8State) {
		case STATE_SELF :
			printf_fast_f("self ");
			break;
		case STATE_CROSS :
			printf_fast_f("cross");
			break;
		case STATE_BOTH :
			printf_fast_f("both ");
			break;
	}
	printf_fast_f(" output:This is UART%d\n\r", gu8UART);
}

void print_char(char au8Data)
{
	switch(au8Data) {
		case KEY_ESC :
			break;
		case '\r' :
			printf_fast_f("\r\n");
			break;
		default :
			printf_fast_f("%c",au8Data);
	}
}

UINT8 state_machine(UINT8 au8State, UINT8 au8RxUART, UINT8 au8SelfID, UINT8 au8OtherID)
{
	if(au8RxUART == KEY_ESC) {
		gu8UART = au8SelfID;
		printf_fast_f("\r\ninput:This is UART%d", gu8UART);
		switch(au8State) {
			case STATE_SELF :
				au8State = STATE_CROSS;
				gu8UART = au8SelfID;
				print_esc(au8State);
				gu8UART = au8OtherID;
				print_esc(au8State);
				break;
			case STATE_CROSS :
				au8State = STATE_BOTH;
				gu8UART = au8SelfID;
				print_esc(au8State);
				gu8UART = au8OtherID;
				print_esc(au8State);
				break;
			case STATE_BOTH :
				au8State = STATE_SELF;
				gu8UART = au8SelfID;
				print_esc(au8State);
				break;
		}
	}
	else {
		switch(au8State) {
			case STATE_SELF :
				gu8UART = au8SelfID;
				print_char(au8RxUART);
				break;
			case STATE_CROSS :
				gu8UART = au8OtherID;
				print_char(au8RxUART);
				break;
			case STATE_BOTH :
				gu8UART = au8SelfID;
				print_char(au8RxUART);
				gu8UART = au8OtherID;
				print_char(au8RxUART);
				break;
		}
	}
	return au8State;
}


void Timer0_ISR (void) interrupt(1)  //interrupt address is 0x000B
{
	TH0 = TH0_INIT;
	TL0 = TL0_INIT;
	gu16MilliSecCnt++;
#if 0
	if (P06) {
		P06 = 0;
	}
	else {
		P06 = 1;
	}
#endif
} //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B

void pin_interrupt_isr(void) interrupt(7)
{
	static UINT16 su8Cnt = 0;
	if (PIF == 0x10) {
		gu16SlitCnt++;
		if (gu16SlitCnt >= 12*gu16RotCnt) {
			MOTOR_CW = 0;
			MOTOR_CCW = 0;
			LED_R = LED_OFF;
			LED_G = LED_OFF;
			LED_B = LED_OFF;
		}
//	printf_fast_f("interrupt2: %d\n\r", su8Cnt++);
	}
	PIF = 0;

}// void pin_interrupt_isr (void) interrupt(7)

UINT8 chk_manchester(UINT8 c)
{
	UINT8 i;
	for (i=0;i<4;i++) {
		if (((c>>(2*i)) & 1) == ((c>>((2*i+1)))&1)) {
			// 연속 두 비트가 같으면 맨체스터 코드가 아님
			return 0;
		}
	}
	return 1;
}

UINT8 conv_manchester2nibble(UINT8 c)
{
	UINT8 i;
	UINT8 u8Nibble = 0;
	for (i=0;i<4;i++) {
		if (c & 1) {
			u8Nibble |= 0x80;
		}
		c >>= 2;
		u8Nibble >>= 1;
	}
	return u8Nibble;
}

UINT8 conv_manchester2highnibble(UINT8 c)
{
	UINT8 i;
	UINT8 u8Nibble = 0;
	for (i=0;i<4;i++) {
		u8Nibble >>= 1;
		if (c & 1) {
			u8Nibble |= 0x80;
		}
		c >>= 2;
	}
	return u8Nibble;
}

void MODIFY_HIRC_166(void)
{
	unsigned char hircmap0,hircmap1;
	unsigned int trimvalue16bit;
	/* Since only power on will reload RCTRIM0 and RCTRIM1 value, check power on flag*/
	if ((PCON&SET_BIT4)==SET_BIT4) {
		hircmap0 = RCTRIM0;
		hircmap1 = RCTRIM1;
		trimvalue16bit = ((hircmap0<<1)+(hircmap1&0x01));
		trimvalue16bit = trimvalue16bit - 15;
		hircmap1 = trimvalue16bit&0x01;
		hircmap0 = trimvalue16bit>>1;
		TA=0XAA;
		TA=0X55;
		RCTRIM0 = hircmap0;
		TA=0XAA;
		TA=0X55;
		RCTRIM1 = hircmap1;
		/* After modify HIRC value, clear power on flag */
		PCON &= CLR_BIT4;
	}
}
void disp_help(UINT8 au8Code)
{
	gu8UART = 1;
	switch(au8Code) {
		case '1' :
			break;
		case '2' :
			break;
		case '3' :
			printf_fast_f("Idle preamble on/off\r\n");
			break;
		case '4' :
			break;
		case 'p' :
			printf_fast_f("LineFi Power Off\r\n");
			break;
		case 'P' :
			printf_fast_f("LineFi Power On\r\n");
			break;
		case 't' :
			printf_fast_f("LineFi Uart Tx Low\r\n");
			break;
		case 'T' :
			printf_fast_f("LineFi Uart Tx High\r\n");
			break;
		case 's' :
			printf_fast_f("LineFi CSC rx FSM Off\r\n");
			break;
		case 'S' :
			printf_fast_f("LineFi CSC rx FSM ON\r\n");
			break;
		case 'v' : case 'V' :
			printf_fast_f(__VERSION__);
			break;
		default :
			printf_fast_f("1: downlink packet 1\r\n");
			printf_fast_f("2: downlink packet 2\r\n");
			printf_fast_f("3: uplink idle preamble on/off\r\n");
			printf_fast_f("p/P: LineFi Power off/on\r\n");
			printf_fast_f("t/T: LineFi Uart Tx Low/High\r\n");
			printf_fast_f("s/S: LineFie CSC Rx FSM off/on\r\n");
			printf_fast_f("test procedure: p -> P -> T -> S -> 1 or 2\r\n");
			break;
	}
}

void gpio_setup()
{

	/*

#define UART_TX 	P16 
#define LED_B 		P13
#define LED_G 		P12
#define LED_R 		P11
#define MOTOR_EN 	P10
#define MOTOR_CW 	P00
#define MOTOR_CCW 	P01
#define SEL_RX_POL 	P04

#define SWITCH 		P15
#define ROT_SENSE 	P14
#define UART_RX 	P02

	*/
	Set_All_GPIO_Quasi_Mode;

	P15_Input_Mode;
	P02_Input_Mode;
	P07_Input_Mode;
	P14_Input_Mode; // ROT_SENSE

	P16_PushPull_Mode;
	P13_PushPull_Mode; // LED_B
	P12_PushPull_Mode;
	P11_PushPull_Mode;
	P10_PushPull_Mode;
	P00_PushPull_Mode;
	P01_PushPull_Mode;
	P04_PushPull_Mode;

	Enable_INT_Port1;
	//Enable_BIT4_LowLevel_Trig;
	//Enable_BIT4_FallEdge_Trig;
	Enable_BIT4_BothEdge_Trig;
	set_P1S_4; // 슈미트 트리거 입력 설정
	//clr_P1S_4; // 슈미트 트리거 입력 해지

	UART_TX = 0;
	LED_B = 1;
	LED_G = 1;
	LED_R = 1;
	MOTOR_EN = 0;
	MOTOR_CW = 0;
	MOTOR_CCW = 0;
	SEL_RX_POL = 0;
}

enum {
	STATE_SW_NO_ACTION,
	STATE_SW1_OFF,
	STATE_SW2_OFF,
	STATE_SW3_OFF,
	STATE_SW4_OFF,
	STATE_SW1_ON,
	STATE_SW2_ON,
	STATE_SW3_ON,
	STATE_SW4_ON,
	STATE_SW_DUAL_ON,
	STATE_SW_DUAL_WAIT,
	STATE_SW_DUAL_OFF,
	STATE_SW_END
};
#if 1
UINT8 state_switches(UINT8 au8SW, UINT8 *apu8SwNum)
{
	static UINT8 su8PrevSW = 0;
	UINT8 i;
	//UINT8 u8Cnt = 0;
	UINT8 u8Result = SW_NONE;
	if (su8PrevSW == au8SW) {
		*apu8SwNum = 0;
		return SW_NONE;
	}

//	printf_fast_f("su8PrevSW 0x%x\n\r",su8PrevSW);
//	if (su8PrevSW != 0xF) {
//		u8Cnt = 1;
//	}

	*apu8SwNum = 0;

	for (i=0;i<5;i++) {
		switch((su8PrevSW>>i)&1) {
			case SW_ON :
				switch((au8SW>>i)&1) {
					case SW_ON :
						break;
					case SW_OFF :
						su8PrevSW = au8SW;
						*apu8SwNum |= 1<<i;
						u8Result = SW_OFF;
					//	printf_fast_f("sw%d off\n\r",i+1);
						break;
				}
				break;
			case SW_OFF :
				switch((au8SW>>i)&1) {
					case SW_ON :
						su8PrevSW = au8SW;
						*apu8SwNum |= 1<<i;
						u8Result = SW_ON;
						//u8Cnt++;
					//	printf_fast_f("sw%d on\n\r",i+1);
						break;
					case SW_OFF :
						break;
				}
				break;
		}
	}
				//		printf_fast_f("result %d \n\r",u8Result);

	return u8Result;
#if 0
	su8Cnt++;
	UINT8 u8Result;
	UINT8 u8PrevSW = su8State;
	if (au8SW != u8PrevSW) {
		UINT8 i;
		for (i=0;i<4;i++) {
			if (((au8SW>>i)&1) != ((u8PrevSW>>i)&1))  {
				if ((au8SW>>i)&1) {
					// SWi on
				}
				else {
					// SWi off
				}
				break;
			}
		}

		if (((au8SW>>3)&1) != ((u8PrevSW>>3)&1))  {
			if ((au8SW>>3)&1) {
				// SW1 on
			}
			else {
				// SW1 off
			}
		}


		if (u8PrevSW) {
			// 이전 상태와 같이 않은데, 하나라도 1이면, 다른 스위치가 더 눌린 경우..
			switch(u8PrevSW) {
				case STATE_SW1_ON :
					break;
				case STATE_SW2_ON :
					break;
				case STATE_SW3_ON :
					break;
				case STATE_SW4_ON :
					break;
				case STATE_SW_DUAL_ON :
					break;
				case STATE_SW_DUAL_WAIT :
					break;
			}
		}
		else {
			// au8SW off
			switch(su8State) {
				case STATE_SW1_ON :
					u8Result = STATE_SW1_OFF;
					break;
				case STATE_SW2_ON :
					u8Result = STATE_SW2_OFF;
					break;
				case STATE_SW3_ON :
					u8Result = STATE_SW3_OFF;
					break;
				case STATE_SW4_ON :
					u8Result = STATE_SW4_OFF;
					break;
				case STATE_SW_DUAL_ON :
					u8Result = STATE_SW_DUAL_OFF;
					break;
			}
		}
	}
	else {
		switch(su8State) {
			case STATE_SW1_ON :
			case STATE_SW2_ON :
			case STATE_SW3_ON :
			case STATE_SW4_ON :
			case STATE_SW1_OFF :
			case STATE_SW2_OFF :
			case STATE_SW3_OFF :
			case STATE_SW4_OFF :
			case STATE_SW_DUAL_ON :
			case STATE_SW_DUAL_OFF :
				u8Result = STATE_SW_NO_ACTION;
				break;
		}


	}
	su8State = au8SW;
#endif

}
#endif

UINT8 chk_my_addr(UINT8 au8MyAddr, UINT8 au8RxData)
{
	if ( (au8RxData>>4) == (au8MyAddr&0x0F)) {
		return 1;
	}
	return 0;
}

void rot_motor(UINT8 u8RxUART)
{
	/*
	gu16RotCnt = (u8RxUART&0xF)*100 + 15*150 ; // 챔버 파라미터
	140mL : u8RxUART = 0	
	200mL : u8RxUART = 
	270mL : u8RxUART = 15


	gu16RotCnt = (u8RxUART&0xF)*100 + 100 ; // 
	u8RxUART = 0	--> 7.5mL
	u8RxUART = 9 --> 75mL
	u8RxUART = 15

	gu16RotCnt = (u8RxUART&0xF)*137; // 
	u8RxUART = 0	--> 정지 
	u8RxUART = 1 --> 10mL
	u8RxUART = 15 --> 150mL
	*/
	gu16SlitCnt = 0;
	//gu16RotCnt = (u8RxUART&0xF)*100 + 15*150 ; // 챔버 파라미터
	if (u8RxUART) {
		gu16RotCnt = (u8RxUART&0xF)*137 ;
		MOTOR_CW = 1;
		LED_R = LED_ON;
	}
	else {
		MOTOR_CW = 0;
		MOTOR_CCW = 0;
	}
}

/************************************************************************************************************
 *    Main function 
 ************************************************************************************************************/
void main (void)
{
	/*

#define SWITCH 		P15
#define ROT_SENSE 	P14
#define UART_RX 	P02

	*/
	UINT8 u8PrevSwitch = 0;
	UINT8 u8UartRx = 0;
	UINT8 u8RotSense = 0;
	UINT8 u8RxUART;
	UINT16 u16Cnt = 0;
	UINT8 u8OutputState = STATE_SELF;
	UINT8 u8StateRxCSC = STATE_RxCSC_STOP;
	UINT8 u8LineFiAddr = 1;
	UINT8 u8LineFiSpeed = 1;
	UINT8 u8Data = 0;
	UINT8 u8LineFiCmd = 1;
	UINT8 u8PwrOnFirstFlag = 1;

//	uint8 u8MotorRotCmd;
	uint8 u8MotorState = MS_STOP;

	UINT8 u8LineFiRxState = STATE_LINEFI_RX_INIT;
	UINT8 u8RxIdx = 0;
#define MAX_RX_BUF_LEN 10
	UINT8 pu8LineFiRx[MAX_RX_BUF_LEN];
	UINT8 u8LineFiRxIdx = 0;

	gpio_setup();
	uart_setup();
	InitialUART1_Timer3(57600);

	MODIFY_HIRC_166();

	clr_T0M;// 16/12 MHz
			//set_T0M; // 16MHz

	set_ET0;                                    //enable Timer0 interrupt
	set_TR0;                                    //Timer0 run

	gu8UART = 0;
	printf_fast_f("This is UART0\n\r");
	gu8UART = 1;
	printf_fast_f("This is UART1\n\r");
	UINT16 u8Count2 = 0;
	UINT8 u8RxPktCnt = 0;
	UINT8 u8PreambleCnt = 0;

	for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
		nop; nop; nop; nop; nop;
	}
	gu8UART = 0;

	u8UartRx = UART_RX;
	u8PrevSwitch = SWITCH;

	set_EPI;
	set_EA;

	if (UART_RX == 0) {
		SEL_RX_POL = 1;
	}
	MOTOR_EN = 1;

	while(1) {
#if 1
#if 1
		if (Receive_Data_From_UART0_nb(&u8RxUART)) {
			switch(u8RxUART) {
				case 'z' :
					gu16SlitCnt = 0;
					break;
				case 't' :
					printf_fast_f("rot count:%d\n\r",gu16SlitCnt);
					break;

				case '1' :
					TOGGLE(UART_TX);
					printf_fast_f("UART_TX=");
					printf_fast_f("%d\n\r", UART_TX);
					break;
				case '2' :
					TOGGLE(LED_R);
					printf_fast_f("LED_R=");
					printf_fast_f("%d\n\r", LED_R);
					break;
				case '3' :
					TOGGLE(LED_G);
					printf_fast_f("LED_G=");
					printf_fast_f("%d\n\r", LED_G);
					break;
				case '4' :
					TOGGLE(LED_B);
					printf_fast_f("LED_B=");
					printf_fast_f("%d\n\r", LED_B);
					break;
				case '5' :
					TOGGLE(MOTOR_EN);
					printf_fast_f("MOTOR_EN=");
					printf_fast_f("%d\n\r", MOTOR_EN);
					break;
				case '6' :
					TOGGLE(MOTOR_CW);
					printf_fast_f("MOTOR_CW=");
					printf_fast_f("%d\n\r", MOTOR_CW);
					break;
				case '7' :
					TOGGLE(MOTOR_CCW);
					printf_fast_f("MOTOR_CCW=");
					printf_fast_f("%d\n\r", MOTOR_CCW);
					break;
				case '8' :
					TOGGLE(SEL_RX_POL);
					printf_fast_f("SEL_RX_POL=");
					printf_fast_f("%d\n\r", SEL_RX_POL);
					break;
				case 'r' :
					gu16SlitCnt = 0;
					MOTOR_CW = 1;
					break;
				case 's' :
					printf_fast_f("%d\n\r", gu16MilliSecCnt);
					gu16MilliSecCnt = 0;
					break;
				case 'i' :
					printf_fast_f("slit cnt%d\n\r", gu16SlitCnt);
					printf_fast_f("rot  cnt%d\n\r", gu16RotCnt);
					printf_fast_f("rot sense %d\n\r", ROT_SENSE);
					break;
			}
		}
#endif
		if (u8PrevSwitch != SWITCH) { // 스위치 스테이트가 변하면..
			printf_fast_f("SWITCH:%d\n\r", SWITCH);
			if (SWITCH) { //눌렸을 때
#if 0
				printf_fast_f("LED\n\r");
				UART_TX = 1;
				MOTOR_CW = 1;
				MOTOR_CCW = 1;
				LED_R = 0;
				LED_G = 0;
				LED_B = 0;
				SEL_RX_POL = 0;
#endif
			}
			else { //떨어질 때
				static uint8 su8Cnt = 0;
				su8Cnt++;
				LED_R = su8Cnt&1;
				LED_G = (su8Cnt>>1)&1;
				LED_B = (su8Cnt>>2)&1;

				MOTOR_EN = su8Cnt&1;
				MOTOR_CW = (su8Cnt>>1)&1;
				MOTOR_CCW = (su8Cnt>>2)&1;

#if 0
				UART_TX = 0;
				MOTOR_CW = 0;
				MOTOR_CCW = 0;
				LED_R = 1;
				LED_G = 1;
				LED_B = 1;
				SEL_RX_POL = 1;
				
#endif
			}
			u8PrevSwitch = SWITCH;
		} //if (u8PrevSwitch != SWITCH)

		if (SWITCH) {
		//	TOGGLE(UART_TX);
		}
		if (u8UartRx != UART_RX) {
			printf_fast_f("UART_RX:%d\n\r", UART_RX);
			u8UartRx = UART_RX;
		}
#endif
//			printf_fast_f("RotSense:%d\n\r", ROT_SENSE);
		if (u8RotSense != ROT_SENSE) {
			printf_fast_f("RotSense:%d\n\r", ROT_SENSE);
			u8RotSense = ROT_SENSE;
		}
		if (Receive_Data_From_UART1_nb(&u8RxUART)) {
			if (chk_my_addr(MY_ADDR, u8RxUART)) {
				rot_motor(u8RxUART);
			}
		}
#if 0
		switch(u8LineFiRxState) {
			case STATE_LINEFI_RX_INIT :
				if (Receive_Data_From_UART1_nb(&u8RxUART)) {
					pu8LineFiRx[0] = u8RxUART;
					u8LineFiRxIdx = 1;

					gu16MilliSecCnt = 0;
					u8LineFiRxState = STATE_LINEFI_RX_START;
				}
				break;
			case STATE_LINEFI_RX_START :
				if (Receive_Data_From_UART1_nb(&u8RxUART)) {
					pu8LineFiRx[u8LineFiRxIdx] = u8RxUART;
					u8LineFiRxIdx++;
					gu16MilliSecCnt = 0;
					if (u8LineFiRxIdx == MAX_RX_LEN) {
						u8LineFiRxState = STATE_LINEFI_RX_MAX_LEN;
					}
				}
				if (gu16MilliSecCnt > LINEFI_RX_TIMEOUT) {
					u8LineFiRxState = STATE_LINEFI_RX_TIMEOUT;
				}
				break;
			case STATE_LINEFI_RX_MAX_LEN :
			case STATE_LINEFI_RX_TIMEOUT :
				switch(u8LineFiRxIdx) {
					case 1 :
						break;
					case 2 :
						break;
					case 3 :
						break;
					case 4 :
						break;
					case 5 :
						break;
					case 6 :
						break;
				}
				break;
		}
#endif
#if 0
		if (u8PrevSwitch != SWITCH) {
			printf_fast_f("SWITCH:%d\n\r", SWITCH);
			if (SWITCH) {
				UART_TX = 1;
			}
			else {
				UART_TX = 0;
			}
			u8PrevSwitch = SWITCH;
		}
		if (SWITCH) {
			TOGGLE(UART_TX);
		}


		if (Receive_Data_From_UART0_nb(&u8RxUART)) {
			switch(u8RxUART) {
				case '1' :
					TOGGLE(UART_TX);
					printf_fast_f("UART_TX=");
					printf_fast_f("%d\n\r", UART_TX);
					break;
				case '2' :
					TOGGLE(LED_B);
					printf_fast_f("LED_B=");
					printf_fast_f("%d\n\r", LED_B);
					break;

				case '3' :
					TOGGLE(LED_G);
					printf_fast_f("LED_G=");
					printf_fast_f("%d\n\r", LED_G);
					break;
				case '4' :
					TOGGLE(LED_R);
					printf_fast_f("LED_R=");
					printf_fast_f("%d\n\r", LED_R);
					break;
				case '5' :
					TOGGLE(MOTOR_EN);
					printf_fast_f("MOTOR_EN=");
					printf_fast_f("%d\n\r", MOTOR_EN);
					break;
				case '6' :
					TOGGLE(MOTOR_CW);
					printf_fast_f("MOTOR_CW=");
					printf_fast_f("%d\n\r", MOTOR_CW);
					break;
				case '7' :
					TOGGLE(MOTOR_CCW);
					printf_fast_f("MOTOR_CCW=");
					printf_fast_f("%d\n\r", MOTOR_CCW);
					break;
				case '8' :
					TOGGLE(SEL_RX_POL);
					printf_fast_f("SEL_RX_POL=");
					printf_fast_f("%d\n\r", SEL_RX_POL);
					break;
			}
		} //if (Receive_Data_From_UART0_nb(&u8RxUART))
		  //		if (Receive_Data_From_UART1_nb(&u8RxUART)) {

		  //		} //if (Receive_Data_From_UART1_nb(&u8RxUART))

		if (Receive_Data_From_UART1_nb(&u8RxUART)) {
			switch(u8RxUART) {
				case 0x33 :
					TOGGLE(LED_R);
					break;
				case 0x34 :
					TOGGLE(LED_G);
					break;
				case 0x35 :
					TOGGLE(LED_B);
					break;
				case 0x36 :
					u8MotorRotCmd = 1;
					break;
				case 0x40 :
					MOTOR_EN = 1;
					MOTOR_CW = 0;
					MOTOR_CCW = 0;
					LED_R = 0;
					break;
				case 0x41 :
					MOTOR_EN = 0;
					MOTOR_CW = 0;
					MOTOR_CCW = 0;
					break;
				case 0x44 :
					LED_R = 1;
					MOTOR_EN = 1;
					MOTOR_CW = 1;
					MOTOR_CCW = 0;
					break;
			}
		}
#if 0
		switch(u8MotorState) {
			case MS_ROT_CW :
				if (ROT_SENSE == ROT_SENSE_OPEN) {
					u8MotorState = MS_STOP;
					MOTOR_EN = 0;
				}
				break;
			case MS_STOP :
				if (u8MotorRotCmd) {
					MOTOR_EN = 1;
					MOTOR_CW = 1;
					MOTOR_CCW = 0;
					u8MotorState = MS_WAIT_UNTIL_ROT_SENSE_CLOSE;
					u8MotorRotCmd = 0;
				}
				break;
			case MS_WAIT_UNTIL_ROT_SENSE_CLOSE :
				if (ROT_SENSE == ROT_SENSE_CLOSE) {
					u8MotorState = MS_ROT_CW;
				}
				break;
		}
#endif
#endif
	} //while(1)
}
