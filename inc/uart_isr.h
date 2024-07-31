#ifndef __UART_ISR__
#define __UART_ISR__
void uart_setup();
void Uart0Tx_ISR();
//void SerialPort0_ISR(void) interrupt(4) ;
void Uart1Tx_ISR();
//void SerialPort1_ISR(void) interrupt(15);
#endif
