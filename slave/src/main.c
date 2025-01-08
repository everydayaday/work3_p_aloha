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
#include "eeprom_iap.h"

__code __at (BASE_ADDRESS) char gpcEEPROM[128] = "";

#define KEY_ESC (27)
//#define TIMER0_VAL        (133*10) // 1msec 1kHz
//#define TIMER0_VAL        (133*1) // 100usec 10kHz
#define TIMER0_VAL        (13) // 10usec // 100kHz

#define TH0_INIT (((65536-TIMER0_VAL)>>8)&0xFF)
#define TL0_INIT  ((65536-TIMER0_VAL)&0xFF)

#define PREAMBLE_CNT1 (2)
#define PREAMBLE_CNT2 (6)
#define PREAMBLE_CNT_MAX (100)

#define __VERSION__ "Version 1.4 on 20231026\r\n"

#define MY_ADDR (3)

#if 0 // 정량펌프

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

#else //라인파이 슬레이브 240709

#define UART_TX 	P16
#define SWITCH 		P15
#define LED_B 		P12
#define LED_G 		P13
#define LED_R 		P14
//#define MOTOR_EN 	P10
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

#define LED_OFF 1
#define LED_ON 0

#define LINEFI_RATE_IDX	3

uint8 gu8MyAddr;
uint8 __xdata gu8PPambleDurHNum = 1;
uint8 __xdata gu8PPambleDurLNum = 12;
uint16 __xdata gu8PPambleNum = 1;
uint8 __xdata gu8LineFiUpRate = 5; // 라인파이 상향 속도: 230400bps 이것으로 맨코해서 보내면, 실제 데이타 속도는 115200
uint8 __xdata gu8DurMode = 0;
uint8 __xdata gu8TxCnt = 8;
uint8 __xdata gu8DurModeMax = 3;

UINT8 __xdata gpu8Data[20];
UINT8 __xdata gpu8Data2[20];

UINT8 __xdata gu8MotorState = 0;
enum {
	STATE_MOTOR_STOP1,
	STATE_MOTOR_CW,
	STATE_MOTOR_STOP2,
	STATE_MOTOR_CCW
};

uplink_mode_t __xdata gu8ULTestMode = ULTMODE_INIT;
uplink_tx_state_t __xdata gu8UpLinkTxState = ULTxState_INIT;
UINT8  __xdata gu8PPambleDurCnt;
UINT16  __xdata gu8PPambleCnt;
UINT8 __xdata gu8ULTestData = 0;
UINT8 __xdata gu8RateIdx = 4;

UINT8 __xdata gpu8Data2[20] = {
	//165,165,170,170, // 165
	//10,165,1,1,
	1,2,3,4,
	5,6,7,8,
	4,4,4,4,
	3,3,3,3,
	5,5,5,5,
};
const char * __xdata  gppcULTestMode[] = {
	"ULTMODE_INIT",
	"ULTMODE_PREAMBLE",
	"ULTMODE_DATA",
	"ULTMODE_NO_MANCHESTER",
	"ULTMODE_NONE"
};

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

UINT16 __xdata gpu16RxTime[20];
extern UINT8 gu8UART;
UINT16 __xdata gu16TimeCnt = 0;
UINT32 __xdata gu32TimeCnt = 0;

extern UINT8 gu8BNFCnt; // buffer not full
extern UINT8 gu8BFCnt; // buffer full
extern UINT8 gu8BNECnt; // buffer not empty
extern UINT8 gu8BECnt; // buffer empty

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

enum { // Voltage Polarity Modulation
	STATE_RxPKT_INIT,
	STATE_RxPKT_START,
	STATE_RxPKT_END,
	STATE_ULPKT_GEN,
	STATE_ULPKT_SEND,
	STATE_ACK_WAIT, //5
	STATE_BKOFF, //6
	STATE_ACK_PROCESS  
};

enum { // Current Amplitude Modulation
	STATE_TxPKT_INIT,
	STATE_TxPKT_IdleH,
	STATE_TxPKT_IdleL,
	STATE_TxPKT_START,
	STATE_TxPKT_END,
	STATE_TxPKT_A,
	STATE_TxPKT_B,
	STATE_TxPKT_NONE
};

enum {
	MS_STOP,
	MS_ROT_CW,
	MS_WAIT_UNTIL_ROT_SENSE_CLOSE,
	MS_END
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
	gu32TimeCnt++;
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
	gu8UART = 0;
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

	P16_PushPull_Mode;
	P13_PushPull_Mode;
	P14_PushPull_Mode;
	P12_PushPull_Mode;
	P11_PushPull_Mode;
	P10_PushPull_Mode;
	P00_PushPull_Mode;
	P01_PushPull_Mode;
	P04_PushPull_Mode;
	P03_PushPull_Mode;

	UART_TX = 1;
	LED_B = 1;
	LED_G = 1;
	LED_R = 1;
//	MOTOR_EN = 0;
	MOTOR_CW = 0;
	MOTOR_CCW = 0;
	SEL_RX_POL = 0;
	PWR_OUT = 0;
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

void ctrl_rgbled_motor(UINT8 u8RxUART)
{

	//gu16RotCnt = (u8RxUART&0xF)*100 + 15*150 ; // 챔버 파라미터
	if (u8RxUART) {
		if (u8RxUART&(1<<0)) {
			TOGGLE(LED_R);
		}

		if (u8RxUART&(1<<1)) {
			TOGGLE(LED_G);
		}

		if (u8RxUART&(1<<2)) {
			TOGGLE(LED_B);
		}

		if (u8RxUART&(1<<3)) {
			switch(gu8MotorState) {
				case 0 :
					MOTOR_CCW = 0;
					MOTOR_CW = 0 ;
					break;
				case 1 :
					MOTOR_CCW = 1;
					MOTOR_CW = 0 ;
					break;
				case 2 :
					MOTOR_CCW = 1;
					MOTOR_CW = 1 ;
					break;
				case 3 :
					MOTOR_CCW = 0;
					MOTOR_CW = 1 ;
					break;
			}
			gu8MotorState ++;
			if (gu8MotorState == 4) {
				gu8MotorState = 0;
			}
		}
	}
	else {
		LED_R = LED_OFF;
		LED_G = LED_OFF;
		LED_B = LED_OFF;
		MOTOR_CCW = 0;
		MOTOR_CW = 0 ;
	}
}

UINT8 chk_my_addr(UINT8 au8MyAddr, UINT8 au8RxData)
{
	if ( (au8RxData>>4) == (au8MyAddr&0x0F)) {
		return 1;
	}
	return 0;
}

void process_my_packet(linefi_packet_t * apstLineFiPkt)
{
	switch(apstLineFiPkt->u8Type) {
//		case Type_SetAddr :
//			break;
//		case Type_Bcast :
//			break;
//		case Type_Mcast :
//			break;
//		case Type_Ucast :
//			break;
		case Type_SetLED :
			LED_R = apstLineFiPkt->pu8Data[0];
			LED_G = apstLineFiPkt->pu8Data[1];
			LED_B = apstLineFiPkt->pu8Data[2];
			break;
		case Type_CtrlMotor :
//			MOTOR_EN = apstLineFiPkt->pu8Data[0];
			MOTOR_CW = apstLineFiPkt->pu8Data[1];
			MOTOR_CCW = apstLineFiPkt->pu8Data[2];
			break;
		case Type_ReadAddr :
			printf_fast_f("My address is 0x%x\r\n", gu8MyAddr);
			break;
	}
}

void set_uplink_test_mode(uplink_mode_t au8Mode, UINT8 au8Data)
{
	/*


	*/

	gu8ULTestMode = au8Mode;
	gu8ULTestData = au8Data;
	printf_fast_f("%s:%d\r\n",gppcULTestMode[au8Mode], au8Data);
}

void process_all_packet(linefi_packet_t * apstLineFiPkt)
{
	switch(apstLineFiPkt->u8Type) {
		case Type_SetAddr :
			if (SWITCH == SW_ON) {
				printf_fast_f("set address as %d\r\n", apstLineFiPkt->u8Addr);
				gu8MyAddr = apstLineFiPkt->u8Addr;
				Erase_APROM_Page(BASE_ADDRESS);
				Write_APROM_BYTE(BASE_ADDRESS+0, gu8MyAddr);
			}
			break;
		case Type_Bcast :
			break;
		case Type_Mcast :
			break;
		case Type_CtrlMotor :
			switch(gu8MotorState) {
				case STATE_MOTOR_STOP1 :
					MOTOR_CCW = 0;
					MOTOR_CW = 0 ;
					gu8MotorState = STATE_MOTOR_CW;
					break;
				case STATE_MOTOR_CW :
					MOTOR_CCW = 0;
					MOTOR_CW = 1 ;
					gu8MotorState = STATE_MOTOR_STOP2;
					break;
				case STATE_MOTOR_STOP2 :
					MOTOR_CCW = 1;
					MOTOR_CW = 1 ;
					gu8MotorState = STATE_MOTOR_CCW;
					break;
				case STATE_MOTOR_CCW :
					MOTOR_CCW = 1;
					MOTOR_CW = 0 ;
					gu8MotorState = STATE_MOTOR_STOP1;
					break;
			}
			break;
		case Type_UpLinkTest :
//			InitialUART1_Timer3(
//					(apstLineFiPkt->pu8Data[0] << 16) 
//					| (apstLineFiPkt->pu8Data[1] << 8) 
//					| (apstLineFiPkt->pu8Data[2]));

			gu8UART = 0;
			UINT32  u32Tmp = apstLineFiPkt->pu8Data[0];
			u32Tmp <<= 8;
			u32Tmp |= apstLineFiPkt->pu8Data[1];
			u32Tmp <<= 8;
			u32Tmp |= apstLineFiPkt->pu8Data[2];
#if 1
			printf_fast_f("uart speed: %lu", u32Tmp);
			set_linefi_uplink_speed(u32Tmp);
#endif
			printf_fast_f("(%x,%x,%x)\n\r", 
					apstLineFiPkt->pu8Data[0] ,
					apstLineFiPkt->pu8Data[1] ,
					apstLineFiPkt->pu8Data[2]);


			set_uplink_test_mode((uplink_mode_t)(apstLineFiPkt->pu8Data[3]), apstLineFiPkt->pu8Data[4]);
			break;
	}
}

char get_uart0_char_nb(char * apcResult)
{
#if 0
	return Receive_Data_From_UART0_nb(apcResult);
#else
	return getchar_uart0(apcResult);
#endif
}

void i2c_setup()
{

	//P13_Quasi_Mode;
	//P14_Quasi_Mode;
	P13_OpenDrain_Mode;
	P14_OpenDrain_Mode;
	// SDA = 1;
	// SCL = 1;

	//P02_OpenDrain_Mode;
	//P16_OpenDrain_Mode;
	//P02 = 1;
	//P16 = 1;
	//I2CPX = 1;  // Assign SCL to P0.2 and SDA to P1.6
	I2CPX = 0;  // Assign SCL to P1.3 and SDA to P1.4

	// set_P1S_3;  // P13 Schmitt triggered input

	// setup interrupt
	set_EI2C;
	set_EA;

//	set_I2CEN;
//	set_AA;
}

#define SCL_PIN  P13
#define SDA_PIN  P14

UINT8 i2c_write_bitbanging(UINT8 au8Data)
{
	/*
	P13_OpenDrain_Mode;
	P14_OpenDrain_Mode;
	*/
	UINT8 i;
	UINT8 u8Ack;

	SDA_PIN = 0;
	SCL_PIN = 0;

	for (i=0;i<8;i++) {
		SDA_PIN = (au8Data>>(7-i))&1;
		SCL_PIN = 1;
		SCL_PIN = 0;
	}

	SDA_PIN = 1;
	SCL_PIN = 1;
	u8Ack = SDA_PIN;
	SCL_PIN = 0;
//	SCL_PIN = 1;

	return u8Ack;
}

UINT8 i2c_read_bitbanging()
{
	/*
	P13_OpenDrain_Mode;
	P14_OpenDrain_Mode;
	*/
	UINT8 i;
	UINT8 u8Data = 0;

	SDA_PIN = 1;
	SCL_PIN = 0;

	for (i=0;i<8;i++) {
		SCL_PIN = 1;
		u8Data |= (SDA_PIN<<(7-i));
		SCL_PIN = 0;
	}

	SDA_PIN = 0;
	SCL_PIN = 1;
	SCL_PIN = 0;
	SDA_PIN = 1;

	return u8Data;
}

#define I2C_W 0
#define I2C_R 1
UINT8 i2c_address_bitbanging(UINT8 au8Addr, UINT8 au8RW)
{
	/*
	R/W = 1 : 읽기
	R/W = 0 : 쓰기
	*/

	UINT8 u8Data;

	u8Data = i2c_write_bitbanging((au8Addr<<1) | au8RW);
	return u8Data;
}

void i2c_write_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
{
	UINT8 i;
	
	i2c_address_bitbanging(au8Addr, I2C_W);
	for (i=0;i<au8Size;i++) {
		i2c_write_bitbanging(apu8Data[i]);
	}
	SDA_PIN = 1;
	SCL_PIN = 1;
}

void i2c_read_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
{
	UINT8 i;
	i2c_address_bitbanging(au8Addr, I2C_R);
	for (i=0;i<au8Size;i++) {
		apu8Data[i] = i2c_read_bitbanging();
	}
	SDA_PIN = 1;
	SCL_PIN = 1;
}

void i2c_read_bytes_cs_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
{
	/*
	clock stretching
	*/
	UINT8 i;
	i2c_address_bitbanging(au8Addr, I2C_R);
	SCL_PIN = 1;

	while(SCL_PIN == 0);

	SCL_PIN = 0;
	for (i=0;i<au8Size;i++) {
		apu8Data[i] = i2c_read_bitbanging();
	}
	SDA_PIN = 1;
	SCL_PIN = 1;
}


UINT32 calc_temp(UINT8 au8Data1, UINT8 au8Data2)
{
	UINT32 u32Tmp = au8Data1*256 + au8Data2;
	u32Tmp *= 17500;
	u32Tmp /= 65535;
	u32Tmp += -4500;
	return u32Tmp;
}


void delay_nop(UINT16 au16Delay)
{
	int i;
	for (i=0;i<au16Delay;i++) {
		nop; nop; nop; nop; nop;
		nop; nop; nop; nop; nop;
	}
}
//========================================================================================================


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
	UINT8 u8StateRxPkt = STATE_RxPKT_INIT;
	UINT8 u8StateTxPkt = STATE_TxPKT_INIT;

	UINT8 __xdata pu8RxUART[30];
	UINT32 __xdata pktGenTime = 0;
	UINT32 __xdata backoffTimer = 0;
	static UINT8 __xdata su8Cnt = 1;
	linefi_packet_t stLineFiPkt = {
		1, //UINT8 u8Ver;
		2, //UINT8 u8Type;
		3, //UINT8 u8Addr;
		4, //UINT8 u8Size;
		5, //UINT8 u8CRC;
		gpu8Data //UINT8 * pu8Data;
	};
	
	linefi_packet_t stLineFiPkt2 = {
		1, //UINT8 u8Ver;
		2, //UINT8 u8Type;
		3, //UINT8 u8Addr;
		4, //UINT8 u8Size;
		5, //UINT8 u8CRC;
		gpu8Data2 //UINT8 * pu8Data;
	};
	linefi_packet_t stLineFiPkt_UL = {
		1, //UINT8 u8Ver;
		3, //UINT8 u8Type;
		MY_ADDR, //UINT8 u8Addr;
		11, //UINT8 u8Size;
		255, //UINT8 u8CRC;
		gpu8Data2 //UINT8 * pu8Data;
	};
	//	uint8 u8MotorRotCmd;
	uint8 u8MotorState = MS_STOP;

	UINT8 u8RxBufIdx = 0;
	UINT8 u8RxLFPLen = 0; //UINT8 u8RxLineFiLen = 0; 변수 이름 바꿈, 수신된 LineFiPacket 길이
#define MAX_RX_BUF_LEN 10
	UINT8 u8LineFiRxIdx = 0;

	gpio_setup();
	uart_setup();
	//init_i2c();
	i2c_setup();
	//InitialUART1_Timer3(57600);
	//InitialUART1_Timer3(115200);
	//InitialUART1_Timer3(230400);
	InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);

	MODIFY_HIRC_166();

	clr_T0M;// 16/12 MHz
			//set_T0M; // 16MHz

	set_ET0;                                    //enable Timer0 interrupt
	set_TR0;                                    //Timer0 run

	gu8UART = 0;
	printf_fast_f("This is UART0\n\r");
	gu8UART = 1;
	printf_fast_f("This is UART1\n\r"); //라인파이
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
//	MOTOR_EN = 1;

	gu8MyAddr = gpcEEPROM[0]; // 0x00이면 펌웨어 쓴 직후

	while(1) {
#if 1
#if 1
		if (get_uart0_char_nb(&u8RxUART)) {
			switch(u8RxUART) {
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
//					TOGGLE(MOTOR_EN);
//					printf_fast_f("MOTOR_EN=");
//					printf_fast_f("%d\n\r", MOTOR_EN);
					printf_fast_f("no MOTOR_EN\r\n");
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
				case 't' :
					printf_fast_f("count:%lu\r\n", gu32TimeCnt);
					gu32TimeCnt = 0;
					break;
				case 'r' :
					if (get_octet_from_linefi(&u8RxUART)) {
					printf_fast_f("rx data : %x\r\n", u8RxUART);
					}
					else {
					printf_fast_f("no rx\r\n");
					}
					break;
				case 'T' :
					printf_fast_f("%d %d %d %d\r\n",gu8BFCnt, gu8BNFCnt, gu8BECnt, gu8BNECnt);
					//printf_fast_f("%d %d\r\n",gu8BNECnt, gu8BECnt);
					gu8BFCnt = 0;
					gu8BNFCnt = 0;
					gu8BECnt = 0;
					gu8BNECnt = 0;
					break;
				case 'k' : // speed up
					gu8RateIdx++;
					printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
					break;
				case 'j' : // speed down
					gu8RateIdx--;
					printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
					break;
				case 's' : // speed setting
					InitialUART1_Timer3(gpu32UartSpeed[gu8RateIdx]);
					break;
				case 'p' :
					gu8ULTestMode = ULTMODE_DATA;
					break;
				case 'i' :
					gpu8Data[0] = 0x2c;
					gpu8Data[1] = 0x06;
					i2c_write_bytes_bitbannging(0x4a, 2, gpu8Data);
					delay_nop(10000);
					i2c_read_bytes_bitbannging(0x4a, 3, gpu8Data);
#if 0
					printf_fast_f("i2c read 0x%02x 0x%02x 0x%02x : 0x%02x\r\n", 
							gpu8Data[0],
							gpu8Data[1],
							gpu8Data[2],
							crc8(gpu8Data,2,0xFF)
							);
#endif
					if (gpu8Data[2] == crc8(gpu8Data,2,0xFF)) {
						static UINT8 su8Cnt = 0;
						printf_fast_f("[%d]temp : %lu\r\n", su8Cnt++, calc_temp(gpu8Data[0], gpu8Data[1]));
					}
					else {
						printf_fast_f("crc bad\r\n");
					}



					break;

				case 'b' : //i2c bit banging
					{
						UINT8 i;
						for (i=8;i<128-8;i++) {
							if (i2c_address_bitbanging(i,I2C_W) == 0) {
								printf_fast_f("i2c found %x:\r\n",i);
							}
							else {
						//		printf_fast_f("i2c not found %x:\r\n",i);
							}
							SCL_PIN = 1;
							SDA_PIN = 1;
						}
					}
					break;
				case KEY_ESC :
					gu8DurMode ++;
					switch(gu8DurMode) {
						case 0 :
							printf_fast_f("gu8PPambleDurHNum\r\n");
							break;
						case 1 :
							printf_fast_f("gu8PPambleDurLNum\r\n");
							break;
						case 2 :
							printf_fast_f("gu8PPambleNum\r\n");
							break;
						case 3 :
							printf_fast_f("gu8LineFiUpRate\r\n");
							break;
						case 4 :
							printf_fast_f("gu8TxCnt\r\n");
							break;
						case 5 :
							printf_fast_f("-------------------------------\r\n");
							printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
							printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
							printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
							printf_fast_f("%lu[%d]\r\n", gpu32UartSpeed[gu8LineFiUpRate],gu8LineFiUpRate);
							printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
							printf_fast_f("-------------------------------\r\n");
							break;
						default :
							gu8DurMode = 0;
							printf_fast_f("gu8PPambleDurHNum\r\n");
							break;
					}
					break;
				case '+' :
					switch(gu8DurMode) {
						case 0 :
							gu8PPambleDurHNum ++;
							printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
							break;
						case 1 :
							gu8PPambleDurLNum ++;
							printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
							break;
						case 2 :
							gu8PPambleNum ++;
							printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
							break;
						case 3 :
							printf_fast_f("%lu\r\n", gpu32UartSpeed[++gu8LineFiUpRate]);
							InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
							break;
						case 4 :
							gu8TxCnt ++;
							printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
							break;
					}
					break;
				case '-' :
					switch(gu8DurMode) {
						case 0 :
							gu8PPambleDurHNum --;
							printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
							break;
						case 1 :
							gu8PPambleDurLNum --;
							printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
							break;
						case 2 :
							gu8PPambleNum --;
							printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
							break;
						case 3 :
							printf_fast_f("%lu\r\n", gpu32UartSpeed[--gu8LineFiUpRate]);
							InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
							break;
						case 4 :
							gu8TxCnt --;
							printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
							break;
					}
					break;
			}
		} // if (get_uart0_char_nb(&u8RxUART))
#endif
		if (u8PrevSwitch != SWITCH) { // 스위치 스테이트가 변하면..
			gu8UART = 0;
			printf_fast_f("SWITCH:%d\n\r", SWITCH);
			if (SWITCH) { //눌렸을 때
				gu8PPambleCnt = 0;
				gu8PPambleDurCnt = 0;
			}
			else { //떨어질 때
				gu8UpLinkTxState = ULTxState_INIT;
				//InitialUART1_Timer3(115200);
				//InitialUART1_Timer3(57600);
				gu8UART = 0;
				//printf_fast_f("uart speed: 230400:\n\r");
				//printf_fast_f("uart speed: 115200:\n\r");
				//printf_fast_f("uart speed: 57600:\n\r");
#if 1
				static uint8 su8Cnt = 0;
				su8Cnt++;
				LED_R = su8Cnt&1;
				LED_G = (su8Cnt>>1)&1;
				LED_B = (su8Cnt>>2)&1;

//				MOTOR_EN = su8Cnt&1;
				MOTOR_CW = (su8Cnt>>1)&1;
				MOTOR_CCW = (su8Cnt>>2)&1;
#endif
			}
			u8PrevSwitch = SWITCH;
		} //if (u8PrevSwitch != SWITCH)

		if (SWITCH) {
			if (gu8PPambleCnt < gu8PPambleNum) {
				if (UART_TX) {
					UART_TX = 0;
				}
				else {
					UART_TX = 1;
					gu8PPambleCnt++;
				}
			}
			else {
				if (gu8PPambleDurCnt < gu8PPambleDurHNum) {
					static UINT8 __xdata su8InitCnt = 0;
					UINT8 i;
					gu8UART = 1;
					putchar(0xF0);
					putchar(0xF0);
					putchar(0xF0);
					putchar(0xF0);
					putchar(0xF0);
					for (i = 0;i<gu8TxCnt;i++) {
						//putchar_manchester(i+su8InitCnt++);					
						//putchar(i + su8InitCnt);
						if (i == 2) {
							putchar(MY_ADDR);
						}
						else {
							putchar(i + su8InitCnt);
						}
					}
					su8InitCnt++;
					gu8PPambleDurCnt++;
					gu8UART = 0;
					gu8PPambleCnt = 0;
				}
			}

#if 1 // 상향 신호
			gu8ULTestMode = ULTMODE_INIT;

#endif

		} //if (SWITCH)

		else {
			switch(gu8ULTestMode) {
				case ULTMODE_INIT:
					break;
				case ULTMODE_PREAMBLE:
					preamble();
					break;
				case ULTMODE_DATA:
					putchar_manchester(gu8ULTestData);
					break;
				case ULTMODE_NO_MANCHESTER:
					gu8UART = 1;
					putchar(gu8ULTestData);
					gu8UART = 0;
					break;
			}

		}

		if (u8UartRx != UART_RX) {
//			printf_fast_f("UART_RX:%d\n\r", UART_RX);
//			u8UartRx = UART_RX;
		}
#endif
		switch(u8StateRxPkt) { // 수신 시
			case STATE_RxPKT_INIT :
				if (get_octet_from_linefi(&u8RxUART)) {
					gu16TimeCnt = 0;
					u8RxBufIdx = 0;
					pu8RxUART[u8RxBufIdx++] = u8RxUART;
					gu8UART = 0;
					gu8PPambleCnt = 0;
					gu8PPambleDurCnt = 0;
				
					u8StateRxPkt = STATE_RxPKT_START;
				}					
				break;
			case STATE_RxPKT_START :
				if (get_octet_from_linefi(&u8RxUART)) {
					gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
					gu16TimeCnt = 0;
					pu8RxUART[u8RxBufIdx++] = u8RxUART;
				}
				else if (gu16TimeCnt > 1000) { //
					u8RxLFPLen = u8RxBufIdx;
					u8StateRxPkt = STATE_RxPKT_END;
				}
				break;
			case STATE_ULPKT_GEN : 				
				if (pktGenTime == 0) {
					u8StateRxPkt = STATE_ULPKT_SEND;
					// gu8UART = 1;
					// putchar(0x00); //prepreamble
					// putchar(0x00);
					// putchar(0xF0); // preamble 
					// putchar(0xF0);
					// putchar(0xF0);

					// add_crc_linefi_packet_packet(&stLineFiPkt_UL);
					// send_linefi_packet(&stLineFiPkt_UL);
					// su8Cnt++;
					// stLineFiPkt_UL.u8Ver = su8Cnt;
					// gu8UART = 0;
				}
				else if (pktGenTime > 0) {
					pktGenTime -= 1;
					// if (pktGenTime % 1000 == 0)
					// {
					// 	printf_fast_f("%u ",pktGenTime); 
					// }					
					u8StateRxPkt = STATE_ULPKT_GEN;
				}
				break;
			
			case STATE_ULPKT_SEND :
				printf_fast_f("33333\r\n");
				gu8UART = 1;
				putchar(0x00); //prepreamble
				putchar(0x00);
				putchar(0xF0); // preamble 
				putchar(0xF0);
				putchar(0xF0);

				add_crc_linefi_packet_packet(&stLineFiPkt_UL);
				send_linefi_packet(&stLineFiPkt_UL);
				// su8Cnt++;
				// stLineFiPkt_UL.u8Ver = su8Cnt;
				gu8UART = 0;
				gu32TimeCnt = 0;
				gu16TimeCnt = 0;
				u8RxBufIdx = 0;
				u8StateRxPkt = STATE_ACK_WAIT;
				break;
			
			case STATE_ACK_WAIT : 				
				if (get_octet_from_linefi(&u8RxUART)) {
					gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
					gu16TimeCnt = 0;
					pu8RxUART[u8RxBufIdx++] = u8RxUART;
					printf_fast_f("1");
				}
				else if (gu16TimeCnt > 10000) { //
					u8RxLFPLen = u8RxBufIdx;
					printf_fast_f("\r\nu8RxLFPLen: %d\r\n",u8RxLFPLen);
					if (pu8RxUART[1] == 7 ) {
						u8StateRxPkt = STATE_ACK_PROCESS;
					}
					else {
						gu32TimeCnt = 0;
						u8RxBufIdx = 0;
						backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
						printf_fast_f("ack wait->wrong ack->backoff\r\n");
						// printf_fast_f("\r\n%d Backoff timer set: %u \r\n", u8StateRxPkt, backoffTimer); 
						u8StateRxPkt = STATE_BKOFF; 
					}
					// if (u8RxLFPLen == 16){
					// 	if (pu8RxUART[1] == 7) {
					// 		u8StateRxPkt = STATE_ACK_PROCESS;
					// 	}		
					// }
					// else {
					// 	gu32TimeCnt = 0;
					// 	u8RxBufIdx = 0;
					// 	backoffTimer = get_bktimer_value(MY_ADDR);
					// 	printf_fast_f("\r\n%d Backoff timer set: %d \r\n", u8StateRxPkt, backoffTimer); 
					// 	u8StateRxPkt = STATE_BKOFF; 
					// }			
				}
				if (gu32TimeCnt > 100000) {
					gu32TimeCnt = 0;
					u8RxBufIdx = 0;
					backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
					printf_fast_f("ack wait->timeout->backoff\r\n");
					// printf_fast_f("\r\n%d, Backoff timer set: %u \r\n", u8StateRxPkt,backoffTimer); 
					u8StateRxPkt = STATE_BKOFF; 
				}
				break;

			case STATE_BKOFF : 
				if (backoffTimer == 0) {
					u8StateRxPkt = STATE_ULPKT_SEND; 
				}
				else if (backoffTimer > 0) {
					backoffTimer -= 1;
					// if (backoffTimer % 1000 == 0){
					// 	printf_fast_f("%u ",backoffTimer);
					// }
					
					// if (backoffTimer % 1000 == 0){
					// 	printf_fast_f("Backoff: %d \r\n", backoffTimer);
					// }
					u8StateRxPkt = STATE_BKOFF; 				
				}
				break;
			case STATE_ACK_PROCESS :				
				//static UINT8 __xdata su8Cnt = 1;				
				if (u8RxLFPLen == 16) { // receive ACK pu8RxUART[1] == 7 && 
					if (pu8RxUART[2] == MY_ADDR){ //chk_crc_linefi_packet_packet(&stLineFiPkt) ?
						UINT8 i;
						printf_fast_f("ACKACKACK\r\n");
						cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
						print_linefipacket(&stLineFiPkt);
						//process_all_packet(&stLineFiPkt);
						printf_fast_f("Slave %d, DL_packet_num: %d, Rx size:%d\n\r", MY_ADDR, pu8RxUART[5+MY_ADDR],u8RxLFPLen);
						for (i=0; i<u8RxLFPLen;i++) {
							printf_fast_f("0x%x ", pu8RxUART[i]);
						}
						su8Cnt++;
						stLineFiPkt_UL.u8Ver = su8Cnt;
						pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;
						// printf_fast_f("PKT gentime: %u \r\n", pktGenTime);
						u8StateRxPkt = STATE_ULPKT_GEN; 
						printf_fast_f("\n\r");
						printf_fast_f("\n\r");
						u8RxBufIdx = 0;	
						gu16TimeCnt = 0;
					}
					else{
						u8StateRxPkt = STATE_ACK_WAIT; 
						u8RxBufIdx = 0;	
						gu16TimeCnt = 0;

					}
										
				}
				else {
					u8RxBufIdx = 0;
					gu16TimeCnt = 0;
					
					u8StateRxPkt = STATE_ACK_WAIT; 
				}
				break;
			case STATE_RxPKT_END :
				printf_fast_f("\r\nTo %d -> Rx SIZE:%d\n\r", pu8RxUART[2], u8RxLFPLen);
				// printf_fast_f("downlink timeout:%d\n\r", gu16TimeCnt);
				if (u8RxLFPLen == 1) {
					// 1 옥텟 수신, 초기 라인파이 임시 프로토콜
					if (chk_my_addr(MY_ADDR, pu8RxUART[0])) {
						//				rot_motor(u8RxUART);
						printf_fast_f("Rx:%d\n\r", pu8RxUART[0]);
						ctrl_rgbled_motor(u8RxUART);
					}
				}
				else if(u8RxLFPLen < 8) {
					// 7 옥텟 이하 수신, 초기 라인파이 임시 프로토콜
					UINT8 i;
					printf_fast_f("1:Rx size:%d\n\r", u8RxLFPLen);
					for (i=0; i<u8RxLFPLen;i++) {
						printf_fast_f("0x%x ", pu8RxUART[i]);
					}
					printf_fast_f("\n\r");
					for (i=0; i<u8RxLFPLen;i++) {
						printf_fast_f("%d  ", gpu16RxTime[i]);
					}
					printf_fast_f("\n\r");
				}
				else {
					UINT8 i;
					//static UINT8 __xdata su8Cnt = 1;
					if (pu8RxUART[1] == 100) { // start aloha
						pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;	
						// printf_fast_f("PKT gentime: %u \r\n", pktGenTime);					
						u8RxBufIdx = 0;
						u8StateRxPkt = STATE_ULPKT_GEN; 
					}
					// if (pu8RxUART[1] == 7 && pu8RxUART[2] == MY_ADDR && chk_crc_linefi_packet_packet(&stLineFiPkt) == 1) { // receive ACK
					// 	printf_fast_f("ACKACKACK\r\n");
					// 	cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
					// 	print_linefipacket(&stLineFiPkt);
					// 	//process_all_packet(&stLineFiPkt);
					// 	printf_fast_f("Slave %d, DL_packet_num: %d, Rx size:%d\n\r", MY_ADDR, pu8RxUART[5+MY_ADDR],u8RxLFPLen);
					// 	for (i=0; i<u8RxLFPLen;i++) {
					// 		printf_fast_f("0x%x ", pu8RxUART[i]);
					// 	}
					// 	printf_fast_f("\n\r");
					// 	printf_fast_f("\n\r");
					// 	u8RxBufIdx = 0;
					// 	pktGenTime = get_timer_value(MY_ADDR);
					// 	u8StateRxPkt = STATE_ULPKT_GEN; 
					// }

					// if (pu8RxUART[2] == MY_ADDR && chk_crc_linefi_packet_packet(&stLineFiPkt) == 1){	
					// 	cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
					// 	print_linefipacket(&stLineFiPkt);
					// 	process_all_packet(&stLineFiPkt);	
						
						//printf_fast_f("%d",chk_crc_linefi_packet_packet(&stLineFiPkt));	
						// if (chk_crc_linefi_packet_packet(&stLineFiPkt) == 1) {
						// 	gu8UART = 1;
						// 	putchar(0x00); //prepreamble
						// 	putchar(0x00);
						// 	putchar(0xF0); // preamble 
						// 	putchar(0xF0);
						// 	putchar(0xF0);

						// 	add_crc_linefi_packet_packet(&stLineFiPkt_UL);
						// 	send_linefi_packet(&stLineFiPkt_UL);
						// 	su8Cnt++;
						// 	stLineFiPkt_UL.u8Ver = su8Cnt;
						// }
						// gu8UART = 0;
					
						// printf_fast_f("Slave %d, DL_packet_num: %d, Rx size:%d\n\r", MY_ADDR, pu8RxUART[5+MY_ADDR],u8RxLFPLen);
						// for (i=0; i<u8RxLFPLen;i++) {
						// 	printf_fast_f("0x%x ", pu8RxUART[i]);
						// }
						// printf_fast_f("\n\r");
						// for (i=0; i<u8RxLFPLen;i++) {
						// 	printf_fast_f("%d  ", gpu16RxTime[i]);
						// }
						// printf_fast_f("\n\r");

						//printf_fast_f("%d\r\n",cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt));
						// cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
						// print_linefipacket(&stLineFiPkt);
						// process_all_packet(&stLineFiPkt);
						// if (gu8MyAddr == stLineFiPkt.u8Addr) {
						// 	process_my_packet(&stLineFiPkt);
						// }
						/// 새로 추가 
				// }
		}
					//u8StateRxPkt = STATE_RxPKT_INIT;
					break;
		} //switch(u8StateRxPkt)
	} //while(1)
	}
