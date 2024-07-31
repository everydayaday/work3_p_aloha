#include "uart.h"

#define TRUE 1
#define FALSE 0
/*
200~600/1200/2400/4800/9600/14400/19200/28800/38400/57600/115200/230400/460800 / 921600bps 
*/
#define UART0_TX_BUFF_SIZE 16
#define UART0_TX_BUFF_SIZE 16
#define UART1_RX_BUFF_SIZE 16
#define UART1_RX_BUFF_SIZE 16

uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartRx0Buf[UART1_RX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};

uint8_t __xdata gu8Rx0Len = 0;  // Rx0버퍼에 쌓여있는, 받은 데이타 크기
uint8_t __xdata gu8Rx0RIdx = 0; // Rx0버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
uint8_t __xdata gu8Rx0WIdx = 0; // Rx0버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠

uint8_t __xdata gu8Tx0Len = 0;  // Tx0버퍼에 쌓여있는, 보낼 데이타 크기
uint8_t __xdata gu8Tx0RIdx = 0; // Tx0버퍼에서 읽기 인덱스, 이부문을 읽어서 SBUF에서 써서 보내기
uint8_t __xdata gu8Tx0WIdx = 0; // Tx0버퍼에서 쓰기 인덱스, 이부문에 써서 인터럽트 함수에서 알아서 보내도록..

uint8_t __xdata gu8Rx1Len = 0;  // Rx1버퍼에 쌓여있는, 받은 데이타 크기
uint8_t __xdata gu8Rx1RIdx = 0; // Rx1버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
uint8_t __xdata gu8Rx1WIdx = 0; // Rx1버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠

uint8_t __xdata gu8Tx1Len = 0; // Tx1버퍼에 쌓여있는, 보낼 데이타 크기
uint8_t __xdata gu8Tx1RIdx = 0;
uint8_t __xdata gu8Tx1WIdx = 0;

uint8_t __xdata tx0_idle = TRUE;
uint8_t __xdata tx1_idle = TRUE;

void uart_setup() 
{
	/*
300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600,  115200
	*/
  InitialUART0_Timer1(19200);
  InitialUART1_Timer3(19200);
  clr_TI;
  clr_TI_1;
  set_ES;
  set_EA;
}

void Uart0Tx_ISR()
{
  if (tx0_idle) {
	  return;
  }

  if (gu8Tx0Len > 0) {
    TI = 0;  // clear
    SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
    gu8Tx0Len--;
    if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
      gu8Tx0RIdx = 0;
    }
  } else {
    // drain tx buffer
    TI = 0;  // clear
    tx0_idle = TRUE;
  }
}


void SerialPort0_ISR(void) interrupt(4) 
{
	if (RI == 1) { /* if reception occur */
		clr_RI;      /* clear reception flag for next reception */
		if (gu8Rx0Len != UART0_RX_BUFF_SIZE) {
			pu8UartRx0Buf[gu8Rx0WIdx++] = SBUF;
			gu8Rx0Len++;
			if (gu8Rx0WIdx == UART0_RX_BUFF_SIZE) {
				gu8Rx0WIdx = 0;
			}
		}
		else {
			//수신 버퍼 가득참, 도착한 데이타 버림
		}
		//riflag = 1; // rx indicating flag인듯,  gu8Rx0Len가 영이 아님으로 확인 가능
	}
	Uart0Tx_ISR();
}

int putchar(int c) 
{

  while (gu8Tx0Len >= UART0_TX_BUFF_SIZE) {
    // blocking until buffer available
  }

  pu8UartTx0Buf[gu8Tx0WIdx++] = c;
  gu8Tx0Len++;
  if (gu8Tx0WIdx == UART0_TX_BUFF_SIZE) {
    gu8Tx0WIdx = 0;
  }

  if (tx0_idle) {
	  // 보낼 데이타가 없는 상태에서는 전송버퍼에 넣고 전송을 개시해야함,
	  // 이미 보낼 데이타가 있는 상태에서는 저절로 순차적으로 보내짐
    tx0_idle = FALSE;
    Uart0Tx_ISR();
  }

  return c;
}

#if 1
void Uart1Tx_ISR()
{
  if (tx1_idle) return;
  if (gu8Tx1Len > 0) {
    TI_1 = 0;  // clear
    SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
    gu8Tx1Len--;
    if (gu8Tx1RIdx == UART1_TX_BUFF_SIZE) {
      gu8Tx1RIdx = 0;
    }
  } else {
    // drain tx buffer
    TI_1 = 0;  // clear
    tx1_idle = TRUE;
  }
}

void SerialPort1_ISR(void) interrupt(15) 
{
	if (RI_1 == 1) { /* if reception occur */
		clr_RI_1;      /* clear reception flag for next reception */
		if (gu8Rx1Len != UART1_RX_BUFF_SIZE) {
			pu8UartRx1Buf[gu8Rx1WIdx++] = SBUF_1;
			gu8Rx1Len++;
			if (gu8Rx1WIdx == UART1_RX_BUFF_SIZE) {
				gu8Rx1WIdx = 0;
			}
		}
		else {
			//수신 버퍼 가득참, 도착한 데이타 버림
		}
		//riflag = 1; // rx indicating flag인듯,  gu8Rx1Len가 영이 아님으로 확인 가능
	}
	Uart1Tx_ISR();
}

#endif
