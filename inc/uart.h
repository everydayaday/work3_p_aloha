#ifdef _USING_UART_ISR_
#ifndef __UART_POLLING__
#define __UART_POLLING__

void  InitialUART0_Timer1(UINT32 u32Baudrate); //T1M = 1, SMOD = 1
void  InitialUART0_Timer3(UINT32 u32Baudrate); //Timer3 as Baudrate, SMOD=1, Prescale=0
void  InitialUART1_Timer3(UINT32 u32Baudrate);
void  Send_Data_To_UART0(UINT8 c);
UINT8 Receive_Data_From_UART0(void);
UINT8 Receive_Data_From_UART0_nb(UINT8 * apu8Tmp);
void  Send_Data_To_UART1(UINT8 c);
UINT8 Receive_Data_From_UART1(void);
UINT8 Receive_Data_From_UART1_nb(UINT8 * apu8Tmp);
void  InitialUART1(UINT32 u32Baudrate);
void uart_setup();

#endif
#else

#ifndef __UART_ISR__
#define __UART_ISR__

#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"

void uart_isr_setup();

void SerialPort0_ISR(void) interrupt(4);
void SerialPort1_ISR(void) interrupt(15);

void putchar_uart0(uint8_t au8Data);
uint8_t chkchar_uart0();
uint8_t getchar_uart0(uint8_t * apu8Data);
uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data);

void putchar_uart1(uint8_t au8Data);
uint8_t chkchar_uart1();
uint8_t getchar_uart1(uint8_t * apu8Data);
uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data);
#endif
#endif
