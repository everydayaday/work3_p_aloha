#include "uart_isr.h"

//#define TRUE 1
//#define FALSE 0
/*
   200~600/1200/2400/4800/9600/14400/19200/28800/38400/57600/115200/230400/460800 / 921600bps 
 */
#define UART0_RX_BUFF_SIZE 16
#define UART0_TX_BUFF_SIZE 16
#define UART1_RX_BUFF_SIZE 16
#define UART1_TX_BUFF_SIZE 16

uint8_t __xdata pu8UartRx0Buf[UART0_RX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};
uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};

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

void putchar(char au8Data);


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
}

void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
{
	P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit

	SCON_1 = 0x50;   	//UART1 Mode1,REN_1=1,TI_1=1
						//	SCON_1 = 0x58;   	//UART1 Mode1,REN_1=1,TI_1=1 TB8=1
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

void uart_isr_setup() 
{
	/*
	   300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600,  115200, 230400
	 */
	InitialUART0_Timer1(115200);
	InitialUART1_Timer3(230400);

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
	for (i = 0; i< 1000;i++) {
		nop; nop; nop; nop;
	}
#endif
	SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
	gu8Tx0Size--;
	if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
		gu8Tx0RIdx = 0;
	}
}

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
		return;
	}
	// gu8Tx1Size > 1인 경우는 보내기버퍼에서 한 옥텟이 전송되고 인터럽트가 걸린 것.
	// gu8Tx1Size == 1인 경우는 putchar_uart1()에서 직접 불린 경우일 수도 있음
#if 1
	int i;
	for (i = 0; i< 1000;i++) {
		nop; nop; nop; nop;
	}
#endif
	SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
	gu8Tx1Size--;
	if (gu8Tx1RIdx == UART1_TX_BUFF_SIZE) {
		gu8Tx1RIdx = 0;
	}
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
		// blocking until buffer available
		// 전송 버퍼가 1개 빌 때까지 기다림
		nop;
	}

	pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	gu8Tx1Size++;
	if (gu8Tx1WIdx == UART1_TX_BUFF_SIZE) {
		//링버퍼 구현
		gu8Tx1WIdx = 0;
	}
	set_TI_1;
}
