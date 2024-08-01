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
