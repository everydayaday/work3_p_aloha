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

UINT8 Receive_Data_From_UART0(void)
{
	UINT8 c;

	while (!RI);
	c = SBUF;
	RI = 0;
	return (c);
}

UINT8 Receive_Data_From_UART0_nb(UINT8 * apu8Tmp)
{
	if (RI) {
		*apu8Tmp = SBUF;
		RI = 0;
		return 1;
	}
	return 0;
}

void Send_Data_To_UART0 (UINT8 c)
{
	TI = 0;
	SBUF = c;
	while(TI==0);
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

UINT8 Receive_Data_From_UART1(void)
{
	UINT8 c;

	while (!RI_1);
	c = SBUF_1;
	RI_1 = 0;
	return (c);
}

UINT8 Receive_Data_From_UART1_nb(UINT8 * apu8Tmp)
{
	if (RI_1) {
		*apu8Tmp = SBUF_1;
		RI_1 = 0;
		return 1;
	}
	return 0;
}

void Send_Data_To_UART1 (UINT8 c)
{
	TI_1 = 0;
	SBUF_1 = c;
	while(TI_1==0);
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
void SerialPort0_ISR(void) interrupt 4
{
	if (RI==1)
	{                                       /* if reception occur */
		clr_RI;                             /* clear reception flag for next reception */
		UART_BUFFER[u16CNT] = SBUF;
		u16CNT ++;
		riflag =1;
	}
	if(TI==1)
	{
		clr_TI;                             /* if emission occur */
	}
}

/************************************************************************************************************
 *    Main function
 ************************************************************************************************************/
void main (void)
{
	P12_PushPull_Mode;
	P06_Quasi_Mode;
	P07_Quasi_Mode;

	SCON = 0xD0;			// Special setting the mode 3 and
	TMOD |= 0x20;    	//Timer1 Mode1

	set_SMOD;        	//UART0 Double Rate Enable
	set_T1M;
	clr_BRCK;        	//Serial port 0 baud rate clock source = Timer1
	TH1 = 256 - (1000000/115200+1);               /*16 MHz */
	set_TR1;

	set_RB8;					//This bit is for setting the stop bit 2 high/low status,

	clr_TI;
	set_ES;           //enable UART interrupt
	set_EA;           //enable global interrupt

	while(1)
	{
		if (riflag)
		{
			P12 = ~P12;		//In debug mode check UART_BUFFER[u16CNT] to check receive data
			riflag = 0;
		}
	}

}

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

void SerialPort1_ISR(void) interrupt 15
{
	if (RI_1==1)
	{                                       /* if reception occur */
		clr_RI_1;                             /* clear reception flag for next reception */
		UART_BUFFER[u16CNT] = SBUF_1;
		u16CNT ++;
		riflag =1;
	}
	if(TI_1==1)
	{
		clr_TI_1;                             /* if emission occur */
	}
}


/****************************************************************************************************************
 * FUNCTION_PURPOSE: Main function

 !!! N76E003 UART1 pin also occupied by debug pin,
 please remove Nu-link or not in debug mode to test UART1 function.

 External UART1 connect also disturb debug download

 ***************************************************************************************************************/
void main (void)
{
	P12_PushPull_Mode;		// For I/O toggle display

#if 0
	//for Simple use UART1 transmit out
	InitialUART1_Timer3(115200);
	while(1)
		Send_Data_To_UART1(0x55);

#else
	// For interrupt setting check receive
	InitialUART1_Timer3(115200);
	set_ES_1;					//For interrupt enable
	set_EA;

	while(1)
	{
		if (riflag)
		{
			P12 = ~ P12;			//Receive each byte P12 toggle, never work under debug mode
			riflag = 0;
		}
	}

#endif



}
#endif
#if 1

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

#define UART_INDEX		(1)
#define UART_BAUDRATE	(115200)

uint8_t uart_data;
bit_t uart_ri_flag;

#if UART_INDEX
void SerialPort1_ISR(void) __interrupt 15
{
	if (RI_1) {					// uart rx done
		clr_RI_1;				// clear rx flag
		uart_data = SBUF_1;
		uart_ri_flag = 1;
	}
	if(TI_1) {					// uart tx done
		clr_TI_1;				// clear tx flag
	}
}
#else
void SerialPort0_ISR(void) __interrupt 4
{
	if (RI) {					// uart rx done
		clr_RI;					// clear rx flag
		uart_data = SBUF;
		uart_ri_flag = 1;
	}
	if(TI) {					// uart tx done
		clr_TI;					// clear tx flag
	}
}
#endif

void main(void)
{
#if UART_INDEX
	InitialUART1_Timer3(UART_BAUDRATE);
	set_ES_1;					// enable uart interrupt
#else
	InitialUART0_Timer3(UART_BAUDRATE);
	set_ES;						// enable uart interrupt
#endif
	set_EA;

	while(1) {
		if (uart_ri_flag) {
			uart_ri_flag = 0;
#if UART_INDEX
			Send_Data_To_UART1(uart_data);
#else
			Send_Data_To_UART0(uart_data);
#endif
		}
	}
}
#endif
