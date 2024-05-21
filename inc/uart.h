#ifndef __UART__
#define __UART__

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
