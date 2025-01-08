;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _state_switches_PARM_2
	.globl _main
	.globl _make_linefi_payload
	.globl _send_ACK
	.globl _start_aloha
	.globl _act_by_one_key
	.globl _print_help
	.globl _printoutbuf
	.globl _state_switches
	.globl _gpio_setup
	.globl _disp_help
	.globl _MODIFY_HIRC_166
	.globl _pin_interrupt_isr
	.globl _Timer0_ISR
	.globl _state_machine
	.globl _print_char
	.globl _print_esc
	.globl _print_linefipacket
	.globl _cp_buf2linefipacket
	.globl _send_linefi_packet
	.globl _send_octet_to_linefi
	.globl _add_crc_linefi_packet_packet
	.globl _getchar_uart1
	.globl _getchar_uart0
	.globl _uart_setup
	.globl _InitialUART1_Timer3
	.globl _printf_fast_f
	.globl _printf
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
	.globl _gpu32UartSpeed
	.globl _gu8LineFiUpRxState4
	.globl _gu8LineFiUpRxState
	.globl _gu16TimeCntMilliSec
	.globl _gu16TimeCnt
	.globl _gu8PreambleCnt
	.globl _gu8PPambleCnt
	.globl _gu8MCRxBuf
	.globl _gu8RxBufCnt
	.globl _gpu8RxBuf
	.globl _gpu8Data2
	.globl _gpu8Data
	.globl _gcUartInputMode
	.globl _make_linefi_payload_PARM_4
	.globl _make_linefi_payload_PARM_3
	.globl _make_linefi_payload_PARM_2
	.globl _send_ACK_PARM_2
	.globl _act_by_one_key_PARM_3
	.globl _act_by_one_key_PARM_2
	.globl _printoutbuf_PARM_2
	.globl _state_machine_PARM_4
	.globl _state_machine_PARM_3
	.globl _state_machine_PARM_2
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_state_machine_PARM_2:
	.ds 1
_state_machine_PARM_3:
	.ds 1
_state_machine_PARM_4:
	.ds 1
_printoutbuf_PARM_2:
	.ds 3
_act_by_one_key_PARM_2:
	.ds 3
_act_by_one_key_PARM_3:
	.ds 3
_act_by_one_key_sloc0_1_0:
	.ds 3
_send_ACK_PARM_2:
	.ds 3
_make_linefi_payload_PARM_2:
	.ds 1
_make_linefi_payload_PARM_3:
	.ds 1
_make_linefi_payload_PARM_4:
	.ds 3
_make_linefi_payload_au32LineFiUpSpeed_65536_100:
	.ds 4
_make_linefi_payload_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_state_switches_PARM_2:
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_gcUartInputMode::
	.ds 27
_gpu8Data::
	.ds 20
_gpu8Data2::
	.ds 20
_gpu8RxBuf::
	.ds 16
_gu8RxBufCnt::
	.ds 1
_gu8MCRxBuf::
	.ds 1
_gu8PPambleCnt::
	.ds 1
_gu8PreambleCnt::
	.ds 1
_gu16TimeCnt::
	.ds 2
_gu16TimeCntMilliSec::
	.ds 2
_gu8LineFiUpRxState::
	.ds 1
_gu8LineFiUpRxState4::
	.ds 1
_gpu32UartSpeed::
	.ds 56
_state_switches_su8PrevSW_65536_76:
	.ds 1
_act_by_one_key_u8Data_65536_88:
	.ds 1
_main_u8RxUART_65536_103:
	.ds 1
_main_u8RxUART1_65536_103:
	.ds 1
_main_u8LineFiAddr_65536_103:
	.ds 1
_main_u8LineFiSpeed_65536_103:
	.ds 1
_main_u8LineFiCmd_65536_103:
	.ds 1
_main_u8PwrOnFirstFlag_65536_103:
	.ds 1
_main_u8SwNum_65536_103:
	.ds 1
_main_u8StatePeriodicSend_65536_103:
	.ds 1
_main_u8PSCmd_65536_103:
	.ds 1
_main_u8StateUart0InputMode_65536_103:
	.ds 1
_main_pcBuf_65536_103:
	.ds 50
_main_pu8Data_65536_103:
	.ds 10
_main_u8DataIdx_65536_103:
	.ds 1
_main_ucBufIdx_65536_103:
	.ds 1
_main_pstLineFiPkt_65536_103:
	.ds 40
_main_stLineFiPkt_test_65536_103:
	.ds 8
_main_stLineFiPkt_65536_103:
	.ds 8
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_SerialPort0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_pin_interrupt_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_SerialPort1_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'state_switches'
;------------------------------------------------------------
;su8PrevSW                 Allocated with name '_state_switches_su8PrevSW_65536_76'
;apu8SwNum                 Allocated with name '_state_switches_PARM_2'
;au8SW                     Allocated to registers r7 
;i                         Allocated to registers r2 
;u8Result                  Allocated to registers r6 
;------------------------------------------------------------
;	src/main.c:410: static UINT8 __xdata su8PrevSW = 0;
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	clr	a
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'act_by_one_key'
;------------------------------------------------------------
;apu8LineFiCmd             Allocated with name '_act_by_one_key_PARM_2'
;apu8LineFiAddr            Allocated with name '_act_by_one_key_PARM_3'
;au8RxUART                 Allocated to registers r7 
;sloc0                     Allocated with name '_act_by_one_key_sloc0_1_0'
;u8Data                    Allocated with name '_act_by_one_key_u8Data_65536_88'
;------------------------------------------------------------
;	src/main.c:483: static UINT8 __xdata u8Data = 0;
	mov	dptr,#_act_by_one_key_u8Data_65536_88
	clr	a
	movx	@dptr,a
;	src/main.c:98: const char * __xdata  gcUartInputMode[MAX_STATE_UART0_INPUT] = {
	mov	dptr,#_gcUartInputMode
	mov	a,#___str_72
	movx	@dptr,a
	mov	a,#(___str_72 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0003)
	mov	a,#___str_73
	movx	@dptr,a
	mov	a,#(___str_73 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0006)
	mov	a,#___str_74
	movx	@dptr,a
	mov	a,#(___str_74 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0009)
	mov	a,#___str_75
	movx	@dptr,a
	mov	a,#(___str_75 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x000c)
	mov	a,#___str_76
	movx	@dptr,a
	mov	a,#(___str_76 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x000f)
	mov	a,#___str_77
	movx	@dptr,a
	mov	a,#(___str_77 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0012)
	mov	a,#___str_78
	movx	@dptr,a
	mov	a,#(___str_78 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0015)
	mov	a,#___str_79
	movx	@dptr,a
	mov	a,#(___str_79 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gcUartInputMode + 0x0018)
	mov	a,#___str_80
	movx	@dptr,a
	mov	a,#(___str_80 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	src/main.c:110: UINT8 __xdata gpu8Data[20] = {
	mov	dptr,#_gpu8Data
	rl	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0004)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0008)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0010)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data + 0x0013)
	movx	@dptr,a
;	src/main.c:118: UINT8 __xdata gpu8Data2[20] = {
	mov	dptr,#_gpu8Data2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0008)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000c)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0010)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0013)
	movx	@dptr,a
;	src/main.c:138: linefi_uplink_rx_state_t __xdata gu8LineFiUpRxState = LFURxState_INIT;
	mov	dptr,#_gu8LineFiUpRxState
	clr	a
	movx	@dptr,a
;	src/main.c:139: linefi_uplink_rx_state_t __xdata gu8LineFiUpRxState4 = LFURxState_INIT4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:141: UINT32 __xdata gpu32UartSpeed[] = {
	mov	dptr,#_gpu32UartSpeed
	swap	a
	movx	@dptr,a
	mov	a,#0x09
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0004)
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x70
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0008)
	movx	@dptr,a
	mov	a,#0x96
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x000c)
	movx	@dptr,a
	mov	a,#0xe1
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0010)
	movx	@dptr,a
	mov	a,#0xc2
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0014)
	movx	@dptr,a
	mov	a,#0x84
	inc	dptr
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0018)
	mov	a,#0xe0
	movx	@dptr,a
	mov	a,#0x93
	inc	dptr
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x001c)
	movx	@dptr,a
	mov	a,#0x08
	inc	dptr
	movx	@dptr,a
	dec	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0020)
	mov	a,#0x20
	movx	@dptr,a
	mov	a,#0xa1
	inc	dptr
	movx	@dptr,a
	mov	a,#0x07
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0024)
	mov	a,#0xc0
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	a,#0x09
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0028)
	mov	a,#0x60
	movx	@dptr,a
	mov	a,#0xae
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x002c)
	movx	@dptr,a
	mov	a,#0x35
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0c
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0030)
	mov	a,#0xa0
	movx	@dptr,a
	mov	a,#0xbb
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0d
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gpu32UartSpeed + 0x0034)
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0e
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'print_esc'
;------------------------------------------------------------
;au8State                  Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:173: void print_esc(UINT8 au8State)
;	-----------------------------------------
;	 function print_esc
;	-----------------------------------------
_print_esc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src/main.c:175: printf_fast_f("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:176: switch(au8State) {
	cjne	r7,#0x00,00119$
	sjmp	00101$
00119$:
	cjne	r7,#0x01,00120$
	sjmp	00102$
00120$:
;	src/main.c:177: case STATE_SELF :
	cjne	r7,#0x02,00104$
	sjmp	00103$
00101$:
;	src/main.c:178: printf_fast_f("self ");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:179: break;
;	src/main.c:180: case STATE_CROSS :
	sjmp	00104$
00102$:
;	src/main.c:181: printf_fast_f("cross");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:182: break;
;	src/main.c:183: case STATE_BOTH :
	sjmp	00104$
00103$:
;	src/main.c:184: printf_fast_f("both ");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:186: }
00104$:
;	src/main.c:187: printf_fast_f(" output:This is UART%d\n\r", gu8UART);
	mov	r6,_gu8UART
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:188: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_char'
;------------------------------------------------------------
;au8Data                   Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:190: void print_char(char au8Data)
;	-----------------------------------------
;	 function print_char
;	-----------------------------------------
_print_char:
	mov	r7,dpl
;	src/main.c:192: switch(au8Data) {
	cjne	r7,#0x0d,00125$
	sjmp	00104$
00125$:
	cjne	r7,#0x1b,00126$
	ret
00126$:
	cjne	r7,#0x1c,00127$
	ret
00127$:
;	src/main.c:197: case '\r' :
	cjne	r7,#0x1d,00105$
	ret
00104$:
;	src/main.c:198: printf_fast_f("\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:199: break;
;	src/main.c:200: default :
	ret
00105$:
;	src/main.c:201: printf_fast_f("%c",au8Data);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:202: }
;	src/main.c:203: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'state_machine'
;------------------------------------------------------------
;au8RxUART                 Allocated with name '_state_machine_PARM_2'
;au8SelfID                 Allocated with name '_state_machine_PARM_3'
;au8OtherID                Allocated with name '_state_machine_PARM_4'
;au8State                  Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:205: UINT8 state_machine(UINT8 au8State, UINT8 au8RxUART, UINT8 au8SelfID, UINT8 au8OtherID)
;	-----------------------------------------
;	 function state_machine
;	-----------------------------------------
_state_machine:
	mov	r7,dpl
;	src/main.c:207: if(au8RxUART == KEY_ESC) {
	mov	a,#0x1b
	cjne	a,_state_machine_PARM_2,00142$
	sjmp	00143$
00142$:
	sjmp	00110$
00143$:
;	src/main.c:208: gu8UART = au8SelfID;
	mov	r6,_state_machine_PARM_3
	mov	_gu8UART,r6
;	src/main.c:209: printf_fast_f("\r\ninput:This is UART%d", gu8UART);
	mov	r4,_gu8UART
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:210: switch(au8State) {
	cjne	r7,#0x00,00144$
	sjmp	00101$
00144$:
	cjne	r7,#0x01,00145$
	sjmp	00102$
00145$:
	cjne	r7,#0x02,00146$
	sjmp	00103$
00146$:
	ljmp	00111$
;	src/main.c:211: case STATE_SELF :
00101$:
;	src/main.c:212: au8State = STATE_CROSS;
	mov	r7,#0x01
;	src/main.c:213: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:214: print_esc(au8State);
	mov	dpl,#0x01
	push	ar7
	lcall	_print_esc
;	src/main.c:215: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:216: print_esc(au8State);
	mov	dpl,#0x01
	lcall	_print_esc
	pop	ar7
;	src/main.c:217: break;
;	src/main.c:218: case STATE_CROSS :
	sjmp	00111$
00102$:
;	src/main.c:219: au8State = STATE_BOTH;
	mov	r7,#0x02
;	src/main.c:220: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:221: print_esc(au8State);
	mov	dpl,#0x02
	push	ar7
	lcall	_print_esc
;	src/main.c:222: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:223: print_esc(au8State);
	mov	dpl,#0x02
	lcall	_print_esc
	pop	ar7
;	src/main.c:224: break;
;	src/main.c:225: case STATE_BOTH :
	sjmp	00111$
00103$:
;	src/main.c:226: au8State = STATE_SELF;
	mov	r7,#0x00
;	src/main.c:227: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:228: print_esc(au8State);
	mov	dpl,#0x00
	push	ar7
	lcall	_print_esc
	pop	ar7
;	src/main.c:230: }
	sjmp	00111$
00110$:
;	src/main.c:233: switch(au8State) {
	cjne	r7,#0x00,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x01,00148$
	sjmp	00106$
00148$:
;	src/main.c:234: case STATE_SELF :
	cjne	r7,#0x02,00111$
	sjmp	00107$
00105$:
;	src/main.c:235: gu8UART = au8SelfID;
	mov	_gu8UART,_state_machine_PARM_3
;	src/main.c:236: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
	pop	ar7
;	src/main.c:237: break;
;	src/main.c:238: case STATE_CROSS :
	sjmp	00111$
00106$:
;	src/main.c:239: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:240: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
	pop	ar7
;	src/main.c:241: break;
;	src/main.c:242: case STATE_BOTH :
	sjmp	00111$
00107$:
;	src/main.c:243: gu8UART = au8SelfID;
	mov	_gu8UART,_state_machine_PARM_3
;	src/main.c:244: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
;	src/main.c:245: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:246: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	lcall	_print_char
	pop	ar7
;	src/main.c:248: }
00111$:
;	src/main.c:250: return au8State;
	mov	dpl,r7
;	src/main.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	src/main.c:253: void Timer0_ISR (void) interrupt(1)  //interrupt address is 0x000B
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	dpl
	push	dph
	push	psw
;	src/main.c:255: TH0 = TH0_INIT;
	mov	_TH0,#0xd4
;	src/main.c:256: TL0 = TL0_INIT;
	mov	_TL0,#0x13
;	src/main.c:257: gu16TimeCnt++;
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	src/main.c:258: gu16TimeCntMilliSec++;
	mov	dptr,#_gu16TimeCntMilliSec
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	src/main.c:268: } //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'pin_interrupt_isr'
;------------------------------------------------------------
;	src/main.c:270: void pin_interrupt_isr(void) interrupt(7)
;	-----------------------------------------
;	 function pin_interrupt_isr
;	-----------------------------------------
_pin_interrupt_isr:
	push	acc
;	src/main.c:272: if (PIF == 0x10) {
	mov	a,_PIF
;	src/main.c:274: PIF = 0;
	mov	_PIF,#0x00
;	src/main.c:275: }// void pin_interrupt_isr (void) interrupt(7)
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'MODIFY_HIRC_166'
;------------------------------------------------------------
;hircmap0                  Allocated to registers r7 
;hircmap1                  Allocated to registers r6 
;trimvalue16bit            Allocated to registers r7 r5 
;------------------------------------------------------------
;	src/main.c:277: void MODIFY_HIRC_166(void)
;	-----------------------------------------
;	 function MODIFY_HIRC_166
;	-----------------------------------------
_MODIFY_HIRC_166:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:282: if ((PCON&SET_BIT4)==SET_BIT4) {
	mov	r6,_PCON
	anl	ar6,#0x10
	mov	r7,#0x00
	cjne	r6,#0x10,00103$
	cjne	r7,#0x00,00103$
;	src/main.c:283: hircmap0 = RCTRIM0;
	mov	r7,_RCTRIM0
;	src/main.c:284: hircmap1 = RCTRIM1;
	mov	r6,_RCTRIM1
;	src/main.c:285: trimvalue16bit = ((hircmap0<<1)+(hircmap1&0x01));
	mov	r5,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r5
	rlc	a
	mov	r5,a
	anl	ar6,#0x01
	mov	r4,#0x00
	mov	a,r6
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
;	src/main.c:286: trimvalue16bit = trimvalue16bit - 15;
	mov	a,r7
	add	a,#0xf1
	mov	r7,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	src/main.c:287: hircmap1 = trimvalue16bit&0x01;
	mov	ar6,r7
	anl	ar6,#0x01
;	src/main.c:288: hircmap0 = trimvalue16bit>>1;
	mov	a,r5
	clr	c
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r5,a
;	src/main.c:289: TA=0XAA;
	mov	_TA,#0xaa
;	src/main.c:290: TA=0X55;
	mov	_TA,#0x55
;	src/main.c:291: RCTRIM0 = hircmap0;
	mov	_RCTRIM0,r7
;	src/main.c:292: TA=0XAA;
	mov	_TA,#0xaa
;	src/main.c:293: TA=0X55;
	mov	_TA,#0x55
;	src/main.c:294: RCTRIM1 = hircmap1;
	mov	_RCTRIM1,r6
;	src/main.c:296: PCON &= CLR_BIT4;
	anl	_PCON,#0xef
00103$:
;	src/main.c:298: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disp_help'
;------------------------------------------------------------
;au8Code                   Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:299: void disp_help(UINT8 au8Code)
;	-----------------------------------------
;	 function disp_help
;	-----------------------------------------
_disp_help:
	mov	r7,dpl
;	src/main.c:301: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:302: switch(au8Code) {
	cjne	r7,#0x31,00165$
	ret
00165$:
	cjne	r7,#0x32,00166$
	ret
00166$:
	cjne	r7,#0x33,00167$
	sjmp	00103$
00167$:
	cjne	r7,#0x34,00168$
	ret
00168$:
	cjne	r7,#0x50,00169$
	sjmp	00106$
00169$:
	cjne	r7,#0x53,00170$
	ljmp	00110$
00170$:
	cjne	r7,#0x54,00171$
	sjmp	00108$
00171$:
	cjne	r7,#0x56,00172$
	ljmp	00112$
00172$:
	cjne	r7,#0x70,00173$
	sjmp	00105$
00173$:
	cjne	r7,#0x73,00174$
	sjmp	00109$
00174$:
	cjne	r7,#0x74,00175$
	sjmp	00107$
00175$:
	cjne	r7,#0x76,00176$
	ljmp	00112$
00176$:
	ljmp	00113$
;	src/main.c:307: case '3' :
00103$:
;	src/main.c:308: printf_fast_f("Idle preamble on/off\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:309: break;
	ret
;	src/main.c:312: case 'p' :
00105$:
;	src/main.c:313: printf_fast_f("LineFi Power Off\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:314: break;
	ret
;	src/main.c:315: case 'P' :
00106$:
;	src/main.c:316: printf_fast_f("LineFi Power On\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:317: break;
	ret
;	src/main.c:318: case 't' :
00107$:
;	src/main.c:319: printf_fast_f("LineFi Uart Tx Low\r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:320: break;
	ret
;	src/main.c:321: case 'T' :
00108$:
;	src/main.c:322: printf_fast_f("LineFi Uart Tx High\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:323: break;
	ret
;	src/main.c:324: case 's' :
00109$:
;	src/main.c:325: printf_fast_f("LineFi CSC rx FSM Off\r\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:326: break;
	ret
;	src/main.c:327: case 'S' :
00110$:
;	src/main.c:328: printf_fast_f("LineFi CSC rx FSM ON\r\n");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:329: break;
;	src/main.c:330: case 'v' : case 'V' :
	ret
00112$:
;	src/main.c:331: printf_fast_f(__VERSION__);
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:332: break;
;	src/main.c:333: default :
	ret
00113$:
;	src/main.c:334: printf_fast_f("1: downlink packet 1\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:335: printf_fast_f("2: downlink packet 2\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:336: printf_fast_f("3: uplink idle preamble on/off\r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:337: printf_fast_f("p/P: LineFi Power off/on\r\n");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:338: printf_fast_f("t/T: LineFi Uart Tx Low/High\r\n");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:339: printf_fast_f("s/S: LineFie CSC Rx FSM off/on\r\n");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:340: printf_fast_f("test procedure: p -> P -> T -> S -> 1 or 2\r\n");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:342: }
;	src/main.c:343: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_setup'
;------------------------------------------------------------
;	src/main.c:345: void gpio_setup()
;	-----------------------------------------
;	 function gpio_setup
;	-----------------------------------------
_gpio_setup:
;	src/main.c:373: Set_All_GPIO_Quasi_Mode;
	mov	_P0M1,#0x00
	mov	_P0M2,#0x00
	mov	_P1M1,#0x00
	mov	_P1M2,#0x00
	mov	_P3M1,#0x00
	mov	_P3M2,#0x00
;	src/main.c:375: P13_Input_Mode;
	orl	_P1M1,#0x08
	anl	_P1M2,#0xf7
;	src/main.c:376: P30_Input_Mode;
	orl	_P3M1,#0x01
	anl	_P3M2,#0xfe
;	src/main.c:377: P17_Input_Mode;
	orl	_P1M1,#0x80
	anl	_P1M2,#0x7f
;	src/main.c:378: P00_Input_Mode;
	orl	_P0M1,#0x01
	anl	_P0M2,#0xfe
;	src/main.c:379: P15_Input_Mode;
	orl	_P1M1,#0x20
	anl	_P1M2,#0xdf
;	src/main.c:381: P05_Input_Mode; // rx_level1
	orl	_P0M1,#0x20
	anl	_P0M2,#0xdf
;	src/main.c:382: P04_Input_Mode; // rx_level2
	orl	_P0M1,#0x10
	anl	_P0M2,#0xef
;	src/main.c:384: P10_PushPull_Mode; // line fi enable
	anl	_P1M1,#0xfe
	orl	_P1M2,#0x01
;	src/main.c:385: P11_PushPull_Mode; // line fi enable1
	anl	_P1M1,#0xfd
	orl	_P1M2,#0x02
;	src/main.c:386: P12_PushPull_Mode; // line fi enable2
	anl	_P1M1,#0xfb
	orl	_P1M2,#0x04
;	src/main.c:387: LINEFI_EN0 = 0;
;	assignBit
	clr	_P10
;	src/main.c:388: LINEFI_EN1 = 0;
;	assignBit
	clr	_P11
;	src/main.c:389: LINEFI_EN2 = 0;
;	assignBit
	clr	_P12
;	src/main.c:390: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'state_switches'
;------------------------------------------------------------
;su8PrevSW                 Allocated with name '_state_switches_su8PrevSW_65536_76'
;apu8SwNum                 Allocated with name '_state_switches_PARM_2'
;au8SW                     Allocated to registers r7 
;i                         Allocated to registers r2 
;u8Result                  Allocated to registers r6 
;------------------------------------------------------------
;	src/main.c:408: UINT8 state_switches(UINT8 au8SW, UINT8 *apu8SwNum)
;	-----------------------------------------
;	 function state_switches
;	-----------------------------------------
_state_switches:
	mov	r7,dpl
;	src/main.c:413: UINT8 u8Result = SW_NONE;
	mov	r6,#0x04
;	src/main.c:414: if (su8PrevSW == au8SW) {
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	movx	a,@dptr
	cjne	a,ar7,00102$
;	src/main.c:415: *apu8SwNum = 0;
	mov	r3,_state_switches_PARM_2
	mov	r4,(_state_switches_PARM_2 + 1)
	mov	r5,(_state_switches_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	src/main.c:416: return SW_NONE;
	mov	dpl,#0x04
	ret
00102$:
;	src/main.c:424: *apu8SwNum = 0;
	mov	r3,_state_switches_PARM_2
	mov	r4,(_state_switches_PARM_2 + 1)
	mov	r5,(_state_switches_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	src/main.c:426: for (i=0;i<5;i++) {
	mov	r2,#0x00
00110$:
;	src/main.c:427: if (((su8PrevSW>>i)&1) == SW_ON 
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	movx	a,@dptr
	mov	b,r2
	inc	b
	sjmp	00146$
00145$:
	clr	c
	rrc	a
00146$:
	djnz	b,00145$
	mov	r0,a
	anl	ar0,#0x01
	mov	r1,#0x00
	cjne	r0,#0x01,00104$
	cjne	r1,#0x00,00104$
;	src/main.c:428: && ((au8SW>>i)&1) == SW_OFF ) {
	mov	b,r2
	inc	b
	mov	a,r7
	sjmp	00150$
00149$:
	clr	c
	rrc	a
00150$:
	djnz	b,00149$
	jb	acc.0,00104$
;	src/main.c:430: su8PrevSW = au8SW;
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	mov	a,r7
	movx	@dptr,a
;	src/main.c:431: *apu8SwNum |= 1<<i;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	mov	ar0,r2
	mov	b,r0
	inc	b
	mov	a,#0x01
	sjmp	00154$
00152$:
	add	a,acc
00154$:
	djnz	b,00152$
	mov	r0,a
	mov	a,r1
	orl	ar0,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
;	src/main.c:432: u8Result = SW_OFF;
	mov	r6,#0x00
00104$:
;	src/main.c:435: if (((su8PrevSW>>i)&1) == SW_OFF 
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	movx	a,@dptr
	mov	b,r2
	inc	b
	sjmp	00156$
00155$:
	clr	c
	rrc	a
00156$:
	djnz	b,00155$
	jb	acc.0,00111$
;	src/main.c:436: && ((au8SW>>i)&1) == SW_ON ) {
	mov	b,r2
	inc	b
	mov	a,r7
	sjmp	00159$
00158$:
	clr	c
	rrc	a
00159$:
	djnz	b,00158$
	mov	r0,a
	anl	ar0,#0x01
	mov	r1,#0x00
	cjne	r0,#0x01,00111$
	cjne	r1,#0x00,00111$
;	src/main.c:439: su8PrevSW = au8SW;
	mov	dptr,#_state_switches_su8PrevSW_65536_76
	mov	a,r7
	movx	@dptr,a
;	src/main.c:440: *apu8SwNum |= 1<<i;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	mov	ar0,r2
	mov	b,r0
	inc	b
	mov	a,#0x01
	sjmp	00164$
00162$:
	add	a,acc
00164$:
	djnz	b,00162$
	mov	r0,a
	mov	a,r1
	orl	ar0,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
;	src/main.c:441: u8Result = SW_ON;
	mov	r6,#0x01
00111$:
;	src/main.c:426: for (i=0;i<5;i++) {
	inc	r2
	cjne	r2,#0x05,00165$
00165$:
	jnc	00166$
	ljmp	00110$
00166$:
;	src/main.c:448: return u8Result;
	mov	dpl,r6
;	src/main.c:449: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printoutbuf'
;------------------------------------------------------------
;apcBuf                    Allocated with name '_printoutbuf_PARM_2'
;aucBufIdx                 Allocated to registers r7 
;i                         Allocated with name '_printoutbuf_i_65536_83'
;------------------------------------------------------------
;	src/main.c:453: void printoutbuf(uint8 aucBufIdx, char * apcBuf)
;	-----------------------------------------
;	 function printoutbuf
;	-----------------------------------------
_printoutbuf:
	mov	r7,dpl
;	src/main.c:456: for (i=0;i<aucBufIdx;i++) {
	mov	r4,_printoutbuf_PARM_2
	mov	r5,(_printoutbuf_PARM_2 + 1)
	mov	r6,(_printoutbuf_PARM_2 + 2)
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,r7
	jnc	00101$
;	src/main.c:457: printf_fast_f("%c", *apcBuf++);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	ar1,r2
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar2
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:456: for (i=0;i<aucBufIdx;i++) {
	inc	r3
	sjmp	00103$
00101$:
;	src/main.c:459: printf_fast_f("\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:460: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_help'
;------------------------------------------------------------
;	src/main.c:463: void print_help()
;	-----------------------------------------
;	 function print_help
;	-----------------------------------------
_print_help:
;	src/main.c:465: printf_fast_f("t: timer\r\n");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:466: printf_fast_f("0: LineFi EN0,1,2 off\r\n");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:467: printf_fast_f("1: LineFi EN0 = 1\r\n");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:468: printf_fast_f("2:\r\n");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:469: printf_fast_f("3:\r\n");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:470: printf_fast_f("4:\r\n");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:471: printf_fast_f("5:\r\n");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:472: printf_fast_f("6:\r\n");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:473: printf_fast_f("7:\r\n");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:474: printf_fast_f("h: Addr--\r\n");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:475: printf_fast_f("j: Cmd--\r\n");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:476: printf_fast_f("k: Cmd++\r\n");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:477: printf_fast_f("l: Addr++\r\n");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:478: printf_fast_f("s: sending\r\n");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:479: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'act_by_one_key'
;------------------------------------------------------------
;apu8LineFiCmd             Allocated with name '_act_by_one_key_PARM_2'
;apu8LineFiAddr            Allocated with name '_act_by_one_key_PARM_3'
;au8RxUART                 Allocated to registers r7 
;sloc0                     Allocated with name '_act_by_one_key_sloc0_1_0'
;u8Data                    Allocated with name '_act_by_one_key_u8Data_65536_88'
;------------------------------------------------------------
;	src/main.c:481: void act_by_one_key(uint8 au8RxUART, uint8 * apu8LineFiCmd, uint8 * apu8LineFiAddr)
;	-----------------------------------------
;	 function act_by_one_key
;	-----------------------------------------
_act_by_one_key:
	mov	r7,dpl
;	src/main.c:484: switch(au8RxUART) {
	cjne	r7,#0x2b,00256$
	ljmp	00129$
00256$:
	cjne	r7,#0x2d,00257$
	ljmp	00130$
00257$:
	cjne	r7,#0x30,00258$
	ljmp	00102$
00258$:
	cjne	r7,#0x31,00259$
	ljmp	00103$
00259$:
	cjne	r7,#0x32,00260$
	ljmp	00104$
00260$:
	cjne	r7,#0x33,00261$
	ljmp	00105$
00261$:
	cjne	r7,#0x34,00262$
	ljmp	00106$
00262$:
	cjne	r7,#0x35,00263$
	ljmp	00107$
00263$:
	cjne	r7,#0x36,00264$
	ljmp	00110$
00264$:
	cjne	r7,#0x37,00265$
	ljmp	00111$
00265$:
	cjne	r7,#0x48,00266$
	ljmp	_print_help
00266$:
	cjne	r7,#0x52,00267$
	ljmp	00135$
00267$:
	cjne	r7,#0x53,00268$
	ljmp	00128$
00268$:
	cjne	r7,#0x61,00269$
	ljmp	00131$
00269$:
	cjne	r7,#0x62,00270$
	ljmp	00132$
00270$:
	cjne	r7,#0x63,00271$
	ljmp	00133$
00271$:
	cjne	r7,#0x68,00272$
	ljmp	00112$
00272$:
	cjne	r7,#0x6a,00273$
	ljmp	00116$
00273$:
	cjne	r7,#0x6b,00274$
	ljmp	00117$
00274$:
	cjne	r7,#0x6c,00275$
	ljmp	00118$
00275$:
	cjne	r7,#0x72,00276$
	ljmp	00136$
00276$:
	cjne	r7,#0x73,00277$
	ljmp	00122$
00277$:
	cjne	r7,#0x74,00278$
	sjmp	00101$
00278$:
	cjne	r7,#0x75,00279$
	ljmp	00127$
00279$:
	ret
;	src/main.c:485: case 't' : // 1msec 카운터 확인, 5초에 40,000
00101$:
;	src/main.c:486: printf_fast_f("%u\n\r", gu16TimeCnt);
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:487: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:488: break;
	ret
;	src/main.c:489: case '0' :
00102$:
;	src/main.c:490: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:491: LINEFI_EN0 = 0;
;	assignBit
	clr	_P10
;	src/main.c:492: LINEFI_EN1 = 0;
;	assignBit
	clr	_P11
;	src/main.c:493: LINEFI_EN2 = 0;
;	assignBit
	clr	_P12
;	src/main.c:494: printf_fast_f("LINEFI_EN0=0\n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:495: break;
	ret
;	src/main.c:496: case '1' :
00103$:
;	src/main.c:497: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:498: LINEFI_EN0 = 1;
;	assignBit
	setb	_P10
;	src/main.c:499: printf_fast_f("LINEFI_EN0=1\n\r");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:500: break;
	ret
;	src/main.c:501: case '2' :
00104$:
;	src/main.c:502: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:503: LINEFI_TX = 0;
;	assignBit
	clr	_P16
;	src/main.c:504: printf_fast_f("LINEFI_TX=0\n\r");
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:505: break;
	ret
;	src/main.c:506: case '3' :
00105$:
;	src/main.c:507: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:508: LINEFI_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:509: printf_fast_f("LINEFI_TX=1\n\r");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:510: break;
	ret
;	src/main.c:511: case '4' :
00106$:
;	src/main.c:512: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:513: TOGGLE(LINEFI_TX);
	cpl	_P16
;	src/main.c:514: printf_fast_f("LINEFI_TX=%d\n\r", LINEFI_TX);
	mov	c,_P16
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:515: break;
	ret
;	src/main.c:516: case '5' :
00107$:
;	src/main.c:517: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:518: if (LINEFI_EN0 == 0) {
	jb	_P10,00109$
;	src/main.c:519: LINEFI_TX = 1;
;	assignBit
	setb	_P16
00109$:
;	src/main.c:521: TOGGLE(LINEFI_EN0);
	cpl	_P10
;	src/main.c:522: printf_fast_f("LINEFI_EN0=");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:523: printf_fast_f("%d\n\r", LINEFI_EN0);
	mov	c,_P10
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:524: break;
	ret
;	src/main.c:525: case '6' :
00110$:
;	src/main.c:526: TOGGLE(LINEFI_EN1);
	cpl	_P11
;	src/main.c:527: printf_fast_f("LINEFI_EN1=");
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:528: printf_fast_f("%d\n\r", LINEFI_EN1);
	mov	c,_P11
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:529: break;
	ret
;	src/main.c:530: case '7' :
00111$:
;	src/main.c:531: TOGGLE(LINEFI_EN2);
	cpl	_P12
;	src/main.c:532: printf_fast_f("LINEFI_EN2=");
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:533: printf_fast_f("%d\n\r", LINEFI_EN2);
	mov	c,_P12
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:534: break;
	ret
;	src/main.c:538: case 'h' : // <<
00112$:
;	src/main.c:539: (*apu8LineFiAddr)--;
	mov	r5,_act_by_one_key_PARM_3
	mov	r6,(_act_by_one_key_PARM_3 + 1)
	mov	r7,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src/main.c:540: if (*apu8LineFiCmd == 1) {
	mov	r2,_act_by_one_key_PARM_2
	mov	r3,(_act_by_one_key_PARM_2 + 1)
	mov	r4,(_act_by_one_key_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00114$
;	src/main.c:541: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
00114$:
;	src/main.c:544: printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:546: break;
	ret
;	src/main.c:547: case 'j' : //  down
00116$:
;	src/main.c:548: (*apu8LineFiCmd)--;
	mov	r5,_act_by_one_key_PARM_2
	mov	r6,(_act_by_one_key_PARM_2 + 1)
	mov	r7,(_act_by_one_key_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src/main.c:549: printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
	mov	r7,#0x00
	push	ar4
	push	ar7
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:550: break;
	ret
;	src/main.c:551: case 'k' : // up
00117$:
;	src/main.c:552: (*apu8LineFiCmd)++;
	mov	r5,_act_by_one_key_PARM_2
	mov	r6,(_act_by_one_key_PARM_2 + 1)
	mov	r7,(_act_by_one_key_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src/main.c:553: printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
	mov	r7,#0x00
	push	ar4
	push	ar7
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:554: break;
	ret
;	src/main.c:555: case 'l' : // >>
00118$:
;	src/main.c:556: (*apu8LineFiAddr)++;
	mov	r5,_act_by_one_key_PARM_3
	mov	r6,(_act_by_one_key_PARM_3 + 1)
	mov	r7,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src/main.c:557: if (*apu8LineFiCmd == 1) {
	mov	r2,_act_by_one_key_PARM_2
	mov	r3,(_act_by_one_key_PARM_2 + 1)
	mov	r4,(_act_by_one_key_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00120$
;	src/main.c:558: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
00120$:
;	src/main.c:561: printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:563: break;
	ret
;	src/main.c:564: case 's' :
00122$:
;	src/main.c:565: switch (*apu8LineFiCmd) {
	mov	r5,_act_by_one_key_PARM_2
	mov	r6,(_act_by_one_key_PARM_2 + 1)
	mov	r7,(_act_by_one_key_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00123$
	cjne	r4,#0x01,00286$
	ljmp	00124$
00286$:
	ljmp	00125$
;	src/main.c:566: case 0 : // address setting
00123$:
;	src/main.c:567: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
	mov	_act_by_one_key_sloc0_1_0,_act_by_one_key_PARM_3
	mov	(_act_by_one_key_sloc0_1_0 + 1),(_act_by_one_key_PARM_3 + 1)
	mov	(_act_by_one_key_sloc0_1_0 + 2),(_act_by_one_key_PARM_3 + 2)
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	mov	r0,a
	anl	ar0,#0xf0
	mov	a,#0x0f
	anl	a,r4
	orl	a,r0
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_octet_to_linefi
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:568: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	clr	a
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,#0x00
	orl	ar0,a
	mov	a,r2
	orl	ar3,a
	push	ar0
	push	ar3
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:569: printf_fast_f("address: 0x%d:\n\r", *apu8LineFiAddr);
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:570: break;
	ret
;	src/main.c:571: case 1 : // uart speed setting
00124$:
;	src/main.c:572: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
	mov	_act_by_one_key_sloc0_1_0,_act_by_one_key_PARM_3
	mov	(_act_by_one_key_sloc0_1_0 + 1),(_act_by_one_key_PARM_3 + 1)
	mov	(_act_by_one_key_sloc0_1_0 + 2),(_act_by_one_key_PARM_3 + 2)
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	mov	r0,a
	anl	ar0,#0xf0
	mov	a,#0x0f
	anl	a,r4
	orl	a,r0
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_octet_to_linefi
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:573: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	clr	a
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,#0x00
	orl	ar0,a
	mov	a,r2
	orl	ar3,a
	push	ar0
	push	ar3
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:574: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
	mov	dpl,_act_by_one_key_sloc0_1_0
	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:575: break;
	ret
;	src/main.c:576: default :
00125$:
;	src/main.c:577: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
	mov	r1,_act_by_one_key_PARM_3
	mov	r2,(_act_by_one_key_PARM_3 + 1)
	mov	r3,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	mov	r0,a
	anl	ar0,#0xf0
	mov	a,#0x0f
	anl	a,r4
	orl	a,r0
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_send_octet_to_linefi
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:578: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	a
	xch	a,r1
	swap	a
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	anl	a,#0xf0
	xch	a,r1
	xrl	a,r1
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	orl	ar1,a
	mov	a,r7
	orl	ar4,a
	push	ar1
	push	ar4
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:581: break;
	ret
;	src/main.c:582: case 'u' :
00127$:
;	src/main.c:583: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
	mov	r5,_act_by_one_key_PARM_3
	mov	r6,(_act_by_one_key_PARM_3 + 1)
	mov	r7,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:584: InitialUART1_Timer3(gpu32UartSpeed[*apu8LineFiAddr]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	src/main.c:585: break;
	ljmp	_InitialUART1_Timer3
;	src/main.c:587: case 'S' :
00128$:
;	src/main.c:588: send_octet_to_linefi(u8Data);
	mov	dptr,#_act_by_one_key_u8Data_65536_88
	movx	a,@dptr
	mov	dpl,a
	lcall	_send_octet_to_linefi
;	src/main.c:589: printf_fast_f("LineFi Sending: %d(0x%x)\n\r", u8Data, u8Data);
	mov	dptr,#_act_by_one_key_u8Data_65536_88
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar7
	push	ar6
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:590: break;
	ret
;	src/main.c:591: case '+' :
00129$:
;	src/main.c:592: u8Data++;
	mov	dptr,#_act_by_one_key_u8Data_65536_88
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:593: printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar7
	push	ar6
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:594: break;
	ret
;	src/main.c:595: case '-' :
00130$:
;	src/main.c:596: u8Data--;
	mov	dptr,#_act_by_one_key_u8Data_65536_88
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:597: printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar7
	push	ar6
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:598: break;
	ret
;	src/main.c:600: case 'a' :
00131$:
;	src/main.c:601: send_octet_to_linefi(0x11);
	mov	dpl,#0x11
;	src/main.c:602: break;
	ljmp	_send_octet_to_linefi
;	src/main.c:603: case 'b' :
00132$:
;	src/main.c:604: send_octet_to_linefi(0x12);
	mov	dpl,#0x12
;	src/main.c:605: break;
	ljmp	_send_octet_to_linefi
;	src/main.c:606: case 'c' :
00133$:
;	src/main.c:607: send_octet_to_linefi(0x13);
	mov	dpl,#0x13
;	src/main.c:608: break;
;	src/main.c:609: case 'H' :
;	src/main.c:610: print_help();
;	src/main.c:611: break;
	ljmp	_send_octet_to_linefi
;	src/main.c:612: case 'R' :
00135$:
;	src/main.c:613: send_octet_to_linefi(((*apu8LineFiAddr)<<4)|1);
	mov	r5,_act_by_one_key_PARM_3
	mov	r6,(_act_by_one_key_PARM_3 + 1)
	mov	r7,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	a,#0x01
	orl	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_octet_to_linefi
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:614: printf_fast_f("Rotate!!:%d \n\r", *apu8LineFiAddr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:615: break;
;	src/main.c:616: case 'r' :
	ret
00136$:
;	src/main.c:617: send_octet_to_linefi(((*apu8LineFiAddr)<<4)|0);
	mov	r5,_act_by_one_key_PARM_3
	mov	r6,(_act_by_one_key_PARM_3 + 1)
	mov	r7,(_act_by_one_key_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	swap	a
	anl	a,#0xf0
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_octet_to_linefi
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:618: printf_fast_f("Stop    :%d \n\r", *apu8LineFiAddr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:620: } //switch(au8RxUART)
;	src/main.c:621: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_aloha'
;------------------------------------------------------------
;apcStr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src/main.c:637: void start_aloha(linefi_packet_t * apcStr) 
;	-----------------------------------------
;	 function start_aloha
;	-----------------------------------------
_start_aloha:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:639: apcStr->u8Type = 100;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x64
	lcall	__gptrput
;	src/main.c:640: add_crc_linefi_packet_packet(apcStr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_add_crc_linefi_packet_packet
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:641: send_linefi_packet(apcStr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	src/main.c:642: }
	ljmp	_send_linefi_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ACK'
;------------------------------------------------------------
;send_apcStr               Allocated with name '_send_ACK_PARM_2'
;received_apcStr           Allocated to registers r5 r6 r7 
;slave_addr                Allocated with name '_send_ACK_slave_addr_65536_99'
;------------------------------------------------------------
;	src/main.c:643: void send_ACK(linefi_packet_t * received_apcStr, linefi_packet_t * send_apcStr)
;	-----------------------------------------
;	 function send_ACK
;	-----------------------------------------
_send_ACK:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:645: UINT8 __xdata slave_addr = received_apcStr->u8Addr;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	src/main.c:646: send_apcStr->u8Ver = received_apcStr->u8Ver;
	mov	r1,_send_ACK_PARM_2
	mov	r3,(_send_ACK_PARM_2 + 1)
	mov	r4,(_send_ACK_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	src/main.c:647: send_apcStr->u8Addr = slave_addr;
	mov	a,#0x02
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	src/main.c:648: add_crc_linefi_packet_packet(send_apcStr);
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	_add_crc_linefi_packet_packet
;	src/main.c:649: send_linefi_packet(send_apcStr);
	mov	dpl,_send_ACK_PARM_2
	mov	dph,(_send_ACK_PARM_2 + 1)
	mov	b,(_send_ACK_PARM_2 + 2)
;	src/main.c:650: }
	ljmp	_send_linefi_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'make_linefi_payload'
;------------------------------------------------------------
;au8ULTMode                Allocated with name '_make_linefi_payload_PARM_2'
;au8ULTData                Allocated with name '_make_linefi_payload_PARM_3'
;apu8Data                  Allocated with name '_make_linefi_payload_PARM_4'
;au32LineFiUpSpeed         Allocated with name '_make_linefi_payload_au32LineFiUpSpeed_65536_100'
;sloc0                     Allocated with name '_make_linefi_payload_sloc0_1_0'
;------------------------------------------------------------
;	src/main.c:652: void make_linefi_payload(UINT32 au32LineFiUpSpeed, UINT8 au8ULTMode, UINT8 au8ULTData, UINT8 *apu8Data)
;	-----------------------------------------
;	 function make_linefi_payload
;	-----------------------------------------
_make_linefi_payload:
	mov	_make_linefi_payload_au32LineFiUpSpeed_65536_100,dpl
	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1),dph
	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2),b
	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 3),a
;	src/main.c:654: apu8Data[0] = (au32LineFiUpSpeed>>16);
	mov	r1,_make_linefi_payload_PARM_4
	mov	r2,(_make_linefi_payload_PARM_4 + 1)
	mov	r3,(_make_linefi_payload_PARM_4 + 2)
	mov	r0,(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	src/main.c:655: apu8Data[1] = (au32LineFiUpSpeed>>8);
	mov	a,#0x01
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	r4,(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src/main.c:656: apu8Data[2] = (au32LineFiUpSpeed>>0);
	mov	a,#0x02
	add	a,r1
	mov	_make_linefi_payload_sloc0_1_0,a
	clr	a
	addc	a,r2
	mov	(_make_linefi_payload_sloc0_1_0 + 1),a
	mov	(_make_linefi_payload_sloc0_1_0 + 2),r3
	mov	r7,_make_linefi_payload_au32LineFiUpSpeed_65536_100
	mov	dpl,_make_linefi_payload_sloc0_1_0
	mov	dph,(_make_linefi_payload_sloc0_1_0 + 1)
	mov	b,(_make_linefi_payload_sloc0_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
;	src/main.c:660: apu8Data[2]);
	mov	r6,#0x00
;	src/main.c:659: apu8Data[1],
	mov	_make_linefi_payload_sloc0_1_0,r4
;	1-genFromRTrack replaced	mov	(_make_linefi_payload_sloc0_1_0 + 1),#0x00
	mov	(_make_linefi_payload_sloc0_1_0 + 1),r6
;	src/main.c:658: apu8Data[0],
	mov	r5,#0x00
;	src/main.c:657: printf_fast_f("%lu(%x, %x, %x)\r\n", au32LineFiUpSpeed,
	push	ar3
	push	ar2
	push	ar1
	push	ar7
	push	ar6
	push	_make_linefi_payload_sloc0_1_0
	push	(_make_linefi_payload_sloc0_1_0 + 1)
	push	ar0
	push	ar5
	push	_make_linefi_payload_au32LineFiUpSpeed_65536_100
	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1)
	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2)
	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 3)
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
;	src/main.c:661: apu8Data[3] = au8ULTMode;
	mov	a,#0x03
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_make_linefi_payload_PARM_2
	lcall	__gptrput
;	src/main.c:662: apu8Data[4] = au8ULTData;
	mov	a,#0x04
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,_make_linefi_payload_PARM_3
;	src/main.c:663: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;u8RxBufIdx                Allocated to registers 
;u8Count2                  Allocated to registers 
;u8RxPktCnt                Allocated to registers 
;u8PreambleCnt             Allocated to registers 
;i                         Allocated to registers r6 
;u8RxUART                  Allocated with name '_main_u8RxUART_65536_103'
;u8RxUART1                 Allocated with name '_main_u8RxUART1_65536_103'
;u16Cnt                    Allocated with name '_main_u16Cnt_65536_103'
;u8OutputState             Allocated with name '_main_u8OutputState_65536_103'
;u8StateRxCSC              Allocated with name '_main_u8StateRxCSC_65536_103'
;u8LineFiAddr              Allocated with name '_main_u8LineFiAddr_65536_103'
;u8LineFiSpeed             Allocated with name '_main_u8LineFiSpeed_65536_103'
;u8LineFiCmd               Allocated with name '_main_u8LineFiCmd_65536_103'
;u8PwrOnFirstFlag          Allocated with name '_main_u8PwrOnFirstFlag_65536_103'
;u8SwNum                   Allocated with name '_main_u8SwNum_65536_103'
;u8StatePeriodicSend       Allocated with name '_main_u8StatePeriodicSend_65536_103'
;u8PSCmd                   Allocated with name '_main_u8PSCmd_65536_103'
;u8StateUart0InputMode     Allocated with name '_main_u8StateUart0InputMode_65536_103'
;pcBuf                     Allocated with name '_main_pcBuf_65536_103'
;pu8Data                   Allocated with name '_main_pu8Data_65536_103'
;u8DataIdx                 Allocated with name '_main_u8DataIdx_65536_103'
;ucBufIdx                  Allocated with name '_main_ucBufIdx_65536_103'
;pstLineFiPkt              Allocated with name '_main_pstLineFiPkt_65536_103'
;stLineFiPkt_test          Allocated with name '_main_stLineFiPkt_test_65536_103'
;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_103'
;------------------------------------------------------------
;	src/main.c:687: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:694: UINT8 __xdata u8LineFiAddr = 1;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:695: UINT8 __xdata u8LineFiSpeed = 5;
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	mov	a,#0x05
	movx	@dptr,a
;	src/main.c:696: UINT8 __xdata u8LineFiCmd = 1;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:697: UINT8 __xdata u8PwrOnFirstFlag = 1;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	movx	@dptr,a
;	src/main.c:700: UINT8 __xdata u8StatePeriodicSend = STATE_PS_INIT;
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	clr	a
	movx	@dptr,a
;	src/main.c:701: UINT8 __xdata u8PSCmd = STATE_PS_INIT;
	mov	dptr,#_main_u8PSCmd_65536_103
	movx	@dptr,a
;	src/main.c:704: uart0_input_mode_t __xdata u8StateUart0InputMode = UART0_INPUT_MODE8;
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	mov	a,#0x08
	movx	@dptr,a
;	src/main.c:708: unsigned char __xdata pu8Data[MAX_DATA] = {0,0,0,0,0,0,0,0,0,0};
	mov	dptr,#_main_pu8Data_65536_103
	clr	a
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_main_pu8Data_65536_103 + 0x0009)
	movx	@dptr,a
;	src/main.c:709: unsigned char __xdata u8DataIdx = 0;
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	@dptr,a
;	src/main.c:710: uint8  __xdata ucBufIdx = 0;
	mov	dptr,#_main_ucBufIdx_65536_103
	movx	@dptr,a
;	src/main.c:712: linefi_packet_t __xdata pstLineFiPkt[] = {
	mov	dptr,#_main_pstLineFiPkt_65536_103
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0001)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0002)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0003)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0004)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0005)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0008)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0009)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000b)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000c)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000d)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0010)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0011)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0012)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0013)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0014)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0015)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0018)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0019)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001a)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001b)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001c)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001d)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0020)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0021)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0022)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0023)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0024)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0025)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:720: linefi_packet_t __xdata stLineFiPkt_test = { // For sending periodic packet
	mov	dptr,#_main_stLineFiPkt_test_65536_103
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0001)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0003)
	swap	a
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0004)
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0005)
	mov	a,#_gpu8Data2
	movx	@dptr,a
	mov	a,#(_gpu8Data2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:728: linefi_packet_t __xdata stLineFiPkt = {
	mov	dptr,#_main_stLineFiPkt_65536_103
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0003)
	swap	a
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
	mov	a,#_gpu8Data
	movx	@dptr,a
	mov	a,#(_gpu8Data >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:737: gpio_setup();
	lcall	_gpio_setup
;	src/main.c:738: uart_setup();
	lcall	_uart_setup
;	src/main.c:740: MODIFY_HIRC_166();
	lcall	_MODIFY_HIRC_166
;	src/main.c:742: clr_T0M;// 16/12 MHz
	anl	_CKCON,#0xf7
;	src/main.c:745: set_ET0;                                    //enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	src/main.c:746: set_TR0;                                    //Timer0 run
;	assignBit
	setb	_TR0
;	src/main.c:748: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:749: printf_fast_f("This is UART0\n\r");
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:750: printf_fast_f("LineFi Master\n\r");
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:751: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:752: printf_fast_f("This is UART1\n\r");
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:759: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	r6,#0x30
	mov	r7,#0x75
00255$:
;	src/main.c:760: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
	dec	r6
	cjne	r6,#0xff,00599$
	dec	r7
00599$:
;	src/main.c:759: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	a,r6
	orl	a,r7
	jnz	00255$
;	src/main.c:762: LINEFI_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:763: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:770: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	r6,#0x30
	mov	r7,#0x75
00258$:
;	src/main.c:771: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
	dec	r6
	cjne	r6,#0xff,00601$
	dec	r7
00601$:
;	src/main.c:770: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	a,r6
	orl	a,r7
	jnz	00258$
;	src/main.c:774: InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
	mov	dptr,#(_gpu32UartSpeed + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_InitialUART1_Timer3
;	src/main.c:776: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	r6,#0x30
	mov	r7,#0x75
00261$:
;	src/main.c:777: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
	dec	r6
	cjne	r6,#0xff,00603$
	dec	r7
00603$:
;	src/main.c:776: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	a,r6
	orl	a,r7
	jnz	00261$
;	src/main.c:779: LINEFI_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:781: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
	mov	dptr,#(_gcUartInputMode + 0x0018)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:782: LINEFI_EN0 = 1;
;	assignBit
	setb	_P10
;	src/main.c:783: LINEFI_EN1 = 0;
;	assignBit
	clr	_P11
;	src/main.c:784: LINEFI_EN2 = 0;
;	assignBit
	clr	_P12
;	src/main.c:786: while(1) {
00251$:
;	src/main.c:790: if (getchar_uart0(&u8RxUART)) { // 유아트 입력이 있을 때
	mov	dptr,#_main_u8RxUART_65536_103
	mov	b,#0x00
	lcall	_getchar_uart0
	mov	a,dpl
	jnz	00605$
	ljmp	00199$
00605$:
;	src/main.c:792: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x1b,00606$
	sjmp	00104$
00606$:
	cjne	r7,#0x1c,00607$
	sjmp	00108$
00607$:
	cjne	r7,#0x1d,00608$
	sjmp	00108$
00608$:
	ljmp	00111$
;	src/main.c:793: case KEY_ESC :
00104$:
;	src/main.c:794: u8StateUart0InputMode++;
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:795: if (u8StateUart0InputMode == MAX_STATE_UART0_INPUT) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x09,00106$
;	src/main.c:796: u8StateUart0InputMode = 0;
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	clr	a
	movx	@dptr,a
00106$:
;	src/main.c:798: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	mov	b,#0x03
	mul	ab
	add	a,#_gcUartInputMode
	mov	dpl,a
	mov	a,#(_gcUartInputMode >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:799: break;
	ljmp	00200$
;	src/main.c:801: case KEY_29 :
00108$:
;	src/main.c:802: u8StateUart0InputMode--;
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:803: if (u8StateUart0InputMode == 255) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xff,00110$
;	src/main.c:804: u8StateUart0InputMode = MAX_STATE_UART0_INPUT-1;
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	mov	a,#0x08
	movx	@dptr,a
00110$:
;	src/main.c:806: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	mov	b,#0x03
	mul	ab
	add	a,#_gcUartInputMode
	mov	dpl,a
	mov	a,#(_gcUartInputMode >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:807: break;
	ljmp	00200$
;	src/main.c:809: default :
00111$:
;	src/main.c:810: switch(u8StateUart0InputMode) {
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x08
	jnc	00613$
	ljmp	00200$
00613$:
	mov	a,r6
	add	a,#(00614$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00615$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00614$:
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00135$
	.db	00151$
	.db	00155$
	.db	00176$
	.db	00177$
	.db	00200$
00615$:
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00135$>>8
	.db	00151$>>8
	.db	00155$>>8
	.db	00176$>>8
	.db	00177$>>8
	.db	00200$>>8
;	src/main.c:811: case UART0_INPUT_MODE0 :
00112$:
;	src/main.c:812: act_by_one_key(u8RxUART, &u8LineFiCmd, &u8LineFiAddr);
	mov	_act_by_one_key_PARM_2,#_main_u8LineFiCmd_65536_103
	mov	(_act_by_one_key_PARM_2 + 1),#(_main_u8LineFiCmd_65536_103 >> 8)
	mov	(_act_by_one_key_PARM_2 + 2),#0x00
	mov	_act_by_one_key_PARM_3,#_main_u8LineFiAddr_65536_103
	mov	(_act_by_one_key_PARM_3 + 1),#(_main_u8LineFiAddr_65536_103 >> 8)
	mov	(_act_by_one_key_PARM_3 + 2),#0x00
	mov	dpl,r7
	lcall	_act_by_one_key
;	src/main.c:813: break;
	ljmp	00200$
;	src/main.c:814: case UART0_INPUT_MODE1 :
00113$:
;	src/main.c:815: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:816: pcBuf[ucBufIdx++] = u8RxUART;
	mov	dptr,#_main_ucBufIdx_65536_103
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_main_pcBuf_65536_103
	mov	dpl,a
	clr	a
	addc	a,#(_main_pcBuf_65536_103 >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	src/main.c:818: break;
	ljmp	00200$
;	src/main.c:819: case UART0_INPUT_MODE2 : // mimic 5keys on board
00114$:
;	src/main.c:820: switch(u8RxUART) {
	cjne	r7,#0x66,00616$
	sjmp	00115$
00616$:
	cjne	r7,#0x67,00617$
	sjmp	00118$
00617$:
	cjne	r7,#0x68,00618$
	sjmp	00121$
00618$:
	cjne	r7,#0x6a,00619$
	sjmp	00122$
00619$:
	cjne	r7,#0x6b,00620$
	ljmp	00125$
00620$:
	ljmp	00128$
;	src/main.c:821: case 'f' : // down SW1
00115$:
;	src/main.c:822: u8LineFiAddr--;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:823: if (u8LineFiAddr == 0) {
	movx	a,@dptr
	jz	00621$
	ljmp	00128$
00621$:
;	src/main.c:824: u8LineFiAddr = 1;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:826: break;
	ljmp	00128$
;	src/main.c:827: case 'g' : // right SW2
00118$:
;	src/main.c:828: u8LineFiCmd--;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:829: if (u8LineFiCmd == 0) {
	movx	a,@dptr
	jz	00622$
	ljmp	00128$
00622$:
;	src/main.c:830: u8LineFiCmd = 1;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:832: break;
	ljmp	00128$
;	src/main.c:833: case 'h' : // center SW3
00121$:
;	src/main.c:834: stLineFiPkt.pu8Data = pu8Data;
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
	mov	a,#_main_pu8Data_65536_103
	movx	@dptr,a
	mov	a,#(_main_pu8Data_65536_103 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:835: send_linefi_packet(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_send_linefi_packet
;	src/main.c:836: break;
;	src/main.c:838: case 'j' : //  left SW4
	sjmp	00128$
00122$:
;	src/main.c:839: u8LineFiCmd++;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:840: if (u8LineFiCmd == 101) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x65,00124$
;	src/main.c:841: u8LineFiCmd = 100;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	mov	a,#0x64
	movx	@dptr,a
00124$:
;	src/main.c:843: printf_fast_f("command: %d\n\r", u8LineFiCmd);
	mov	dptr,#_main_u8LineFiCmd_65536_103
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:844: break;
;	src/main.c:845: case 'k' : // up SW5
	sjmp	00128$
00125$:
;	src/main.c:846: u8LineFiAddr++;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:847: if (u8LineFiAddr == 16) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x10,00127$
;	src/main.c:848: u8LineFiAddr = 15;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	mov	a,#0x0f
	movx	@dptr,a
00127$:
;	src/main.c:850: printf_fast_f("address: %d\n\r", u8LineFiAddr);
	mov	dptr,#_main_u8LineFiAddr_65536_103
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:852: }
00128$:
;	src/main.c:854: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x66,00627$
	sjmp	00132$
00627$:
	cjne	r6,#0x67,00628$
	sjmp	00132$
00628$:
	cjne	r6,#0x68,00629$
	ljmp	00200$
00629$:
	cjne	r6,#0x6a,00630$
	sjmp	00132$
00630$:
	cjne	r6,#0x6b,00631$
	sjmp	00632$
00631$:
	ljmp	00200$
00632$:
;	src/main.c:858: case 'k' : // up SW5
00132$:
;	src/main.c:859: stLineFiPkt.u8Addr = u8LineFiAddr;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	movx	a,@dptr
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0002)
	movx	@dptr,a
;	src/main.c:860: stLineFiPkt.u8Type = u8LineFiCmd;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	movx	a,@dptr
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
	movx	@dptr,a
;	src/main.c:861: print_linefipacket(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_print_linefipacket
;	src/main.c:862: break;
	ljmp	00200$
;	src/main.c:869: case UART0_INPUT_MODE3 : // slave gpio pin setting
00135$:
;	src/main.c:870: switch(u8RxUART) {
	cjne	r7,#0x68,00633$
	sjmp	00136$
00633$:
	cjne	r7,#0x6a,00634$
	sjmp	00139$
00634$:
	cjne	r7,#0x6b,00635$
	sjmp	00140$
00635$:
;	src/main.c:871: case 'h' : // left
	cjne	r7,#0x6c,00144$
	sjmp	00141$
00136$:
;	src/main.c:872: u8DataIdx--;
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:873: if (u8DataIdx == 255) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xff,00144$
;	src/main.c:874: u8DataIdx = 0;
	mov	dptr,#_main_u8DataIdx_65536_103
	clr	a
	movx	@dptr,a
;	src/main.c:876: break;
;	src/main.c:877: case 'j' : // down 
	sjmp	00144$
00139$:
;	src/main.c:878: pu8Data[u8DataIdx]--;
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	a,@dptr
	add	a,#_main_pu8Data_65536_103
	mov	r6,a
	clr	a
	addc	a,#(_main_pu8Data_65536_103 >> 8)
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	dec	r4
	mov	dpl,r6
	mov	dph,r5
	mov	a,r4
	movx	@dptr,a
;	src/main.c:879: break;
;	src/main.c:880: case 'k' : // up 
	sjmp	00144$
00140$:
;	src/main.c:881: pu8Data[u8DataIdx]++;
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	a,@dptr
	add	a,#_main_pu8Data_65536_103
	mov	r6,a
	clr	a
	addc	a,#(_main_pu8Data_65536_103 >> 8)
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	inc	r4
	mov	dpl,r6
	mov	dph,r5
	mov	a,r4
	movx	@dptr,a
;	src/main.c:882: break;
;	src/main.c:883: case 'l' : // right 
	sjmp	00144$
00141$:
;	src/main.c:884: u8DataIdx++;
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:885: if (u8DataIdx == MAX_DATA) {
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0a,00144$
;	src/main.c:886: u8DataIdx--;;
	mov	a,r6
	dec	a
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	@dptr,a
;	src/main.c:889: }
00144$:
;	src/main.c:890: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x68,00641$
	sjmp	00146$
00641$:
	cjne	r6,#0x6a,00642$
	sjmp	00301$
00642$:
	cjne	r6,#0x6b,00643$
	sjmp	00301$
00643$:
	cjne	r6,#0x6c,00151$
;	src/main.c:892: case 'l' : // right
00146$:
;	src/main.c:893: printf_fast_f("DataIdx:%d\r\n", u8DataIdx);
	mov	dptr,#_main_u8DataIdx_65536_103
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:894: break;
;	src/main.c:899: for (i=0;i<MAX_DATA;i++) {
	sjmp	00151$
00301$:
	mov	r6,#0x00
00262$:
;	src/main.c:900: printf("0x%x ", pu8Data[i]);
	mov	a,r6
	add	a,#_main_pu8Data_65536_103
	mov	dpl,a
	clr	a
	addc	a,#(_main_pu8Data_65536_103 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
;	src/main.c:899: for (i=0;i<MAX_DATA;i++) {
	inc	r6
	cjne	r6,#0x0a,00646$
00646$:
	jc	00262$
;	src/main.c:902: printf_fast_f("\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:906: case UART0_INPUT_MODE4 : // 주기적으로 하향 패킷 생성 스테이트머신 제어용 CLI
00151$:
;	src/main.c:907: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x65,00648$
	sjmp	00153$
00648$:
	cjne	r6,#0x73,00155$
;	src/main.c:909: printf_fast_f("START periodic packet generating..\r\n");
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:910: u8PSCmd = CMD_PS_START;
	mov	dptr,#_main_u8PSCmd_65536_103
	mov	a,#0x04
	movx	@dptr,a
;	src/main.c:911: break;
;	src/main.c:912: case 'e' : // 종료
	sjmp	00155$
00153$:
;	src/main.c:913: printf_fast_f("STOP  periodic packet generating..\r\n");
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:914: u8PSCmd = CMD_PS_END;
	mov	dptr,#_main_u8PSCmd_65536_103
	mov	a,#0x05
	movx	@dptr,a
;	src/main.c:918: case UART0_INPUT_MODE5 : // 상향 시험용
00155$:
;	src/main.c:919: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,00651$
	sjmp	00156$
00651$:
	cjne	r6,#0x31,00652$
	sjmp	00157$
00652$:
	cjne	r6,#0x32,00653$
	ljmp	00158$
00653$:
	cjne	r6,#0x33,00654$
	ljmp	00159$
00654$:
	cjne	r6,#0x34,00655$
	ljmp	00160$
00655$:
	cjne	r6,#0x35,00656$
	ljmp	00161$
00656$:
	cjne	r6,#0x6a,00657$
	ljmp	00165$
00657$:
	cjne	r6,#0x6b,00658$
	ljmp	00162$
00658$:
	ljmp	00168$
;	src/main.c:920: case '0' : // 
00156$:
;	src/main.c:921: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_INIT, 0, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x00
	mov	_make_linefi_payload_PARM_3,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:922: break;
	ljmp	00168$
;	src/main.c:923: case '1' : // 
00157$:
;	src/main.c:924: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_PREAMBLE, 0, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x01
	mov	_make_linefi_payload_PARM_3,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:925: break;
	ljmp	00168$
;	src/main.c:926: case '2' : // 
00158$:
;	src/main.c:927: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_DATA, 0, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x02
	mov	_make_linefi_payload_PARM_3,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:928: break;
	ljmp	00168$
;	src/main.c:929: case '3' : // 
00159$:
;	src/main.c:930: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_DATA, 0xff, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x02
	mov	_make_linefi_payload_PARM_3,#0xff
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:931: break;
	ljmp	00168$
;	src/main.c:932: case '4' : // 
00160$:
;	src/main.c:933: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_NO_MANCHESTER, 0x0, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x03
	mov	_make_linefi_payload_PARM_3,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:934: break;
	ljmp	00168$
;	src/main.c:935: case '5' : // 
00161$:
;	src/main.c:936: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_NO_MANCHESTER, 0xff, pu8Data);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
	mov	_make_linefi_payload_PARM_2,#0x03
	mov	_make_linefi_payload_PARM_3,#0xff
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_make_linefi_payload
;	src/main.c:937: break;
	ljmp	00168$
;	src/main.c:939: case 'k' : // speed up
00162$:
;	src/main.c:940: if (u8LineFiSpeed  < 13) {
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0d,00659$
00659$:
	jnc	00164$
;	src/main.c:941: u8LineFiSpeed++;
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	mov	a,r6
	inc	a
	movx	@dptr,a
00164$:
;	src/main.c:943: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:944: break;
;	src/main.c:945: case 'j' : // speed down
	sjmp	00168$
00165$:
;	src/main.c:946: if (u8LineFiSpeed  != 0) {
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00167$
;	src/main.c:947: u8LineFiSpeed--;
	mov	a,r6
	dec	a
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	@dptr,a
00167$:
;	src/main.c:949: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:951: }
00168$:
;	src/main.c:952: switch(u8RxUART) {
	mov	dptr,#_main_u8RxUART_65536_103
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,00662$
	sjmp	00174$
00662$:
	cjne	r6,#0x31,00663$
	sjmp	00174$
00663$:
	cjne	r6,#0x32,00664$
	sjmp	00174$
00664$:
	cjne	r6,#0x33,00665$
	sjmp	00174$
00665$:
	cjne	r6,#0x34,00666$
	sjmp	00174$
00666$:
	cjne	r6,#0x35,00667$
	sjmp	00668$
00667$:
	ljmp	00200$
00668$:
;	src/main.c:958: case '5' : // 
00174$:
;	src/main.c:959: stLineFiPkt.u8Type = Type_UpLinkTest;
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
	mov	a,#0x07
	movx	@dptr,a
;	src/main.c:960: stLineFiPkt.u8Size = 10;
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0003)
	mov	a,#0x0a
	movx	@dptr,a
;	src/main.c:961: stLineFiPkt.pu8Data = pu8Data;
	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
	mov	a,#_main_pu8Data_65536_103
	movx	@dptr,a
	mov	a,#(_main_pu8Data_65536_103 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:963: send_linefi_packet(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_send_linefi_packet
;	src/main.c:964: print_linefipacket(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_print_linefipacket
;	src/main.c:965: InitialUART1_Timer3(gpu32UartSpeed[u8LineFiSpeed]);
	mov	dptr,#_main_u8LineFiSpeed_65536_103
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_InitialUART1_Timer3
;	src/main.c:969: break;
	ljmp	00200$
;	src/main.c:970: case UART0_INPUT_MODE6 : // 루프백 확인
00176$:
;	src/main.c:971: printf_fast_f("%c", u8RxUART);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:972: break;
	ljmp	00200$
;	src/main.c:973: case UART0_INPUT_MODE7 : // uart0 --> uart1 통과
00177$:
;	src/main.c:974: if ((u8RxUART>>4) == 0) {
	mov	a,r7
	swap	a
	anl	a,#0x0f
	jnz	00184$
;	src/main.c:975: switch(u8RxUART) {
	mov	a,r7
	mov	r6,a
	add	a,#0xff - 0x03
	jnc	00670$
	ljmp	00200$
00670$:
	mov	a,r6
	add	a,r6
;	src/main.c:976: case 0 :
	mov	dptr,#00671$
	jmp	@a+dptr
00671$:
	sjmp	00178$
	sjmp	00179$
	sjmp	00200$
	sjmp	00200$
00178$:
;	src/main.c:977: LINEFI_EN0 = 0;
;	assignBit
	clr	_P10
;	src/main.c:978: break;
;	src/main.c:979: case 1 :
	sjmp	00200$
00179$:
;	src/main.c:980: LINEFI_EN0 = 1;
;	assignBit
	setb	_P10
;	src/main.c:982: break;
;	src/main.c:987: }
	sjmp	00200$
00184$:
;	src/main.c:990: send_octet_to_linefi(u8RxUART);
	mov	dpl,r7
	lcall	_send_octet_to_linefi
;	src/main.c:991: printf_fast_f("OK");
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:993: break;
;	src/main.c:998: } //switch(u8RxUART)
	sjmp	00200$
00199$:
;	src/main.c:1002: switch(u8StateUart0InputMode) {
	mov	dptr,#_main_u8StateUart0InputMode_65536_103
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00200$
	mov	a,r7
	add	a,r7
;	src/main.c:1005: case UART0_INPUT_MODE1 :
	mov	dptr,#00673$
	jmp	@a+dptr
00673$:
	sjmp	00200$
	sjmp	00190$
	sjmp	00200$
	sjmp	00200$
	sjmp	00200$
00190$:
;	src/main.c:1006: if (gu16TimeCnt > 10 && ucBufIdx != 0) {
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x0a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00200$
	mov	dptr,#_main_ucBufIdx_65536_103
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00200$
;	src/main.c:1007: printoutbuf(ucBufIdx, pcBuf);
	mov	_printoutbuf_PARM_2,#_main_pcBuf_65536_103
	mov	(_printoutbuf_PARM_2 + 1),#(_main_pcBuf_65536_103 >> 8)
	mov	(_printoutbuf_PARM_2 + 2),#0x00
	mov	dpl,r7
	lcall	_printoutbuf
;	src/main.c:1008: ucBufIdx = 0;
	mov	dptr,#_main_ucBufIdx_65536_103
	clr	a
	movx	@dptr,a
;	src/main.c:1017: } //switch(u8StateUart0InputMode)
00200$:
;	src/main.c:1025: if (u8PwrOnFirstFlag) { // 전원 켜진 후, 한 번만 동작
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	movx	a,@dptr
	mov	r7,a
	jnz	00676$
	ljmp	00212$
00676$:
;	src/main.c:1026: switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3)| (SW_C<<4), &u8SwNum)) {
	mov	c,_P15
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_P30
	clr	a
	rlc	a
	add	a,acc
	orl	ar6,a
	mov	c,_P00
	clr	a
	rlc	a
	add	a,acc
	add	a,acc
	orl	ar6,a
	mov	c,_P13
	clr	a
	rlc	a
	swap	a
	rr	a
	anl	a,#0xf8
	orl	ar6,a
	mov	c,_P17
	clr	a
	rlc	a
	swap	a
	anl	a,#0xf0
	orl	a,r6
	mov	dpl,a
	mov	_state_switches_PARM_2,#_main_u8SwNum_65536_103
	mov	(_state_switches_PARM_2 + 1),#(_main_u8SwNum_65536_103 >> 8)
	mov	(_state_switches_PARM_2 + 2),#0x00
	push	ar7
	lcall	_state_switches
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00677$
	sjmp	00678$
00677$:
	ljmp	00213$
00678$:
;	src/main.c:1028: switch(u8PwrOnFirstFlag) {
	mov	a,r7
	mov	r6,a
	add	a,#0xff - 0x05
	jnc	00679$
	ljmp	00213$
00679$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00680$
	jmp	@a+dptr
00680$:
	ljmp	00213$
	ljmp	00202$
	ljmp	00203$
	ljmp	00204$
	ljmp	00205$
	ljmp	00206$
;	src/main.c:1029: case 1 :
00202$:
;	src/main.c:1030: LINEFI_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:1031: LINEFI_EN0 = 0;
;	assignBit
	clr	_P10
;	src/main.c:1032: LINEFI_EN1 = 1;
;	assignBit
	setb	_P11
;	src/main.c:1033: LINEFI_EN2 = 0;
;	assignBit
	clr	_P12
;	src/main.c:1034: u8PwrOnFirstFlag++;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	mov	a,r7
	inc	a
	movx	@dptr,a
;	src/main.c:1035: break;
	ljmp	00213$
;	src/main.c:1036: case 2 :
00203$:
;	src/main.c:1037: InitialUART1_Timer3(gpu32UartSpeed[0]);
	mov	dptr,#_gpu32UartSpeed
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_InitialUART1_Timer3
;	src/main.c:1038: send_octet_to_linefi(((LINEFI_DEFAULT_RATE_IDX<<4)&0xF0) | (1)&0x0F);
	mov	dpl,#0x51
	lcall	_send_octet_to_linefi
;	src/main.c:1039: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
	mov	dptr,#(_gpu32UartSpeed + 0x0014)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:1040: InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
	mov	dptr,#(_gpu32UartSpeed + 0x0014)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_InitialUART1_Timer3
;	src/main.c:1042: u8LineFiCmd = 2;
	mov	dptr,#_main_u8LineFiCmd_65536_103
	mov	a,#0x02
	movx	@dptr,a
;	src/main.c:1043: u8LineFiAddr = 1;
	mov	dptr,#_main_u8LineFiAddr_65536_103
	dec	a
	movx	@dptr,a
;	src/main.c:1044: u8PwrOnFirstFlag = 0;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	clr	a
	movx	@dptr,a
;	src/main.c:1045: break;
;	src/main.c:1046: case 3 :
	sjmp	00213$
00204$:
;	src/main.c:1047: u8PwrOnFirstFlag++;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	mov	a,r7
	inc	a
	movx	@dptr,a
;	src/main.c:1048: break;
;	src/main.c:1049: case 4 :
	sjmp	00213$
00205$:
;	src/main.c:1050: u8PwrOnFirstFlag++;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	mov	a,r7
	inc	a
	movx	@dptr,a
;	src/main.c:1051: break;
;	src/main.c:1052: case 5 :
	sjmp	00213$
00206$:
;	src/main.c:1053: u8PwrOnFirstFlag++;
	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
	mov	a,r7
	inc	a
	movx	@dptr,a
;	src/main.c:1085: } //switch (state_switches((SW1<<0)| (SW2<<1)| (SW3<<2)| (SW4<<3) | (SW5<<4), &u8SwNum))
	sjmp	00213$
00212$:
;	src/main.c:1088: switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum)) {
	mov	c,_P15
	clr	a
	rlc	a
	mov	r7,a
	mov	c,_P30
	clr	a
	rlc	a
	add	a,acc
	orl	ar7,a
	mov	c,_P00
	clr	a
	rlc	a
	add	a,acc
	add	a,acc
	orl	ar7,a
	mov	c,_P13
	clr	a
	rlc	a
	swap	a
	rr	a
	anl	a,#0xf8
	orl	ar7,a
	mov	c,_P17
	clr	a
	rlc	a
	swap	a
	anl	a,#0xf0
	orl	a,r7
	mov	dpl,a
	mov	_state_switches_PARM_2,#_main_u8SwNum_65536_103
	mov	(_state_switches_PARM_2 + 1),#(_main_u8SwNum_65536_103 >> 8)
	mov	(_state_switches_PARM_2 + 2),#0x00
	lcall	_state_switches
;	src/main.c:1272: } //switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum))
00213$:
;	src/main.c:1297: switch(u8StatePeriodicSend) {
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	movx	a,@dptr
	mov	r7,a
	jz	00214$
	cjne	r7,#0x01,00682$
	sjmp	00217$
00682$:
	cjne	r7,#0x03,00683$
	sjmp	00220$
00683$:
	ljmp	00251$
;	src/main.c:1298: case STATE_PS_INIT : // 초기 시스템 시작
00214$:
;	src/main.c:1299: if (u8PSCmd == CMD_PS_START) {
	mov	dptr,#_main_u8PSCmd_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00684$
	sjmp	00685$
00684$:
	ljmp	00251$
00685$:
;	src/main.c:1300: u8StatePeriodicSend = STATE_PS_WAITING;
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:1301: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1302: start_aloha(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_start_aloha
;	src/main.c:1303: printf_fast_f("starting ALOHA...\r\n");
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1305: break;
	ljmp	00251$
;	src/main.c:1306: case STATE_PS_SENDING : // ACK 보내기
00217$:
;	src/main.c:1308: u8StatePeriodicSend = STATE_PS_WAITING;				
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:1309: if (u8PSCmd == CMD_PS_END) {
	mov	dptr,#_main_u8PSCmd_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00686$
	sjmp	00687$
00686$:
	ljmp	00251$
00687$:
;	src/main.c:1310: u8StatePeriodicSend = STATE_PS_INIT;
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	clr	a
	movx	@dptr,a
;	src/main.c:1311: printf_fast_f("stopping ALOHA...");
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1313: break;
	ljmp	00251$
;	src/main.c:1314: case STATE_PS_WAITING : // 데이터 수신 대기 				
00220$:
;	src/main.c:1315: if (getchar_uart1(&u8RxUART1)) { // 라인파이 상향 수신
	mov	dptr,#_main_u8RxUART1_65536_103
	mov	b,#0x00
	lcall	_getchar_uart1
	mov	a,dpl
	jnz	00688$
	ljmp	00246$
00688$:
;	src/main.c:1316: switch(gu8LineFiUpRxState4) {
	mov	dptr,#_gu8LineFiUpRxState4
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00689$
	sjmp	00221$
00689$:
	cjne	r7,#0x07,00690$
	sjmp	00224$
00690$:
	cjne	r7,#0x08,00691$
	sjmp	00228$
00691$:
	cjne	r7,#0x09,00692$
	ljmp	00237$
00692$:
	ljmp	00246$
;	src/main.c:1317: case LFURxState_INIT4 :
00221$:
;	src/main.c:1318: if (u8RxUART1 == 0x00) {
	mov	dptr,#_main_u8RxUART1_65536_103
	movx	a,@dptr
	jz	00693$
	ljmp	00246$
00693$:
;	src/main.c:1320: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1321: gu8LineFiUpRxState4 = LFURxState_PPAMBLE4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x07
	movx	@dptr,a
;	src/main.c:1322: gu8PPambleCnt = 1;
	mov	dptr,#_gu8PPambleCnt
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:1324: break;
	ljmp	00246$
;	src/main.c:1325: case LFURxState_PPAMBLE4 : // 프리프리앰블 상태..
00224$:
;	src/main.c:1326: if (u8RxUART1 == 0xF0) {
	mov	dptr,#_main_u8RxUART1_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00226$
;	src/main.c:1328: gu8LineFiUpRxState4 = LFURxState_PREAMBLE4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x08
	movx	@dptr,a
;	src/main.c:1329: gu8PreambleCnt = 1;
	mov	dptr,#_gu8PreambleCnt
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00246$
00226$:
;	src/main.c:1332: gu8PPambleCnt++;
	mov	dptr,#_gu8PPambleCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1334: break;
	ljmp	00246$
;	src/main.c:1335: case LFURxState_PREAMBLE4 : //프리앰블 받은 상태												
00228$:
;	src/main.c:1336: if (u8RxUART1 == 0xF0) {
	mov	dptr,#_main_u8RxUART1_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00233$
;	src/main.c:1339: gu8PreambleCnt ++;
	mov	dptr,#_gu8PreambleCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1340: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00234$
00233$:
;	src/main.c:1342: else if (gu8PreambleCnt == 3) { // 프리앰블이 정확히 5개일때,
	mov	dptr,#_gu8PreambleCnt
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x03,00230$
;	src/main.c:1343: gu8LineFiUpRxState4 = LFURxState_RX4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x09
	movx	@dptr,a
;	src/main.c:1345: gpu8RxBuf[gu8RxBufCnt++] = u8RxUART1;
	mov	dptr,#_gu8RxBufCnt
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_gpu8RxBuf
	mov	a,r7
	movx	@dptr,a
;	src/main.c:1346: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00234$
00230$:
;	src/main.c:1349: gu8LineFiUpRxState4 = LFURxState_RX4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x09
	movx	@dptr,a
00234$:
;	src/main.c:1352: if (gu16TimeCntMilliSec > 1000) { // 잘못된 프리앰블
	mov	dptr,#_gu16TimeCntMilliSec
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xe8
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00700$
	ljmp	00246$
00700$:
;	src/main.c:1353: printf_fast_f("1000 ");
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1354: gu8LineFiUpRxState4 = LFURxState_INIT4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:1355: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1357: break;
	ljmp	00246$
;	src/main.c:1358: case LFURxState_RX4 :
00237$:
;	src/main.c:1359: gpu8RxBuf[gu8RxBufCnt++] = u8RxUART1;
	mov	dptr,#_gu8RxBufCnt
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
	mov	a,r7
	add	a,#_gpu8RxBuf
	mov	r7,a
	clr	a
	addc	a,#(_gpu8RxBuf >> 8)
	mov	r6,a
	mov	dptr,#_main_u8RxUART1_65536_103
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r7
	mov	dph,r6
	movx	@dptr,a
;	src/main.c:1361: if (gu8RxBufCnt == 11) {
	mov	dptr,#_gu8RxBufCnt
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0b,00701$
	sjmp	00702$
00701$:
	ljmp	00241$
00702$:
;	src/main.c:1364: if (gpu8RxBuf[2] < 10) {
	mov	dptr,#(_gpu8RxBuf + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0a,00703$
00703$:
	jnc	00239$
;	src/main.c:1366: cp_buf2linefipacket(gu8RxBufCnt, gpu8RxBuf, &stLineFiPkt);									
	mov	_cp_buf2linefipacket_PARM_2,#_gpu8RxBuf
	mov	(_cp_buf2linefipacket_PARM_2 + 1),#(_gpu8RxBuf >> 8)
	mov	(_cp_buf2linefipacket_PARM_2 + 2),#0x00
	mov	_cp_buf2linefipacket_PARM_3,#_main_stLineFiPkt_65536_103
	mov	(_cp_buf2linefipacket_PARM_3 + 1),#(_main_stLineFiPkt_65536_103 >> 8)
	mov	(_cp_buf2linefipacket_PARM_3 + 2),#0x00
	mov	dpl,r7
	lcall	_cp_buf2linefipacket
;	src/main.c:1370: printf_fast_f("Slave_ADDR: %d, UL_Packet_num: %d\r\n",gpu8RxBuf[2], gpu8RxBuf[0]);
	mov	dptr,#_gpu8RxBuf
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_gpu8RxBuf + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:1371: print_linefipacket(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_print_linefipacket
;	src/main.c:1372: send_ACK(&stLineFiPkt, &stLineFiPkt_test);
	mov	_send_ACK_PARM_2,#_main_stLineFiPkt_test_65536_103
	mov	(_send_ACK_PARM_2 + 1),#(_main_stLineFiPkt_test_65536_103 >> 8)
	mov	(_send_ACK_PARM_2 + 2),#0x00
	mov	dptr,#_main_stLineFiPkt_65536_103
	mov	b,#0x00
	lcall	_send_ACK
00239$:
;	src/main.c:1375: printf_fast_f("\r\n\r\n");
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1376: gu8RxBufCnt = 0;
	mov	dptr,#_gu8RxBufCnt
	clr	a
	movx	@dptr,a
;	src/main.c:1377: gu8LineFiUpRxState4 = LFURxState_INIT4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:1378: u8StatePeriodicSend = STATE_PS_SENDING;
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	mov	a,#0x01
	movx	@dptr,a
00241$:
;	src/main.c:1380: if (gu16TimeCntMilliSec > 3000) { 
	mov	dptr,#_gu16TimeCntMilliSec
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xb8
	subb	a,r6
	mov	a,#0x0b
	subb	a,r7
	jnc	00246$
;	src/main.c:1381: gu8LineFiUpRxState4 = LFURxState_INIT4;
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:1382: gu16TimeCntMilliSec = 0;
	mov	dptr,#_gu16TimeCntMilliSec
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1383: gu8RxBufCnt = 0;
	mov	dptr,#_gu8RxBufCnt
	movx	@dptr,a
;	src/main.c:1388: }
00246$:
;	src/main.c:1391: if (u8PSCmd == CMD_PS_END) {
	mov	dptr,#_main_u8PSCmd_65536_103
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00706$
	sjmp	00707$
00706$:
	ljmp	00251$
00707$:
;	src/main.c:1392: gu8RxBufCnt = 0;
	mov	dptr,#_gu8RxBufCnt
	clr	a
	movx	@dptr,a
;	src/main.c:1393: u8StatePeriodicSend = STATE_PS_INIT;
	mov	dptr,#_main_u8StatePeriodicSend_65536_103
	movx	@dptr,a
;	src/main.c:1394: gu8LineFiUpRxState4 = LFURxState_INIT4;  // 프리앰블 상태 초기화
	mov	dptr,#_gu8LineFiUpRxState4
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:1395: printf_fast_f("stopping...\r\n");
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1399: }
;	src/main.c:1507: }
	ljmp	00251$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "self "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "cross"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "both "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii " output:This is UART%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "input:This is UART%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Idle preamble on/off"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "LineFi Power Off"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "LineFi Power On"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "LineFi Uart Tx Low"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "LineFi Uart Tx High"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "LineFi CSC rx FSM Off"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "LineFi CSC rx FSM ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Version 1.4 on 20231026"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "1: downlink packet 1"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "2: downlink packet 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "3: uplink idle preamble on/off"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "p/P: LineFi Power off/on"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "t/T: LineFi Uart Tx Low/High"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "s/S: LineFie CSC Rx FSM off/on"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "test procedure: p -> P -> T -> S -> 1 or 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "t: timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "0: LineFi EN0,1,2 off"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "1: LineFi EN0 = 1"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "2:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "3:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "4:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "5:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "6:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "7:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "h: Addr--"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "j: Cmd--"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "k: Cmd++"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "l: Addr++"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "s: sending"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "%u"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "LINEFI_EN0=0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "LINEFI_EN0=1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "LINEFI_TX=0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "LINEFI_TX=1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "LINEFI_TX=%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "LINEFI_EN0="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "LINEFI_EN1="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "LINEFI_EN2="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "uart speed: %lu:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "address: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "command: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "LineFi Sending: 0x%x:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "address: 0x%d:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "LineFi Sending: %d(0x%x)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "send data %d(0x%x)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "Rotate!!:%d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "Stop    :%d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "%lu(%x, %x, %x)"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii "This is UART0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "LineFi Master"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii "This is UART1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii "%s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.ascii "DataIdx:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii "0x%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii "START periodic packet generating.."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "STOP  periodic packet generating.."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "OK"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "starting ALOHA..."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii "stopping ALOHA..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "1000 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "Slave_ADDR: %d, UL_Packet_num: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii "stopping..."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "UART0_INPUT_MODE0:one key control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "UART0_INPUT_MODE1:string input"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "UART0_INPUT_MODE2:mimic 5keys on board"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "UART0_INPUT_MODE3:data setting"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "UART0_INPUT_MODE4:periodic function"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "UART0_INPUT_MODE5:uplink test"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "UART0_INPUT_MODE6:loopback test"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "UART0_INPUT_MODE7:pass through"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "UART0_INPUT_MODE8: uplink rx"
	.db 0x00
	.area CSEG    (CODE)
	.area CABS    (ABS,CODE)
