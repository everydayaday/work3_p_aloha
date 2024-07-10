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
#include "linefi_packet.h"

#define KEY_ESC (27)
#define TIMER0_VAL        (133*80+605) // 1msec 1kHz 20초에 19,964
//#define TIMER0_VAL        (133*80+610) // 1msec 1kHz 20초에 19,930
//#define TIMER0_VAL        (133*80+612) // 1msec 1kHz 20초에  19,928
//#define TIMER0_VAL        (133*80+625) // 1msec 1kHz 20초에  19,655
//#define TIMER0_VAL        (133*80+600) // 1msec 1kHz 20초에 20,050 
//#define TIMER0_VAL        (133*80+500) // 1msec 1kHz 20초에  20,150
//#define TIMER0_VAL        (133*80-1000) // 1msec 1kHz 20초에 23,293 
//#define TIMER0_VAL        (133*80) // 1msec 1kHz 20초에 21000
//#define TIMER0_VAL        (133*10) // 1msec 1kHz ??
//#define TIMER0_VAL        (133*1) // 100usec 10kHz
//#define TIMER0_VAL        (13) // 10usec // 100kHz

#define TH0_INIT (((65536-TIMER0_VAL)>>8)&0xFF)
#define TL0_INIT  ((65536-TIMER0_VAL)&0xFF)

#define PREAMBLE_CNT1 (2)
#define PREAMBLE_CNT2 (6)
#define PREAMBLE_CNT_MAX (100)

#define __VERSION__ "Version 1.4 on 20231026\r\n"


#define SW1 P13
#define SW2 P30
#define SW3 P17
#define SW4 P00
#define SW5 P15

#define SW_U SW5 // Up
#define SW_D SW1 // Down
#define SW_L SW4 // Left
#define SW_R SW2 // Right
#define SW_C SW3 //Center

#define SW_ON 	(1)
#define SW_OFF 	(0)
#define SW_DB 	(3)
#define SW_NONE 	(4)

#define LINEFI_EN0	P10
#define LINEFI_EN1	P11
#define LINEFI_EN2	P12
#define LINEFI_TX	P16

#define MAX_STATE_UART0_INPUT 4

const char * __xdata  gcUartInputMode[MAX_STATE_UART0_INPUT] = {
	"UART0_INPUT_MODE0:one key control",
	"UART0_INPUT_MODE1:string input",
	"UART0_INPUT_MODE2:mimic 5keys on board",
	"UART0_INPUT_MODE3:data setting"
};

enum {
	UART0_INPUT_MODE0,
	UART0_INPUT_MODE1,
	UART0_INPUT_MODE2,
	UART0_INPUT_MODE3,
	UART0_INPUT_MODE4

};
UINT8 __xdata gpu8Data[20] = {
	1,1,1,1,
	2,2,2,2,
	3,3,3,3,
	4,4,4,4,
	5,5,5,5,
};

UINT8 __xdata gpu8Data2[20] = {
	2,2,2,2,
	1,1,1,1,
	4,4,4,4,
	3,3,3,3,
	5,5,5,5,
};

#define LINEFI_DEFAULT_RATE	3

uint16 __xdata gu16TimeCnt;
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
	gu16TimeCnt++;
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
	if (PIF == 0x10) {
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

#define SW1 P13
#define SW2 P30
#define SW3 P17
#define SW4 P00
#define SW5 P15

#define SW_U SW5 // Up
#define SW_D SW1 // Down
#define SW_L SW4 // Left
#define SW_R SW2 // Right
#define SW_C SW3 //Center

#define SW_ON 	(1)
#define SW_OFF 	(0)
#define SW_DB 	(3)
#define SW_NONE 	(4)

#define LINEFI_EN0	P10
#define LINEFI_EN1	P11
#define LINEFI_EN2	P12
#define LINEFI_TX	P16

	*/
	Set_All_GPIO_Quasi_Mode;

	P13_Input_Mode;
	P30_Input_Mode;
	P17_Input_Mode;
	P00_Input_Mode;
	P15_Input_Mode;

	P05_Input_Mode; // rx_level1
	P04_Input_Mode; // rx_level2

	P10_PushPull_Mode; // line fi enable
	P11_PushPull_Mode; // line fi enable1
	P12_PushPull_Mode; // line fi enable2
	LINEFI_EN0 = 0;
	LINEFI_EN1 = 0;
	LINEFI_EN2 = 0;
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

#if 1
void printoutbuf(uint8 aucBufIdx, char * apcBuf)
{
	uint8 __xdata i;
	for (i=0;i<aucBufIdx;i++) {
		printf_fast_f("%c", *apcBuf++);
	}
	printf_fast_f("\r\n");
}
#endif

void act_by_one_key(uint8 au8RxUART, uint8 * apu8LineFiCmd, uint8 * apu8LineFiAddr)
{
	static UINT8 __xdata u8Data = 0;
	switch(au8RxUART) {
		case 't' : // 1msec 카운터 확인, 5초에 40,000
			printf_fast_f("%u\n\r", gu16TimeCnt);
			gu16TimeCnt = 0;
			break;
		case '0' :
			gu8UART = 0;
			LINEFI_EN0 = 0;
			LINEFI_EN1 = 0;
			LINEFI_EN2 = 0;
			printf_fast_f("LINEFI_EN0=0\n\r");
			break;
		case '1' :
			gu8UART = 0;
			LINEFI_EN0 = 1;
			printf_fast_f("LINEFI_EN0=1\n\r");
			break;
		case '2' :
			gu8UART = 0;
			LINEFI_TX = 0;
			printf_fast_f("LINEFI_TX=0\n\r");
			break;
		case '3' :
			gu8UART = 0;
			LINEFI_TX = 1;
			printf_fast_f("LINEFI_TX=1\n\r");
			break;
		case '4' :
			gu8UART = 0;
			TOGGLE(LINEFI_TX);
			printf_fast_f("LINEFI_TX=%d\n\r", LINEFI_TX);
			break;
		case '5' :
			gu8UART = 0;
			if (LINEFI_EN0 == 0) {
				LINEFI_TX = 1;
			}
			TOGGLE(LINEFI_EN0);
			printf_fast_f("LINEFI_EN0=");
			printf_fast_f("%d\n\r", LINEFI_EN0);
			break;
		case '6' :
			TOGGLE(LINEFI_EN1);
			printf_fast_f("LINEFI_EN1=");
			printf_fast_f("%d\n\r", LINEFI_EN1);
			break;
		case '7' :
			TOGGLE(LINEFI_EN2);
			printf_fast_f("LINEFI_EN2=");
			printf_fast_f("%d\n\r", LINEFI_EN2);
			break;



		case 'h' : // <<
			(*apu8LineFiAddr)--;
			if (*apu8LineFiCmd == 1) {
				printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
			}
			else {
				printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
			}
			break;
		case 'j' : //  down
			(*apu8LineFiCmd)--;
			printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
			break;
		case 'k' : // up
			(*apu8LineFiCmd)++;
			printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
			break;
		case 'l' : // >>
			(*apu8LineFiAddr)++;
			if (*apu8LineFiCmd == 1) {
				printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
			}
			else {
				printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
			}
			break;
		case 's' :
			switch (*apu8LineFiCmd) {
				case 0 : // address setting
					send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
					printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
					printf_fast_f("address: 0x%d:\n\r", *apu8LineFiAddr);
					break;
				case 1 : // uart speed setting
					send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
					printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
					printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
					break;
				default :
					send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
					printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
					break;
			}
			break;
		case 'u' :
			printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
			InitialUART1_Timer3(gpu32UartSpeed[*apu8LineFiAddr]);
			break;

		case 'S' :
			send_octet_to_linefi(u8Data);
			printf_fast_f("LineFi Sending: %d(0x%x)\n\r", u8Data, u8Data);
			break;
		case '+' :
			u8Data++;
			printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
			break;
		case '-' :
			u8Data--;
			printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
			break;

		case 'a' :
			send_octet_to_linefi(0x11);
			break;
		case 'b' :
			send_octet_to_linefi(0x12);
			break;
		case 'c' :
			send_octet_to_linefi(0x13);
			break;
	} //switch(au8RxUART)
}

/************************************************************************************************************
 *    Main function 
 ************************************************************************************************************/
void main (void)
{
	UINT8 su8SW = 0;
	UINT8 u8EnCnt = 0;
	UINT8 u8RxUART;
	UINT16 u16Cnt = 0;
	UINT8 u8OutputState = STATE_SELF;
	UINT8 u8StateRxCSC = STATE_RxCSC_STOP;
	UINT8 u8LineFiAddr = 1;
	UINT8 u8LineFiSpeed = 1;
	UINT8 u8LineFiCmd = 1;
	UINT8 u8PwrOnFirstFlag = 1;
	UINT8 u8SwNum;

	uint8 u8StateUart0InputMode = UART0_INPUT_MODE0;

	char __xdata pcBuf[100];
#define MAX_DATA 10
	unsigned char __xdata pu8Data[MAX_DATA] = {0,0,0,0,0,0,0,0,0,0};
	unsigned char __xdata u8DataIdx = 0;
	uint8  __xdata ucBufIdx = 0;

	linefi_packet_t __xdata pstLineFiPkt[] = {
		{1,2,1,10,5, gpu8Data},
		{1,2,2,10,5, gpu8Data},
		{1,2,3,10,5, gpu8Data},
		{1,2,4,10,5, gpu8Data},
		{1,2,5,10,5, gpu8Data},
	};

	linefi_packet_t stLineFiPkt = {
		1, //UINT8 u8Ver;
		2, //UINT8 u8Type;
		3, //UINT8 u8Addr;
		10, //UINT8 u8Size;
		5, //UINT8 u8CRC;
		gpu8Data //UINT8 * pu8Data;
	};

	gpio_setup();
	uart_setup();

	MODIFY_HIRC_166();

	clr_T0M;// 16/12 MHz
	//set_T0M; // 16MHz

	set_ET0;                                    //enable Timer0 interrupt
	set_TR0;                                    //Timer0 run

	gu8UART = 0;
	printf_fast_f("This is UART0\n\r");
	printf_fast_f("LineFi Master\n\r");
	gu8UART = 1;
	printf_fast_f("This is UART1\n\r");
	UINT8 u8RxBufIdx = 0;
	UINT16 u8Count2 = 0;
//	UINT8 pu8RxBuf[20];
	UINT8 u8RxPktCnt = 0;
	UINT8 u8PreambleCnt = 0;

	for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
		nop; nop; nop; nop; nop;
	}
	LINEFI_TX = 1;
	LINEFI_EN0 = 0;
	gu8UART = 0;



	InitialUART1_Timer3(gpu32UartSpeed[0]);
	send_octet_to_linefi(((LINEFI_DEFAULT_RATE<<4)&0xF0) | (1)&0x0F);

	for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
		nop; nop; nop; nop; nop;
	}

	InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE]);

	for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
		nop; nop; nop; nop; nop;
	}
	LINEFI_TX = 1;

	LINEFI_EN0 = 0;
	LINEFI_EN1 = 1;
	LINEFI_EN2 = 0;
	printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);

	while(1) {
#if 0 // uart0를 받아서 uart1으로 전달
#else // CLI
		if (Receive_Data_From_UART0_nb(&u8RxUART)) { // 유아트 입력이 있을 때
			switch(u8RxUART) {
				case KEY_ESC :
					u8StateUart0InputMode++;
					if (u8StateUart0InputMode == MAX_STATE_UART0_INPUT) {
						u8StateUart0InputMode = 0;
					}
					printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
					break;
				default :
					switch(u8StateUart0InputMode) {
						case UART0_INPUT_MODE0 :
							act_by_one_key(u8RxUART, &u8LineFiCmd, &u8LineFiAddr);
							break;
						case UART0_INPUT_MODE1 :
							gu16TimeCnt = 0;
							pcBuf[ucBufIdx++] = u8RxUART;
						//	printf_fast_f("%c",u8RxUART);
							break;
						case UART0_INPUT_MODE2 : // mimic 5keys on board
							switch(u8RxUART) {
								case 'f' : // down SW1
									u8LineFiAddr--;
									if (u8LineFiAddr == 0) {
										u8LineFiAddr = 1;
									}
									break;
								case 'g' : // right SW2
									u8LineFiCmd--;
									if (u8LineFiCmd == 0) {
										u8LineFiCmd = 1;
									}
									break;
								case 'h' : // center SW3
									stLineFiPkt.pu8Data = pu8Data;
									send_linefi_packet(&stLineFiPkt);
									break;

								case 'j' : //  left SW4
									u8LineFiCmd++;
									if (u8LineFiCmd == 101) {
										u8LineFiCmd = 100;
									}
									printf_fast_f("command: %d\n\r", u8LineFiCmd);
									break;
								case 'k' : // up SW5
									u8LineFiAddr++;
									if (u8LineFiAddr == 16) {
										u8LineFiAddr = 15;
									}
									printf_fast_f("address: %d\n\r", u8LineFiAddr);
									break;
							}

							switch(u8RxUART) {
								case 'f' : // down SW1
								case 'g' : // right SW2
								case 'j' : // left SW4
								case 'k' : // up SW5
									stLineFiPkt.u8Addr = u8LineFiAddr;
									stLineFiPkt.u8Type = u8LineFiCmd;
									print_linefipacket(&stLineFiPkt);
									break;

								case 'h' : // center SW3
									break;
							}

							break;
						case UART0_INPUT_MODE3 : // slave gpio pin setting
							switch(u8RxUART) {
								case 'h' : // left
									u8DataIdx--;
									if (u8DataIdx == 255) {
										u8DataIdx = 0;
									}
									break;
								case 'j' : // down 
									pu8Data[u8DataIdx]--;
									break;
								case 'k' : // up 
									pu8Data[u8DataIdx]++;
									break;
								case 'l' : // right 
									u8DataIdx++;
									if (u8DataIdx == MAX_DATA) {
										u8DataIdx--;;
									}
									break;
							}
							switch(u8RxUART) {
								case 'h' : // left
								case 'l' : // right
									printf_fast_f("DataIdx:%d\r\n", u8DataIdx);
									break;
								case 'j' : // down 
								case 'k' : // up 
									{
										uint8 i;
										for (i=0;i<MAX_DATA;i++) {
											printf("0x%x ", pu8Data[i]);
										}
										printf_fast_f("\r\n");
									}
									break;
							}
						case UART0_INPUT_MODE4 :
							break;
					} //switch(u8StateUart0InputMode)
					break;
			} //switch(u8RxUART)
		} //if (Receive_Data_From_UART0_nb(&u8RxUART))
		else { // 유아트 입력이 없을 떄, 백그라운드로 실행
			switch(u8StateUart0InputMode) {
				case UART0_INPUT_MODE0 :
					break;
				case UART0_INPUT_MODE1 :
					if (gu16TimeCnt > 10 && ucBufIdx != 0) {
						printoutbuf(ucBufIdx, pcBuf);
						ucBufIdx = 0;
					}
					break;
				case UART0_INPUT_MODE2 :
					break;
				case UART0_INPUT_MODE3 :
					break;
				case UART0_INPUT_MODE4 :
					break;
			} //switch(u8StateUart0InputMode)
		}
#endif // CLI
//		if (get_octet_from_linefi(&u8RxUART)) {

//		} //if (get_octet_from_linefi(&u8RxUART))

#if 1 // 5개 스위치 입력 처리 부분
		if (u8PwrOnFirstFlag) { // 전원 켜진 후, 한 번만 동작
			switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum)) {
				case SW_ON :
					switch(u8PwrOnFirstFlag) {
						case 1 :
							LINEFI_TX = 1;
							LINEFI_EN0 = 1;
							u8PwrOnFirstFlag++;
							break;
						case 2 :
							InitialUART1_Timer3(gpu32UartSpeed[0]);
							send_octet_to_linefi(((LINEFI_DEFAULT_RATE<<4)&0xF0) | (1)&0x0F);
							printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[LINEFI_DEFAULT_RATE]);
							InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE]);
							u8PwrOnFirstFlag++;
							u8LineFiCmd = 2;
							u8LineFiAddr = 1;
							u8PwrOnFirstFlag = 0;
							break;
						case 3 :
							u8PwrOnFirstFlag++;
							break;
						case 4 :
							u8PwrOnFirstFlag++;
							break;
						case 5 :
							u8PwrOnFirstFlag++;
							break;
					}

#if 0
					switch(u8SwNum) {
						case (1<<4) : // C
							send_octet_to_linefi(((u8LineFiSpeed<<4)&0xF0) | (1)&0x0F);
							printf_fast_f("SW_C\r\n");
							u8PwrOnFirstFlag = 0;
							InitialUART1_Timer3(gpu32UartSpeed[u8LineFiSpeed]);
							break;
						case (1<<3) : // down
							printf_fast_f("SW_D\r\n");
							u8LineFiSpeed--;
							printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);
							break;
						case (1<<2) : //  << left
							printf_fast_f("SW_L\r\n");
							break;
						case (1<<1) : // >> right
							printf_fast_f("SW_R\r\n");
							break;
						case (1<<0) : // up
							printf_fast_f("SW_U\r\n");
							u8LineFiSpeed++;
							printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);

							break;
					}
#endif
					break;
			} //switch (state_switches((SW1<<0)| (SW2<<1)| (SW3<<2)| (SW4<<3) | (SW5<<4), &u8SwNum))
		} //if (u8PwrOnFirstFlag) // 전원 켜진 후, 한 번만 동작
		else {
			switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum)) {
				case SW_ON :
#if 0
					switch(u8SwNum) {
						case (1<<4) : // center
							send_octet_to_linefi((u8LineFiAddr<<4) | u8LineFiCmd);
							printf_fast_f("LineFi Sending: 0x%x:\n\r", (u8LineFiAddr<<4) | u8LineFiCmd);
							break;
						case (1<<3) : // down
							u8LineFiAddr--;
							if (u8LineFiAddr == 0) {
								u8LineFiAddr = 1;
							}
							printf_fast_f("address: %d\n\r", u8LineFiAddr);
							break;
						case (1<<1) : // right
							u8LineFiCmd--;
							if (u8LineFiCmd == 1) {
								u8LineFiCmd = 2;
							}
							printf_fast_f("command: %d\n\r", u8LineFiCmd);
							break;
						case (1<<2) : //  left
							u8LineFiCmd++;
							if (u8LineFiCmd == 11) {
								u8LineFiCmd = 10;
							}
							printf_fast_f("command: %d\n\r", u8LineFiCmd);
							break;
						case (1<<0) : // up
							u8LineFiAddr++;
							if (u8LineFiAddr == 4) {
								u8LineFiAddr = 3;
							}
							printf_fast_f("address: %d\n\r", u8LineFiAddr);
							break;
					}
#endif
#if 0 // 모터동작 시나리오1 , 간단한
					switch(u8SwNum) {
						case (1<<4)|(1<<3) :
							send_octet_to_linefi(0x41);
							u8EnCnt++;
							if (u8EnCnt == 8) {
								u8EnCnt = 0;
							}
							if(u8EnCnt & 1) {
								LINEFI_EN0 = 1;
							}
							else {
								LINEFI_EN0 = 0;
							}
							if(u8EnCnt & 2) {
								LINEFI_EN1 = 1;
							}
							else {
								LINEFI_EN1 = 0;
							}
							if(u8EnCnt & 4) {
								LINEFI_EN2 = 1;
							}
							else {
								LINEFI_EN2 = 0;
							}
							break;
						case (1<<4) : // center SW3
							send_octet_to_linefi(0x40);
							break;
						case (1<<3) : // down SW1
							send_octet_to_linefi(0x41);
							break;
						case (1<<1) : // right SW2
							send_octet_to_linefi(0x42);
							break;
						case (1<<2) : //  left SW4
							send_octet_to_linefi(0x43);
							break;
						case (1<<0) : // up SW5
							send_octet_to_linefi(0x44);
							break;
					}
#endif
#if 1 // 4비트,4비트 동작
					switch(u8SwNum) {
						case (1<<3) : // down SW1
							u8LineFiAddr--;
							if (u8LineFiAddr == 0) {
								u8LineFiAddr = 1;
							}
							
							printf_fast_f("address: %d\n\r", u8LineFiAddr);
							break;
						case (1<<1) : // right SW2
							u8LineFiCmd--;
							if (u8LineFiCmd == 0) {
								u8LineFiCmd = 1;
							}


							printf_fast_f("command: %d\n\r", u8LineFiCmd);
							break;

						case (1<<4) : // center SW3
							stLineFiPkt.u8Addr = u8LineFiAddr;
							stLineFiPkt.u8Type = u8LineFiCmd;
							if (u8LineFiAddr&1) {
								stLineFiPkt.pu8Data = gpu8Data;
							}
							else {
								stLineFiPkt.pu8Data = gpu8Data2;
							}
							send_linefi_packet(&stLineFiPkt);
							break;

						case (1<<2) : //  left SW4
							u8LineFiCmd++;
							if (u8LineFiCmd == 101) {
								u8LineFiCmd = 100;
							}
							printf_fast_f("command: %d\n\r", u8LineFiCmd);


							break;
						case (1<<0) : // up SW5
							u8LineFiAddr++;
							if (u8LineFiAddr == 16) {
								u8LineFiAddr = 15;
							}
							printf_fast_f("address: %d\n\r", u8LineFiAddr);
							break;
					}
#endif
			} //switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum))
		}
		
#endif

#if 0
		if (Receive_Data_From_UART0_nb(&u8RxUART)) {
			send_octet_to_linefi(u8RxUART);
		}
#endif

#if 0
		if ( P13 == 0 ) {
			printf_fast_f("P13 = 0\n\r");
		}
		if ( P02 == 0 ) {
			printf_fast_f("P02 = 0\n\r");
		}
		if ( P30 == 0 ) {
			printf_fast_f("P30 = 0\n\r");
		}
		if ( P17 == 0 ) {
			printf_fast_f("P17 = 0\n\r");
		}
#endif
	} //while(1)
}
