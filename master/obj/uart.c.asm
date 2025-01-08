;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getstr_uart1_PARM_2
	.globl _getstr_uart0_PARM_2
	.globl _Uart1Tx_ISR
	.globl _Uart0Tx_ISR
	.globl _InitialUART1_Timer3
	.globl _InitialUART0_Timer1
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWK
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _gu8Uart1TCnt
	.globl _gu8Uart1RCnt
	.globl _gu8Uart0TCnt
	.globl _gu8Uart0RCnt
	.globl _gu8Tx1WIdx
	.globl _gu8Tx1RIdx
	.globl _gu8Tx1Size
	.globl _gu8Rx1WIdx
	.globl _gu8Rx1RIdx
	.globl _gu8Rx1Size
	.globl _gu8Tx0WIdx
	.globl _gu8Tx0RIdx
	.globl _gu8Tx0Size
	.globl _gu8Rx0WIdx
	.globl _gu8Rx0RIdx
	.globl _gu8Rx0Size
	.globl _pu8UartTx1Buf
	.globl _pu8UartRx1Buf
	.globl _pu8UartTx0Buf
	.globl _pu8UartRx0Buf
	.globl _gpcMC22B
	.globl _gpc2B2MC
	.globl _gu8BECnt
	.globl _gu8BNECnt
	.globl _gu8BFCnt
	.globl _gu8BNFCnt
	.globl _gu8UART
	.globl _InitialUART0_Timer1
	.globl _InitialUART0_Timer3
	.globl _InitialUART1_Timer3
	.globl _set_linefi_uplink_speed
	.globl _putchar
	.globl _uart_setup
	.globl _SerialPort0_ISR
	.globl _chkchar_uart0
	.globl _getchar_uart0
	.globl _getstr_uart0
	.globl _SerialPort1_ISR
	.globl _chkchar_uart1
	.globl _getchar_uart1
	.globl _getstr_uart1
	.globl _putchar_uart0
	.globl _putchar_uart1
	.globl _preamble
	.globl _putchar_manchester
	.globl _chk_manchester
	.globl _conv_manchester2nibble
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_RCTRIM0	=	0x0084
_RCTRIM1	=	0x0085
_RWK	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3S	=	0x00ac
_P3M2	=	0x00ad
_P3SR	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0S	=	0x00b1
_P0M2	=	0x00b2
_P0SR	=	0x00b2
_P1M1	=	0x00b3
_P1S	=	0x00b3
_P1M2	=	0x00b4
_P1SR	=	0x00b4
_P2S	=	0x00b5
_IPH	=	0x00b7
_PWMINTC	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_PWM4H	=	0x00c4
_RL3	=	0x00c5
_PWM5H	=	0x00c5
_RH3	=	0x00c6
_PIOCON1	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_PWM4L	=	0x00cc
_TH2	=	0x00cd
_PWM5L	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWMPH	=	0x00d1
_PWM0H	=	0x00d2
_PWM1H	=	0x00d3
_PWM2H	=	0x00d4
_PWM3H	=	0x00d5
_PNP	=	0x00d6
_FBD	=	0x00d7
_PWMCON0	=	0x00d8
_PWMPL	=	0x00d9
_PWM0L	=	0x00da
_PWM1L	=	0x00db
_PWM2L	=	0x00dc
_PWM3L	=	0x00dd
_PIOCON0	=	0x00de
_PWMCON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPCR2	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PDTEN	=	0x00f9
_PDTCNT	=	0x00fa
_PMEN	=	0x00fb
_PMD	=	0x00fc
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_gu8UART::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_getstr_uart0_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_getstr_uart1_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_gu8BNFCnt::
	.ds 1
_gu8BFCnt::
	.ds 1
_gu8BNECnt::
	.ds 1
_gu8BECnt::
	.ds 1
_gpc2B2MC::
	.ds 4
_gpcMC22B::
	.ds 16
_pu8UartRx0Buf::
	.ds 16
_pu8UartTx0Buf::
	.ds 16
_pu8UartRx1Buf::
	.ds 16
_pu8UartTx1Buf::
	.ds 16
_gu8Rx0Size::
	.ds 1
_gu8Rx0RIdx::
	.ds 1
_gu8Rx0WIdx::
	.ds 1
_gu8Tx0Size::
	.ds 1
_gu8Tx0RIdx::
	.ds 1
_gu8Tx0WIdx::
	.ds 1
_gu8Rx1Size::
	.ds 1
_gu8Rx1RIdx::
	.ds 1
_gu8Rx1WIdx::
	.ds 1
_gu8Tx1Size::
	.ds 1
_gu8Tx1RIdx::
	.ds 1
_gu8Tx1WIdx::
	.ds 1
_gu8Uart0RCnt::
	.ds 1
_gu8Uart0TCnt::
	.ds 1
_gu8Uart1RCnt::
	.ds 1
_gu8Uart1TCnt::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	../lib_master/uart.c:12: UINT8 __xdata gu8BNFCnt = 0;
	mov	dptr,#_gu8BNFCnt
	clr	a
	movx	@dptr,a
;	../lib_master/uart.c:13: UINT8 __xdata gu8BFCnt = 0;
	mov	dptr,#_gu8BFCnt
	movx	@dptr,a
;	../lib_master/uart.c:14: UINT8 __xdata gu8BNECnt = 0;
	mov	dptr,#_gu8BNECnt
	movx	@dptr,a
;	../lib_master/uart.c:15: UINT8 __xdata gu8BECnt = 0;
	mov	dptr,#_gu8BECnt
	movx	@dptr,a
;	../lib_master/uart.c:17: const char __xdata  gpc2B2MC[] = {// 2Bits to Manchester Code
	mov	dptr,#_gpc2B2MC
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_gpc2B2MC + 0x0001)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_gpc2B2MC + 0x0002)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_gpc2B2MC + 0x0003)
	dec	a
	movx	@dptr,a
;	../lib_master/uart.c:24: const char __xdata  gpcMC22B[16] = {// manchester code to 2Bits
	mov	dptr,#_gpcMC22B
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0006)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0007)
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x0009)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000b)
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_gpcMC22B + 0x000f)
	movx	@dptr,a
;	../lib_master/uart.c:363: uint8_t __xdata pu8UartRx0Buf[UART0_RX_BUFF_SIZE] = {0};
	mov	dptr,#_pu8UartRx0Buf
	clr	a
	movx	@dptr,a
;	../lib_master/uart.c:364: uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
	mov	dptr,#_pu8UartTx0Buf
	movx	@dptr,a
;	../lib_master/uart.c:365: uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};
	mov	dptr,#_pu8UartRx1Buf
	movx	@dptr,a
;	../lib_master/uart.c:367: uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};//  10마이크로초보다 큰 듯.. --> 비슷함..ㅠㅠ
	mov	dptr,#_pu8UartTx1Buf
	movx	@dptr,a
;	../lib_master/uart.c:369: uint8_t __xdata gu8Rx0Size = 0;  // Rx0버퍼에 쌓여있는, 받은 데이타 크기
	mov	dptr,#_gu8Rx0Size
	movx	@dptr,a
;	../lib_master/uart.c:370: uint8_t __xdata gu8Rx0RIdx = 0; // Rx0버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
	mov	dptr,#_gu8Rx0RIdx
	movx	@dptr,a
;	../lib_master/uart.c:371: uint8_t __xdata gu8Rx0WIdx = 0; // Rx0버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
	mov	dptr,#_gu8Rx0WIdx
	movx	@dptr,a
;	../lib_master/uart.c:373: uint8_t __xdata gu8Tx0Size = 0;  // Tx0버퍼에 쌓여있는, 보낼 데이타 크기
	mov	dptr,#_gu8Tx0Size
	movx	@dptr,a
;	../lib_master/uart.c:374: uint8_t __xdata gu8Tx0RIdx = 0; // Tx0버퍼에서 읽기 인덱스, 이부문을 읽어서 SBUF에서 써서 보내기
	mov	dptr,#_gu8Tx0RIdx
	movx	@dptr,a
;	../lib_master/uart.c:375: uint8_t __xdata gu8Tx0WIdx = 0; // Tx0버퍼에서 쓰기 인덱스, 이부문에 써서 인터럽트 함수에서 알아서 보내도록..
	mov	dptr,#_gu8Tx0WIdx
	movx	@dptr,a
;	../lib_master/uart.c:377: uint8_t __xdata gu8Rx1Size = 0;  // Rx1버퍼에 쌓여있는, 받은 데이타 크기
	mov	dptr,#_gu8Rx1Size
	movx	@dptr,a
;	../lib_master/uart.c:378: uint8_t __xdata gu8Rx1RIdx = 0; // Rx1버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
	mov	dptr,#_gu8Rx1RIdx
	movx	@dptr,a
;	../lib_master/uart.c:379: uint8_t __xdata gu8Rx1WIdx = 0; // Rx1버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
	mov	dptr,#_gu8Rx1WIdx
	movx	@dptr,a
;	../lib_master/uart.c:381: uint8_t __xdata gu8Tx1Size = 0; // Tx1버퍼에 쌓여있는, 보낼 데이타 크기
	mov	dptr,#_gu8Tx1Size
	movx	@dptr,a
;	../lib_master/uart.c:382: uint8_t __xdata gu8Tx1RIdx = 0;
	mov	dptr,#_gu8Tx1RIdx
	movx	@dptr,a
;	../lib_master/uart.c:383: uint8_t __xdata gu8Tx1WIdx = 0;
	mov	dptr,#_gu8Tx1WIdx
	movx	@dptr,a
;	../lib_master/uart.c:388: uint8_t __xdata gu8Uart0RCnt = 0;
	mov	dptr,#_gu8Uart0RCnt
	movx	@dptr,a
;	../lib_master/uart.c:389: uint8_t __xdata gu8Uart0TCnt = 0;
	mov	dptr,#_gu8Uart0TCnt
	movx	@dptr,a
;	../lib_master/uart.c:390: uint8_t __xdata gu8Uart1RCnt = 0;
	mov	dptr,#_gu8Uart1RCnt
	movx	@dptr,a
;	../lib_master/uart.c:391: uint8_t __xdata gu8Uart1TCnt = 0;
	mov	dptr,#_gu8Uart1TCnt
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'InitialUART0_Timer1'
;------------------------------------------------------------
;u32Baudrate               Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:46: void InitialUART0_Timer1(UINT32 u32Baudrate)    //T1M = 1, SMOD = 1
;	-----------------------------------------
;	 function InitialUART0_Timer1
;	-----------------------------------------
_InitialUART0_Timer1:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../lib_master/uart.c:48: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	anl	_P0M1,#0xbf
	anl	_P0M2,#0xbf
;	../lib_master/uart.c:49: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	anl	_P0M1,#0x7f
	anl	_P0M2,#0x7f
;	../lib_master/uart.c:51: SCON = 0x50;     	//UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
;	../lib_master/uart.c:52: TMOD |= 0x20;    	//Timer1 Mode1
	orl	_TMOD,#0x20
;	../lib_master/uart.c:54: set_SMOD;        	//UART0 Double Rate Enable
	orl	_PCON,#0x80
;	../lib_master/uart.c:55: set_T1M;
	orl	_CKCON,#0x10
;	../lib_master/uart.c:56: clr_BRCK;        	//Serial port 0 baud rate clock source = Timer1
	anl	_T3CON,#0xdf
;	../lib_master/uart.c:62: TH1 = 256 - (1037500/u32Baudrate);         		     /*16.6 MHz */
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0xd4bc
	mov	b,#0x0f
	clr	a
	lcall	__divulong
	mov	r4,dpl
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
;	../lib_master/uart.c:64: set_TR1;
;	assignBit
	setb	_TR1
;	../lib_master/uart.c:65: set_TI;						//For printf function must setting TI = 1
;	assignBit
	setb	_TI
;	../lib_master/uart.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitialUART0_Timer3'
;------------------------------------------------------------
;u32Baudrate               Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:69: void InitialUART0_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
;	-----------------------------------------
;	 function InitialUART0_Timer3
;	-----------------------------------------
_InitialUART0_Timer3:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../lib_master/uart.c:71: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	anl	_P0M1,#0xbf
	anl	_P0M2,#0xbf
;	../lib_master/uart.c:72: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit	
	anl	_P0M1,#0x7f
	anl	_P0M2,#0x7f
;	../lib_master/uart.c:74: SCON = 0x50;     //UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
;	../lib_master/uart.c:75: set_SMOD;        //UART0 Double Rate Enable
	orl	_PCON,#0x80
;	../lib_master/uart.c:76: T3CON &= 0xF8;   //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
	anl	_T3CON,#0xf8
;	../lib_master/uart.c:77: set_BRCK;        //UART0 baud rate clock source = Timer3
	orl	_T3CON,#0x20
;	../lib_master/uart.c:84: RH3    = HIBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0xd4bc
	mov	b,#0x0f
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	clr	c
	subb	a,r4
	clr	a
	subb	a,r5
	mov	r1,a
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	mov	_RH3,r1
;	../lib_master/uart.c:85: RL3    = LOBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_RL3,r4
;	../lib_master/uart.c:87: set_TR3;         //Trigger Timer3
	orl	_T3CON,#0x08
;	../lib_master/uart.c:88: set_TI;					 //For printf function must setting TI = 1
;	assignBit
	setb	_TI
;	../lib_master/uart.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitialUART1_Timer3'
;------------------------------------------------------------
;u32Baudrate               Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:91: void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
;	-----------------------------------------
;	 function InitialUART1_Timer3
;	-----------------------------------------
_InitialUART1_Timer3:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../lib_master/uart.c:93: P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	anl	_P0M1,#0xfb
	anl	_P0M2,#0xfb
;	../lib_master/uart.c:94: P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
	anl	_P1M1,#0xbf
	anl	_P1M2,#0xbf
;	../lib_master/uart.c:97: SCON_1 = 0x58;   	//UART1 Mode1,REN_1=1,TI_1=1 TB8=1
	mov	_SCON_1,#0x58
;	../lib_master/uart.c:98: T3CON = 0x08;   	//T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
	mov	_T3CON,#0x08
;	../lib_master/uart.c:99: clr_BRCK;
	anl	_T3CON,#0xdf
;	../lib_master/uart.c:106: RH3    = HIBYTE(65536 - (1037500/u32Baudrate));  			/*16.6 MHz */
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0xd4bc
	mov	b,#0x0f
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	clr	c
	subb	a,r4
	clr	a
	subb	a,r5
	mov	r1,a
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	mov	_RH3,r1
;	../lib_master/uart.c:107: RL3    = LOBYTE(65536 - (1037500/u32Baudrate));				/*16.6 MHz */
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_RL3,r4
;	../lib_master/uart.c:109: set_TR3;         //Trigger Timer3
	orl	_T3CON,#0x08
;	../lib_master/uart.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_linefi_uplink_speed'
;------------------------------------------------------------
;u32Baudrate               Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:112: void set_linefi_uplink_speed(UINT32 u32Baudrate)
;	-----------------------------------------
;	 function set_linefi_uplink_speed
;	-----------------------------------------
_set_linefi_uplink_speed:
;	../lib_master/uart.c:114: return InitialUART1_Timer3(u32Baudrate);
;	../lib_master/uart.c:115: }
	ljmp	_InitialUART1_Timer3
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:118: int putchar (int c) 
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r6,dpl
;	../lib_master/uart.c:120: if (gu8UART == 0)  {
	mov	a,_gu8UART
	jnz	00102$
;	../lib_master/uart.c:121: putchar_uart0(c);
	mov	dpl,r6
	lcall	_putchar_uart0
	sjmp	00103$
00102$:
;	../lib_master/uart.c:124: putchar_uart1(c);
	mov	dpl,r6
	lcall	_putchar_uart1
00103$:
;	../lib_master/uart.c:126: return 0;
	mov	dptr,#0x0000
;	../lib_master/uart.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_setup'
;------------------------------------------------------------
;	../lib_master/uart.c:406: void uart_setup() 
;	-----------------------------------------
;	 function uart_setup
;	-----------------------------------------
_uart_setup:
;	../lib_master/uart.c:411: InitialUART0_Timer1(115200);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_InitialUART0_Timer1
;	../lib_master/uart.c:412: InitialUART1_Timer3(115200);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_InitialUART1_Timer3
;	../lib_master/uart.c:414: set_ES;
;	assignBit
	setb	_ES
;	../lib_master/uart.c:415: set_ES_1;
	orl	_EIE1,#0x01
;	../lib_master/uart.c:417: set_EA;
;	assignBit
	setb	_EA
;	../lib_master/uart.c:418: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart0Tx_ISR'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	../lib_master/uart.c:420: void Uart0Tx_ISR()
;	-----------------------------------------
;	 function Uart0Tx_ISR
;	-----------------------------------------
_Uart0Tx_ISR:
;	../lib_master/uart.c:423: clr_TI;	 // clear, putchar_uart0()에서 직접 불린 상태면 gu8Tx0Size==1인데, 이 경우는 무의미 할 수도 있음, 
;	assignBit
	clr	_TI
;	../lib_master/uart.c:424: if (gu8Tx0Size == 0) {
	mov	dptr,#_gu8Tx0Size
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00102$
;	../lib_master/uart.c:425: return;
	ret
00102$:
;	../lib_master/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
	mov	r5,#0x64
	mov	r6,#0x00
00108$:
;	../lib_master/uart.c:432: nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	mov	a,r5
	add	a,#0xff
	mov	r3,a
	mov	a,r6
	addc	a,#0xff
	mov	r4,a
	mov	ar5,r3
	mov	ar6,r4
;	../lib_master/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
	mov	a,r3
	orl	a,r4
	jnz	00108$
;	../lib_master/uart.c:435: SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
	mov	dptr,#_gu8Tx0RIdx
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_pu8UartTx0Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartTx0Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF,a
;	../lib_master/uart.c:436: gu8Tx0Size--;
	mov	a,r7
	dec	a
	mov	dptr,#_gu8Tx0Size
	movx	@dptr,a
;	../lib_master/uart.c:437: if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
	mov	dptr,#_gu8Tx0RIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00109$
;	../lib_master/uart.c:438: gu8Tx0RIdx = 0;
	mov	dptr,#_gu8Tx0RIdx
	clr	a
	movx	@dptr,a
00109$:
;	../lib_master/uart.c:440: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPort0_ISR'
;------------------------------------------------------------
;	../lib_master/uart.c:455: void SerialPort0_ISR(void) interrupt(4) 
;	-----------------------------------------
;	 function SerialPort0_ISR
;	-----------------------------------------
_SerialPort0_ISR:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	../lib_master/uart.c:457: if (RI == 1) {  /* if reception occur */
	jnb	_RI,00106$
;	../lib_master/uart.c:458: gu8Uart0RCnt++;
	mov	dptr,#_gu8Uart0RCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:459: if (gu8Rx0Size < UART0_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00128$
00128$:
	jnc	00104$
;	../lib_master/uart.c:460: pu8UartRx0Buf[gu8Rx0WIdx++] = SBUF;
	mov	dptr,#_gu8Rx0WIdx
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
	mov	a,r7
	add	a,#_pu8UartRx0Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx0Buf >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	../lib_master/uart.c:461: gu8Rx0Size++;
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:462: if (gu8Rx0WIdx == UART0_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx0WIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00104$
;	../lib_master/uart.c:463: gu8Rx0WIdx = 0;
	mov	dptr,#_gu8Rx0WIdx
	clr	a
	movx	@dptr,a
00104$:
;	../lib_master/uart.c:469: clr_RI;        /* clear reception flag for next reception */
;	assignBit
	clr	_RI
00106$:
;	../lib_master/uart.c:472: if (TI == 1) {
	jnb	_TI,00109$
;	../lib_master/uart.c:473: gu8Uart0TCnt++;
	mov	dptr,#_gu8Uart0TCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:474: Uart0Tx_ISR();
	mov	psw,#0x00
	lcall	_Uart0Tx_ISR
	mov	psw,#0x08
00109$:
;	../lib_master/uart.c:476: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'chkchar_uart0'
;------------------------------------------------------------
;	../lib_master/uart.c:479: uint8_t chkchar_uart0()
;	-----------------------------------------
;	 function chkchar_uart0
;	-----------------------------------------
_chkchar_uart0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../lib_master/uart.c:484: return gu8Rx0Size;
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
;	../lib_master/uart.c:485: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_uart0'
;------------------------------------------------------------
;apu8Data                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:487: uint8_t getchar_uart0(uint8_t * apu8Data)
;	-----------------------------------------
;	 function getchar_uart0
;	-----------------------------------------
_getchar_uart0:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../lib_master/uart.c:492: if (gu8Rx0Size == 0) {
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
;	../lib_master/uart.c:493: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	../lib_master/uart.c:495: clr_ES;
;	assignBit
	clr	_ES
;	../lib_master/uart.c:496: *apu8Data = pu8UartRx0Buf[gu8Rx0RIdx++];
	mov	dptr,#_gu8Rx0RIdx
	movx	a,@dptr
	mov	r4,a
	inc	a
	movx	@dptr,a
	mov	a,r4
	add	a,#_pu8UartRx0Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx0Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../lib_master/uart.c:497: gu8Rx0Size--;
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	../lib_master/uart.c:498: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx0RIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00104$
;	../lib_master/uart.c:499: gu8Rx0RIdx = 0;
	mov	dptr,#_gu8Rx0RIdx
	clr	a
	movx	@dptr,a
00104$:
;	../lib_master/uart.c:501: set_ES;
;	assignBit
	setb	_ES
;	../lib_master/uart.c:502: return 1;
	mov	dpl,#0x01
;	../lib_master/uart.c:503: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr_uart0'
;------------------------------------------------------------
;apu8Data                  Allocated with name '_getstr_uart0_PARM_2'
;au8Size                   Allocated to registers r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	../lib_master/uart.c:505: uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data)
;	-----------------------------------------
;	 function getstr_uart0
;	-----------------------------------------
_getstr_uart0:
	mov	r7,dpl
;	../lib_master/uart.c:511: if (gu8Rx0Size == 0) {
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
	mov	r6,a
;	../lib_master/uart.c:512: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	../lib_master/uart.c:515: if (gu8Rx0Size < au8Size) {
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00117$
;	../lib_master/uart.c:516: au8Size = gu8Rx0Size;
	mov	ar7,r6
;	../lib_master/uart.c:518: for (i=0;i<au8Size;i++) {
00117$:
	mov	r4,_getstr_uart0_PARM_2
	mov	r5,(_getstr_uart0_PARM_2 + 1)
	mov	r6,(_getstr_uart0_PARM_2 + 2)
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r3
	subb	a,r7
	jnc	00107$
;	../lib_master/uart.c:519: *apu8Data++ = pu8UartRx0Buf[gu8Rx0RIdx++];
	mov	dptr,#_gu8Rx0RIdx
	movx	a,@dptr
	mov	r2,a
	inc	a
	movx	@dptr,a
	mov	a,r2
	add	a,#_pu8UartRx0Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx0Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	../lib_master/uart.c:520: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx0RIdx
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x10,00110$
;	../lib_master/uart.c:521: gu8Rx0RIdx = 0;
	mov	dptr,#_gu8Rx0RIdx
	clr	a
	movx	@dptr,a
00110$:
;	../lib_master/uart.c:518: for (i=0;i<au8Size;i++) {
	inc	r3
	sjmp	00109$
00107$:
;	../lib_master/uart.c:524: gu8Rx0Size -= au8Size;
	mov	dptr,#_gu8Rx0Size
	movx	a,@dptr
	clr	c
	subb	a,r7
	movx	@dptr,a
;	../lib_master/uart.c:525: return au8Size;
	mov	dpl,r7
;	../lib_master/uart.c:526: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1Tx_ISR'
;------------------------------------------------------------
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	../lib_master/uart.c:527: void Uart1Tx_ISR()
;	-----------------------------------------
;	 function Uart1Tx_ISR
;	-----------------------------------------
_Uart1Tx_ISR:
;	../lib_master/uart.c:530: clr_TI_1;// clear, putchar_uart1()에서 직접 불린 상태면 gu8Tx1Size==1인데, 이 경우는 무의미 할 수도 있음, 
;	assignBit
	clr	_TI_1
;	../lib_master/uart.c:531: if (gu8Tx1Size == 0) {
	mov	dptr,#_gu8Tx1Size
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00102$
;	../lib_master/uart.c:533: return;
	ret
00102$:
;	../lib_master/uart.c:540: for (i = 0; i< LINEFI_DOWNLINKE_TX_GAP;i++) {
	mov	r5,#0x64
	mov	r6,#0x00
00106$:
;	../lib_master/uart.c:541: nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	mov	a,r5
	add	a,#0xff
	mov	r3,a
	mov	a,r6
	addc	a,#0xff
	mov	r4,a
	mov	ar5,r3
	mov	ar6,r4
;	../lib_master/uart.c:540: for (i = 0; i< LINEFI_DOWNLINKE_TX_GAP;i++) {
	mov	a,r3
	orl	a,r4
	jnz	00106$
;	../lib_master/uart.c:553: SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
	mov	dptr,#_gu8Tx1RIdx
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_pu8UartTx1Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartTx1Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF_1,a
;	../lib_master/uart.c:554: gu8Tx1Size--;
	mov	a,r7
	dec	a
	mov	dptr,#_gu8Tx1Size
	movx	@dptr,a
;	../lib_master/uart.c:560: gu8Tx1RIdx &= UART1_TX_BUFF_SIZE_MSK;
	mov	dptr,#_gu8Tx1RIdx
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	../lib_master/uart.c:562: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPort1_ISR'
;------------------------------------------------------------
;	../lib_master/uart.c:564: void SerialPort1_ISR(void) interrupt(15) 
;	-----------------------------------------
;	 function SerialPort1_ISR
;	-----------------------------------------
_SerialPort1_ISR:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	../lib_master/uart.c:566: if (RI_1 == 1) {/* if reception occur */
	jnb	_RI_1,00106$
;	../lib_master/uart.c:567: gu8Uart1RCnt ++;
	mov	dptr,#_gu8Uart1RCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:568: if (gu8Rx1Size < UART1_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00128$
00128$:
	jnc	00104$
;	../lib_master/uart.c:569: pu8UartRx1Buf[gu8Rx1WIdx++] = SBUF_1;
	mov	dptr,#_gu8Rx1WIdx
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
	mov	a,r7
	add	a,#_pu8UartRx1Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx1Buf >> 8)
	mov	dph,a
	mov	a,_SBUF_1
	movx	@dptr,a
;	../lib_master/uart.c:570: gu8Rx1Size++;
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:571: if (gu8Rx1WIdx == UART1_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx1WIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00104$
;	../lib_master/uart.c:572: gu8Rx1WIdx = 0;
	mov	dptr,#_gu8Rx1WIdx
	clr	a
	movx	@dptr,a
00104$:
;	../lib_master/uart.c:578: clr_RI_1;      /* clear reception flag for next reception */
;	assignBit
	clr	_RI_1
00106$:
;	../lib_master/uart.c:581: if (TI_1 == 1) {
	jnb	_TI_1,00109$
;	../lib_master/uart.c:582: gu8Uart1TCnt ++;
	mov	dptr,#_gu8Uart1TCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:583: Uart1Tx_ISR();
	mov	psw,#0x00
	lcall	_Uart1Tx_ISR
	mov	psw,#0x08
00109$:
;	../lib_master/uart.c:585: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'chkchar_uart1'
;------------------------------------------------------------
;	../lib_master/uart.c:587: uint8_t chkchar_uart1()
;	-----------------------------------------
;	 function chkchar_uart1
;	-----------------------------------------
_chkchar_uart1:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../lib_master/uart.c:592: return gu8Rx1Size;
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
;	../lib_master/uart.c:593: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_uart1'
;------------------------------------------------------------
;apu8Data                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../lib_master/uart.c:595: uint8_t getchar_uart1(uint8_t * apu8Data)
;	-----------------------------------------
;	 function getchar_uart1
;	-----------------------------------------
_getchar_uart1:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../lib_master/uart.c:600: if (gu8Rx1Size == 0) {
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
;	../lib_master/uart.c:601: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	../lib_master/uart.c:603: clr_ES_1;
	anl	_EIE1,#0xfe
;	../lib_master/uart.c:604: *apu8Data = pu8UartRx1Buf[gu8Rx1RIdx++];
	mov	dptr,#_gu8Rx1RIdx
	movx	a,@dptr
	mov	r4,a
	inc	a
	movx	@dptr,a
	mov	a,r4
	add	a,#_pu8UartRx1Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx1Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../lib_master/uart.c:605: gu8Rx1Size--;
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	../lib_master/uart.c:606: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx1RIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00104$
;	../lib_master/uart.c:607: gu8Rx1RIdx = 0;
	mov	dptr,#_gu8Rx1RIdx
	clr	a
	movx	@dptr,a
00104$:
;	../lib_master/uart.c:609: set_ES_1;
	orl	_EIE1,#0x01
;	../lib_master/uart.c:610: return 1;
	mov	dpl,#0x01
;	../lib_master/uart.c:611: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr_uart1'
;------------------------------------------------------------
;apu8Data                  Allocated with name '_getstr_uart1_PARM_2'
;au8Size                   Allocated to registers r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	../lib_master/uart.c:613: uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data)
;	-----------------------------------------
;	 function getstr_uart1
;	-----------------------------------------
_getstr_uart1:
	mov	r7,dpl
;	../lib_master/uart.c:619: if (gu8Rx1Size == 0) {
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
	mov	r6,a
;	../lib_master/uart.c:620: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	../lib_master/uart.c:623: if (gu8Rx1Size < au8Size) {
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00117$
;	../lib_master/uart.c:624: au8Size = gu8Rx1Size;
	mov	ar7,r6
;	../lib_master/uart.c:626: for (i=0;i<au8Size;i++) {
00117$:
	mov	r4,_getstr_uart1_PARM_2
	mov	r5,(_getstr_uart1_PARM_2 + 1)
	mov	r6,(_getstr_uart1_PARM_2 + 2)
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r3
	subb	a,r7
	jnc	00107$
;	../lib_master/uart.c:627: *apu8Data++ = pu8UartRx1Buf[gu8Rx1RIdx++];
	mov	dptr,#_gu8Rx1RIdx
	movx	a,@dptr
	mov	r2,a
	inc	a
	movx	@dptr,a
	mov	a,r2
	add	a,#_pu8UartRx1Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartRx1Buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	../lib_master/uart.c:628: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
	mov	dptr,#_gu8Rx1RIdx
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x10,00110$
;	../lib_master/uart.c:629: gu8Rx1RIdx = 0;
	mov	dptr,#_gu8Rx1RIdx
	clr	a
	movx	@dptr,a
00110$:
;	../lib_master/uart.c:626: for (i=0;i<au8Size;i++) {
	inc	r3
	sjmp	00109$
00107$:
;	../lib_master/uart.c:632: gu8Rx1Size -= au8Size;
	mov	dptr,#_gu8Rx1Size
	movx	a,@dptr
	clr	c
	subb	a,r7
	movx	@dptr,a
;	../lib_master/uart.c:633: return au8Size;
	mov	dpl,r7
;	../lib_master/uart.c:634: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar_uart0'
;------------------------------------------------------------
;au8Data                   Allocated to registers r7 
;------------------------------------------------------------
;	../lib_master/uart.c:636: void putchar_uart0(char au8Data)
;	-----------------------------------------
;	 function putchar_uart0
;	-----------------------------------------
_putchar_uart0:
	mov	r7,dpl
;	../lib_master/uart.c:638: while (gu8Tx0Size >= UART0_TX_BUFF_SIZE) {
00101$:
	mov	dptr,#_gu8Tx0Size
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x10,00120$
00120$:
	jc	00103$
;	../lib_master/uart.c:641: nop;
	NOP
	sjmp	00101$
00103$:
;	../lib_master/uart.c:644: pu8UartTx0Buf[gu8Tx0WIdx++] = au8Data;
	mov	dptr,#_gu8Tx0WIdx
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_pu8UartTx0Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartTx0Buf >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../lib_master/uart.c:645: gu8Tx0Size++;
	mov	dptr,#_gu8Tx0Size
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:646: if (gu8Tx0WIdx == UART0_TX_BUFF_SIZE) {
	mov	dptr,#_gu8Tx0WIdx
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00105$
;	../lib_master/uart.c:648: gu8Tx0WIdx = 0;
	mov	dptr,#_gu8Tx0WIdx
	clr	a
	movx	@dptr,a
00105$:
;	../lib_master/uart.c:650: set_TI;
;	assignBit
	setb	_TI
;	../lib_master/uart.c:651: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar_uart1'
;------------------------------------------------------------
;au8Data                   Allocated to registers r7 
;------------------------------------------------------------
;	../lib_master/uart.c:653: void putchar_uart1(char au8Data)
;	-----------------------------------------
;	 function putchar_uart1
;	-----------------------------------------
_putchar_uart1:
	mov	r7,dpl
;	../lib_master/uart.c:655: while (gu8Tx1Size >= UART1_TX_BUFF_SIZE) {
00101$:
	mov	dptr,#_gu8Tx1Size
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x10,00121$
00121$:
	jc	00103$
;	../lib_master/uart.c:656: gu8BFCnt++;
	mov	dptr,#_gu8BFCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:659: nop;
	NOP
	sjmp	00101$
00103$:
;	../lib_master/uart.c:661: gu8BNFCnt++;
	mov	dptr,#_gu8BNFCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:663: clr_ES_1;
	anl	_EIE1,#0xfe
;	../lib_master/uart.c:664: pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
	mov	dptr,#_gu8Tx1WIdx
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_pu8UartTx1Buf
	mov	dpl,a
	clr	a
	addc	a,#(_pu8UartTx1Buf >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../lib_master/uart.c:665: gu8Tx1Size++;
	mov	dptr,#_gu8Tx1Size
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:672: gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;
	mov	dptr,#_gu8Tx1WIdx
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	../lib_master/uart.c:679: if (gu8Tx1Size == 1) {
	mov	dptr,#_gu8Tx1Size
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00105$
;	../lib_master/uart.c:680: gu8BECnt++;
	mov	dptr,#_gu8BECnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../lib_master/uart.c:682: set_TI_1;
;	assignBit
	setb	_TI_1
	sjmp	00106$
00105$:
;	../lib_master/uart.c:685: gu8BNECnt++;
	mov	dptr,#_gu8BNECnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00106$:
;	../lib_master/uart.c:706: set_ES_1;
	orl	_EIE1,#0x01
;	../lib_master/uart.c:707: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'preamble'
;------------------------------------------------------------
;	../lib_master/uart.c:710: void preamble() 
;	-----------------------------------------
;	 function preamble
;	-----------------------------------------
_preamble:
;	../lib_master/uart.c:712: gu8UART = 1;
	mov	_gu8UART,#0x01
;	../lib_master/uart.c:713: putchar(0xF0);
	mov	dptr,#0x00f0
;	../lib_master/uart.c:714: return;
;	../lib_master/uart.c:715: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar_manchester'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	../lib_master/uart.c:717: void putchar_manchester(char c) 
;	-----------------------------------------
;	 function putchar_manchester
;	-----------------------------------------
_putchar_manchester:
	mov	r7,dpl
;	../lib_master/uart.c:719: gu8UART = 1;
	mov	_gu8UART,#0x01
;	../lib_master/uart.c:720: putchar( (gpc2B2MC[(c>>6)&0x3]<<4) | gpc2B2MC[(c>>4)&0x3]);
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	mov	r6,a
	anl	ar6,#0x03
	mov	r5,#0x00
	mov	a,r6
	add	a,#_gpc2B2MC
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gpc2B2MC >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r4,a
	anl	ar4,#0x03
	mov	r3,#0x00
	mov	a,r4
	add	a,#_gpc2B2MC
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gpc2B2MC >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,#0x00
	orl	a,r6
	mov	dpl,a
	mov	a,r3
	orl	a,r5
	mov	dph,a
	push	ar7
	lcall	_putchar
	pop	ar7
;	../lib_master/uart.c:721: putchar( (gpc2B2MC[(c>>2)&0x3]<<4) | gpc2B2MC[(c>>0)&0x3]);
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	anl	ar6,#0x03
	mov	r5,#0x00
	mov	a,r6
	add	a,#_gpc2B2MC
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gpc2B2MC >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	anl	ar7,#0x03
	mov	r4,#0x00
	mov	a,r7
	add	a,#_gpc2B2MC
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gpc2B2MC >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,#0x00
	orl	a,r6
	mov	dpl,a
	mov	a,r4
	orl	a,r5
	mov	dph,a
;	../lib_master/uart.c:722: return;
;	../lib_master/uart.c:723: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'chk_manchester'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	../lib_master/uart.c:725: UINT8 chk_manchester(UINT8 c)
;	-----------------------------------------
;	 function chk_manchester
;	-----------------------------------------
_chk_manchester:
;	../lib_master/uart.c:739: if (gpcMC22B[(c>>4)] == 0xF) {
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	add	a,#_gpcMC22B
	mov	dpl,a
	clr	a
	addc	a,#(_gpcMC22B >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0f,00102$
;	../lib_master/uart.c:740: return MC_NOT_OK;
	mov	dpl,#0x00
	ret
00102$:
;	../lib_master/uart.c:742: if (gpcMC22B[(c&0xF)] == 0xF) {
	anl	ar7,#0x0f
	mov	r6,#0x00
	mov	a,r7
	add	a,#_gpcMC22B
	mov	dpl,a
	mov	a,r6
	addc	a,#(_gpcMC22B >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0f,00104$
;	../lib_master/uart.c:743: return MC_NOT_OK;
	mov	dpl,#0x00
	ret
00104$:
;	../lib_master/uart.c:745: return MC_OK;
	mov	dpl,#0x01
;	../lib_master/uart.c:746: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'conv_manchester2nibble'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	../lib_master/uart.c:748: UINT8 conv_manchester2nibble(UINT8 c)
;	-----------------------------------------
;	 function conv_manchester2nibble
;	-----------------------------------------
_conv_manchester2nibble:
;	../lib_master/uart.c:762: return (gpcMC22B[c>>4]<<2) | (gpcMC22B[c&0xF]); 
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	add	a,#_gpcMC22B
	mov	dpl,a
	clr	a
	addc	a,#(_gpcMC22B >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r6,a
	anl	ar7,#0x0f
	mov	r5,#0x00
	mov	a,r7
	add	a,#_gpcMC22B
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gpcMC22B >> 8)
	mov	dph,a
	movx	a,@dptr
	orl	a,r6
	mov	dpl,a
;	../lib_master/uart.c:763: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
