#include "Common.h"
#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "uart.h"

//UINT8 __xdata gu8UART; 제대로 전환이 안됨
UINT8 gu8UART;

UINT8 gu8BNFCnt = 0;
UINT8 gu8BFCnt = 0;
UINT8 gu8BNECnt = 0;
UINT8 gu8BECnt = 0;
//----------------------------------------------------------------------------------
// UART0 baud rate initial setting 
//----------------------------------------------------------------------------------
void InitialUART0_Timer1(UINT32 u32Baudrate)    //T1M = 1, SMOD = 1
{
	P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit

	SCON = 0x50;     	//UART0 Mode1,REN=1,TI=1
	TMOD |= 0x20;    	//Timer1 Mode1

	set_SMOD;        	//UART0 Double Rate Enable
	set_T1M;
	clr_BRCK;        	//Serial port 0 baud rate clock source = Timer1

#ifdef FOSC_160000
	TH1 = 256 - (1000000/u32Baudrate+1);               /*16 MHz */
#endif    	
#ifdef FOSC_166000
	TH1 = 256 - (1037500/u32Baudrate);         		     /*16.6 MHz */
#endif
	set_TR1;
	set_TI;						//For printf function must setting TI = 1
}
//---------------------------------------------------------------

void InitialUART0_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
{
	P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit	

	SCON = 0x50;     //UART0 Mode1,REN=1,TI=1
	set_SMOD;        //UART0 Double Rate Enable
	T3CON &= 0xF8;   //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
	set_BRCK;        //UART0 baud rate clock source = Timer3

#ifdef FOSC_160000
	RH3    = HIBYTE(65536 - (1000000/u32Baudrate)-1);  		/*16 MHz */
	RL3    = LOBYTE(65536 - (1000000/u32Baudrate)-1);			/*16 MHz */
#endif
#ifdef FOSC_166000
	RH3    = HIBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
	RL3    = LOBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
#endif
	set_TR3;         //Trigger Timer3
	set_TI;					 //For printf function must setting TI = 1
}

void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
{
	P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit

//	SCON_1 = 0x50;   	//UART1 Mode1,REN_1=1,TI_1=1
	SCON_1 = 0x58;   	//UART1 Mode1,REN_1=1,TI_1=1 TB8=1
	T3CON = 0x08;   	//T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
	clr_BRCK;

#ifdef FOSC_160000
	RH3    = HIBYTE(65536 - (1000000/u32Baudrate)-1);  		/*16 MHz */
	RL3    = LOBYTE(65536 - (1000000/u32Baudrate)-1);			/*16 MHz */
#endif
#ifdef FOSC_166000
	RH3    = HIBYTE(65536 - (1037500/u32Baudrate));  			/*16.6 MHz */
	RL3    = LOBYTE(65536 - (1037500/u32Baudrate));				/*16.6 MHz */
#endif
	set_TR3;         //Trigger Timer3
}

void set_linefi_uplink_speed(UINT32 u32Baudrate)
{
	return InitialUART1_Timer3(u32Baudrate);
}

/* Needed for printf */
void putchar (char c) 
{
	if (gu8UART == 0)  {
		putchar_uart0(c);
	}
	else {
		putchar_uart1(c);
	}
}

#ifdef _USING_UART_POLLING_
/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* Copyright(c) 2016 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  Nuvoton Technoledge Corp. 
//  Website: http://www.nuvoton.com
//  E-Mail : MicroC-8bit@nuvoton.com
//  Date   : Apr/21/2016
//***********************************************************************************************************

#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "uart.h"

UINT8 getchar_uart0_b(void)
{
	UINT8 c;

	while (!RI);
	c = SBUF;
	RI = 0;
	return (c);
}

UINT8 getchar_uart0(UINT8 * apu8Tmp)
{
	if (RI) {
		*apu8Tmp = SBUF;
		RI = 0;
		return 1;
	}
	return 0;
}

/*
//----------------------------------------------------------------------------------
// UART1 baud rate initial setting 

UART1은 timer3만 사용할 수 있음
void InitialUART1_Timer1(UINT32 u32Baudrate)    //T1M = 1, SMOD = 1
{
}
//----------------------------------------------------------------------------------
*/

UINT8 getchar_uart1_b(void)
{
	UINT8 c;

	while (!RI_1);
	c = SBUF_1;
	RI_1 = 0;
	return (c);
}

UINT8 getchar_uart1(UINT8 * apu8Tmp)
{
	if (RI_1) {
		*apu8Tmp = SBUF_1;
		RI_1 = 0;
		return 1;
	}
	return 0;
}

void uart_setup() 
{
	/*
	   150, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600, 115200, 230400, 460800, 921600
	 */
  InitialUART0_Timer1(115200);
  InitialUART1_Timer3(115200);
  clr_TI;
  clr_TI_1;
  set_ES;
  set_EA;
}
/*==========================================================================*/



#if 0

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
//  File Function: N76E003 UART-0 Mode3 demo code
//***********************************************************************************************************
#include "N76E003.h"





#define BUFFER_SIZE		16
UINT8  UART_BUFFER[BUFFER_SIZE],temp;
UINT16 u16CNT=0,u16CNT1=0;
bit riflag;


/**
 * FUNCTION_PURPOSE: serial interrupt, echo received data.
 * FUNCTION_INPUTS: P0.7(RXD) serial input
 * FUNCTION_OUTPUTS: P0.6(TXD) serial output
 */

#endif
#if 0

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
//  File Function: N76E003 UART-1 Mode1 demo code
//***********************************************************************************************************
#include "N76E003.h"





#define BUFFER_SIZE		16
UINT8  UART_BUFFER[BUFFER_SIZE],temp;
UINT16 u16CNT=0,u16CNT1=0;
bit riflag;

/******************************************************************************
 * FUNCTION_PURPOSE: Serial port 1 interrupt, echo received data.
 * FUNCTION_INPUTS : P0.2(RXD) serial input
 * FUNCTION_OUTPUTS: P1.6(TXD) serial output
 * Following setting in Common.c
 ******************************************************************************/
#if 0
//void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
//{
//		P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
//		P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
//
//	  SCON_1 = 0x50;   	//UART1 Mode1,REN_1=1,TI_1=1
//    T3CON = 0x08;   	//T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
//		clr_BRCK;
//
//#ifdef FOSC_160000
//		RH3    = HIBYTE(65536 - (1000000/u32Baudrate)-1);  		/*16 MHz */
//		RL3    = LOBYTE(65536 - (1000000/u32Baudrate)-1);			/*16 MHz */
//#endif
//#ifdef FOSC_166000
//		RH3    = HIBYTE(65536 - (1037500/u32Baudrate));  			/*16.6 MHz */
//		RL3    = LOBYTE(65536 - (1037500/u32Baudrate));				/*16.6 MHz */
//#endif
//    set_TR3;         //Trigger Timer3
//}
#endif

#endif

/*
 * N76E003 UART echo with interrupt.
 *   UART0: P0.7(RXD) P0.6(TXD)
 *   UART1: P0.2(RXD) P1.6(TXD)
 *
 * arad.rgb@gmail.com
 */
#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"

#define UART_BAUDRATE	(115200)

void putchar_uart0(char c) 
{
	TI = 0;
	SBUF = c;
	while(TI==0);
}

void putchar_uart1(char c) 
{
	TI_1 = 0;
	SBUF_1 = c;
	while(TI_1==0);
}
#endif

#ifdef _USING_UART_ISR_
//#define TRUE 1
//#define FALSE 0
/*
   200~600/1200/2400/4800/9600/14400/19200/28800/38400/57600/115200/230400/460800 / 921600bps 
 */
#define UART0_RX_BUFF_SIZE 16
#define UART0_TX_BUFF_SIZE 16
#define UART1_RX_BUFF_SIZE 16
#define UART1_TX_BUFF_SIZE 16
#define UART1_TX_BUFF_SIZE_MSK 0x0F

#define UART0_TX_GAP 100
//#define UART1_TX_GAP 100
//#define UART1_TX_GAP 100 // 시작비트 - 정지비트 간격이 200마이크로초
#define UART1_TX_GAP 50 // 시작비트 - 정지비트 간격이 130마이크로초
// 4개 연속 인터럽트로 보냈더니, 시작비트 - 정지비트 간격이 12마이크로초
#define LINEFI_UPLINKE_TX_GAP 20 // 시작비트 - 정지비트 간격이 130마이크로초
#define LINEFI_DOWNLINKE_TX_GAP 200 // 시작비트 - 정지비트 간격이 130마이크로초

uint8_t __xdata pu8UartRx0Buf[UART0_RX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};
//uint8_t pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};//  10마이크로초 인듯..
uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};//  10마이크로초보다 큰 듯.. --> 비슷함..ㅠㅠ

uint8_t __xdata gu8Rx0Size = 0;  // Rx0버퍼에 쌓여있는, 받은 데이타 크기
uint8_t __xdata gu8Rx0RIdx = 0; // Rx0버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
uint8_t __xdata gu8Rx0WIdx = 0; // Rx0버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠

uint8_t __xdata gu8Tx0Size = 0;  // Tx0버퍼에 쌓여있는, 보낼 데이타 크기
uint8_t __xdata gu8Tx0RIdx = 0; // Tx0버퍼에서 읽기 인덱스, 이부문을 읽어서 SBUF에서 써서 보내기
uint8_t __xdata gu8Tx0WIdx = 0; // Tx0버퍼에서 쓰기 인덱스, 이부문에 써서 인터럽트 함수에서 알아서 보내도록..

uint8_t __xdata gu8Rx1Size = 0;  // Rx1버퍼에 쌓여있는, 받은 데이타 크기
uint8_t __xdata gu8Rx1RIdx = 0; // Rx1버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
uint8_t __xdata gu8Rx1WIdx = 0; // Rx1버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠

uint8_t __xdata gu8Tx1Size = 0; // Tx1버퍼에 쌓여있는, 보낼 데이타 크기
uint8_t __xdata gu8Tx1RIdx = 0;
uint8_t __xdata gu8Tx1WIdx = 0;

//uint8_t __xdata tx0_idle = TRUE;
//uint8_t __xdata tx1_idle = TRUE;

uint8_t __xdata gu8Uart0RCnt = 0;
uint8_t __xdata gu8Uart0TCnt = 0;
uint8_t __xdata gu8Uart1RCnt = 0;
uint8_t __xdata gu8Uart1TCnt = 0;


void InitialUART0_Timer1(UINT32 u32Baudrate);    //T1M = 1, SMOD = 1
void InitialUART1_Timer3(UINT32 u32Baudrate); //use timer3 as Baudrate generator
void uart_isr_setup(); 

uint8_t chk_uart0();
uint8_t getchar_uart0(uint8_t * apu8Data);
uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data);

uint8_t chk_uart1();
uint8_t getchar_uart1(uint8_t * apu8Data);
uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data);

void uart_setup() 
{
	/*
	   300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600,  115200, 230400
	 */
	InitialUART0_Timer1(115200);
	InitialUART1_Timer3(115200);

	set_ES;
	set_ES_1;

	set_EA;
}

void Uart0Tx_ISR()
{
	// tx0_idle기능을  gu8Tx0Size으로 대치
	clr_TI;	 // clear, putchar_uart0()에서 직접 불린 상태면 gu8Tx0Size==1인데, 이 경우는 무의미 할 수도 있음, 
	if (gu8Tx0Size == 0) {
		return;
	}
	// gu8Tx0Size > 1인 경우는 보내기버퍼에서 한 옥텟이 전송되고 인터럽트가 걸린 것.
	// gu8Tx0Size == 1인 경우는 putchar_uart0()에서 직접 불린 경우일 수도 있음
#if 1
	int i;
	for (i = 0; i< UART0_TX_GAP;i++) {
		nop; nop; nop; nop;
	}
#endif
	SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
	gu8Tx0Size--;
	if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
		gu8Tx0RIdx = 0;
	}
}
#if 0
void SerialPort0_ISR(void) interrupt(4) 
{
	if (RI == 1) {
		clr_RI;
		SBUF = SBUF;
//		SBUF = '1';
	}
	if (TI == 1) {
		clr_TI;
	}
}
#endif
#if 1
void SerialPort0_ISR(void) interrupt(4) 
{
	if (RI == 1) {  /* if reception occur */
		gu8Uart0RCnt++;
		if (gu8Rx0Size < UART0_RX_BUFF_SIZE) {
			pu8UartRx0Buf[gu8Rx0WIdx++] = SBUF;
			gu8Rx0Size++;
			if (gu8Rx0WIdx == UART0_RX_BUFF_SIZE) {
				gu8Rx0WIdx = 0;
			}
		}
		else {
			//수신 버퍼 가득참, 도착한 데이타 버림
		}
		clr_RI;        /* clear reception flag for next reception */
		//riflag = 1; // rx indicating flag인듯,  gu8Rx0Size가 영이 아님으로 확인 가능
	}
	if (TI == 1) {
		gu8Uart0TCnt++;
		Uart0Tx_ISR();
	}
}
#endif

uint8_t chkchar_uart0()
{
	/*
	   수신 버퍼 크기 확인
	 */
	return gu8Rx0Size;
}

uint8_t getchar_uart0(uint8_t * apu8Data)
{
	/*
	   수신 버퍼로부터 한 옥텟을 읽음
	 */
	if (gu8Rx0Size == 0) {
		return 0;
	}
	clr_ES;
	*apu8Data = pu8UartRx0Buf[gu8Rx0RIdx++];
	gu8Rx0Size--;
	if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
		gu8Rx0RIdx = 0;
	}
	set_ES;
	return 1;
}

uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data)
{
	/*
	   수신 버퍼로부터 최대 au8Size 옥텟을 읽음

	 */
	if (gu8Rx0Size == 0) {
		return 0;
	}
	uint8_t i;
	if (gu8Rx0Size < au8Size) {
		au8Size = gu8Rx0Size;
	}
	for (i=0;i<au8Size;i++) {
		*apu8Data++ = pu8UartRx0Buf[gu8Rx0RIdx++];
		if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
			gu8Rx0RIdx = 0;
		}
	}
	gu8Rx0Size -= au8Size;
	return au8Size;
}
void Uart1Tx_ISR()
{
	// tx1_idle기능을  gu8Tx1Size으로 대치
	clr_TI_1;// clear, putchar_uart1()에서 직접 불린 상태면 gu8Tx1Size==1인데, 이 경우는 무의미 할 수도 있음, 
	if (gu8Tx1Size == 0) {
		//gu8BECnt++;
		return;
	}
	//gu8BNECnt++;
	// gu8Tx1Size > 1인 경우는 보내기버퍼에서 한 옥텟이 전송되고 인터럽트가 걸린 것.
	// gu8Tx1Size == 1인 경우는 putchar_uart1()에서 직접 불린 경우일 수도 있음
#ifdef _LINEFI_DOWNLINK_
	int i;
	for (i = 0; i< LINEFI_DOWNLINKE_TX_GAP;i++) {
		nop; nop; nop; nop;
	}
#endif
#ifdef _LINEFI_UPLINK_
#if 0
	int i;
	for (i = 0; i< LINEFI_UPLINKE_TX_GAP;i++) {
		nop; nop; nop; nop;
	}
#endif
#endif

	SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
	gu8Tx1Size--;
#if 0
	if (gu8Tx1RIdx == UART1_TX_BUFF_SIZE) {
		gu8Tx1RIdx = 0;
	}
#endif
	gu8Tx1RIdx &= UART1_TX_BUFF_SIZE_MSK;

}

void SerialPort1_ISR(void) interrupt(15) 
{
	if (RI_1 == 1) {/* if reception occur */
		gu8Uart1RCnt ++;
		if (gu8Rx1Size < UART1_RX_BUFF_SIZE) {
			pu8UartRx1Buf[gu8Rx1WIdx++] = SBUF_1;
			gu8Rx1Size++;
			if (gu8Rx1WIdx == UART1_RX_BUFF_SIZE) {
				gu8Rx1WIdx = 0;
			}
		}
		else {
			//수신 버퍼 가득참, 도착한 데이타 버림
		}
		clr_RI_1;      /* clear reception flag for next reception */
		//riflag = 1; // rx indicating flag인듯,  gu8Rx1Size가 영이 아님으로 확인 가능
	}
	if (TI_1 == 1) {
		gu8Uart1TCnt ++;
		Uart1Tx_ISR();
	}
}

uint8_t chkchar_uart1()
{
	/*
	   수신 버퍼 크기 확인
	 */
	return gu8Rx1Size;
}

uint8_t getchar_uart1(uint8_t * apu8Data)
{
	/*
	   수신 버퍼로부터 한 옥텟을 읽음
	 */
	if (gu8Rx1Size == 0) {
		return 0;
	}
	clr_ES_1;
	*apu8Data = pu8UartRx1Buf[gu8Rx1RIdx++];
	gu8Rx1Size--;
	if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
		gu8Rx1RIdx = 0;
	}
	set_ES_1;
	return 1;
}

uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data)
{
	/*
	   수신 버퍼로부터 최대 au8Size 옥텟을 읽음

	 */
	if (gu8Rx1Size == 0) {
		return 0;
	}
	uint8_t i;
	if (gu8Rx1Size < au8Size) {
		au8Size = gu8Rx1Size;
	}
	for (i=0;i<au8Size;i++) {
		*apu8Data++ = pu8UartRx1Buf[gu8Rx1RIdx++];
		if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
			gu8Rx1RIdx = 0;
		}
	}
	gu8Rx1Size -= au8Size;
	return au8Size;
}

void putchar_uart0(char au8Data)
{
	while (gu8Tx0Size >= UART0_TX_BUFF_SIZE) {
		// blocking until buffer available
		// 전송 버퍼가 1개 빌 때까지 기다림
		nop;
	}

	pu8UartTx0Buf[gu8Tx0WIdx++] = au8Data;
	gu8Tx0Size++;
	if (gu8Tx0WIdx == UART0_TX_BUFF_SIZE) {
		//링버퍼 구현
		gu8Tx0WIdx = 0;
	}
	set_TI;
}

void putchar_uart1(char au8Data)
{
	while (gu8Tx1Size >= UART1_TX_BUFF_SIZE) {
		gu8BFCnt++;
		// blocking until buffer available
		// 전송 버퍼가 1개 빌 때까지 기다림
		nop;
	}
	gu8BNFCnt++;

	clr_ES_1;
	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	gu8Tx1Size++;
#if 0
	if (gu8Tx1WIdx == UART1_TX_BUFF_SIZE) {
		//링버퍼 구현
		gu8Tx1WIdx = 0;
	}
#endif
	gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;

//	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
//	gu8Tx1Size++;
//	gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;

#if 1
	if (gu8Tx1Size == 1) {
		gu8BECnt++;
		// 비어있으면, 지금 넣어서 1이되었으면,  TX를 개시시켜 줘야 함
		set_TI_1;
	}
	else {
		gu8BNECnt++;
	}
#endif
#if 0
	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	gu8Tx1Size++;
	gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;

	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	gu8Tx1Size++;
	gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;

	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	gu8Tx1Size++;
	gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;

	if (gu8Tx1Size == 4) {
		// 비어있으면, 지금 넣어서 1이되었으면,  TX를 개시시켜 줘야 함
		set_TI_1;
	}
#endif
	set_ES_1;
}
#endif
