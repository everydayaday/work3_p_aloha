;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _chk_my_addr_PARM_2
	.globl _gpcEEPROM
	.globl _main
	.globl _delay_nop
	.globl _calc_temp
	.globl _i2c_read_bytes_cs_bitbannging
	.globl _i2c_read_bytes_bitbannging
	.globl _i2c_write_bytes_bitbannging
	.globl _i2c_address_bitbanging
	.globl _i2c_read_bitbanging
	.globl _i2c_write_bitbanging
	.globl _i2c_setup
	.globl _get_uart0_char_nb
	.globl _process_all_packet
	.globl _set_uplink_test_mode
	.globl _process_my_packet
	.globl _chk_my_addr
	.globl _ctrl_rgbled_motor
	.globl _gpio_setup
	.globl _disp_help
	.globl _MODIFY_HIRC_166
	.globl _pin_interrupt_isr
	.globl _Timer0_ISR
	.globl _state_machine
	.globl _print_char
	.globl _print_esc
	.globl _Write_APROM_BYTE
	.globl _Erase_APROM_Page
	.globl _get_bktimer_value
	.globl _get_timer_value
	.globl _crc8
	.globl _print_linefipacket
	.globl _cp_buf2linefipacket
	.globl _send_linefi_packet
	.globl _get_octet_from_linefi
	.globl _add_crc_linefi_packet_packet
	.globl _putchar_manchester
	.globl _preamble
	.globl _getchar_uart0
	.globl _uart_setup
	.globl _set_linefi_uplink_speed
	.globl _InitialUART1_Timer3
	.globl _putchar
	.globl _printf_fast_f
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
	.globl _gu32TimeCnt
	.globl _gu16TimeCnt
	.globl _gpu16RxTime
	.globl _gpu32UartSpeed
	.globl _gppcULTestMode
	.globl _gpu8Data2
	.globl _gu8RateIdx
	.globl _gu8ULTestData
	.globl _gu8PPambleCnt
	.globl _gu8PPambleDurCnt
	.globl _gu8UpLinkTxState
	.globl _gu8ULTestMode
	.globl _gu8MotorState
	.globl _gpu8Data
	.globl _gu8DurModeMax
	.globl _gu8TxCnt
	.globl _gu8DurMode
	.globl _gu8LineFiUpRate
	.globl _gu8PPambleNum
	.globl _gu8PPambleDurLNum
	.globl _gu8PPambleDurHNum
	.globl _calc_temp_PARM_2
	.globl _i2c_read_bytes_cs_bitbannging_PARM_3
	.globl _i2c_read_bytes_cs_bitbannging_PARM_2
	.globl _i2c_read_bytes_bitbannging_PARM_3
	.globl _i2c_read_bytes_bitbannging_PARM_2
	.globl _i2c_write_bytes_bitbannging_PARM_3
	.globl _i2c_write_bytes_bitbannging_PARM_2
	.globl _i2c_address_bitbanging_PARM_2
	.globl _set_uplink_test_mode_PARM_2
	.globl _state_machine_PARM_4
	.globl _state_machine_PARM_3
	.globl _state_machine_PARM_2
	.globl _gu8MyAddr
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
_gu8MyAddr::
	.ds 1
_state_machine_PARM_2:
	.ds 1
_state_machine_PARM_3:
	.ds 1
_state_machine_PARM_4:
	.ds 1
_process_my_packet_sloc0_1_0:
	.ds 3
_set_uplink_test_mode_PARM_2:
	.ds 1
_process_all_packet_sloc0_1_0:
	.ds 3
_process_all_packet_sloc1_1_0:
	.ds 4
_i2c_address_bitbanging_PARM_2:
	.ds 1
_i2c_write_bytes_bitbannging_PARM_2:
	.ds 1
_i2c_write_bytes_bitbannging_PARM_3:
	.ds 3
_i2c_read_bytes_bitbannging_PARM_2:
	.ds 1
_i2c_read_bytes_bitbannging_PARM_3:
	.ds 3
_i2c_read_bytes_cs_bitbannging_PARM_2:
	.ds 1
_i2c_read_bytes_cs_bitbannging_PARM_3:
	.ds 3
_calc_temp_PARM_2:
	.ds 1
_main_su8Cnt_327681_146:
	.ds 1
_main_su8Cnt_262146_159:
	.ds 1
_main_u8RxUART_65536_136:
	.ds 1
_main_u8StateRxPkt_65536_136:
	.ds 1
_main_stLineFiPkt_65536_136:
	.ds 8
_main_stLineFiPkt2_65536_136:
	.ds 8
_main_stLineFiPkt_UL_65536_136:
	.ds 8
_main_u8RxBufIdx_65536_136:
	.ds 1
_main_u8RxLFPLen_65536_136:
	.ds 1
_main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_chk_my_addr_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_gu8PPambleDurHNum::
	.ds 1
_gu8PPambleDurLNum::
	.ds 1
_gu8PPambleNum::
	.ds 2
_gu8LineFiUpRate::
	.ds 1
_gu8DurMode::
	.ds 1
_gu8TxCnt::
	.ds 1
_gu8DurModeMax::
	.ds 1
_gpu8Data::
	.ds 20
_gu8MotorState::
	.ds 1
_gu8ULTestMode::
	.ds 1
_gu8UpLinkTxState::
	.ds 1
_gu8PPambleDurCnt::
	.ds 1
_gu8PPambleCnt::
	.ds 2
_gu8ULTestData::
	.ds 1
_gu8RateIdx::
	.ds 1
_gpu8Data2::
	.ds 20
_gppcULTestMode::
	.ds 15
_gpu32UartSpeed::
	.ds 56
_gpu16RxTime::
	.ds 40
_gu16TimeCnt::
	.ds 2
_gu32TimeCnt::
	.ds 4
_main_pu8RxUART_65536_136:
	.ds 30
_main_pktGenTime_65536_136:
	.ds 4
_main_backoffTimer_65536_136:
	.ds 4
_main_su8Cnt_65536_136:
	.ds 1
_main_su8InitCnt_327681_165:
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;su8Cnt                    Allocated with name '_main_su8Cnt_327681_146'
;su8Cnt                    Allocated with name '_main_su8Cnt_262146_159'
;u8PrevSwitch              Allocated to registers r7 
;u8UartRx                  Allocated to registers 
;u8RotSense                Allocated to registers 
;u8RxUART                  Allocated with name '_main_u8RxUART_65536_136'
;u16Cnt                    Allocated to registers r4 r7 
;u8OutputState             Allocated to registers 
;u8StateRxCSC              Allocated to registers 
;u8LineFiAddr              Allocated to registers 
;u8LineFiSpeed             Allocated to registers 
;u8Data                    Allocated to registers 
;u8LineFiCmd               Allocated to registers 
;u8PwrOnFirstFlag          Allocated to registers 
;u8StateRxPkt              Allocated with name '_main_u8StateRxPkt_65536_136'
;u8StateTxPkt              Allocated to registers 
;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_136'
;stLineFiPkt2              Allocated with name '_main_stLineFiPkt2_65536_136'
;stLineFiPkt_UL            Allocated with name '_main_stLineFiPkt_UL_65536_136'
;u8MotorState              Allocated to registers 
;u8RxBufIdx                Allocated with name '_main_u8RxBufIdx_65536_136'
;u8RxLFPLen                Allocated with name '_main_u8RxLFPLen_65536_136'
;u8LineFiRxIdx             Allocated to registers 
;u8Count2                  Allocated to registers 
;u8RxPktCnt                Allocated to registers 
;u8PreambleCnt             Allocated to registers 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated with name '_main_i_262145_199'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;pu8RxUART                 Allocated with name '_main_pu8RxUART_65536_136'
;pktGenTime                Allocated with name '_main_pktGenTime_65536_136'
;backoffTimer              Allocated with name '_main_backoffTimer_65536_136'
;su8Cnt                    Allocated with name '_main_su8Cnt_65536_136'
;su8InitCnt                Allocated with name '_main_su8InitCnt_327681_165'
;------------------------------------------------------------
;	src/main.c:803: static UINT8 __xdata su8Cnt = 1;
	mov	dptr,#_main_su8Cnt_65536_136
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:975: static UINT8 su8Cnt = 0;
	mov	_main_su8Cnt_327681_146,#0x00
;	src/main.c:1101: static uint8 su8Cnt = 0;
	mov	_main_su8Cnt_262146_159,#0x00
;	src/main.c:1127: static UINT8 __xdata su8InitCnt = 0;
	mov	dptr,#_main_su8InitCnt_327681_165
	clr	a
	movx	@dptr,a
;	src/main.c:90: uint8 __xdata gu8PPambleDurHNum = 1;
	mov	dptr,#_gu8PPambleDurHNum
	inc	a
	movx	@dptr,a
;	src/main.c:91: uint8 __xdata gu8PPambleDurLNum = 12;
	mov	dptr,#_gu8PPambleDurLNum
	mov	a,#0x0c
	movx	@dptr,a
;	src/main.c:92: uint16 __xdata gu8PPambleNum = 1;
	mov	dptr,#_gu8PPambleNum
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:93: uint8 __xdata gu8LineFiUpRate = 5; // 라인파이 상향 속도: 230400bps 이것으로 맨코해서 보내면, 실제 데이타 속도는 115200
	mov	dptr,#_gu8LineFiUpRate
	mov	a,#0x05
	movx	@dptr,a
;	src/main.c:94: uint8 __xdata gu8DurMode = 0;
	mov	dptr,#_gu8DurMode
	clr	a
	movx	@dptr,a
;	src/main.c:95: uint8 __xdata gu8TxCnt = 8;
	mov	dptr,#_gu8TxCnt
	mov	a,#0x08
	movx	@dptr,a
;	src/main.c:96: uint8 __xdata gu8DurModeMax = 3;
	mov	dptr,#_gu8DurModeMax
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:101: UINT8 __xdata gu8MotorState = 0;
	mov	dptr,#_gu8MotorState
	clr	a
	movx	@dptr,a
;	src/main.c:109: uplink_mode_t __xdata gu8ULTestMode = ULTMODE_INIT;
	mov	dptr,#_gu8ULTestMode
	movx	@dptr,a
;	src/main.c:110: uplink_tx_state_t __xdata gu8UpLinkTxState = ULTxState_INIT;
	mov	dptr,#_gu8UpLinkTxState
	movx	@dptr,a
;	src/main.c:113: UINT8 __xdata gu8ULTestData = 0;
	mov	dptr,#_gu8ULTestData
	movx	@dptr,a
;	src/main.c:114: UINT8 __xdata gu8RateIdx = 4;
	mov	dptr,#_gu8RateIdx
	mov	a,#0x04
	movx	@dptr,a
;	src/main.c:116: UINT8 __xdata gpu8Data2[20] = {
	mov	dptr,#_gpu8Data2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0001)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0002)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0003)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0004)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0006)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0007)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_gpu8Data2 + 0x0008)
	rr	a
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
;	src/main.c:125: const char * __xdata  gppcULTestMode[] = {
	mov	dptr,#_gppcULTestMode
	mov	a,#___str_71
	movx	@dptr,a
	mov	a,#(___str_71 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gppcULTestMode + 0x0003)
	mov	a,#___str_72
	movx	@dptr,a
	mov	a,#(___str_72 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gppcULTestMode + 0x0006)
	mov	a,#___str_73
	movx	@dptr,a
	mov	a,#(___str_73 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gppcULTestMode + 0x0009)
	mov	a,#___str_74
	movx	@dptr,a
	mov	a,#(___str_74 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_gppcULTestMode + 0x000c)
	mov	a,#___str_75
	movx	@dptr,a
	mov	a,#(___str_75 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	src/main.c:133: UINT32 __xdata gpu32UartSpeed[] = {
	mov	dptr,#_gpu32UartSpeed
	mov	a,#0x60
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
;	src/main.c:152: UINT16 __xdata gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:153: UINT32 __xdata gu32TimeCnt = 0;
	mov	dptr,#_gu32TimeCnt
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;	src/main.c:204: void print_esc(UINT8 au8State)
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
;	src/main.c:206: printf_fast_f("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:207: switch(au8State) {
	cjne	r7,#0x00,00119$
	sjmp	00101$
00119$:
	cjne	r7,#0x01,00120$
	sjmp	00102$
00120$:
;	src/main.c:208: case STATE_SELF :
	cjne	r7,#0x02,00104$
	sjmp	00103$
00101$:
;	src/main.c:209: printf_fast_f("self ");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:210: break;
;	src/main.c:211: case STATE_CROSS :
	sjmp	00104$
00102$:
;	src/main.c:212: printf_fast_f("cross");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:213: break;
;	src/main.c:214: case STATE_BOTH :
	sjmp	00104$
00103$:
;	src/main.c:215: printf_fast_f("both ");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:217: }
00104$:
;	src/main.c:218: printf_fast_f(" output:This is UART%d\n\r", gu8UART);
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
;	src/main.c:219: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_char'
;------------------------------------------------------------
;au8Data                   Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:221: void print_char(char au8Data)
;	-----------------------------------------
;	 function print_char
;	-----------------------------------------
_print_char:
	mov	r7,dpl
;	src/main.c:223: switch(au8Data) {
	cjne	r7,#0x0d,00115$
	sjmp	00102$
00115$:
	cjne	r7,#0x1b,00103$
;	src/main.c:225: break;
;	src/main.c:226: case '\r' :
	ret
00102$:
;	src/main.c:227: printf_fast_f("\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:228: break;
;	src/main.c:229: default :
	ret
00103$:
;	src/main.c:230: printf_fast_f("%c",au8Data);
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
;	src/main.c:231: }
;	src/main.c:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'state_machine'
;------------------------------------------------------------
;au8RxUART                 Allocated with name '_state_machine_PARM_2'
;au8SelfID                 Allocated with name '_state_machine_PARM_3'
;au8OtherID                Allocated with name '_state_machine_PARM_4'
;au8State                  Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:234: UINT8 state_machine(UINT8 au8State, UINT8 au8RxUART, UINT8 au8SelfID, UINT8 au8OtherID)
;	-----------------------------------------
;	 function state_machine
;	-----------------------------------------
_state_machine:
	mov	r7,dpl
;	src/main.c:236: if(au8RxUART == KEY_ESC) {
	mov	a,#0x1b
	cjne	a,_state_machine_PARM_2,00142$
	sjmp	00143$
00142$:
	sjmp	00110$
00143$:
;	src/main.c:238: gu8UART = au8SelfID;
	mov	r6,_state_machine_PARM_3
	mov	_gu8UART,r6
;	src/main.c:239: printf_fast_f("\r\ninput:This is UART%d", gu8UART);
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
;	src/main.c:240: switch(au8State) {
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
;	src/main.c:241: case STATE_SELF :
00101$:
;	src/main.c:242: au8State = STATE_CROSS;
	mov	r7,#0x01
;	src/main.c:243: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:244: print_esc(au8State);
	mov	dpl,#0x01
	push	ar7
	lcall	_print_esc
;	src/main.c:245: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:246: print_esc(au8State);
	mov	dpl,#0x01
	lcall	_print_esc
	pop	ar7
;	src/main.c:247: break;
;	src/main.c:248: case STATE_CROSS :
	sjmp	00111$
00102$:
;	src/main.c:249: au8State = STATE_BOTH;
	mov	r7,#0x02
;	src/main.c:250: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:251: print_esc(au8State);
	mov	dpl,#0x02
	push	ar7
	lcall	_print_esc
;	src/main.c:252: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:253: print_esc(au8State);
	mov	dpl,#0x02
	lcall	_print_esc
	pop	ar7
;	src/main.c:254: break;
;	src/main.c:255: case STATE_BOTH :
	sjmp	00111$
00103$:
;	src/main.c:256: au8State = STATE_SELF;
	mov	r7,#0x00
;	src/main.c:257: gu8UART = au8SelfID;
	mov	_gu8UART,r6
;	src/main.c:258: print_esc(au8State);
	mov	dpl,#0x00
	push	ar7
	lcall	_print_esc
	pop	ar7
;	src/main.c:260: }
	sjmp	00111$
00110$:
;	src/main.c:263: switch(au8State) {
	cjne	r7,#0x00,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x01,00148$
	sjmp	00106$
00148$:
;	src/main.c:264: case STATE_SELF :
	cjne	r7,#0x02,00111$
	sjmp	00107$
00105$:
;	src/main.c:265: gu8UART = au8SelfID;
	mov	_gu8UART,_state_machine_PARM_3
;	src/main.c:266: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
	pop	ar7
;	src/main.c:267: break;
;	src/main.c:268: case STATE_CROSS :
	sjmp	00111$
00106$:
;	src/main.c:269: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:270: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
	pop	ar7
;	src/main.c:271: break;
;	src/main.c:272: case STATE_BOTH :
	sjmp	00111$
00107$:
;	src/main.c:273: gu8UART = au8SelfID;
	mov	_gu8UART,_state_machine_PARM_3
;	src/main.c:274: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	push	ar7
	lcall	_print_char
;	src/main.c:275: gu8UART = au8OtherID;
	mov	_gu8UART,_state_machine_PARM_4
;	src/main.c:276: print_char(au8RxUART);
	mov	dpl,_state_machine_PARM_2
	lcall	_print_char
	pop	ar7
;	src/main.c:278: }
00111$:
;	src/main.c:280: return au8State;
	mov	dpl,r7
;	src/main.c:281: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	src/main.c:283: void Timer0_ISR (void) interrupt(1)  //interrupt address is 0x000B
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
;	src/main.c:285: TH0 = TH0_INIT;
	mov	_TH0,#0xff
;	src/main.c:286: TL0 = TL0_INIT;
	mov	_TL0,#0xf3
;	src/main.c:287: gu16TimeCnt++;
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	src/main.c:288: gu32TimeCnt++;
	mov	dptr,#_gu32TimeCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	src/main.c:297: } //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B
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
;	src/main.c:299: void pin_interrupt_isr(void) interrupt(7)
;	-----------------------------------------
;	 function pin_interrupt_isr
;	-----------------------------------------
_pin_interrupt_isr:
	push	acc
;	src/main.c:301: if (PIF == 0x10) {
	mov	a,_PIF
;	src/main.c:303: PIF = 0;
	mov	_PIF,#0x00
;	src/main.c:304: }// void pin_interrupt_isr (void) interrupt(7)
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
;	src/main.c:307: void MODIFY_HIRC_166(void)
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
;	src/main.c:312: if ((PCON&SET_BIT4)==SET_BIT4) {
	mov	r6,_PCON
	anl	ar6,#0x10
	mov	r7,#0x00
	cjne	r6,#0x10,00103$
	cjne	r7,#0x00,00103$
;	src/main.c:313: hircmap0 = RCTRIM0;
	mov	r7,_RCTRIM0
;	src/main.c:314: hircmap1 = RCTRIM1;
	mov	r6,_RCTRIM1
;	src/main.c:315: trimvalue16bit = ((hircmap0<<1)+(hircmap1&0x01));
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
;	src/main.c:316: trimvalue16bit = trimvalue16bit - 15;
	mov	a,r7
	add	a,#0xf1
	mov	r7,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	src/main.c:317: hircmap1 = trimvalue16bit&0x01;
	mov	ar6,r7
	anl	ar6,#0x01
;	src/main.c:318: hircmap0 = trimvalue16bit>>1;
	mov	a,r5
	clr	c
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r5,a
;	src/main.c:319: TA=0XAA;
	mov	_TA,#0xaa
;	src/main.c:320: TA=0X55;
	mov	_TA,#0x55
;	src/main.c:321: RCTRIM0 = hircmap0;
	mov	_RCTRIM0,r7
;	src/main.c:322: TA=0XAA;
	mov	_TA,#0xaa
;	src/main.c:323: TA=0X55;
	mov	_TA,#0x55
;	src/main.c:324: RCTRIM1 = hircmap1;
	mov	_RCTRIM1,r6
;	src/main.c:326: PCON &= CLR_BIT4;
	anl	_PCON,#0xef
00103$:
;	src/main.c:328: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disp_help'
;------------------------------------------------------------
;au8Code                   Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:329: void disp_help(UINT8 au8Code)
;	-----------------------------------------
;	 function disp_help
;	-----------------------------------------
_disp_help:
	mov	r7,dpl
;	src/main.c:331: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:332: switch(au8Code) {
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
;	src/main.c:337: case '3' :
00103$:
;	src/main.c:338: printf_fast_f("Idle preamble on/off\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:339: break;
	ret
;	src/main.c:342: case 'p' :
00105$:
;	src/main.c:343: printf_fast_f("LineFi Power Off\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:344: break;
	ret
;	src/main.c:345: case 'P' :
00106$:
;	src/main.c:346: printf_fast_f("LineFi Power On\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:347: break;
	ret
;	src/main.c:348: case 't' :
00107$:
;	src/main.c:349: printf_fast_f("LineFi Uart Tx Low\r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:350: break;
	ret
;	src/main.c:351: case 'T' :
00108$:
;	src/main.c:352: printf_fast_f("LineFi Uart Tx High\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:353: break;
	ret
;	src/main.c:354: case 's' :
00109$:
;	src/main.c:355: printf_fast_f("LineFi CSC rx FSM Off\r\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:356: break;
	ret
;	src/main.c:357: case 'S' :
00110$:
;	src/main.c:358: printf_fast_f("LineFi CSC rx FSM ON\r\n");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:359: break;
;	src/main.c:360: case 'v' : case 'V' :
	ret
00112$:
;	src/main.c:361: printf_fast_f(__VERSION__);
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:362: break;
;	src/main.c:363: default :
	ret
00113$:
;	src/main.c:364: printf_fast_f("1: downlink packet 1\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:365: printf_fast_f("2: downlink packet 2\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:366: printf_fast_f("3: uplink idle preamble on/off\r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:367: printf_fast_f("p/P: LineFi Power off/on\r\n");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:368: printf_fast_f("t/T: LineFi Uart Tx Low/High\r\n");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:369: printf_fast_f("s/S: LineFie CSC Rx FSM off/on\r\n");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:370: printf_fast_f("test procedure: p -> P -> T -> S -> 1 or 2\r\n");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:372: }
;	src/main.c:373: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_setup'
;------------------------------------------------------------
;	src/main.c:375: void gpio_setup()
;	-----------------------------------------
;	 function gpio_setup
;	-----------------------------------------
_gpio_setup:
;	src/main.c:394: Set_All_GPIO_Quasi_Mode;
	mov	_P0M1,#0x00
	mov	_P0M2,#0x00
	mov	_P1M1,#0x00
	mov	_P1M2,#0x00
	mov	_P3M1,#0x00
	mov	_P3M2,#0x00
;	src/main.c:396: P15_Input_Mode;
	orl	_P1M1,#0x20
	anl	_P1M2,#0xdf
;	src/main.c:397: P02_Input_Mode;
	orl	_P0M1,#0x04
	anl	_P0M2,#0xfb
;	src/main.c:398: P07_Input_Mode;
	orl	_P0M1,#0x80
	anl	_P0M2,#0x7f
;	src/main.c:400: P16_PushPull_Mode;
	anl	_P1M1,#0xbf
	orl	_P1M2,#0x40
;	src/main.c:401: P13_PushPull_Mode;
	anl	_P1M1,#0xf7
	orl	_P1M2,#0x08
;	src/main.c:402: P14_PushPull_Mode;
	anl	_P1M1,#0xef
	orl	_P1M2,#0x10
;	src/main.c:403: P12_PushPull_Mode;
	anl	_P1M1,#0xfb
	orl	_P1M2,#0x04
;	src/main.c:404: P11_PushPull_Mode;
	anl	_P1M1,#0xfd
	orl	_P1M2,#0x02
;	src/main.c:405: P10_PushPull_Mode;
	anl	_P1M1,#0xfe
	orl	_P1M2,#0x01
;	src/main.c:406: P00_PushPull_Mode;
	anl	_P0M1,#0xfe
	orl	_P0M2,#0x01
;	src/main.c:407: P01_PushPull_Mode;
	anl	_P0M1,#0xfd
	orl	_P0M2,#0x02
;	src/main.c:408: P04_PushPull_Mode;
	anl	_P0M1,#0xef
	orl	_P0M2,#0x10
;	src/main.c:409: P03_PushPull_Mode;
	anl	_P0M1,#0xf7
	orl	_P0M2,#0x08
;	src/main.c:411: UART_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:412: LED_B = 1;
;	assignBit
	setb	_P12
;	src/main.c:413: LED_G = 1;
;	assignBit
	setb	_P13
;	src/main.c:414: LED_R = 1;
;	assignBit
	setb	_P14
;	src/main.c:416: MOTOR_CW = 0;
;	assignBit
	clr	_P00
;	src/main.c:417: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:418: SEL_RX_POL = 0;
;	assignBit
	clr	_P04
;	src/main.c:419: PWR_OUT = 0;
;	assignBit
	clr	_P03
;	src/main.c:420: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ctrl_rgbled_motor'
;------------------------------------------------------------
;u8RxUART                  Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:438: void ctrl_rgbled_motor(UINT8 u8RxUART)
;	-----------------------------------------
;	 function ctrl_rgbled_motor
;	-----------------------------------------
_ctrl_rgbled_motor:
;	src/main.c:442: if (u8RxUART) {
	mov	a,dpl
	mov	r7,a
	jz	00117$
;	src/main.c:443: if (u8RxUART&(1<<0)) {
	mov	a,r7
	jnb	acc.0,00102$
;	src/main.c:444: TOGGLE(LED_R);
	cpl	_P14
00102$:
;	src/main.c:447: if (u8RxUART&(1<<1)) {
	mov	a,r7
	jnb	acc.1,00104$
;	src/main.c:448: TOGGLE(LED_G);
	cpl	_P13
00104$:
;	src/main.c:451: if (u8RxUART&(1<<2)) {
	mov	a,r7
	jnb	acc.2,00106$
;	src/main.c:452: TOGGLE(LED_B);
	cpl	_P12
00106$:
;	src/main.c:455: if (u8RxUART&(1<<3)) {
	mov	a,r7
	jnb	acc.3,00119$
;	src/main.c:456: switch(gu8MotorState) {
	mov	dptr,#_gu8MotorState
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jc	00111$
	mov	a,r7
	add	a,r7
;	src/main.c:457: case 0 :
	mov	dptr,#00155$
	jmp	@a+dptr
00155$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	src/main.c:458: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:459: MOTOR_CW = 0 ;
;	assignBit
	clr	_P00
;	src/main.c:460: break;
;	src/main.c:461: case 1 :
	sjmp	00111$
00108$:
;	src/main.c:462: MOTOR_CCW = 1;
;	assignBit
	setb	_P01
;	src/main.c:463: MOTOR_CW = 0 ;
;	assignBit
	clr	_P00
;	src/main.c:464: break;
;	src/main.c:465: case 2 :
	sjmp	00111$
00109$:
;	src/main.c:466: MOTOR_CCW = 1;
;	assignBit
	setb	_P01
;	src/main.c:467: MOTOR_CW = 1 ;
;	assignBit
	setb	_P00
;	src/main.c:468: break;
;	src/main.c:469: case 3 :
	sjmp	00111$
00110$:
;	src/main.c:470: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:471: MOTOR_CW = 1 ;
;	assignBit
	setb	_P00
;	src/main.c:473: }
00111$:
;	src/main.c:474: gu8MotorState ++;
	mov	dptr,#_gu8MotorState
	mov	a,r7
	inc	a
	movx	@dptr,a
;	src/main.c:475: if (gu8MotorState == 4) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00119$
;	src/main.c:476: gu8MotorState = 0;
	mov	dptr,#_gu8MotorState
	clr	a
	movx	@dptr,a
	ret
00117$:
;	src/main.c:481: LED_R = LED_OFF;
;	assignBit
	setb	_P14
;	src/main.c:482: LED_G = LED_OFF;
;	assignBit
	setb	_P13
;	src/main.c:483: LED_B = LED_OFF;
;	assignBit
	setb	_P12
;	src/main.c:484: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:485: MOTOR_CW = 0 ;
;	assignBit
	clr	_P00
00119$:
;	src/main.c:487: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chk_my_addr'
;------------------------------------------------------------
;au8RxData                 Allocated with name '_chk_my_addr_PARM_2'
;au8MyAddr                 Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:489: UINT8 chk_my_addr(UINT8 au8MyAddr, UINT8 au8RxData)
;	-----------------------------------------
;	 function chk_my_addr
;	-----------------------------------------
_chk_my_addr:
	mov	r7,dpl
;	src/main.c:491: if ( (au8RxData>>4) == (au8MyAddr&0x0F)) {
	mov	a,_chk_my_addr_PARM_2
	swap	a
	anl	a,#0x0f
	mov	r6,a
	anl	ar7,#0x0f
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	cjne	a,ar7,00102$
	mov	a,r4
	cjne	a,ar5,00102$
;	src/main.c:492: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	src/main.c:494: return 0;
	mov	dpl,#0x00
;	src/main.c:495: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_my_packet'
;------------------------------------------------------------
;apstLineFiPkt             Allocated to registers r5 r6 r7 
;sloc0                     Allocated with name '_process_my_packet_sloc0_1_0'
;------------------------------------------------------------
;	src/main.c:497: void process_my_packet(linefi_packet_t * apstLineFiPkt)
;	-----------------------------------------
;	 function process_my_packet
;	-----------------------------------------
_process_my_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:499: switch(apstLineFiPkt->u8Type) {
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
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x04,00119$
	sjmp	00101$
00119$:
	cjne	r4,#0x05,00120$
	ljmp	00102$
00120$:
	cjne	r4,#0x06,00121$
	ljmp	00103$
00121$:
	ret
;	src/main.c:508: case Type_SetLED :
00101$:
;	src/main.c:509: LED_R = apstLineFiPkt->pu8Data[0];
	mov	a,#0x05
	add	a,r5
	mov	_process_my_packet_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_process_my_packet_sloc0_1_0 + 1),a
	mov	(_process_my_packet_sloc0_1_0 + 2),r7
	mov	dpl,_process_my_packet_sloc0_1_0
	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
	mov	b,(_process_my_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
;	assignBit
	add	a,#0xff
	mov	_P14,c
;	src/main.c:510: LED_G = apstLineFiPkt->pu8Data[1];
	mov	dpl,_process_my_packet_sloc0_1_0
	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
	mov	b,(_process_my_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00122$
	inc	r3
00122$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	assignBit
	add	a,#0xff
	mov	_P13,c
;	src/main.c:511: LED_B = apstLineFiPkt->pu8Data[2];
	mov	dpl,_process_my_packet_sloc0_1_0
	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
	mov	b,(_process_my_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	assignBit
	add	a,#0xff
	mov	_P12,c
;	src/main.c:512: break;
;	src/main.c:513: case Type_CtrlMotor :
	ret
00102$:
;	src/main.c:515: MOTOR_CW = apstLineFiPkt->pu8Data[1];
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	assignBit
	add	a,#0xff
	mov	_P00,c
;	src/main.c:516: MOTOR_CCW = apstLineFiPkt->pu8Data[2];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	assignBit
	add	a,#0xff
	mov	_P01,c
;	src/main.c:517: break;
;	src/main.c:518: case Type_ReadAddr :
	ret
00103$:
;	src/main.c:519: printf_fast_f("My address is 0x%x\r\n", gu8MyAddr);
	mov	r6,_gu8MyAddr
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:521: }
;	src/main.c:522: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_uplink_test_mode'
;------------------------------------------------------------
;au8Data                   Allocated with name '_set_uplink_test_mode_PARM_2'
;au8Mode                   Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:524: void set_uplink_test_mode(uplink_mode_t au8Mode, UINT8 au8Data)
;	-----------------------------------------
;	 function set_uplink_test_mode
;	-----------------------------------------
_set_uplink_test_mode:
	mov	r7,dpl
;	src/main.c:531: gu8ULTestMode = au8Mode;
	mov	dptr,#_gu8ULTestMode
	mov	a,r7
	movx	@dptr,a
;	src/main.c:532: gu8ULTestData = au8Data;
	mov	r6,_set_uplink_test_mode_PARM_2
	mov	dptr,#_gu8ULTestData
	mov	a,r6
	movx	@dptr,a
;	src/main.c:533: printf_fast_f("%s:%d\r\n",gppcULTestMode[au8Mode], au8Data);
	mov	r5,#0x00
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_gppcULTestMode
	mov	dpl,a
	mov	a,#(_gppcULTestMode >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar7
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	src/main.c:534: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_all_packet'
;------------------------------------------------------------
;apstLineFiPkt             Allocated to registers r5 r6 r7 
;u32Tmp                    Allocated to registers r1 r2 r3 r4 
;sloc0                     Allocated with name '_process_all_packet_sloc0_1_0'
;sloc1                     Allocated with name '_process_all_packet_sloc1_1_0'
;------------------------------------------------------------
;	src/main.c:536: void process_all_packet(linefi_packet_t * apstLineFiPkt)
;	-----------------------------------------
;	 function process_all_packet
;	-----------------------------------------
_process_all_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:538: switch(apstLineFiPkt->u8Type) {
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
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x00,00151$
	ret
00151$:
	cjne	r4,#0x02,00152$
	ret
00152$:
	cjne	r4,#0x03,00153$
	sjmp	00101$
00153$:
	cjne	r4,#0x05,00154$
	sjmp	00106$
00154$:
	cjne	r4,#0x07,00155$
	ljmp	00112$
00155$:
	ret
;	src/main.c:539: case Type_SetAddr :
00101$:
;	src/main.c:540: if (SWITCH == SW_ON) {
	jb	_P15,00156$
	ret
00156$:
;	src/main.c:541: printf_fast_f("set address as %d\r\n", apstLineFiPkt->u8Addr);
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
	mov	r0,a
	mov	r1,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:542: gu8MyAddr = apstLineFiPkt->u8Addr;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_gu8MyAddr,a
;	src/main.c:543: Erase_APROM_Page(BASE_ADDRESS);
	mov	dptr,#0x3700
	lcall	_Erase_APROM_Page
;	src/main.c:544: Write_APROM_BYTE(BASE_ADDRESS+0, gu8MyAddr);
	mov	_Write_APROM_BYTE_PARM_2,_gu8MyAddr
	mov	dptr,#0x3700
;	src/main.c:546: break;
	ljmp	_Write_APROM_BYTE
;	src/main.c:551: case Type_CtrlMotor :
00106$:
;	src/main.c:552: switch(gu8MotorState) {
	mov	dptr,#_gu8MotorState
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	00157$
	ret
00157$:
	mov	a,r4
	add	a,r4
;	src/main.c:553: case STATE_MOTOR_STOP1 :
	mov	dptr,#00158$
	jmp	@a+dptr
00158$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	src/main.c:554: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:555: MOTOR_CW = 0 ;
;	assignBit
	clr	_P00
;	src/main.c:556: gu8MotorState = STATE_MOTOR_CW;
	mov	dptr,#_gu8MotorState
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:557: break;
	ret
;	src/main.c:558: case STATE_MOTOR_CW :
00108$:
;	src/main.c:559: MOTOR_CCW = 0;
;	assignBit
	clr	_P01
;	src/main.c:560: MOTOR_CW = 1 ;
;	assignBit
	setb	_P00
;	src/main.c:561: gu8MotorState = STATE_MOTOR_STOP2;
	mov	dptr,#_gu8MotorState
	mov	a,#0x02
	movx	@dptr,a
;	src/main.c:562: break;
	ret
;	src/main.c:563: case STATE_MOTOR_STOP2 :
00109$:
;	src/main.c:564: MOTOR_CCW = 1;
;	assignBit
	setb	_P01
;	src/main.c:565: MOTOR_CW = 1 ;
;	assignBit
	setb	_P00
;	src/main.c:566: gu8MotorState = STATE_MOTOR_CCW;
	mov	dptr,#_gu8MotorState
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:567: break;
	ret
;	src/main.c:568: case STATE_MOTOR_CCW :
00110$:
;	src/main.c:569: MOTOR_CCW = 1;
;	assignBit
	setb	_P01
;	src/main.c:570: MOTOR_CW = 0 ;
;	assignBit
	clr	_P00
;	src/main.c:571: gu8MotorState = STATE_MOTOR_STOP1;
	mov	dptr,#_gu8MotorState
	clr	a
	movx	@dptr,a
;	src/main.c:574: break;
	ret
;	src/main.c:575: case Type_UpLinkTest :
00112$:
;	src/main.c:581: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:582: UINT32  u32Tmp = apstLineFiPkt->pu8Data[0];
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_process_all_packet_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_process_all_packet_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_process_all_packet_sloc0_1_0 + 2),a
	mov	dpl,_process_all_packet_sloc0_1_0
	mov	dph,(_process_all_packet_sloc0_1_0 + 1)
	mov	b,(_process_all_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
;	src/main.c:583: u32Tmp <<= 8;
	mov	(_process_all_packet_sloc1_1_0 + 3),r3
	mov	(_process_all_packet_sloc1_1_0 + 2),r1
	mov	(_process_all_packet_sloc1_1_0 + 1),r0
;	1-genFromRTrack replaced	mov	_process_all_packet_sloc1_1_0,#0x00
	mov	_process_all_packet_sloc1_1_0,r4
;	src/main.c:584: u32Tmp |= apstLineFiPkt->pu8Data[1];
	mov	a,#0x01
	add	a,_process_all_packet_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_process_all_packet_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_process_all_packet_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	a,_process_all_packet_sloc1_1_0
	orl	ar1,a
	mov	a,(_process_all_packet_sloc1_1_0 + 1)
	orl	ar2,a
	mov	a,(_process_all_packet_sloc1_1_0 + 2)
	orl	ar3,a
	mov	a,(_process_all_packet_sloc1_1_0 + 3)
	orl	ar4,a
;	src/main.c:585: u32Tmp <<= 8;
	mov	(_process_all_packet_sloc1_1_0 + 3),r3
	mov	(_process_all_packet_sloc1_1_0 + 2),r2
	mov	(_process_all_packet_sloc1_1_0 + 1),r1
	mov	_process_all_packet_sloc1_1_0,#0x00
;	src/main.c:586: u32Tmp |= apstLineFiPkt->pu8Data[2];
	mov	a,#0x02
	add	a,_process_all_packet_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_process_all_packet_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_process_all_packet_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,_process_all_packet_sloc1_1_0
	orl	ar0,a
	mov	a,(_process_all_packet_sloc1_1_0 + 1)
	orl	ar4,a
	mov	a,(_process_all_packet_sloc1_1_0 + 2)
	orl	ar3,a
	mov	a,(_process_all_packet_sloc1_1_0 + 3)
	orl	ar2,a
;	src/main.c:588: printf_fast_f("uart speed: %lu", u32Tmp);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar0
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:589: set_linefi_uplink_speed(u32Tmp);
	mov	dpl,r0
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	lcall	_set_linefi_uplink_speed
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:594: apstLineFiPkt->pu8Data[2]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_process_all_packet_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_process_all_packet_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_process_all_packet_sloc1_1_0 + 2),a
	mov	a,#0x02
	add	a,_process_all_packet_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_process_all_packet_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_process_all_packet_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
;	src/main.c:593: apstLineFiPkt->pu8Data[1] ,
	mov	a,#0x01
	add	a,_process_all_packet_sloc1_1_0
	mov	r1,a
	clr	a
	addc	a,(_process_all_packet_sloc1_1_0 + 1)
	mov	r2,a
	mov	r3,(_process_all_packet_sloc1_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	_process_all_packet_sloc0_1_0,r1
;	1-genFromRTrack replaced	mov	(_process_all_packet_sloc0_1_0 + 1),#0x00
	mov	(_process_all_packet_sloc0_1_0 + 1),r4
;	src/main.c:592: apstLineFiPkt->pu8Data[0] ,
	mov	dpl,_process_all_packet_sloc1_1_0
	mov	dph,(_process_all_packet_sloc1_1_0 + 1)
	mov	b,(_process_all_packet_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	mov	r3,#0x00
;	src/main.c:591: printf_fast_f("(%x,%x,%x)\n\r", 
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	ar4
	push	_process_all_packet_sloc0_1_0
	push	(_process_all_packet_sloc0_1_0 + 1)
	push	ar2
	push	ar3
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:597: set_uplink_test_mode((uplink_mode_t)(apstLineFiPkt->pu8Data[3]), apstLineFiPkt->pu8Data[4]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x03
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
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_set_uplink_test_mode_PARM_2,a
	mov	dpl,r2
;	src/main.c:599: }
;	src/main.c:600: }
	ljmp	_set_uplink_test_mode
;------------------------------------------------------------
;Allocation info for local variables in function 'get_uart0_char_nb'
;------------------------------------------------------------
;apcResult                 Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src/main.c:602: char get_uart0_char_nb(char * apcResult)
;	-----------------------------------------
;	 function get_uart0_char_nb
;	-----------------------------------------
_get_uart0_char_nb:
;	src/main.c:607: return getchar_uart0(apcResult);
;	src/main.c:609: }
	ljmp	_getchar_uart0
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_setup'
;------------------------------------------------------------
;	src/main.c:611: void i2c_setup()
;	-----------------------------------------
;	 function i2c_setup
;	-----------------------------------------
_i2c_setup:
;	src/main.c:616: P13_OpenDrain_Mode;
	orl	_P1M1,#0x08
	orl	_P1M2,#0x08
;	src/main.c:617: P14_OpenDrain_Mode;
	orl	_P1M1,#0x10
	orl	_P1M2,#0x10
;	src/main.c:626: I2CPX = 0;  // Assign SCL to P1.3 and SDA to P1.4
;	assignBit
	clr	_I2CPX
;	src/main.c:631: set_EI2C;
	orl	_EIE,#0x01
;	src/main.c:632: set_EA;
;	assignBit
	setb	_EA
;	src/main.c:636: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_bitbanging'
;------------------------------------------------------------
;au8Data                   Allocated to registers r7 
;i                         Allocated to registers r6 
;u8Ack                     Allocated to registers 
;------------------------------------------------------------
;	src/main.c:641: UINT8 i2c_write_bitbanging(UINT8 au8Data)
;	-----------------------------------------
;	 function i2c_write_bitbanging
;	-----------------------------------------
_i2c_write_bitbanging:
	mov	r7,dpl
;	src/main.c:650: SDA_PIN = 0;
;	assignBit
	clr	_P14
;	src/main.c:651: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:653: for (i=0;i<8;i++) {
	mov	r6,#0x00
00102$:
;	src/main.c:654: SDA_PIN = (au8Data>>(7-i))&1;
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	b,a
	inc	b
	mov	a,r7
	sjmp	00116$
00115$:
	clr	c
	rrc	a
00116$:
	djnz	b,00115$
	anl	a,#0x01
	add	a,#0xff
	mov	_P14,c
;	src/main.c:655: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:656: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:653: for (i=0;i<8;i++) {
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	src/main.c:659: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:660: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:661: u8Ack = SDA_PIN;
	mov	c,_P14
	clr	a
	rlc	a
	mov	dpl,a
;	src/main.c:662: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:665: return u8Ack;
;	src/main.c:666: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_bitbanging'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;u8Data                    Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:668: UINT8 i2c_read_bitbanging()
;	-----------------------------------------
;	 function i2c_read_bitbanging
;	-----------------------------------------
_i2c_read_bitbanging:
;	src/main.c:675: UINT8 u8Data = 0;
	mov	r7,#0x00
;	src/main.c:677: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:678: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:680: for (i=0;i<8;i++) {
	mov	r6,#0x00
00102$:
;	src/main.c:681: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:682: u8Data |= (SDA_PIN<<(7-i));
	mov	c,_P14
	clr	a
	rlc	a
	mov	r5,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,r5
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	orl	ar7,a
;	src/main.c:683: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:680: for (i=0;i<8;i++) {
	inc	r6
	cjne	r6,#0x08,00118$
00118$:
	jc	00102$
;	src/main.c:686: SDA_PIN = 0;
;	assignBit
	clr	_P14
;	src/main.c:687: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:688: SCL_PIN = 0;
;	assignBit
	clr	_P13
;	src/main.c:689: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:691: return u8Data;
	mov	dpl,r7
;	src/main.c:692: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_address_bitbanging'
;------------------------------------------------------------
;au8RW                     Allocated with name '_i2c_address_bitbanging_PARM_2'
;au8Addr                   Allocated to registers r7 
;u8Data                    Allocated to registers 
;------------------------------------------------------------
;	src/main.c:696: UINT8 i2c_address_bitbanging(UINT8 au8Addr, UINT8 au8RW)
;	-----------------------------------------
;	 function i2c_address_bitbanging
;	-----------------------------------------
_i2c_address_bitbanging:
;	src/main.c:705: u8Data = i2c_write_bitbanging((au8Addr<<1) | au8RW);
	mov	a,dpl
	add	a,dpl
	mov	r7,a
	mov	a,_i2c_address_bitbanging_PARM_2
	orl	a,r7
	mov	dpl,a
;	src/main.c:706: return u8Data;
;	src/main.c:707: }
	ljmp	_i2c_write_bitbanging
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_bytes_bitbannging'
;------------------------------------------------------------
;au8Size                   Allocated with name '_i2c_write_bytes_bitbannging_PARM_2'
;apu8Data                  Allocated with name '_i2c_write_bytes_bitbannging_PARM_3'
;au8Addr                   Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:709: void i2c_write_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
;	-----------------------------------------
;	 function i2c_write_bytes_bitbannging
;	-----------------------------------------
_i2c_write_bytes_bitbannging:
;	src/main.c:713: i2c_address_bitbanging(au8Addr, I2C_W);
	mov	_i2c_address_bitbanging_PARM_2,#0x00
	lcall	_i2c_address_bitbanging
;	src/main.c:714: for (i=0;i<au8Size;i++) {
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r7
	subb	a,_i2c_write_bytes_bitbannging_PARM_2
	jnc	00101$
;	src/main.c:715: i2c_write_bitbanging(apu8Data[i]);
	mov	a,r7
	add	a,_i2c_write_bytes_bitbannging_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_write_bytes_bitbannging_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_write_bytes_bitbannging_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_i2c_write_bitbanging
	pop	ar7
;	src/main.c:714: for (i=0;i<au8Size;i++) {
	inc	r7
	sjmp	00103$
00101$:
;	src/main.c:717: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:718: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:719: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_bytes_bitbannging'
;------------------------------------------------------------
;au8Size                   Allocated with name '_i2c_read_bytes_bitbannging_PARM_2'
;apu8Data                  Allocated with name '_i2c_read_bytes_bitbannging_PARM_3'
;au8Addr                   Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:721: void i2c_read_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
;	-----------------------------------------
;	 function i2c_read_bytes_bitbannging
;	-----------------------------------------
_i2c_read_bytes_bitbannging:
;	src/main.c:724: i2c_address_bitbanging(au8Addr, I2C_R);
	mov	_i2c_address_bitbanging_PARM_2,#0x01
	lcall	_i2c_address_bitbanging
;	src/main.c:725: for (i=0;i<au8Size;i++) {
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r7
	subb	a,_i2c_read_bytes_bitbannging_PARM_2
	jnc	00101$
;	src/main.c:726: apu8Data[i] = i2c_read_bitbanging();
	mov	a,r7
	add	a,_i2c_read_bytes_bitbannging_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_read_bytes_bitbannging_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_read_bytes_bitbannging_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read_bitbanging
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	src/main.c:725: for (i=0;i<au8Size;i++) {
	inc	r7
	sjmp	00103$
00101$:
;	src/main.c:728: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:729: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:730: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_bytes_cs_bitbannging'
;------------------------------------------------------------
;au8Size                   Allocated with name '_i2c_read_bytes_cs_bitbannging_PARM_2'
;apu8Data                  Allocated with name '_i2c_read_bytes_cs_bitbannging_PARM_3'
;au8Addr                   Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:732: void i2c_read_bytes_cs_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
;	-----------------------------------------
;	 function i2c_read_bytes_cs_bitbannging
;	-----------------------------------------
_i2c_read_bytes_cs_bitbannging:
;	src/main.c:738: i2c_address_bitbanging(au8Addr, I2C_R);
	mov	_i2c_address_bitbanging_PARM_2,#0x01
	lcall	_i2c_address_bitbanging
;	src/main.c:739: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:741: while(SCL_PIN == 0);
00101$:
;	src/main.c:743: SCL_PIN = 0;
;	assignBit
	jbc	_P13,00127$
	sjmp	00101$
00127$:
;	src/main.c:744: for (i=0;i<au8Size;i++) {
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r7
	subb	a,_i2c_read_bytes_cs_bitbannging_PARM_2
	jnc	00104$
;	src/main.c:745: apu8Data[i] = i2c_read_bitbanging();
	mov	a,r7
	add	a,_i2c_read_bytes_cs_bitbannging_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_read_bytes_cs_bitbannging_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_read_bytes_cs_bitbannging_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read_bitbanging
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	src/main.c:744: for (i=0;i<au8Size;i++) {
	inc	r7
	sjmp	00106$
00104$:
;	src/main.c:747: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:748: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:749: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calc_temp'
;------------------------------------------------------------
;au8Data2                  Allocated with name '_calc_temp_PARM_2'
;au8Data1                  Allocated to registers r7 
;u32Tmp                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	src/main.c:752: UINT32 calc_temp(UINT8 au8Data1, UINT8 au8Data2)
;	-----------------------------------------
;	 function calc_temp
;	-----------------------------------------
_calc_temp:
;	src/main.c:754: UINT32 u32Tmp = au8Data1*256 + au8Data2;
	mov	r6,dpl
	mov	r7,#0x00
	mov	r4,_calc_temp_PARM_2
	mov	r5,#0x00
	mov	a,r4
	add	a,r7
	mov	r7,a
	mov	a,r5
	addc	a,r6
	mov	r6,a
	mov	__mullong_PARM_2,r7
	mov	a,r6
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	src/main.c:755: u32Tmp *= 17500;
	mov	dptr,#0x445c
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/main.c:756: u32Tmp /= 65535;
	mov	__divulong_PARM_2,#0xff
	mov	(__divulong_PARM_2 + 1),#0xff
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/main.c:757: u32Tmp += -4500;
	mov	a,#0x6c
	add	a,r4
	mov	r4,a
	mov	a,#0xee
	addc	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	a,#0xff
	addc	a,r7
;	src/main.c:758: return u32Tmp;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	src/main.c:759: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_nop'
;------------------------------------------------------------
;au16Delay                 Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	src/main.c:762: void delay_nop(UINT16 au16Delay)
;	-----------------------------------------
;	 function delay_nop
;	-----------------------------------------
_delay_nop:
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:765: for (i=0;i<au16Delay;i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00105$
;	src/main.c:766: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
;	src/main.c:767: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
;	src/main.c:765: for (i=0;i<au16Delay;i++) {
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	src/main.c:769: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;su8Cnt                    Allocated with name '_main_su8Cnt_327681_146'
;su8Cnt                    Allocated with name '_main_su8Cnt_262146_159'
;u8PrevSwitch              Allocated to registers r7 
;u8UartRx                  Allocated to registers 
;u8RotSense                Allocated to registers 
;u8RxUART                  Allocated with name '_main_u8RxUART_65536_136'
;u16Cnt                    Allocated to registers r4 r7 
;u8OutputState             Allocated to registers 
;u8StateRxCSC              Allocated to registers 
;u8LineFiAddr              Allocated to registers 
;u8LineFiSpeed             Allocated to registers 
;u8Data                    Allocated to registers 
;u8LineFiCmd               Allocated to registers 
;u8PwrOnFirstFlag          Allocated to registers 
;u8StateRxPkt              Allocated with name '_main_u8StateRxPkt_65536_136'
;u8StateTxPkt              Allocated to registers 
;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_136'
;stLineFiPkt2              Allocated with name '_main_stLineFiPkt2_65536_136'
;stLineFiPkt_UL            Allocated with name '_main_stLineFiPkt_UL_65536_136'
;u8MotorState              Allocated to registers 
;u8RxBufIdx                Allocated with name '_main_u8RxBufIdx_65536_136'
;u8RxLFPLen                Allocated with name '_main_u8RxLFPLen_65536_136'
;u8LineFiRxIdx             Allocated to registers 
;u8Count2                  Allocated to registers 
;u8RxPktCnt                Allocated to registers 
;u8PreambleCnt             Allocated to registers 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated with name '_main_i_262145_199'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;pu8RxUART                 Allocated with name '_main_pu8RxUART_65536_136'
;pktGenTime                Allocated with name '_main_pktGenTime_65536_136'
;backoffTimer              Allocated with name '_main_backoffTimer_65536_136'
;su8Cnt                    Allocated with name '_main_su8Cnt_65536_136'
;su8InitCnt                Allocated with name '_main_su8InitCnt_327681_165'
;------------------------------------------------------------
;	src/main.c:776: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:797: UINT8 u8StateRxPkt = STATE_RxPKT_INIT;
	mov	_main_u8StateRxPkt_65536_136,#0x00
;	src/main.c:801: UINT32 __xdata pktGenTime = 0;
	mov	dptr,#_main_pktGenTime_65536_136
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:802: UINT32 __xdata backoffTimer = 0;
	mov	dptr,#_main_backoffTimer_65536_136
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:804: linefi_packet_t stLineFiPkt = {
	mov	_main_stLineFiPkt_65536_136,#0x01
	mov	(_main_stLineFiPkt_65536_136 + 0x0001),#0x02
	mov	(_main_stLineFiPkt_65536_136 + 0x0002),#0x03
	mov	(_main_stLineFiPkt_65536_136 + 0x0003),#0x04
	mov	(_main_stLineFiPkt_65536_136 + 0x0004),#0x05
	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 0),#_gpu8Data
	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 1),#(_gpu8Data >> 8)
;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 2),#0x00
	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 2),a
;	src/main.c:813: linefi_packet_t stLineFiPkt2 = {
	mov	_main_stLineFiPkt2_65536_136,#0x01
	mov	(_main_stLineFiPkt2_65536_136 + 0x0001),#0x02
	mov	(_main_stLineFiPkt2_65536_136 + 0x0002),#0x03
	mov	(_main_stLineFiPkt2_65536_136 + 0x0003),#0x04
	mov	(_main_stLineFiPkt2_65536_136 + 0x0004),#0x05
	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 0),#_gpu8Data2
	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 1),#(_gpu8Data2 >> 8)
;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 2),#0x00
	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 2),a
;	src/main.c:821: linefi_packet_t stLineFiPkt_UL = {
	mov	_main_stLineFiPkt_UL_65536_136,#0x01
	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0001),#0x03
	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0002),#0x03
	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0003),#0x0b
	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0004),#0xff
	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 0),#_gpu8Data2
	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 1),#(_gpu8Data2 >> 8)
;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 2),#0x00
	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 2),a
;	src/main.c:832: UINT8 u8RxBufIdx = 0;
;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
	mov	_main_u8RxBufIdx_65536_136,a
;	src/main.c:833: UINT8 u8RxLFPLen = 0; //UINT8 u8RxLineFiLen = 0; 변수 이름 바꿈, 수신된 LineFiPacket 길이
;	1-genFromRTrack replaced	mov	_main_u8RxLFPLen_65536_136,#0x00
	mov	_main_u8RxLFPLen_65536_136,a
;	src/main.c:837: gpio_setup();
	lcall	_gpio_setup
;	src/main.c:838: uart_setup();
	lcall	_uart_setup
;	src/main.c:840: i2c_setup();
	lcall	_i2c_setup
;	src/main.c:844: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
	mov	dptr,#_gu8LineFiUpRate
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_InitialUART1_Timer3
;	src/main.c:846: MODIFY_HIRC_166();
	lcall	_MODIFY_HIRC_166
;	src/main.c:848: clr_T0M;// 16/12 MHz
	anl	_CKCON,#0xf7
;	src/main.c:851: set_ET0;                                    //enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	src/main.c:852: set_TR0;                                    //Timer0 run
;	assignBit
	setb	_TR0
;	src/main.c:854: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:855: printf_fast_f("This is UART0\n\r");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:856: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:857: printf_fast_f("This is UART1\n\r"); //라인파이
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:862: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	r4,#0x30
	mov	r7,#0x75
00241$:
;	src/main.c:863: nop; nop; nop; nop; nop;
	NOP
	NOP
	NOP
	NOP
	NOP
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar7,r3
;	src/main.c:862: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
	mov	a,r2
	orl	a,r3
;	src/main.c:865: gu8UART = 0;
	jnz	00241$
	mov	_gu8UART,a
;	src/main.c:867: u8UartRx = UART_RX;
	mov	c,_P02
;	src/main.c:868: u8PrevSwitch = SWITCH;
	mov	c,_P15
	clr	a
	rlc	a
	mov	r7,a
;	src/main.c:870: set_EPI;
	orl	_EIE,#0x02
;	src/main.c:871: set_EA;
;	assignBit
	setb	_EA
;	src/main.c:873: if (UART_RX == 0) {
	jb	_P02,00103$
;	src/main.c:874: SEL_RX_POL = 1;
;	assignBit
	setb	_P04
00103$:
;	src/main.c:878: gu8MyAddr = gpcEEPROM[0]; // 0x00이면 펌웨어 쓴 직후
	mov	dptr,#_gpcEEPROM
	clr	a
	movc	a,@a+dptr
	mov	_gu8MyAddr,a
;	src/main.c:880: while(1) {
00237$:
;	src/main.c:883: if (get_uart0_char_nb(&u8RxUART)) {
	mov	dptr,#_main_u8RxUART_65536_136
	mov	b,#0x40
	push	ar7
	lcall	_get_uart0_char_nb
	mov	a,dpl
	pop	ar7
	jnz	00534$
	ljmp	00155$
00534$:
;	src/main.c:884: switch(u8RxUART) {
	mov	a,#0x1b
	cjne	a,_main_u8RxUART_65536_136,00535$
	ljmp	00130$
00535$:
	mov	a,#0x2b
	cjne	a,_main_u8RxUART_65536_136,00536$
	ljmp	00139$
00536$:
	mov	a,#0x2d
	cjne	a,_main_u8RxUART_65536_136,00537$
	ljmp	00146$
00537$:
	mov	a,#0x31
	cjne	a,_main_u8RxUART_65536_136,00538$
	ljmp	00104$
00538$:
	mov	a,#0x32
	cjne	a,_main_u8RxUART_65536_136,00539$
	ljmp	00105$
00539$:
	mov	a,#0x33
	cjne	a,_main_u8RxUART_65536_136,00540$
	ljmp	00106$
00540$:
	mov	a,#0x34
	cjne	a,_main_u8RxUART_65536_136,00541$
	ljmp	00107$
00541$:
	mov	a,#0x35
	cjne	a,_main_u8RxUART_65536_136,00542$
	ljmp	00108$
00542$:
	mov	a,#0x36
	cjne	a,_main_u8RxUART_65536_136,00543$
	ljmp	00109$
00543$:
	mov	a,#0x37
	cjne	a,_main_u8RxUART_65536_136,00544$
	ljmp	00110$
00544$:
	mov	a,#0x38
	cjne	a,_main_u8RxUART_65536_136,00545$
	ljmp	00111$
00545$:
	mov	a,#0x54
	cjne	a,_main_u8RxUART_65536_136,00546$
	ljmp	00117$
00546$:
	mov	a,#0x62
	cjne	a,_main_u8RxUART_65536_136,00547$
	ljmp	00285$
00547$:
	mov	a,#0x69
	cjne	a,_main_u8RxUART_65536_136,00548$
	ljmp	00122$
00548$:
	mov	a,#0x6a
	cjne	a,_main_u8RxUART_65536_136,00549$
	ljmp	00119$
00549$:
	mov	a,#0x6b
	cjne	a,_main_u8RxUART_65536_136,00550$
	ljmp	00118$
00550$:
	mov	a,#0x70
	cjne	a,_main_u8RxUART_65536_136,00551$
	ljmp	00121$
00551$:
	mov	a,#0x72
	cjne	a,_main_u8RxUART_65536_136,00552$
	ljmp	00113$
00552$:
	mov	a,#0x73
	cjne	a,_main_u8RxUART_65536_136,00553$
	ljmp	00120$
00553$:
	mov	a,#0x74
	cjne	a,_main_u8RxUART_65536_136,00554$
	ljmp	00112$
00554$:
	ljmp	00155$
;	src/main.c:885: case '1' :
00104$:
;	src/main.c:886: TOGGLE(UART_TX);
	cpl	_P16
;	src/main.c:887: printf_fast_f("UART_TX=");
	push	ar7
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:888: printf_fast_f("%d\n\r", UART_TX);
	mov	c,_P16
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:889: break;
	ljmp	00155$
;	src/main.c:890: case '2' :
00105$:
;	src/main.c:891: TOGGLE(LED_R);
	cpl	_P14
;	src/main.c:892: printf_fast_f("LED_R=");
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:893: printf_fast_f("%d\n\r", LED_R);
	mov	c,_P14
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:894: break;
	ljmp	00155$
;	src/main.c:895: case '3' :
00106$:
;	src/main.c:896: TOGGLE(LED_G);
	cpl	_P13
;	src/main.c:897: printf_fast_f("LED_G=");
	push	ar7
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:898: printf_fast_f("%d\n\r", LED_G);
	mov	c,_P13
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:899: break;
	ljmp	00155$
;	src/main.c:900: case '4' :
00107$:
;	src/main.c:901: TOGGLE(LED_B);
	cpl	_P12
;	src/main.c:902: printf_fast_f("LED_B=");
	push	ar7
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:903: printf_fast_f("%d\n\r", LED_B);
	mov	c,_P12
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:904: break;
	ljmp	00155$
;	src/main.c:905: case '5' :
00108$:
;	src/main.c:909: printf_fast_f("no MOTOR_EN\r\n");
	push	ar7
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:910: break;
	ljmp	00155$
;	src/main.c:911: case '6' :
00109$:
;	src/main.c:912: TOGGLE(MOTOR_CW);
	cpl	_P00
;	src/main.c:913: printf_fast_f("MOTOR_CW=");
	push	ar7
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:914: printf_fast_f("%d\n\r", MOTOR_CW);
	mov	c,_P00
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:915: break;
	ljmp	00155$
;	src/main.c:916: case '7' :
00110$:
;	src/main.c:917: TOGGLE(MOTOR_CCW);
	cpl	_P01
;	src/main.c:918: printf_fast_f("MOTOR_CCW=");
	push	ar7
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:919: printf_fast_f("%d\n\r", MOTOR_CCW);
	mov	c,_P01
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:920: break;
	ljmp	00155$
;	src/main.c:921: case '8' :
00111$:
;	src/main.c:922: TOGGLE(SEL_RX_POL);
	cpl	_P04
;	src/main.c:923: printf_fast_f("SEL_RX_POL=");
	push	ar7
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:924: printf_fast_f("%d\n\r", SEL_RX_POL);
	mov	c,_P04
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:925: break;
	ljmp	00155$
;	src/main.c:926: case 't' :
00112$:
;	src/main.c:927: printf_fast_f("count:%lu\r\n", gu32TimeCnt);
	push	ar7
	mov	dptr,#_gu32TimeCnt
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
;	src/main.c:928: gu32TimeCnt = 0;
	mov	dptr,#_gu32TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:929: break;
	ljmp	00155$
;	src/main.c:930: case 'r' :
00113$:
;	src/main.c:931: if (get_octet_from_linefi(&u8RxUART)) {
	mov	dptr,#_main_u8RxUART_65536_136
	mov	b,#0x40
	push	ar7
	lcall	_get_octet_from_linefi
	mov	a,dpl
	pop	ar7
	jz	00115$
;	src/main.c:932: printf_fast_f("rx data : %x\r\n", u8RxUART);
	mov	r3,_main_u8RxUART_65536_136
	mov	r4,#0x00
	push	ar7
	push	ar3
	push	ar4
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	ljmp	00155$
00115$:
;	src/main.c:935: printf_fast_f("no rx\r\n");
	push	ar7
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:937: break;
	ljmp	00155$
;	src/main.c:938: case 'T' :
00117$:
;	src/main.c:939: printf_fast_f("%d %d %d %d\r\n",gu8BFCnt, gu8BNFCnt, gu8BECnt, gu8BNECnt);
	push	ar7
	mov	r3,_gu8BNECnt
	mov	r4,#0x00
	mov	r2,_gu8BECnt
	mov	r6,#0x00
	mov	_main_sloc0_1_0,_gu8BNFCnt
;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	(_main_sloc0_1_0 + 1),r6
	mov	r5,_gu8BFCnt
	mov	r7,#0x00
	push	ar7
	push	ar3
	push	ar4
	push	ar2
	push	ar6
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	ar5
	push	ar7
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar7
;	src/main.c:941: gu8BFCnt = 0;
	mov	_gu8BFCnt,#0x00
;	src/main.c:942: gu8BNFCnt = 0;
	mov	_gu8BNFCnt,#0x00
;	src/main.c:943: gu8BECnt = 0;
	mov	_gu8BECnt,#0x00
;	src/main.c:944: gu8BNECnt = 0;
	mov	_gu8BNECnt,#0x00
;	src/main.c:945: break;
	pop	ar7
	ljmp	00155$
;	src/main.c:946: case 'k' : // speed up
00118$:
;	src/main.c:947: gu8RateIdx++;
	mov	dptr,#_gu8RateIdx
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:948: printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
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
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
;	src/main.c:949: break;
	ljmp	00155$
;	src/main.c:950: case 'j' : // speed down
00119$:
;	src/main.c:951: gu8RateIdx--;
	mov	dptr,#_gu8RateIdx
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:952: printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
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
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
;	src/main.c:953: break;
	ljmp	00155$
;	src/main.c:954: case 's' : // speed setting
00120$:
;	src/main.c:955: InitialUART1_Timer3(gpu32UartSpeed[gu8RateIdx]);
	mov	dptr,#_gu8RateIdx
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
	push	ar7
	lcall	_InitialUART1_Timer3
	pop	ar7
;	src/main.c:956: break;
	ljmp	00155$
;	src/main.c:957: case 'p' :
00121$:
;	src/main.c:958: gu8ULTestMode = ULTMODE_DATA;
	mov	dptr,#_gu8ULTestMode
	mov	a,#0x02
	movx	@dptr,a
;	src/main.c:959: break;
	ljmp	00155$
;	src/main.c:960: case 'i' :
00122$:
;	src/main.c:961: gpu8Data[0] = 0x2c;
	mov	dptr,#_gpu8Data
	mov	a,#0x2c
	movx	@dptr,a
;	src/main.c:962: gpu8Data[1] = 0x06;
	mov	dptr,#(_gpu8Data + 0x0001)
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:963: i2c_write_bytes_bitbannging(0x4a, 2, gpu8Data);
	mov	_i2c_write_bytes_bitbannging_PARM_3,#_gpu8Data
	mov	(_i2c_write_bytes_bitbannging_PARM_3 + 1),#(_gpu8Data >> 8)
	mov	(_i2c_write_bytes_bitbannging_PARM_3 + 2),#0x00
	mov	_i2c_write_bytes_bitbannging_PARM_2,#0x02
	mov	dpl,#0x4a
	push	ar7
	lcall	_i2c_write_bytes_bitbannging
;	src/main.c:964: delay_nop(10000);
	mov	dptr,#0x2710
	lcall	_delay_nop
;	src/main.c:965: i2c_read_bytes_bitbannging(0x4a, 3, gpu8Data);
	mov	_i2c_read_bytes_bitbannging_PARM_3,#_gpu8Data
	mov	(_i2c_read_bytes_bitbannging_PARM_3 + 1),#(_gpu8Data >> 8)
	mov	(_i2c_read_bytes_bitbannging_PARM_3 + 2),#0x00
	mov	_i2c_read_bytes_bitbannging_PARM_2,#0x03
	mov	dpl,#0x4a
	lcall	_i2c_read_bytes_bitbannging
;	src/main.c:974: if (gpu8Data[2] == crc8(gpu8Data,2,0xFF)) {
	mov	dptr,#(_gpu8Data + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	_crc8_PARM_2,#0x02
	mov	_crc8_PARM_3,#0xff
	mov	dptr,#_gpu8Data
	mov	b,#0x00
	push	ar6
	lcall	_crc8
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	a,r6
	cjne	a,ar5,00124$
;	src/main.c:976: printf_fast_f("[%d]temp : %lu\r\n", su8Cnt++, calc_temp(gpu8Data[0], gpu8Data[1]));
	push	ar7
	mov	dptr,#_gpu8Data
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_gpu8Data + 0x0001)
	movx	a,@dptr
	mov	_calc_temp_PARM_2,a
	mov	dpl,r6
	push	ar7
	lcall	_calc_temp
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	r2,_main_su8Cnt_327681_146
	inc	_main_su8Cnt_327681_146
	mov	r7,#0x00
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar2
	push	ar7
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar7
	ljmp	00155$
00124$:
;	src/main.c:979: printf_fast_f("crc bad\r\n");
	push	ar7
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:984: break;
	ljmp	00155$
;	src/main.c:989: for (i=8;i<128-8;i++) {
00285$:
	mov	r6,#0x08
00242$:
;	src/main.c:990: if (i2c_address_bitbanging(i,I2C_W) == 0) {
	mov	_i2c_address_bitbanging_PARM_2,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_i2c_address_bitbanging
	mov	a,dpl
	pop	ar6
	pop	ar7
;	src/main.c:991: printf_fast_f("i2c found %x:\r\n",i);
	jnz	00128$
	mov	ar4,r6
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00128$:
;	src/main.c:996: SCL_PIN = 1;
;	assignBit
	setb	_P13
;	src/main.c:997: SDA_PIN = 1;
;	assignBit
	setb	_P14
;	src/main.c:989: for (i=8;i<128-8;i++) {
	inc	r6
	cjne	r6,#0x78,00559$
00559$:
	jc	00242$
;	src/main.c:1000: break;
	ljmp	00155$
;	src/main.c:1001: case KEY_ESC :
00130$:
;	src/main.c:1002: gu8DurMode ++;
	mov	dptr,#_gu8DurMode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1003: switch(gu8DurMode) {
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x05
	jnc	00561$
	ljmp	00137$
00561$:
	mov	a,r6
	add	a,r6
;	src/main.c:1004: case 0 :
	mov	dptr,#00562$
	jmp	@a+dptr
00562$:
	sjmp	00131$
	sjmp	00132$
	sjmp	00133$
	sjmp	00134$
	sjmp	00135$
	sjmp	00136$
00131$:
;	src/main.c:1005: printf_fast_f("gu8PPambleDurHNum\r\n");
	push	ar7
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1006: break;
	ljmp	00155$
;	src/main.c:1007: case 1 :
00132$:
;	src/main.c:1008: printf_fast_f("gu8PPambleDurLNum\r\n");
	push	ar7
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1009: break;
	ljmp	00155$
;	src/main.c:1010: case 2 :
00133$:
;	src/main.c:1011: printf_fast_f("gu8PPambleNum\r\n");
	push	ar7
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1012: break;
	ljmp	00155$
;	src/main.c:1013: case 3 :
00134$:
;	src/main.c:1014: printf_fast_f("gu8LineFiUpRate\r\n");
	push	ar7
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1015: break;
	ljmp	00155$
;	src/main.c:1016: case 4 :
00135$:
;	src/main.c:1017: printf_fast_f("gu8TxCnt\r\n");
	push	ar7
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1018: break;
	ljmp	00155$
;	src/main.c:1019: case 5 :
00136$:
;	src/main.c:1020: printf_fast_f("-------------------------------\r\n");
	push	ar7
	push	ar7
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1021: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
	mov	dptr,#_gu8PPambleDurHNum
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:1022: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
	mov	dptr,#_gu8PPambleDurLNum
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:1023: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1024: printf_fast_f("%lu[%d]\r\n", gpu32UartSpeed[gu8LineFiUpRate],gu8LineFiUpRate);
	mov	dptr,#_gu8LineFiUpRate
	movx	a,@dptr
	mov	r6,a
	mov	r4,a
	mov	r5,#0x00
	mov	a,r6
	mov	b,#0x04
	mul	ab
	add	a,#_gpu32UartSpeed
	mov	dpl,a
	mov	a,#(_gpu32UartSpeed >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
;	src/main.c:1025: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
	mov	dptr,#_gu8TxCnt
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar7
	push	ar6
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:1026: printf_fast_f("-------------------------------\r\n");
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1027: break;
	pop	ar7
	ljmp	00155$
;	src/main.c:1028: default :
00137$:
;	src/main.c:1029: gu8DurMode = 0;
	mov	dptr,#_gu8DurMode
	clr	a
	movx	@dptr,a
;	src/main.c:1030: printf_fast_f("gu8PPambleDurHNum\r\n");
	push	ar7
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1033: break;
	ljmp	00155$
;	src/main.c:1034: case '+' :
00139$:
;	src/main.c:1035: switch(gu8DurMode) {
	mov	dptr,#_gu8DurMode
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x04
	jnc	00563$
	ljmp	00155$
00563$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00564$
	jmp	@a+dptr
00564$:
	ljmp	00140$
	ljmp	00141$
	ljmp	00142$
	ljmp	00143$
	ljmp	00144$
;	src/main.c:1036: case 0 :
00140$:
;	src/main.c:1037: gu8PPambleDurHNum ++;
	mov	dptr,#_gu8PPambleDurHNum
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1038: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1039: break;
	ljmp	00155$
;	src/main.c:1040: case 1 :
00141$:
;	src/main.c:1041: gu8PPambleDurLNum ++;
	mov	dptr,#_gu8PPambleDurLNum
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1042: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1043: break;
	ljmp	00155$
;	src/main.c:1044: case 2 :
00142$:
;	src/main.c:1045: gu8PPambleNum ++;
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	src/main.c:1046: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
	push	ar7
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1047: break;
	ljmp	00155$
;	src/main.c:1048: case 3 :
00143$:
;	src/main.c:1049: printf_fast_f("%lu\r\n", gpu32UartSpeed[++gu8LineFiUpRate]);
	mov	dptr,#_gu8LineFiUpRate
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
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
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:1050: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
	mov	dptr,#_gu8LineFiUpRate
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
	pop	ar7
;	src/main.c:1051: break;
	ljmp	00155$
;	src/main.c:1052: case 4 :
00144$:
;	src/main.c:1053: gu8TxCnt ++;
	mov	dptr,#_gu8TxCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1054: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1057: break;
	ljmp	00155$
;	src/main.c:1058: case '-' :
00146$:
;	src/main.c:1059: switch(gu8DurMode) {
	mov	dptr,#_gu8DurMode
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x04
	jnc	00565$
	ljmp	00155$
00565$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00566$
	jmp	@a+dptr
00566$:
	ljmp	00147$
	ljmp	00148$
	ljmp	00149$
	ljmp	00150$
	ljmp	00151$
;	src/main.c:1060: case 0 :
00147$:
;	src/main.c:1061: gu8PPambleDurHNum --;
	mov	dptr,#_gu8PPambleDurHNum
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:1062: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1063: break;
	ljmp	00155$
;	src/main.c:1064: case 1 :
00148$:
;	src/main.c:1065: gu8PPambleDurLNum --;
	mov	dptr,#_gu8PPambleDurLNum
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:1066: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1067: break;
	ljmp	00155$
;	src/main.c:1068: case 2 :
00149$:
;	src/main.c:1069: gu8PPambleNum --;
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	add	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#_gu8PPambleNum
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1070: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
	push	ar7
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1071: break;
	ljmp	00155$
;	src/main.c:1072: case 3 :
00150$:
;	src/main.c:1073: printf_fast_f("%lu\r\n", gpu32UartSpeed[--gu8LineFiUpRate]);
	mov	dptr,#_gu8LineFiUpRate
	movx	a,@dptr
	dec	a
	movx	@dptr,a
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
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:1074: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
	mov	dptr,#_gu8LineFiUpRate
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
	pop	ar7
;	src/main.c:1075: break;
;	src/main.c:1076: case 4 :
	sjmp	00155$
00151$:
;	src/main.c:1077: gu8TxCnt --;
	mov	dptr,#_gu8TxCnt
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	src/main.c:1078: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1082: }
00155$:
;	src/main.c:1085: if (u8PrevSwitch != SWITCH) { // 스위치 스테이트가 변하면..
	mov	ar6,r7
	mov	c,_P15
	clr	a
	rlc	a
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00567$
	sjmp	00160$
00567$:
;	src/main.c:1086: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:1087: printf_fast_f("SWITCH:%d\n\r", SWITCH);
	mov	c,_P15
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:1088: if (SWITCH) { //눌렸을 때
	jnb	_P15,00157$
;	src/main.c:1089: gu8PPambleCnt = 0;
	mov	dptr,#_gu8PPambleCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1090: gu8PPambleDurCnt = 0;
	mov	dptr,#_gu8PPambleDurCnt
	movx	@dptr,a
	sjmp	00158$
00157$:
;	src/main.c:1093: gu8UpLinkTxState = ULTxState_INIT;
	mov	dptr,#_gu8UpLinkTxState
	clr	a
	movx	@dptr,a
;	src/main.c:1096: gu8UART = 0;
;	1-genFromRTrack replaced	mov	_gu8UART,#0x00
	mov	_gu8UART,a
;	src/main.c:1102: su8Cnt++;
	inc	_main_su8Cnt_262146_159
;	src/main.c:1103: LED_R = su8Cnt&1;
	mov	a,_main_su8Cnt_262146_159
	anl	a,#0x01
	add	a,#0xff
	mov	_P14,c
;	src/main.c:1104: LED_G = (su8Cnt>>1)&1;
	mov	a,_main_su8Cnt_262146_159
	rr	a
	anl	a,#0x01
;	assignBit
	mov	r6,a
	add	a,#0xff
	mov	_P13,c
;	src/main.c:1105: LED_B = (su8Cnt>>2)&1;
	mov	a,_main_su8Cnt_262146_159
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_P12,c
;	src/main.c:1108: MOTOR_CW = (su8Cnt>>1)&1;
;	assignBit
	mov	a,r6
	add	a,#0xff
	mov	_P00,c
;	src/main.c:1109: MOTOR_CCW = (su8Cnt>>2)&1;
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P01,c
00158$:
;	src/main.c:1112: u8PrevSwitch = SWITCH;
	mov	c,_P15
	clr	a
	rlc	a
	mov	r7,a
00160$:
;	src/main.c:1115: if (SWITCH) {
	jb	_P15,00569$
	ljmp	00179$
00569$:
;	src/main.c:1116: if (gu8PPambleCnt < gu8PPambleNum) {
	mov	dptr,#_gu8PPambleCnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gu8PPambleNum
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jnc	00171$
;	src/main.c:1117: if (UART_TX) {
;	src/main.c:1118: UART_TX = 0;
;	assignBit
	jbc	_P16,00571$
	sjmp	00162$
00571$:
	ljmp	00172$
00162$:
;	src/main.c:1121: UART_TX = 1;
;	assignBit
	setb	_P16
;	src/main.c:1122: gu8PPambleCnt++;
	mov	dptr,#_gu8PPambleCnt
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00172$
00171$:
;	src/main.c:1126: if (gu8PPambleDurCnt < gu8PPambleDurHNum) {
	mov	dptr,#_gu8PPambleDurCnt
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gu8PPambleDurHNum
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00172$
;	src/main.c:1129: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:1130: putchar(0xF0);
	mov	dptr,#0x00f0
	push	ar7
	lcall	_putchar
;	src/main.c:1131: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1132: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1133: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1134: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
	pop	ar7
;	src/main.c:1135: for (i = 0;i<gu8TxCnt;i++) {
	mov	r6,#0x00
00245$:
	mov	dptr,#_gu8TxCnt
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00167$
;	src/main.c:1138: if (i == 2) {
	cjne	r6,#0x02,00165$
;	src/main.c:1139: putchar(MY_ADDR);
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
	sjmp	00246$
00165$:
;	src/main.c:1142: putchar(i + su8InitCnt);
	mov	ar4,r6
	mov	r5,#0x00
	mov	dptr,#_main_su8InitCnt_327681_165
	movx	a,@dptr
	mov	r2,#0x00
	add	a,r4
	mov	dpl,a
	mov	a,r2
	addc	a,r5
	mov	dph,a
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
00246$:
;	src/main.c:1135: for (i = 0;i<gu8TxCnt;i++) {
	inc	r6
	sjmp	00245$
00167$:
;	src/main.c:1145: su8InitCnt++;
	mov	dptr,#_main_su8InitCnt_327681_165
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1146: gu8PPambleDurCnt++;
	mov	dptr,#_gu8PPambleDurCnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1147: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:1148: gu8PPambleCnt = 0;
	mov	dptr,#_gu8PPambleCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00172$:
;	src/main.c:1153: gu8ULTestMode = ULTMODE_INIT;
	mov	dptr,#_gu8ULTestMode
	clr	a
	movx	@dptr,a
	sjmp	00180$
00179$:
;	src/main.c:1160: switch(gu8ULTestMode) {
	mov	dptr,#_gu8ULTestMode
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x03
	jc	00180$
	mov	a,r6
	add	a,r6
;	src/main.c:1163: case ULTMODE_PREAMBLE:
	mov	dptr,#00577$
	jmp	@a+dptr
00577$:
	sjmp	00180$
	sjmp	00174$
	sjmp	00175$
	sjmp	00176$
00174$:
;	src/main.c:1164: preamble();
	push	ar7
	lcall	_preamble
	pop	ar7
;	src/main.c:1165: break;
;	src/main.c:1166: case ULTMODE_DATA:
	sjmp	00180$
00175$:
;	src/main.c:1167: putchar_manchester(gu8ULTestData);
	mov	dptr,#_gu8ULTestData
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_putchar_manchester
	pop	ar7
;	src/main.c:1168: break;
;	src/main.c:1169: case ULTMODE_NO_MANCHESTER:
	sjmp	00180$
00176$:
;	src/main.c:1170: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:1171: putchar(gu8ULTestData);
	mov	dptr,#_gu8ULTestData
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	_putchar
	pop	ar7
;	src/main.c:1172: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:1174: }
00180$:
;	src/main.c:1178: if (u8UartRx != UART_RX) {
	mov	c,_P02
;	src/main.c:1183: switch(u8StateRxPkt) { // 수신 시
	mov	a,_main_u8StateRxPkt_65536_136
	add	a,#0xff - 0x07
	jnc	00578$
	ljmp	00237$
00578$:
	mov	a,_main_u8StateRxPkt_65536_136
	add	a,#(00579$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_main_u8StateRxPkt_65536_136
	add	a,#(00580$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00579$:
	.db	00181$
	.db	00184$
	.db	00222$
	.db	00190$
	.db	00196$
	.db	00197$
	.db	00208$
	.db	00214$
00580$:
	.db	00181$>>8
	.db	00184$>>8
	.db	00222$>>8
	.db	00190$>>8
	.db	00196$>>8
	.db	00197$>>8
	.db	00208$>>8
	.db	00214$>>8
;	src/main.c:1184: case STATE_RxPKT_INIT :
00181$:
;	src/main.c:1185: if (get_octet_from_linefi(&u8RxUART)) {
	mov	dptr,#_main_u8RxUART_65536_136
	mov	b,#0x40
	push	ar7
	lcall	_get_octet_from_linefi
	mov	a,dpl
	pop	ar7
	jnz	00581$
	ljmp	00237$
00581$:
;	src/main.c:1186: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1188: pu8RxUART[u8RxBufIdx++] = u8RxUART;
	mov	_main_u8RxBufIdx_65536_136,#0x01
	mov	dptr,#_main_pu8RxUART_65536_136
	mov	a,_main_u8RxUART_65536_136
	movx	@dptr,a
;	src/main.c:1189: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:1190: gu8PPambleCnt = 0;
	mov	dptr,#_gu8PPambleCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1191: gu8PPambleDurCnt = 0;
	mov	dptr,#_gu8PPambleDurCnt
	movx	@dptr,a
;	src/main.c:1193: u8StateRxPkt = STATE_RxPKT_START;
	mov	_main_u8StateRxPkt_65536_136,#0x01
;	src/main.c:1195: break;
	ljmp	00237$
;	src/main.c:1196: case STATE_RxPKT_START :
00184$:
;	src/main.c:1197: if (get_octet_from_linefi(&u8RxUART)) {
	mov	dptr,#_main_u8RxUART_65536_136
	mov	b,#0x40
	push	ar7
	lcall	_get_octet_from_linefi
	mov	a,dpl
	pop	ar7
	jz	00188$
;	src/main.c:1198: gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
	mov	r6,_main_u8RxBufIdx_65536_136
	dec	r6
	clr	F0
	mov	b,#0x02
	mov	a,r6
	jnb	acc.7,00583$
	cpl	F0
	cpl	a
	inc	a
00583$:
	mul	ab
	jnb	F0,00584$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00584$:
	add	a,#_gpu16RxTime
	mov	r5,a
	mov	a,#(_gpu16RxTime >> 8)
	addc	a,b
	mov	r6,a
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/main.c:1199: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1200: pu8RxUART[u8RxBufIdx++] = u8RxUART;
	mov	r6,_main_u8RxBufIdx_65536_136
	inc	_main_u8RxBufIdx_65536_136
	mov	a,r6
	add	a,#_main_pu8RxUART_65536_136
	mov	dpl,a
	clr	a
	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
	mov	dph,a
	mov	a,_main_u8RxUART_65536_136
	movx	@dptr,a
	ljmp	00237$
00188$:
;	src/main.c:1202: else if (gu16TimeCnt > 1000) { //
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0xe8
	subb	a,r5
	mov	a,#0x03
	subb	a,r6
	jc	00585$
	ljmp	00237$
00585$:
;	src/main.c:1203: u8RxLFPLen = u8RxBufIdx;
	mov	_main_u8RxLFPLen_65536_136,_main_u8RxBufIdx_65536_136
;	src/main.c:1204: u8StateRxPkt = STATE_RxPKT_END;
	mov	_main_u8StateRxPkt_65536_136,#0x02
;	src/main.c:1206: break;
	ljmp	00237$
;	src/main.c:1207: case STATE_ULPKT_GEN : 				
00190$:
;	src/main.c:1208: if (pktGenTime == 0) {
	mov	dptr,#_main_pktGenTime_65536_136
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
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00194$
;	src/main.c:1209: u8StateRxPkt = STATE_ULPKT_SEND;
	mov	_main_u8StateRxPkt_65536_136,#0x04
	ljmp	00237$
00194$:
;	src/main.c:1223: else if (pktGenTime > 0) {
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00587$
	ljmp	00237$
00587$:
;	src/main.c:1224: pktGenTime -= 1;
	dec	r3
	cjne	r3,#0xff,00588$
	dec	r4
	cjne	r4,#0xff,00588$
	dec	r5
	cjne	r5,#0xff,00588$
	dec	r6
00588$:
	mov	dptr,#_main_pktGenTime_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1229: u8StateRxPkt = STATE_ULPKT_GEN;
	mov	_main_u8StateRxPkt_65536_136,#0x03
;	src/main.c:1231: break;
	ljmp	00237$
;	src/main.c:1233: case STATE_ULPKT_SEND :
00196$:
;	src/main.c:1234: printf_fast_f("33333\r\n");
	push	ar7
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1235: gu8UART = 1;
	mov	_gu8UART,#0x01
;	src/main.c:1236: putchar(0x00); //prepreamble
	mov	dptr,#0x0000
	lcall	_putchar
;	src/main.c:1237: putchar(0x00);
	mov	dptr,#0x0000
	lcall	_putchar
;	src/main.c:1238: putchar(0xF0); // preamble 
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1239: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1240: putchar(0xF0);
	mov	dptr,#0x00f0
	lcall	_putchar
;	src/main.c:1242: add_crc_linefi_packet_packet(&stLineFiPkt_UL);
	mov	dptr,#_main_stLineFiPkt_UL_65536_136
	mov	b,#0x40
	lcall	_add_crc_linefi_packet_packet
;	src/main.c:1243: send_linefi_packet(&stLineFiPkt_UL);
	mov	dptr,#_main_stLineFiPkt_UL_65536_136
	mov	b,#0x40
	lcall	_send_linefi_packet
	pop	ar7
;	src/main.c:1246: gu8UART = 0;
	mov	_gu8UART,#0x00
;	src/main.c:1247: gu32TimeCnt = 0;
	mov	dptr,#_gu32TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1248: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1249: u8RxBufIdx = 0;
;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
	mov	_main_u8RxBufIdx_65536_136,a
;	src/main.c:1250: u8StateRxPkt = STATE_ACK_WAIT;
	mov	_main_u8StateRxPkt_65536_136,#0x05
;	src/main.c:1251: break;
	ljmp	00237$
;	src/main.c:1253: case STATE_ACK_WAIT : 				
00197$:
;	src/main.c:1254: if (get_octet_from_linefi(&u8RxUART)) {
	mov	dptr,#_main_u8RxUART_65536_136
	mov	b,#0x40
	push	ar7
	lcall	_get_octet_from_linefi
	mov	a,dpl
	pop	ar7
	jz	00204$
;	src/main.c:1255: gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
	mov	r6,_main_u8RxBufIdx_65536_136
	dec	r6
	clr	F0
	mov	b,#0x02
	mov	a,r6
	jnb	acc.7,00590$
	cpl	F0
	cpl	a
	inc	a
00590$:
	mul	ab
	jnb	F0,00591$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00591$:
	add	a,#_gpu16RxTime
	mov	r5,a
	mov	a,#(_gpu16RxTime >> 8)
	addc	a,b
	mov	r6,a
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/main.c:1256: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1257: pu8RxUART[u8RxBufIdx++] = u8RxUART;
	mov	r6,_main_u8RxBufIdx_65536_136
	inc	_main_u8RxBufIdx_65536_136
	mov	a,r6
	add	a,#_main_pu8RxUART_65536_136
	mov	dpl,a
	clr	a
	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
	mov	dph,a
	mov	a,_main_u8RxUART_65536_136
	movx	@dptr,a
;	src/main.c:1258: printf_fast_f("1");
	push	ar7
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
	ljmp	00205$
00204$:
;	src/main.c:1260: else if (gu16TimeCnt > 10000) { //
	mov	dptr,#_gu16TimeCnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x10
	subb	a,r5
	mov	a,#0x27
	subb	a,r6
	jc	00592$
	ljmp	00205$
00592$:
;	src/main.c:1261: u8RxLFPLen = u8RxBufIdx;
	mov	_main_u8RxLFPLen_65536_136,_main_u8RxBufIdx_65536_136
;	src/main.c:1262: printf_fast_f("\r\nu8RxLFPLen: %d\r\n",u8RxLFPLen);
	mov	r5,_main_u8RxBufIdx_65536_136
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1263: if (pu8RxUART[1] == 7 ) {
	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x07,00199$
;	src/main.c:1264: u8StateRxPkt = STATE_ACK_PROCESS;
	mov	_main_u8StateRxPkt_65536_136,#0x07
	sjmp	00205$
00199$:
;	src/main.c:1267: gu32TimeCnt = 0;
	mov	dptr,#_gu32TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1268: u8RxBufIdx = 0;
;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
	mov	_main_u8RxBufIdx_65536_136,a
;	src/main.c:1269: backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
	mov	dpl,#0x03
	push	ar7
	lcall	_get_bktimer_value
	mov	r6,dpl
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),#0x00
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#_main_backoffTimer_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1270: printf_fast_f("ack wait->wrong ack->backoff\r\n");
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1272: u8StateRxPkt = STATE_BKOFF; 
	mov	_main_u8StateRxPkt_65536_136,#0x06
00205$:
;	src/main.c:1287: if (gu32TimeCnt > 100000) {
	mov	dptr,#_gu32TimeCnt
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
	clr	c
	mov	a,#0xa0
	subb	a,r3
	mov	a,#0x86
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00595$
	ljmp	00237$
00595$:
;	src/main.c:1288: gu32TimeCnt = 0;
	mov	dptr,#_gu32TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1289: u8RxBufIdx = 0;
;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
	mov	_main_u8RxBufIdx_65536_136,a
;	src/main.c:1290: backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
	mov	dpl,#0x03
	push	ar7
	lcall	_get_bktimer_value
	mov	r6,dpl
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),#0x00
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#_main_backoffTimer_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1291: printf_fast_f("ack wait->timeout->backoff\r\n");
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1293: u8StateRxPkt = STATE_BKOFF; 
	mov	_main_u8StateRxPkt_65536_136,#0x06
;	src/main.c:1295: break;
	ljmp	00237$
;	src/main.c:1297: case STATE_BKOFF : 
00208$:
;	src/main.c:1298: if (backoffTimer == 0) {
	mov	dptr,#_main_backoffTimer_65536_136
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
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00212$
;	src/main.c:1299: u8StateRxPkt = STATE_ULPKT_SEND; 
	mov	_main_u8StateRxPkt_65536_136,#0x04
	ljmp	00237$
00212$:
;	src/main.c:1301: else if (backoffTimer > 0) {
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00597$
	ljmp	00237$
00597$:
;	src/main.c:1302: backoffTimer -= 1;
	dec	r3
	cjne	r3,#0xff,00598$
	dec	r4
	cjne	r4,#0xff,00598$
	dec	r5
	cjne	r5,#0xff,00598$
	dec	r6
00598$:
	mov	dptr,#_main_backoffTimer_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1310: u8StateRxPkt = STATE_BKOFF; 				
	mov	_main_u8StateRxPkt_65536_136,#0x06
;	src/main.c:1312: break;
	ljmp	00237$
;	src/main.c:1313: case STATE_ACK_PROCESS :				
00214$:
;	src/main.c:1315: if (u8RxLFPLen == 16) { // receive ACK pu8RxUART[1] == 7 && 
	mov	a,#0x10
	cjne	a,_main_u8RxLFPLen_65536_136,00599$
	sjmp	00600$
00599$:
	ljmp	00220$
00600$:
;	src/main.c:1316: if (pu8RxUART[2] == MY_ADDR){ //chk_crc_linefi_packet_packet(&stLineFiPkt) ?
	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x03,00601$
	sjmp	00602$
00601$:
	ljmp	00217$
00602$:
;	src/main.c:1318: printf_fast_f("ACKACKACK\r\n");
	push	ar7
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1319: cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
	mov	_cp_buf2linefipacket_PARM_2,#_main_pu8RxUART_65536_136
	mov	(_cp_buf2linefipacket_PARM_2 + 1),#(_main_pu8RxUART_65536_136 >> 8)
	mov	(_cp_buf2linefipacket_PARM_2 + 2),#0x00
	mov	_cp_buf2linefipacket_PARM_3,#_main_stLineFiPkt_65536_136
	mov	(_cp_buf2linefipacket_PARM_3 + 1),#0x00
	mov	(_cp_buf2linefipacket_PARM_3 + 2),#0x40
	mov	dpl,_main_u8RxLFPLen_65536_136
	lcall	_cp_buf2linefipacket
;	src/main.c:1320: print_linefipacket(&stLineFiPkt);
	mov	dptr,#_main_stLineFiPkt_65536_136
	mov	b,#0x40
	lcall	_print_linefipacket
;	src/main.c:1322: printf_fast_f("Slave %d, DL_packet_num: %d, Rx size:%d\n\r", MY_ADDR, pu8RxUART[5+MY_ADDR],u8RxLFPLen);
	mov	r5,_main_u8RxLFPLen_65536_136
	mov	r6,#0x00
	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0008)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
;	src/main.c:1323: for (i=0; i<u8RxLFPLen;i++) {
	mov	r6,#0x00
00248$:
	clr	c
	mov	a,r6
	subb	a,_main_u8RxLFPLen_65536_136
	jnc	00215$
;	src/main.c:1324: printf_fast_f("0x%x ", pu8RxUART[i]);
	mov	a,r6
	add	a,#_main_pu8RxUART_65536_136
	mov	dpl,a
	clr	a
	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:1323: for (i=0; i<u8RxLFPLen;i++) {
	inc	r6
	sjmp	00248$
00215$:
;	src/main.c:1326: su8Cnt++;
	mov	dptr,#_main_su8Cnt_65536_136
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/main.c:1327: stLineFiPkt_UL.u8Ver = su8Cnt;
	movx	a,@dptr
	mov	_main_stLineFiPkt_UL_65536_136,a
;	src/main.c:1328: pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;
	mov	dpl,#0x03
	push	ar7
	lcall	_get_timer_value
	mov	r6,dpl
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),#0x00
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#_main_pktGenTime_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1330: u8StateRxPkt = STATE_ULPKT_GEN; 
	mov	_main_u8StateRxPkt_65536_136,#0x03
;	src/main.c:1331: printf_fast_f("\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
;	src/main.c:1332: printf_fast_f("\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1333: u8RxBufIdx = 0;	
	mov	_main_u8RxBufIdx_65536_136,#0x00
;	src/main.c:1334: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00237$
00217$:
;	src/main.c:1337: u8StateRxPkt = STATE_ACK_WAIT; 
	mov	_main_u8StateRxPkt_65536_136,#0x05
;	src/main.c:1338: u8RxBufIdx = 0;	
	mov	_main_u8RxBufIdx_65536_136,#0x00
;	src/main.c:1339: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00237$
00220$:
;	src/main.c:1345: u8RxBufIdx = 0;
	mov	_main_u8RxBufIdx_65536_136,#0x00
;	src/main.c:1346: gu16TimeCnt = 0;
	mov	dptr,#_gu16TimeCnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:1348: u8StateRxPkt = STATE_ACK_WAIT; 
	mov	_main_u8StateRxPkt_65536_136,#0x05
;	src/main.c:1350: break;
	ljmp	00237$
;	src/main.c:1351: case STATE_RxPKT_END :
00222$:
;	src/main.c:1352: printf_fast_f("\r\nTo %d -> Rx SIZE:%d\n\r", pu8RxUART[2], u8RxLFPLen);
	mov	r5,_main_u8RxLFPLen_65536_136
	mov	r6,#0x00
	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:1354: if (u8RxLFPLen == 1) {
	mov	a,#0x01
	cjne	a,_main_u8RxLFPLen_65536_136,00233$
;	src/main.c:1356: if (chk_my_addr(MY_ADDR, pu8RxUART[0])) {
	mov	dptr,#_main_pu8RxUART_65536_136
	movx	a,@dptr
	mov	_chk_my_addr_PARM_2,a
	mov	dpl,#0x03
	push	ar7
	lcall	_chk_my_addr
	mov	a,dpl
	pop	ar7
	jnz	00606$
	ljmp	00237$
00606$:
;	src/main.c:1358: printf_fast_f("Rx:%d\n\r", pu8RxUART[0]);
	mov	dptr,#_main_pu8RxUART_65536_136
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar7
	push	ar4
	push	ar3
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:1359: ctrl_rgbled_motor(u8RxUART);
	mov	dpl,_main_u8RxUART_65536_136
	lcall	_ctrl_rgbled_motor
	pop	ar7
	ljmp	00237$
00233$:
;	src/main.c:1362: else if(u8RxLFPLen < 8) {
	mov	a,#0x100 - 0x08
	add	a,_main_u8RxLFPLen_65536_136
	jnc	00607$
	ljmp	00230$
00607$:
;	src/main.c:1365: printf_fast_f("1:Rx size:%d\n\r", u8RxLFPLen);
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	src/main.c:1366: for (i=0; i<u8RxLFPLen;i++) {
	mov	r6,#0x00
00251$:
	clr	c
	mov	a,r6
	subb	a,_main_u8RxLFPLen_65536_136
	jnc	00225$
;	src/main.c:1367: printf_fast_f("0x%x ", pu8RxUART[i]);
	mov	a,r6
	add	a,#_main_pu8RxUART_65536_136
	mov	dpl,a
	clr	a
	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:1366: for (i=0; i<u8RxLFPLen;i++) {
	inc	r6
	sjmp	00251$
00225$:
;	src/main.c:1369: printf_fast_f("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
;	src/main.c:1370: for (i=0; i<u8RxLFPLen;i++) {
	mov	r6,#0x00
00254$:
	clr	c
	mov	a,r6
	subb	a,_main_u8RxLFPLen_65536_136
	jnc	00226$
;	src/main.c:1371: printf_fast_f("%d  ", gpu16RxTime[i]);
	mov	a,r6
	mov	b,#0x02
	mul	ab
	add	a,#_gpu16RxTime
	mov	dpl,a
	mov	a,#(_gpu16RxTime >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:1370: for (i=0; i<u8RxLFPLen;i++) {
	inc	r6
	sjmp	00254$
00226$:
;	src/main.c:1373: printf_fast_f("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar7
	ljmp	00237$
00230$:
;	src/main.c:1378: if (pu8RxUART[1] == 100) { // start aloha
	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x64,00610$
	sjmp	00611$
00610$:
	ljmp	00237$
00611$:
;	src/main.c:1379: pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;	
	mov	dpl,#0x03
	push	ar7
	lcall	_get_timer_value
	mov	r6,dpl
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),#0x00
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	dptr,#_main_pktGenTime_65536_136
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	src/main.c:1381: u8RxBufIdx = 0;
	mov	_main_u8RxBufIdx_65536_136,#0x00
;	src/main.c:1382: u8StateRxPkt = STATE_ULPKT_GEN; 
	mov	_main_u8StateRxPkt_65536_136,#0x03
;	src/main.c:1443: } //switch(u8StateRxPkt)
;	src/main.c:1445: }
	ljmp	00237$
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
	.ascii "My address is 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "%s:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "set address as %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "uart speed: %lu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "(%x,%x,%x)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "This is UART0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "This is UART1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "UART_TX="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "LED_R="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "LED_G="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "LED_B="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "no MOTOR_EN"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "MOTOR_CW="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "MOTOR_CCW="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "SEL_RX_POL="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "count:%lu"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "rx data : %x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "no rx"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "%d %d %d %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "%lu"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "[%d]temp : %lu"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "crc bad"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "i2c found %x:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "gu8PPambleDurHNum"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "gu8PPambleDurLNum"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "gu8PPambleNum"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "gu8LineFiUpRate"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "gu8TxCnt"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "-------------------------------"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "gu8PPambleDurHNum:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "gu8PPambleDurLNum:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "gu8PPambleNum:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "%lu[%d]"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii "gu8TxCnt:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "SWITCH:%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii "33333"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii "1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0d
	.db 0x0a
	.ascii "u8RxLFPLen: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii "ack wait->wrong ack->backoff"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii "ack wait->timeout->backoff"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "ACKACKACK"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "Slave %d, DL_packet_num: %d, Rx size:%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "0x%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.db 0x0d
	.db 0x0a
	.ascii "To %d -> Rx SIZE:%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "Rx:%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "1:Rx size:%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.ascii "%d  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii "ULTMODE_INIT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "ULTMODE_PREAMBLE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "ULTMODE_DATA"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "ULTMODE_NO_MANCHESTER"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "ULTMODE_NONE"
	.db 0x00
	.area CSEG    (CODE)
	.area CABS    (ABS,CODE)
	.org 0x3700
_gpcEEPROM:
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
