                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _chk_my_addr_PARM_2
                                     12 	.globl _gpcEEPROM
                                     13 	.globl _main
                                     14 	.globl _delay_nop
                                     15 	.globl _calc_temp
                                     16 	.globl _i2c_read_bytes_cs_bitbannging
                                     17 	.globl _i2c_read_bytes_bitbannging
                                     18 	.globl _i2c_write_bytes_bitbannging
                                     19 	.globl _i2c_address_bitbanging
                                     20 	.globl _i2c_read_bitbanging
                                     21 	.globl _i2c_write_bitbanging
                                     22 	.globl _i2c_setup
                                     23 	.globl _get_uart0_char_nb
                                     24 	.globl _process_all_packet
                                     25 	.globl _set_uplink_test_mode
                                     26 	.globl _process_my_packet
                                     27 	.globl _chk_my_addr
                                     28 	.globl _ctrl_rgbled_motor
                                     29 	.globl _gpio_setup
                                     30 	.globl _disp_help
                                     31 	.globl _MODIFY_HIRC_166
                                     32 	.globl _pin_interrupt_isr
                                     33 	.globl _Timer0_ISR
                                     34 	.globl _state_machine
                                     35 	.globl _print_char
                                     36 	.globl _print_esc
                                     37 	.globl _Write_APROM_BYTE
                                     38 	.globl _Erase_APROM_Page
                                     39 	.globl _get_bktimer_value
                                     40 	.globl _get_timer_value
                                     41 	.globl _crc8
                                     42 	.globl _print_linefipacket
                                     43 	.globl _cp_buf2linefipacket
                                     44 	.globl _send_linefi_packet
                                     45 	.globl _get_octet_from_linefi
                                     46 	.globl _add_crc_linefi_packet_packet
                                     47 	.globl _putchar_manchester
                                     48 	.globl _preamble
                                     49 	.globl _getchar_uart0
                                     50 	.globl _uart_setup
                                     51 	.globl _set_linefi_uplink_speed
                                     52 	.globl _InitialUART1_Timer3
                                     53 	.globl _putchar
                                     54 	.globl _printf_fast_f
                                     55 	.globl _MOSI
                                     56 	.globl _P00
                                     57 	.globl _MISO
                                     58 	.globl _P01
                                     59 	.globl _RXD_1
                                     60 	.globl _P02
                                     61 	.globl _P03
                                     62 	.globl _STADC
                                     63 	.globl _P04
                                     64 	.globl _P05
                                     65 	.globl _TXD
                                     66 	.globl _P06
                                     67 	.globl _RXD
                                     68 	.globl _P07
                                     69 	.globl _IT0
                                     70 	.globl _IE0
                                     71 	.globl _IT1
                                     72 	.globl _IE1
                                     73 	.globl _TR0
                                     74 	.globl _TF0
                                     75 	.globl _TR1
                                     76 	.globl _TF1
                                     77 	.globl _P10
                                     78 	.globl _P11
                                     79 	.globl _P12
                                     80 	.globl _SCL
                                     81 	.globl _P13
                                     82 	.globl _SDA
                                     83 	.globl _P14
                                     84 	.globl _P15
                                     85 	.globl _TXD_1
                                     86 	.globl _P16
                                     87 	.globl _P17
                                     88 	.globl _RI
                                     89 	.globl _TI
                                     90 	.globl _RB8
                                     91 	.globl _TB8
                                     92 	.globl _REN
                                     93 	.globl _SM2
                                     94 	.globl _SM1
                                     95 	.globl _FE
                                     96 	.globl _SM0
                                     97 	.globl _P20
                                     98 	.globl _EX0
                                     99 	.globl _ET0
                                    100 	.globl _EX1
                                    101 	.globl _ET1
                                    102 	.globl _ES
                                    103 	.globl _EBOD
                                    104 	.globl _EADC
                                    105 	.globl _EA
                                    106 	.globl _P30
                                    107 	.globl _PX0
                                    108 	.globl _PT0
                                    109 	.globl _PX1
                                    110 	.globl _PT1
                                    111 	.globl _PS
                                    112 	.globl _PBOD
                                    113 	.globl _PADC
                                    114 	.globl _I2CPX
                                    115 	.globl _AA
                                    116 	.globl _SI
                                    117 	.globl _STO
                                    118 	.globl _STA
                                    119 	.globl _I2CEN
                                    120 	.globl _CM_RL2
                                    121 	.globl _TR2
                                    122 	.globl _TF2
                                    123 	.globl _P
                                    124 	.globl _OV
                                    125 	.globl _RS0
                                    126 	.globl _RS1
                                    127 	.globl _F0
                                    128 	.globl _AC
                                    129 	.globl _CY
                                    130 	.globl _CLRPWM
                                    131 	.globl _PWMF
                                    132 	.globl _LOAD
                                    133 	.globl _PWMRUN
                                    134 	.globl _ADCHS0
                                    135 	.globl _ADCHS1
                                    136 	.globl _ADCHS2
                                    137 	.globl _ADCHS3
                                    138 	.globl _ETGSEL0
                                    139 	.globl _ETGSEL1
                                    140 	.globl _ADCS
                                    141 	.globl _ADCF
                                    142 	.globl _RI_1
                                    143 	.globl _TI_1
                                    144 	.globl _RB8_1
                                    145 	.globl _TB8_1
                                    146 	.globl _REN_1
                                    147 	.globl _SM2_1
                                    148 	.globl _SM1_1
                                    149 	.globl _FE_1
                                    150 	.globl _SM0_1
                                    151 	.globl _EIPH1
                                    152 	.globl _EIP1
                                    153 	.globl _PMD
                                    154 	.globl _PMEN
                                    155 	.globl _PDTCNT
                                    156 	.globl _PDTEN
                                    157 	.globl _SCON_1
                                    158 	.globl _EIPH
                                    159 	.globl _AINDIDS
                                    160 	.globl _SPDR
                                    161 	.globl _SPSR
                                    162 	.globl _SPCR2
                                    163 	.globl _SPCR
                                    164 	.globl _CAPCON4
                                    165 	.globl _CAPCON3
                                    166 	.globl _B
                                    167 	.globl _EIP
                                    168 	.globl _C2H
                                    169 	.globl _C2L
                                    170 	.globl _PIF
                                    171 	.globl _PIPEN
                                    172 	.globl _PINEN
                                    173 	.globl _PICON
                                    174 	.globl _ADCCON0
                                    175 	.globl _C1H
                                    176 	.globl _C1L
                                    177 	.globl _C0H
                                    178 	.globl _C0L
                                    179 	.globl _ADCDLY
                                    180 	.globl _ADCCON2
                                    181 	.globl _ADCCON1
                                    182 	.globl _ACC
                                    183 	.globl _PWMCON1
                                    184 	.globl _PIOCON0
                                    185 	.globl _PWM3L
                                    186 	.globl _PWM2L
                                    187 	.globl _PWM1L
                                    188 	.globl _PWM0L
                                    189 	.globl _PWMPL
                                    190 	.globl _PWMCON0
                                    191 	.globl _FBD
                                    192 	.globl _PNP
                                    193 	.globl _PWM3H
                                    194 	.globl _PWM2H
                                    195 	.globl _PWM1H
                                    196 	.globl _PWM0H
                                    197 	.globl _PWMPH
                                    198 	.globl _PSW
                                    199 	.globl _ADCMPH
                                    200 	.globl _ADCMPL
                                    201 	.globl _PWM5L
                                    202 	.globl _TH2
                                    203 	.globl _PWM4L
                                    204 	.globl _TL2
                                    205 	.globl _RCMP2H
                                    206 	.globl _RCMP2L
                                    207 	.globl _T2MOD
                                    208 	.globl _T2CON
                                    209 	.globl _TA
                                    210 	.globl _PIOCON1
                                    211 	.globl _RH3
                                    212 	.globl _PWM5H
                                    213 	.globl _RL3
                                    214 	.globl _PWM4H
                                    215 	.globl _T3CON
                                    216 	.globl _ADCRH
                                    217 	.globl _ADCRL
                                    218 	.globl _I2ADDR
                                    219 	.globl _I2CON
                                    220 	.globl _I2TOC
                                    221 	.globl _I2CLK
                                    222 	.globl _I2STAT
                                    223 	.globl _I2DAT
                                    224 	.globl _SADDR_1
                                    225 	.globl _SADEN_1
                                    226 	.globl _SADEN
                                    227 	.globl _IP
                                    228 	.globl _PWMINTC
                                    229 	.globl _IPH
                                    230 	.globl _P2S
                                    231 	.globl _P1SR
                                    232 	.globl _P1M2
                                    233 	.globl _P1S
                                    234 	.globl _P1M1
                                    235 	.globl _P0SR
                                    236 	.globl _P0M2
                                    237 	.globl _P0S
                                    238 	.globl _P0M1
                                    239 	.globl _P3
                                    240 	.globl _IAPCN
                                    241 	.globl _IAPFD
                                    242 	.globl _P3SR
                                    243 	.globl _P3M2
                                    244 	.globl _P3S
                                    245 	.globl _P3M1
                                    246 	.globl _BODCON1
                                    247 	.globl _WDCON
                                    248 	.globl _SADDR
                                    249 	.globl _IE
                                    250 	.globl _IAPAH
                                    251 	.globl _IAPAL
                                    252 	.globl _IAPUEN
                                    253 	.globl _IAPTRG
                                    254 	.globl _BODCON0
                                    255 	.globl _AUXR1
                                    256 	.globl _P2
                                    257 	.globl _CHPCON
                                    258 	.globl _EIE1
                                    259 	.globl _EIE
                                    260 	.globl _SBUF_1
                                    261 	.globl _SBUF
                                    262 	.globl _SCON
                                    263 	.globl _CKEN
                                    264 	.globl _CKSWT
                                    265 	.globl _CKDIV
                                    266 	.globl _CAPCON2
                                    267 	.globl _CAPCON1
                                    268 	.globl _CAPCON0
                                    269 	.globl _SFRS
                                    270 	.globl _P1
                                    271 	.globl _WKCON
                                    272 	.globl _CKCON
                                    273 	.globl _TH1
                                    274 	.globl _TH0
                                    275 	.globl _TL1
                                    276 	.globl _TL0
                                    277 	.globl _TMOD
                                    278 	.globl _TCON
                                    279 	.globl _PCON
                                    280 	.globl _RWK
                                    281 	.globl _RCTRIM1
                                    282 	.globl _RCTRIM0
                                    283 	.globl _DPH
                                    284 	.globl _DPL
                                    285 	.globl _SP
                                    286 	.globl _P0
                                    287 	.globl _gu32TimeCnt
                                    288 	.globl _gu16TimeCnt
                                    289 	.globl _gpu16RxTime
                                    290 	.globl _gpu32UartSpeed
                                    291 	.globl _gppcULTestMode
                                    292 	.globl _gpu8Data2
                                    293 	.globl _gu8RateIdx
                                    294 	.globl _gu8ULTestData
                                    295 	.globl _gu8PPambleCnt
                                    296 	.globl _gu8PPambleDurCnt
                                    297 	.globl _gu8UpLinkTxState
                                    298 	.globl _gu8ULTestMode
                                    299 	.globl _gu8MotorState
                                    300 	.globl _gpu8Data
                                    301 	.globl _gu8DurModeMax
                                    302 	.globl _gu8TxCnt
                                    303 	.globl _gu8DurMode
                                    304 	.globl _gu8LineFiUpRate
                                    305 	.globl _gu8PPambleNum
                                    306 	.globl _gu8PPambleDurLNum
                                    307 	.globl _gu8PPambleDurHNum
                                    308 	.globl _calc_temp_PARM_2
                                    309 	.globl _i2c_read_bytes_cs_bitbannging_PARM_3
                                    310 	.globl _i2c_read_bytes_cs_bitbannging_PARM_2
                                    311 	.globl _i2c_read_bytes_bitbannging_PARM_3
                                    312 	.globl _i2c_read_bytes_bitbannging_PARM_2
                                    313 	.globl _i2c_write_bytes_bitbannging_PARM_3
                                    314 	.globl _i2c_write_bytes_bitbannging_PARM_2
                                    315 	.globl _i2c_address_bitbanging_PARM_2
                                    316 	.globl _set_uplink_test_mode_PARM_2
                                    317 	.globl _state_machine_PARM_4
                                    318 	.globl _state_machine_PARM_3
                                    319 	.globl _state_machine_PARM_2
                                    320 	.globl _gu8MyAddr
                                    321 ;--------------------------------------------------------
                                    322 ; special function registers
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           000080   326 _P0	=	0x0080
                           000081   327 _SP	=	0x0081
                           000082   328 _DPL	=	0x0082
                           000083   329 _DPH	=	0x0083
                           000084   330 _RCTRIM0	=	0x0084
                           000085   331 _RCTRIM1	=	0x0085
                           000086   332 _RWK	=	0x0086
                           000087   333 _PCON	=	0x0087
                           000088   334 _TCON	=	0x0088
                           000089   335 _TMOD	=	0x0089
                           00008A   336 _TL0	=	0x008a
                           00008B   337 _TL1	=	0x008b
                           00008C   338 _TH0	=	0x008c
                           00008D   339 _TH1	=	0x008d
                           00008E   340 _CKCON	=	0x008e
                           00008F   341 _WKCON	=	0x008f
                           000090   342 _P1	=	0x0090
                           000091   343 _SFRS	=	0x0091
                           000092   344 _CAPCON0	=	0x0092
                           000093   345 _CAPCON1	=	0x0093
                           000094   346 _CAPCON2	=	0x0094
                           000095   347 _CKDIV	=	0x0095
                           000096   348 _CKSWT	=	0x0096
                           000097   349 _CKEN	=	0x0097
                           000098   350 _SCON	=	0x0098
                           000099   351 _SBUF	=	0x0099
                           00009A   352 _SBUF_1	=	0x009a
                           00009B   353 _EIE	=	0x009b
                           00009C   354 _EIE1	=	0x009c
                           00009F   355 _CHPCON	=	0x009f
                           0000A0   356 _P2	=	0x00a0
                           0000A2   357 _AUXR1	=	0x00a2
                           0000A3   358 _BODCON0	=	0x00a3
                           0000A4   359 _IAPTRG	=	0x00a4
                           0000A5   360 _IAPUEN	=	0x00a5
                           0000A6   361 _IAPAL	=	0x00a6
                           0000A7   362 _IAPAH	=	0x00a7
                           0000A8   363 _IE	=	0x00a8
                           0000A9   364 _SADDR	=	0x00a9
                           0000AA   365 _WDCON	=	0x00aa
                           0000AB   366 _BODCON1	=	0x00ab
                           0000AC   367 _P3M1	=	0x00ac
                           0000AC   368 _P3S	=	0x00ac
                           0000AD   369 _P3M2	=	0x00ad
                           0000AD   370 _P3SR	=	0x00ad
                           0000AE   371 _IAPFD	=	0x00ae
                           0000AF   372 _IAPCN	=	0x00af
                           0000B0   373 _P3	=	0x00b0
                           0000B1   374 _P0M1	=	0x00b1
                           0000B1   375 _P0S	=	0x00b1
                           0000B2   376 _P0M2	=	0x00b2
                           0000B2   377 _P0SR	=	0x00b2
                           0000B3   378 _P1M1	=	0x00b3
                           0000B3   379 _P1S	=	0x00b3
                           0000B4   380 _P1M2	=	0x00b4
                           0000B4   381 _P1SR	=	0x00b4
                           0000B5   382 _P2S	=	0x00b5
                           0000B7   383 _IPH	=	0x00b7
                           0000B7   384 _PWMINTC	=	0x00b7
                           0000B8   385 _IP	=	0x00b8
                           0000B9   386 _SADEN	=	0x00b9
                           0000BA   387 _SADEN_1	=	0x00ba
                           0000BB   388 _SADDR_1	=	0x00bb
                           0000BC   389 _I2DAT	=	0x00bc
                           0000BD   390 _I2STAT	=	0x00bd
                           0000BE   391 _I2CLK	=	0x00be
                           0000BF   392 _I2TOC	=	0x00bf
                           0000C0   393 _I2CON	=	0x00c0
                           0000C1   394 _I2ADDR	=	0x00c1
                           0000C2   395 _ADCRL	=	0x00c2
                           0000C3   396 _ADCRH	=	0x00c3
                           0000C4   397 _T3CON	=	0x00c4
                           0000C4   398 _PWM4H	=	0x00c4
                           0000C5   399 _RL3	=	0x00c5
                           0000C5   400 _PWM5H	=	0x00c5
                           0000C6   401 _RH3	=	0x00c6
                           0000C6   402 _PIOCON1	=	0x00c6
                           0000C7   403 _TA	=	0x00c7
                           0000C8   404 _T2CON	=	0x00c8
                           0000C9   405 _T2MOD	=	0x00c9
                           0000CA   406 _RCMP2L	=	0x00ca
                           0000CB   407 _RCMP2H	=	0x00cb
                           0000CC   408 _TL2	=	0x00cc
                           0000CC   409 _PWM4L	=	0x00cc
                           0000CD   410 _TH2	=	0x00cd
                           0000CD   411 _PWM5L	=	0x00cd
                           0000CE   412 _ADCMPL	=	0x00ce
                           0000CF   413 _ADCMPH	=	0x00cf
                           0000D0   414 _PSW	=	0x00d0
                           0000D1   415 _PWMPH	=	0x00d1
                           0000D2   416 _PWM0H	=	0x00d2
                           0000D3   417 _PWM1H	=	0x00d3
                           0000D4   418 _PWM2H	=	0x00d4
                           0000D5   419 _PWM3H	=	0x00d5
                           0000D6   420 _PNP	=	0x00d6
                           0000D7   421 _FBD	=	0x00d7
                           0000D8   422 _PWMCON0	=	0x00d8
                           0000D9   423 _PWMPL	=	0x00d9
                           0000DA   424 _PWM0L	=	0x00da
                           0000DB   425 _PWM1L	=	0x00db
                           0000DC   426 _PWM2L	=	0x00dc
                           0000DD   427 _PWM3L	=	0x00dd
                           0000DE   428 _PIOCON0	=	0x00de
                           0000DF   429 _PWMCON1	=	0x00df
                           0000E0   430 _ACC	=	0x00e0
                           0000E1   431 _ADCCON1	=	0x00e1
                           0000E2   432 _ADCCON2	=	0x00e2
                           0000E3   433 _ADCDLY	=	0x00e3
                           0000E4   434 _C0L	=	0x00e4
                           0000E5   435 _C0H	=	0x00e5
                           0000E6   436 _C1L	=	0x00e6
                           0000E7   437 _C1H	=	0x00e7
                           0000E8   438 _ADCCON0	=	0x00e8
                           0000E9   439 _PICON	=	0x00e9
                           0000EA   440 _PINEN	=	0x00ea
                           0000EB   441 _PIPEN	=	0x00eb
                           0000EC   442 _PIF	=	0x00ec
                           0000ED   443 _C2L	=	0x00ed
                           0000EE   444 _C2H	=	0x00ee
                           0000EF   445 _EIP	=	0x00ef
                           0000F0   446 _B	=	0x00f0
                           0000F1   447 _CAPCON3	=	0x00f1
                           0000F2   448 _CAPCON4	=	0x00f2
                           0000F3   449 _SPCR	=	0x00f3
                           0000F3   450 _SPCR2	=	0x00f3
                           0000F4   451 _SPSR	=	0x00f4
                           0000F5   452 _SPDR	=	0x00f5
                           0000F6   453 _AINDIDS	=	0x00f6
                           0000F7   454 _EIPH	=	0x00f7
                           0000F8   455 _SCON_1	=	0x00f8
                           0000F9   456 _PDTEN	=	0x00f9
                           0000FA   457 _PDTCNT	=	0x00fa
                           0000FB   458 _PMEN	=	0x00fb
                           0000FC   459 _PMD	=	0x00fc
                           0000FE   460 _EIP1	=	0x00fe
                           0000FF   461 _EIPH1	=	0x00ff
                                    462 ;--------------------------------------------------------
                                    463 ; special function bits
                                    464 ;--------------------------------------------------------
                                    465 	.area RSEG    (ABS,DATA)
      000000                        466 	.org 0x0000
                           0000FF   467 _SM0_1	=	0x00ff
                           0000FF   468 _FE_1	=	0x00ff
                           0000FE   469 _SM1_1	=	0x00fe
                           0000FD   470 _SM2_1	=	0x00fd
                           0000FC   471 _REN_1	=	0x00fc
                           0000FB   472 _TB8_1	=	0x00fb
                           0000FA   473 _RB8_1	=	0x00fa
                           0000F9   474 _TI_1	=	0x00f9
                           0000F8   475 _RI_1	=	0x00f8
                           0000EF   476 _ADCF	=	0x00ef
                           0000EE   477 _ADCS	=	0x00ee
                           0000ED   478 _ETGSEL1	=	0x00ed
                           0000EC   479 _ETGSEL0	=	0x00ec
                           0000EB   480 _ADCHS3	=	0x00eb
                           0000EA   481 _ADCHS2	=	0x00ea
                           0000E9   482 _ADCHS1	=	0x00e9
                           0000E8   483 _ADCHS0	=	0x00e8
                           0000DF   484 _PWMRUN	=	0x00df
                           0000DE   485 _LOAD	=	0x00de
                           0000DD   486 _PWMF	=	0x00dd
                           0000DC   487 _CLRPWM	=	0x00dc
                           0000D7   488 _CY	=	0x00d7
                           0000D6   489 _AC	=	0x00d6
                           0000D5   490 _F0	=	0x00d5
                           0000D4   491 _RS1	=	0x00d4
                           0000D3   492 _RS0	=	0x00d3
                           0000D2   493 _OV	=	0x00d2
                           0000D0   494 _P	=	0x00d0
                           0000CF   495 _TF2	=	0x00cf
                           0000CA   496 _TR2	=	0x00ca
                           0000C8   497 _CM_RL2	=	0x00c8
                           0000C6   498 _I2CEN	=	0x00c6
                           0000C5   499 _STA	=	0x00c5
                           0000C4   500 _STO	=	0x00c4
                           0000C3   501 _SI	=	0x00c3
                           0000C2   502 _AA	=	0x00c2
                           0000C0   503 _I2CPX	=	0x00c0
                           0000BE   504 _PADC	=	0x00be
                           0000BD   505 _PBOD	=	0x00bd
                           0000BC   506 _PS	=	0x00bc
                           0000BB   507 _PT1	=	0x00bb
                           0000BA   508 _PX1	=	0x00ba
                           0000B9   509 _PT0	=	0x00b9
                           0000B8   510 _PX0	=	0x00b8
                           0000B0   511 _P30	=	0x00b0
                           0000AF   512 _EA	=	0x00af
                           0000AE   513 _EADC	=	0x00ae
                           0000AD   514 _EBOD	=	0x00ad
                           0000AC   515 _ES	=	0x00ac
                           0000AB   516 _ET1	=	0x00ab
                           0000AA   517 _EX1	=	0x00aa
                           0000A9   518 _ET0	=	0x00a9
                           0000A8   519 _EX0	=	0x00a8
                           0000A0   520 _P20	=	0x00a0
                           00009F   521 _SM0	=	0x009f
                           00009F   522 _FE	=	0x009f
                           00009E   523 _SM1	=	0x009e
                           00009D   524 _SM2	=	0x009d
                           00009C   525 _REN	=	0x009c
                           00009B   526 _TB8	=	0x009b
                           00009A   527 _RB8	=	0x009a
                           000099   528 _TI	=	0x0099
                           000098   529 _RI	=	0x0098
                           000097   530 _P17	=	0x0097
                           000096   531 _P16	=	0x0096
                           000096   532 _TXD_1	=	0x0096
                           000095   533 _P15	=	0x0095
                           000094   534 _P14	=	0x0094
                           000094   535 _SDA	=	0x0094
                           000093   536 _P13	=	0x0093
                           000093   537 _SCL	=	0x0093
                           000092   538 _P12	=	0x0092
                           000091   539 _P11	=	0x0091
                           000090   540 _P10	=	0x0090
                           00008F   541 _TF1	=	0x008f
                           00008E   542 _TR1	=	0x008e
                           00008D   543 _TF0	=	0x008d
                           00008C   544 _TR0	=	0x008c
                           00008B   545 _IE1	=	0x008b
                           00008A   546 _IT1	=	0x008a
                           000089   547 _IE0	=	0x0089
                           000088   548 _IT0	=	0x0088
                           000087   549 _P07	=	0x0087
                           000087   550 _RXD	=	0x0087
                           000086   551 _P06	=	0x0086
                           000086   552 _TXD	=	0x0086
                           000085   553 _P05	=	0x0085
                           000084   554 _P04	=	0x0084
                           000084   555 _STADC	=	0x0084
                           000083   556 _P03	=	0x0083
                           000082   557 _P02	=	0x0082
                           000082   558 _RXD_1	=	0x0082
                           000081   559 _P01	=	0x0081
                           000081   560 _MISO	=	0x0081
                           000080   561 _P00	=	0x0080
                           000080   562 _MOSI	=	0x0080
                                    563 ;--------------------------------------------------------
                                    564 ; overlayable register banks
                                    565 ;--------------------------------------------------------
                                    566 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        567 	.ds 8
                                    568 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        569 	.ds 8
                                    570 ;--------------------------------------------------------
                                    571 ; internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area DSEG    (DATA)
      000022                        574 _gu8MyAddr::
      000022                        575 	.ds 1
      000023                        576 _state_machine_PARM_2:
      000023                        577 	.ds 1
      000024                        578 _state_machine_PARM_3:
      000024                        579 	.ds 1
      000025                        580 _state_machine_PARM_4:
      000025                        581 	.ds 1
      000026                        582 _process_my_packet_sloc0_1_0:
      000026                        583 	.ds 3
      000029                        584 _set_uplink_test_mode_PARM_2:
      000029                        585 	.ds 1
      00002A                        586 _process_all_packet_sloc0_1_0:
      00002A                        587 	.ds 3
      00002D                        588 _process_all_packet_sloc1_1_0:
      00002D                        589 	.ds 4
      000031                        590 _i2c_address_bitbanging_PARM_2:
      000031                        591 	.ds 1
      000032                        592 _i2c_write_bytes_bitbannging_PARM_2:
      000032                        593 	.ds 1
      000033                        594 _i2c_write_bytes_bitbannging_PARM_3:
      000033                        595 	.ds 3
      000036                        596 _i2c_read_bytes_bitbannging_PARM_2:
      000036                        597 	.ds 1
      000037                        598 _i2c_read_bytes_bitbannging_PARM_3:
      000037                        599 	.ds 3
      00003A                        600 _i2c_read_bytes_cs_bitbannging_PARM_2:
      00003A                        601 	.ds 1
      00003B                        602 _i2c_read_bytes_cs_bitbannging_PARM_3:
      00003B                        603 	.ds 3
      00003E                        604 _calc_temp_PARM_2:
      00003E                        605 	.ds 1
      00003F                        606 _main_su8Cnt_327681_146:
      00003F                        607 	.ds 1
      000040                        608 _main_su8Cnt_262146_159:
      000040                        609 	.ds 1
      000041                        610 _main_u8RxUART_65536_136:
      000041                        611 	.ds 1
      000042                        612 _main_u8StateRxPkt_65536_136:
      000042                        613 	.ds 1
      000043                        614 _main_stLineFiPkt_65536_136:
      000043                        615 	.ds 8
      00004B                        616 _main_stLineFiPkt2_65536_136:
      00004B                        617 	.ds 8
      000053                        618 _main_stLineFiPkt_UL_65536_136:
      000053                        619 	.ds 8
      00005B                        620 _main_u8RxBufIdx_65536_136:
      00005B                        621 	.ds 1
      00005C                        622 _main_u8RxLFPLen_65536_136:
      00005C                        623 	.ds 1
      00005D                        624 _main_sloc0_1_0:
      00005D                        625 	.ds 2
                                    626 ;--------------------------------------------------------
                                    627 ; overlayable items in internal ram 
                                    628 ;--------------------------------------------------------
                                    629 	.area	OSEG    (OVR,DATA)
                                    630 	.area	OSEG    (OVR,DATA)
                                    631 	.area	OSEG    (OVR,DATA)
      000019                        632 _chk_my_addr_PARM_2:
      000019                        633 	.ds 1
                                    634 	.area	OSEG    (OVR,DATA)
                                    635 	.area	OSEG    (OVR,DATA)
                                    636 	.area	OSEG    (OVR,DATA)
                                    637 ;--------------------------------------------------------
                                    638 ; Stack segment in internal ram 
                                    639 ;--------------------------------------------------------
                                    640 	.area	SSEG
      000075                        641 __start__stack:
      000075                        642 	.ds	1
                                    643 
                                    644 ;--------------------------------------------------------
                                    645 ; indirectly addressable internal ram data
                                    646 ;--------------------------------------------------------
                                    647 	.area ISEG    (DATA)
                                    648 ;--------------------------------------------------------
                                    649 ; absolute internal ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area IABS    (ABS,DATA)
                                    652 	.area IABS    (ABS,DATA)
                                    653 ;--------------------------------------------------------
                                    654 ; bit data
                                    655 ;--------------------------------------------------------
                                    656 	.area BSEG    (BIT)
                                    657 ;--------------------------------------------------------
                                    658 ; paged external ram data
                                    659 ;--------------------------------------------------------
                                    660 	.area PSEG    (PAG,XDATA)
                                    661 ;--------------------------------------------------------
                                    662 ; external ram data
                                    663 ;--------------------------------------------------------
                                    664 	.area XSEG    (XDATA)
      000001                        665 _gu8PPambleDurHNum::
      000001                        666 	.ds 1
      000002                        667 _gu8PPambleDurLNum::
      000002                        668 	.ds 1
      000003                        669 _gu8PPambleNum::
      000003                        670 	.ds 2
      000005                        671 _gu8LineFiUpRate::
      000005                        672 	.ds 1
      000006                        673 _gu8DurMode::
      000006                        674 	.ds 1
      000007                        675 _gu8TxCnt::
      000007                        676 	.ds 1
      000008                        677 _gu8DurModeMax::
      000008                        678 	.ds 1
      000009                        679 _gpu8Data::
      000009                        680 	.ds 20
      00001D                        681 _gu8MotorState::
      00001D                        682 	.ds 1
      00001E                        683 _gu8ULTestMode::
      00001E                        684 	.ds 1
      00001F                        685 _gu8UpLinkTxState::
      00001F                        686 	.ds 1
      000020                        687 _gu8PPambleDurCnt::
      000020                        688 	.ds 1
      000021                        689 _gu8PPambleCnt::
      000021                        690 	.ds 2
      000023                        691 _gu8ULTestData::
      000023                        692 	.ds 1
      000024                        693 _gu8RateIdx::
      000024                        694 	.ds 1
      000025                        695 _gpu8Data2::
      000025                        696 	.ds 20
      000039                        697 _gppcULTestMode::
      000039                        698 	.ds 15
      000048                        699 _gpu32UartSpeed::
      000048                        700 	.ds 56
      000080                        701 _gpu16RxTime::
      000080                        702 	.ds 40
      0000A8                        703 _gu16TimeCnt::
      0000A8                        704 	.ds 2
      0000AA                        705 _gu32TimeCnt::
      0000AA                        706 	.ds 4
      0000AE                        707 _main_pu8RxUART_65536_136:
      0000AE                        708 	.ds 30
      0000CC                        709 _main_pktGenTime_65536_136:
      0000CC                        710 	.ds 4
      0000D0                        711 _main_backoffTimer_65536_136:
      0000D0                        712 	.ds 4
      0000D4                        713 _main_su8Cnt_65536_136:
      0000D4                        714 	.ds 1
      0000D5                        715 _main_su8InitCnt_327681_165:
      0000D5                        716 	.ds 1
                                    717 ;--------------------------------------------------------
                                    718 ; absolute external ram data
                                    719 ;--------------------------------------------------------
                                    720 	.area XABS    (ABS,XDATA)
                                    721 ;--------------------------------------------------------
                                    722 ; external initialized ram data
                                    723 ;--------------------------------------------------------
                                    724 	.area HOME    (CODE)
                                    725 	.area GSINIT0 (CODE)
                                    726 	.area GSINIT1 (CODE)
                                    727 	.area GSINIT2 (CODE)
                                    728 	.area GSINIT3 (CODE)
                                    729 	.area GSINIT4 (CODE)
                                    730 	.area GSINIT5 (CODE)
                                    731 	.area GSINIT  (CODE)
                                    732 	.area GSFINAL (CODE)
                                    733 	.area CSEG    (CODE)
                                    734 ;--------------------------------------------------------
                                    735 ; interrupt vector 
                                    736 ;--------------------------------------------------------
                                    737 	.area HOME    (CODE)
      000000                        738 __interrupt_vect:
      000000 02 00 AF         [24]  739 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  740 	reti
      000004                        741 	.ds	7
      00000B 02 06 6D         [24]  742 	ljmp	_Timer0_ISR
      00000E                        743 	.ds	5
      000013 32               [24]  744 	reti
      000014                        745 	.ds	7
      00001B 32               [24]  746 	reti
      00001C                        747 	.ds	7
      000023 02 2D 41         [24]  748 	ljmp	_SerialPort0_ISR
      000026                        749 	.ds	5
      00002B 32               [24]  750 	reti
      00002C                        751 	.ds	7
      000033 32               [24]  752 	reti
      000034                        753 	.ds	7
      00003B 02 06 A6         [24]  754 	ljmp	_pin_interrupt_isr
      00003E                        755 	.ds	5
      000043 32               [24]  756 	reti
      000044                        757 	.ds	7
      00004B 32               [24]  758 	reti
      00004C                        759 	.ds	7
      000053 32               [24]  760 	reti
      000054                        761 	.ds	7
      00005B 32               [24]  762 	reti
      00005C                        763 	.ds	7
      000063 32               [24]  764 	reti
      000064                        765 	.ds	7
      00006B 32               [24]  766 	reti
      00006C                        767 	.ds	7
      000073 32               [24]  768 	reti
      000074                        769 	.ds	7
      00007B 02 2E A2         [24]  770 	ljmp	_SerialPort1_ISR
                                    771 ;--------------------------------------------------------
                                    772 ; global & static initialisations
                                    773 ;--------------------------------------------------------
                                    774 	.area HOME    (CODE)
                                    775 	.area GSINIT  (CODE)
                                    776 	.area GSFINAL (CODE)
                                    777 	.area GSINIT  (CODE)
                                    778 	.globl __sdcc_gsinit_startup
                                    779 	.globl __sdcc_program_startup
                                    780 	.globl __start__stack
                                    781 	.globl __mcs51_genRAMCLEAR
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'main'
                                    784 ;------------------------------------------------------------
                                    785 ;su8Cnt                    Allocated with name '_main_su8Cnt_327681_146'
                                    786 ;su8Cnt                    Allocated with name '_main_su8Cnt_262146_159'
                                    787 ;u8PrevSwitch              Allocated to registers r7 
                                    788 ;u8UartRx                  Allocated to registers 
                                    789 ;u8RotSense                Allocated to registers 
                                    790 ;u8RxUART                  Allocated with name '_main_u8RxUART_65536_136'
                                    791 ;u16Cnt                    Allocated to registers r4 r7 
                                    792 ;u8OutputState             Allocated to registers 
                                    793 ;u8StateRxCSC              Allocated to registers 
                                    794 ;u8LineFiAddr              Allocated to registers 
                                    795 ;u8LineFiSpeed             Allocated to registers 
                                    796 ;u8Data                    Allocated to registers 
                                    797 ;u8LineFiCmd               Allocated to registers 
                                    798 ;u8PwrOnFirstFlag          Allocated to registers 
                                    799 ;u8StateRxPkt              Allocated with name '_main_u8StateRxPkt_65536_136'
                                    800 ;u8StateTxPkt              Allocated to registers 
                                    801 ;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_136'
                                    802 ;stLineFiPkt2              Allocated with name '_main_stLineFiPkt2_65536_136'
                                    803 ;stLineFiPkt_UL            Allocated with name '_main_stLineFiPkt_UL_65536_136'
                                    804 ;u8MotorState              Allocated to registers 
                                    805 ;u8RxBufIdx                Allocated with name '_main_u8RxBufIdx_65536_136'
                                    806 ;u8RxLFPLen                Allocated with name '_main_u8RxLFPLen_65536_136'
                                    807 ;u8LineFiRxIdx             Allocated to registers 
                                    808 ;u8Count2                  Allocated to registers 
                                    809 ;u8RxPktCnt                Allocated to registers 
                                    810 ;u8PreambleCnt             Allocated to registers 
                                    811 ;i                         Allocated to registers r6 
                                    812 ;i                         Allocated to registers r6 
                                    813 ;i                         Allocated to registers r6 
                                    814 ;i                         Allocated to registers r6 
                                    815 ;i                         Allocated with name '_main_i_262145_199'
                                    816 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    817 ;pu8RxUART                 Allocated with name '_main_pu8RxUART_65536_136'
                                    818 ;pktGenTime                Allocated with name '_main_pktGenTime_65536_136'
                                    819 ;backoffTimer              Allocated with name '_main_backoffTimer_65536_136'
                                    820 ;su8Cnt                    Allocated with name '_main_su8Cnt_65536_136'
                                    821 ;su8InitCnt                Allocated with name '_main_su8InitCnt_327681_165'
                                    822 ;------------------------------------------------------------
                                    823 ;	src/main.c:803: static UINT8 __xdata su8Cnt = 1;
      0000C2 90 00 D4         [24]  824 	mov	dptr,#_main_su8Cnt_65536_136
      0000C5 74 01            [12]  825 	mov	a,#0x01
      0000C7 F0               [24]  826 	movx	@dptr,a
                                    827 ;	src/main.c:975: static UINT8 su8Cnt = 0;
      0000C8 75 3F 00         [24]  828 	mov	_main_su8Cnt_327681_146,#0x00
                                    829 ;	src/main.c:1101: static uint8 su8Cnt = 0;
      0000CB 75 40 00         [24]  830 	mov	_main_su8Cnt_262146_159,#0x00
                                    831 ;	src/main.c:1127: static UINT8 __xdata su8InitCnt = 0;
      0000CE 90 00 D5         [24]  832 	mov	dptr,#_main_su8InitCnt_327681_165
      0000D1 E4               [12]  833 	clr	a
      0000D2 F0               [24]  834 	movx	@dptr,a
                                    835 ;	src/main.c:90: uint8 __xdata gu8PPambleDurHNum = 1;
      0000D3 90 00 01         [24]  836 	mov	dptr,#_gu8PPambleDurHNum
      0000D6 04               [12]  837 	inc	a
      0000D7 F0               [24]  838 	movx	@dptr,a
                                    839 ;	src/main.c:91: uint8 __xdata gu8PPambleDurLNum = 12;
      0000D8 90 00 02         [24]  840 	mov	dptr,#_gu8PPambleDurLNum
      0000DB 74 0C            [12]  841 	mov	a,#0x0c
      0000DD F0               [24]  842 	movx	@dptr,a
                                    843 ;	src/main.c:92: uint16 __xdata gu8PPambleNum = 1;
      0000DE 90 00 03         [24]  844 	mov	dptr,#_gu8PPambleNum
      0000E1 74 01            [12]  845 	mov	a,#0x01
      0000E3 F0               [24]  846 	movx	@dptr,a
      0000E4 E4               [12]  847 	clr	a
      0000E5 A3               [24]  848 	inc	dptr
      0000E6 F0               [24]  849 	movx	@dptr,a
                                    850 ;	src/main.c:93: uint8 __xdata gu8LineFiUpRate = 5; // 라인파이 상향 속도: 230400bps 이것으로 맨코해서 보내면, 실제 데이타 속도는 115200
      0000E7 90 00 05         [24]  851 	mov	dptr,#_gu8LineFiUpRate
      0000EA 74 05            [12]  852 	mov	a,#0x05
      0000EC F0               [24]  853 	movx	@dptr,a
                                    854 ;	src/main.c:94: uint8 __xdata gu8DurMode = 0;
      0000ED 90 00 06         [24]  855 	mov	dptr,#_gu8DurMode
      0000F0 E4               [12]  856 	clr	a
      0000F1 F0               [24]  857 	movx	@dptr,a
                                    858 ;	src/main.c:95: uint8 __xdata gu8TxCnt = 8;
      0000F2 90 00 07         [24]  859 	mov	dptr,#_gu8TxCnt
      0000F5 74 08            [12]  860 	mov	a,#0x08
      0000F7 F0               [24]  861 	movx	@dptr,a
                                    862 ;	src/main.c:96: uint8 __xdata gu8DurModeMax = 3;
      0000F8 90 00 08         [24]  863 	mov	dptr,#_gu8DurModeMax
      0000FB 74 03            [12]  864 	mov	a,#0x03
      0000FD F0               [24]  865 	movx	@dptr,a
                                    866 ;	src/main.c:101: UINT8 __xdata gu8MotorState = 0;
      0000FE 90 00 1D         [24]  867 	mov	dptr,#_gu8MotorState
      000101 E4               [12]  868 	clr	a
      000102 F0               [24]  869 	movx	@dptr,a
                                    870 ;	src/main.c:109: uplink_mode_t __xdata gu8ULTestMode = ULTMODE_INIT;
      000103 90 00 1E         [24]  871 	mov	dptr,#_gu8ULTestMode
      000106 F0               [24]  872 	movx	@dptr,a
                                    873 ;	src/main.c:110: uplink_tx_state_t __xdata gu8UpLinkTxState = ULTxState_INIT;
      000107 90 00 1F         [24]  874 	mov	dptr,#_gu8UpLinkTxState
      00010A F0               [24]  875 	movx	@dptr,a
                                    876 ;	src/main.c:113: UINT8 __xdata gu8ULTestData = 0;
      00010B 90 00 23         [24]  877 	mov	dptr,#_gu8ULTestData
      00010E F0               [24]  878 	movx	@dptr,a
                                    879 ;	src/main.c:114: UINT8 __xdata gu8RateIdx = 4;
      00010F 90 00 24         [24]  880 	mov	dptr,#_gu8RateIdx
      000112 74 04            [12]  881 	mov	a,#0x04
      000114 F0               [24]  882 	movx	@dptr,a
                                    883 ;	src/main.c:116: UINT8 __xdata gpu8Data2[20] = {
      000115 90 00 25         [24]  884 	mov	dptr,#_gpu8Data2
      000118 74 01            [12]  885 	mov	a,#0x01
      00011A F0               [24]  886 	movx	@dptr,a
      00011B 90 00 26         [24]  887 	mov	dptr,#(_gpu8Data2 + 0x0001)
      00011E 04               [12]  888 	inc	a
      00011F F0               [24]  889 	movx	@dptr,a
      000120 90 00 27         [24]  890 	mov	dptr,#(_gpu8Data2 + 0x0002)
      000123 04               [12]  891 	inc	a
      000124 F0               [24]  892 	movx	@dptr,a
      000125 90 00 28         [24]  893 	mov	dptr,#(_gpu8Data2 + 0x0003)
      000128 04               [12]  894 	inc	a
      000129 F0               [24]  895 	movx	@dptr,a
      00012A 90 00 29         [24]  896 	mov	dptr,#(_gpu8Data2 + 0x0004)
      00012D 04               [12]  897 	inc	a
      00012E F0               [24]  898 	movx	@dptr,a
      00012F 90 00 2A         [24]  899 	mov	dptr,#(_gpu8Data2 + 0x0005)
      000132 04               [12]  900 	inc	a
      000133 F0               [24]  901 	movx	@dptr,a
      000134 90 00 2B         [24]  902 	mov	dptr,#(_gpu8Data2 + 0x0006)
      000137 04               [12]  903 	inc	a
      000138 F0               [24]  904 	movx	@dptr,a
      000139 90 00 2C         [24]  905 	mov	dptr,#(_gpu8Data2 + 0x0007)
      00013C 04               [12]  906 	inc	a
      00013D F0               [24]  907 	movx	@dptr,a
      00013E 90 00 2D         [24]  908 	mov	dptr,#(_gpu8Data2 + 0x0008)
      000141 03               [12]  909 	rr	a
      000142 F0               [24]  910 	movx	@dptr,a
      000143 90 00 2E         [24]  911 	mov	dptr,#(_gpu8Data2 + 0x0009)
      000146 F0               [24]  912 	movx	@dptr,a
      000147 90 00 2F         [24]  913 	mov	dptr,#(_gpu8Data2 + 0x000a)
      00014A F0               [24]  914 	movx	@dptr,a
      00014B 90 00 30         [24]  915 	mov	dptr,#(_gpu8Data2 + 0x000b)
      00014E F0               [24]  916 	movx	@dptr,a
      00014F 90 00 31         [24]  917 	mov	dptr,#(_gpu8Data2 + 0x000c)
      000152 14               [12]  918 	dec	a
      000153 F0               [24]  919 	movx	@dptr,a
      000154 90 00 32         [24]  920 	mov	dptr,#(_gpu8Data2 + 0x000d)
      000157 F0               [24]  921 	movx	@dptr,a
      000158 90 00 33         [24]  922 	mov	dptr,#(_gpu8Data2 + 0x000e)
      00015B F0               [24]  923 	movx	@dptr,a
      00015C 90 00 34         [24]  924 	mov	dptr,#(_gpu8Data2 + 0x000f)
      00015F F0               [24]  925 	movx	@dptr,a
      000160 90 00 35         [24]  926 	mov	dptr,#(_gpu8Data2 + 0x0010)
      000163 74 05            [12]  927 	mov	a,#0x05
      000165 F0               [24]  928 	movx	@dptr,a
      000166 90 00 36         [24]  929 	mov	dptr,#(_gpu8Data2 + 0x0011)
      000169 F0               [24]  930 	movx	@dptr,a
      00016A 90 00 37         [24]  931 	mov	dptr,#(_gpu8Data2 + 0x0012)
      00016D F0               [24]  932 	movx	@dptr,a
      00016E 90 00 38         [24]  933 	mov	dptr,#(_gpu8Data2 + 0x0013)
      000171 F0               [24]  934 	movx	@dptr,a
                                    935 ;	src/main.c:125: const char * __xdata  gppcULTestMode[] = {
      000172 90 00 39         [24]  936 	mov	dptr,#_gppcULTestMode
      000175 74 A3            [12]  937 	mov	a,#___str_71
      000177 F0               [24]  938 	movx	@dptr,a
      000178 74 3C            [12]  939 	mov	a,#(___str_71 >> 8)
      00017A A3               [24]  940 	inc	dptr
      00017B F0               [24]  941 	movx	@dptr,a
      00017C 74 80            [12]  942 	mov	a,#0x80
      00017E A3               [24]  943 	inc	dptr
      00017F F0               [24]  944 	movx	@dptr,a
      000180 90 00 3C         [24]  945 	mov	dptr,#(_gppcULTestMode + 0x0003)
      000183 74 B0            [12]  946 	mov	a,#___str_72
      000185 F0               [24]  947 	movx	@dptr,a
      000186 74 3C            [12]  948 	mov	a,#(___str_72 >> 8)
      000188 A3               [24]  949 	inc	dptr
      000189 F0               [24]  950 	movx	@dptr,a
      00018A 74 80            [12]  951 	mov	a,#0x80
      00018C A3               [24]  952 	inc	dptr
      00018D F0               [24]  953 	movx	@dptr,a
      00018E 90 00 3F         [24]  954 	mov	dptr,#(_gppcULTestMode + 0x0006)
      000191 74 C1            [12]  955 	mov	a,#___str_73
      000193 F0               [24]  956 	movx	@dptr,a
      000194 74 3C            [12]  957 	mov	a,#(___str_73 >> 8)
      000196 A3               [24]  958 	inc	dptr
      000197 F0               [24]  959 	movx	@dptr,a
      000198 74 80            [12]  960 	mov	a,#0x80
      00019A A3               [24]  961 	inc	dptr
      00019B F0               [24]  962 	movx	@dptr,a
      00019C 90 00 42         [24]  963 	mov	dptr,#(_gppcULTestMode + 0x0009)
      00019F 74 CE            [12]  964 	mov	a,#___str_74
      0001A1 F0               [24]  965 	movx	@dptr,a
      0001A2 74 3C            [12]  966 	mov	a,#(___str_74 >> 8)
      0001A4 A3               [24]  967 	inc	dptr
      0001A5 F0               [24]  968 	movx	@dptr,a
      0001A6 74 80            [12]  969 	mov	a,#0x80
      0001A8 A3               [24]  970 	inc	dptr
      0001A9 F0               [24]  971 	movx	@dptr,a
      0001AA 90 00 45         [24]  972 	mov	dptr,#(_gppcULTestMode + 0x000c)
      0001AD 74 E4            [12]  973 	mov	a,#___str_75
      0001AF F0               [24]  974 	movx	@dptr,a
      0001B0 74 3C            [12]  975 	mov	a,#(___str_75 >> 8)
      0001B2 A3               [24]  976 	inc	dptr
      0001B3 F0               [24]  977 	movx	@dptr,a
      0001B4 74 80            [12]  978 	mov	a,#0x80
      0001B6 A3               [24]  979 	inc	dptr
      0001B7 F0               [24]  980 	movx	@dptr,a
                                    981 ;	src/main.c:133: UINT32 __xdata gpu32UartSpeed[] = {
      0001B8 90 00 48         [24]  982 	mov	dptr,#_gpu32UartSpeed
      0001BB 74 60            [12]  983 	mov	a,#0x60
      0001BD F0               [24]  984 	movx	@dptr,a
      0001BE 74 09            [12]  985 	mov	a,#0x09
      0001C0 A3               [24]  986 	inc	dptr
      0001C1 F0               [24]  987 	movx	@dptr,a
      0001C2 E4               [12]  988 	clr	a
      0001C3 A3               [24]  989 	inc	dptr
      0001C4 F0               [24]  990 	movx	@dptr,a
      0001C5 A3               [24]  991 	inc	dptr
      0001C6 F0               [24]  992 	movx	@dptr,a
      0001C7 90 00 4C         [24]  993 	mov	dptr,#(_gpu32UartSpeed + 0x0004)
      0001CA 74 80            [12]  994 	mov	a,#0x80
      0001CC F0               [24]  995 	movx	@dptr,a
      0001CD 74 70            [12]  996 	mov	a,#0x70
      0001CF A3               [24]  997 	inc	dptr
      0001D0 F0               [24]  998 	movx	@dptr,a
      0001D1 E4               [12]  999 	clr	a
      0001D2 A3               [24] 1000 	inc	dptr
      0001D3 F0               [24] 1001 	movx	@dptr,a
      0001D4 A3               [24] 1002 	inc	dptr
      0001D5 F0               [24] 1003 	movx	@dptr,a
      0001D6 90 00 50         [24] 1004 	mov	dptr,#(_gpu32UartSpeed + 0x0008)
      0001D9 F0               [24] 1005 	movx	@dptr,a
      0001DA 74 96            [12] 1006 	mov	a,#0x96
      0001DC A3               [24] 1007 	inc	dptr
      0001DD F0               [24] 1008 	movx	@dptr,a
      0001DE E4               [12] 1009 	clr	a
      0001DF A3               [24] 1010 	inc	dptr
      0001E0 F0               [24] 1011 	movx	@dptr,a
      0001E1 A3               [24] 1012 	inc	dptr
      0001E2 F0               [24] 1013 	movx	@dptr,a
      0001E3 90 00 54         [24] 1014 	mov	dptr,#(_gpu32UartSpeed + 0x000c)
      0001E6 F0               [24] 1015 	movx	@dptr,a
      0001E7 74 E1            [12] 1016 	mov	a,#0xe1
      0001E9 A3               [24] 1017 	inc	dptr
      0001EA F0               [24] 1018 	movx	@dptr,a
      0001EB E4               [12] 1019 	clr	a
      0001EC A3               [24] 1020 	inc	dptr
      0001ED F0               [24] 1021 	movx	@dptr,a
      0001EE A3               [24] 1022 	inc	dptr
      0001EF F0               [24] 1023 	movx	@dptr,a
      0001F0 90 00 58         [24] 1024 	mov	dptr,#(_gpu32UartSpeed + 0x0010)
      0001F3 F0               [24] 1025 	movx	@dptr,a
      0001F4 74 C2            [12] 1026 	mov	a,#0xc2
      0001F6 A3               [24] 1027 	inc	dptr
      0001F7 F0               [24] 1028 	movx	@dptr,a
      0001F8 74 01            [12] 1029 	mov	a,#0x01
      0001FA A3               [24] 1030 	inc	dptr
      0001FB F0               [24] 1031 	movx	@dptr,a
      0001FC E4               [12] 1032 	clr	a
      0001FD A3               [24] 1033 	inc	dptr
      0001FE F0               [24] 1034 	movx	@dptr,a
      0001FF 90 00 5C         [24] 1035 	mov	dptr,#(_gpu32UartSpeed + 0x0014)
      000202 F0               [24] 1036 	movx	@dptr,a
      000203 74 84            [12] 1037 	mov	a,#0x84
      000205 A3               [24] 1038 	inc	dptr
      000206 F0               [24] 1039 	movx	@dptr,a
      000207 74 03            [12] 1040 	mov	a,#0x03
      000209 A3               [24] 1041 	inc	dptr
      00020A F0               [24] 1042 	movx	@dptr,a
      00020B E4               [12] 1043 	clr	a
      00020C A3               [24] 1044 	inc	dptr
      00020D F0               [24] 1045 	movx	@dptr,a
      00020E 90 00 60         [24] 1046 	mov	dptr,#(_gpu32UartSpeed + 0x0018)
      000211 74 E0            [12] 1047 	mov	a,#0xe0
      000213 F0               [24] 1048 	movx	@dptr,a
      000214 74 93            [12] 1049 	mov	a,#0x93
      000216 A3               [24] 1050 	inc	dptr
      000217 F0               [24] 1051 	movx	@dptr,a
      000218 74 04            [12] 1052 	mov	a,#0x04
      00021A A3               [24] 1053 	inc	dptr
      00021B F0               [24] 1054 	movx	@dptr,a
      00021C E4               [12] 1055 	clr	a
      00021D A3               [24] 1056 	inc	dptr
      00021E F0               [24] 1057 	movx	@dptr,a
      00021F 90 00 64         [24] 1058 	mov	dptr,#(_gpu32UartSpeed + 0x001c)
      000222 F0               [24] 1059 	movx	@dptr,a
      000223 74 08            [12] 1060 	mov	a,#0x08
      000225 A3               [24] 1061 	inc	dptr
      000226 F0               [24] 1062 	movx	@dptr,a
      000227 14               [12] 1063 	dec	a
      000228 A3               [24] 1064 	inc	dptr
      000229 F0               [24] 1065 	movx	@dptr,a
      00022A E4               [12] 1066 	clr	a
      00022B A3               [24] 1067 	inc	dptr
      00022C F0               [24] 1068 	movx	@dptr,a
      00022D 90 00 68         [24] 1069 	mov	dptr,#(_gpu32UartSpeed + 0x0020)
      000230 74 20            [12] 1070 	mov	a,#0x20
      000232 F0               [24] 1071 	movx	@dptr,a
      000233 74 A1            [12] 1072 	mov	a,#0xa1
      000235 A3               [24] 1073 	inc	dptr
      000236 F0               [24] 1074 	movx	@dptr,a
      000237 74 07            [12] 1075 	mov	a,#0x07
      000239 A3               [24] 1076 	inc	dptr
      00023A F0               [24] 1077 	movx	@dptr,a
      00023B E4               [12] 1078 	clr	a
      00023C A3               [24] 1079 	inc	dptr
      00023D F0               [24] 1080 	movx	@dptr,a
      00023E 90 00 6C         [24] 1081 	mov	dptr,#(_gpu32UartSpeed + 0x0024)
      000241 74 C0            [12] 1082 	mov	a,#0xc0
      000243 F0               [24] 1083 	movx	@dptr,a
      000244 74 27            [12] 1084 	mov	a,#0x27
      000246 A3               [24] 1085 	inc	dptr
      000247 F0               [24] 1086 	movx	@dptr,a
      000248 74 09            [12] 1087 	mov	a,#0x09
      00024A A3               [24] 1088 	inc	dptr
      00024B F0               [24] 1089 	movx	@dptr,a
      00024C E4               [12] 1090 	clr	a
      00024D A3               [24] 1091 	inc	dptr
      00024E F0               [24] 1092 	movx	@dptr,a
      00024F 90 00 70         [24] 1093 	mov	dptr,#(_gpu32UartSpeed + 0x0028)
      000252 74 60            [12] 1094 	mov	a,#0x60
      000254 F0               [24] 1095 	movx	@dptr,a
      000255 74 AE            [12] 1096 	mov	a,#0xae
      000257 A3               [24] 1097 	inc	dptr
      000258 F0               [24] 1098 	movx	@dptr,a
      000259 74 0A            [12] 1099 	mov	a,#0x0a
      00025B A3               [24] 1100 	inc	dptr
      00025C F0               [24] 1101 	movx	@dptr,a
      00025D E4               [12] 1102 	clr	a
      00025E A3               [24] 1103 	inc	dptr
      00025F F0               [24] 1104 	movx	@dptr,a
      000260 90 00 74         [24] 1105 	mov	dptr,#(_gpu32UartSpeed + 0x002c)
      000263 F0               [24] 1106 	movx	@dptr,a
      000264 74 35            [12] 1107 	mov	a,#0x35
      000266 A3               [24] 1108 	inc	dptr
      000267 F0               [24] 1109 	movx	@dptr,a
      000268 74 0C            [12] 1110 	mov	a,#0x0c
      00026A A3               [24] 1111 	inc	dptr
      00026B F0               [24] 1112 	movx	@dptr,a
      00026C E4               [12] 1113 	clr	a
      00026D A3               [24] 1114 	inc	dptr
      00026E F0               [24] 1115 	movx	@dptr,a
      00026F 90 00 78         [24] 1116 	mov	dptr,#(_gpu32UartSpeed + 0x0030)
      000272 74 A0            [12] 1117 	mov	a,#0xa0
      000274 F0               [24] 1118 	movx	@dptr,a
      000275 74 BB            [12] 1119 	mov	a,#0xbb
      000277 A3               [24] 1120 	inc	dptr
      000278 F0               [24] 1121 	movx	@dptr,a
      000279 74 0D            [12] 1122 	mov	a,#0x0d
      00027B A3               [24] 1123 	inc	dptr
      00027C F0               [24] 1124 	movx	@dptr,a
      00027D E4               [12] 1125 	clr	a
      00027E A3               [24] 1126 	inc	dptr
      00027F F0               [24] 1127 	movx	@dptr,a
      000280 90 00 7C         [24] 1128 	mov	dptr,#(_gpu32UartSpeed + 0x0034)
      000283 F0               [24] 1129 	movx	@dptr,a
      000284 74 10            [12] 1130 	mov	a,#0x10
      000286 A3               [24] 1131 	inc	dptr
      000287 F0               [24] 1132 	movx	@dptr,a
      000288 74 0E            [12] 1133 	mov	a,#0x0e
      00028A A3               [24] 1134 	inc	dptr
      00028B F0               [24] 1135 	movx	@dptr,a
      00028C E4               [12] 1136 	clr	a
      00028D A3               [24] 1137 	inc	dptr
      00028E F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	src/main.c:152: UINT16 __xdata gu16TimeCnt = 0;
      00028F 90 00 A8         [24] 1140 	mov	dptr,#_gu16TimeCnt
      000292 F0               [24] 1141 	movx	@dptr,a
      000293 A3               [24] 1142 	inc	dptr
      000294 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	src/main.c:153: UINT32 __xdata gu32TimeCnt = 0;
      000295 90 00 AA         [24] 1145 	mov	dptr,#_gu32TimeCnt
      000298 F0               [24] 1146 	movx	@dptr,a
      000299 A3               [24] 1147 	inc	dptr
      00029A F0               [24] 1148 	movx	@dptr,a
      00029B A3               [24] 1149 	inc	dptr
      00029C F0               [24] 1150 	movx	@dptr,a
      00029D A3               [24] 1151 	inc	dptr
      00029E F0               [24] 1152 	movx	@dptr,a
                                   1153 	.area GSFINAL (CODE)
      0004FE 02 00 7E         [24] 1154 	ljmp	__sdcc_program_startup
                                   1155 ;--------------------------------------------------------
                                   1156 ; Home
                                   1157 ;--------------------------------------------------------
                                   1158 	.area HOME    (CODE)
                                   1159 	.area HOME    (CODE)
      00007E                       1160 __sdcc_program_startup:
      00007E 02 0E A3         [24] 1161 	ljmp	_main
                                   1162 ;	return from main will return to caller
                                   1163 ;--------------------------------------------------------
                                   1164 ; code
                                   1165 ;--------------------------------------------------------
                                   1166 	.area CSEG    (CODE)
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function 'print_esc'
                                   1169 ;------------------------------------------------------------
                                   1170 ;au8State                  Allocated to registers r7 
                                   1171 ;------------------------------------------------------------
                                   1172 ;	src/main.c:204: void print_esc(UINT8 au8State)
                                   1173 ;	-----------------------------------------
                                   1174 ;	 function print_esc
                                   1175 ;	-----------------------------------------
      000501                       1176 _print_esc:
                           000007  1177 	ar7 = 0x07
                           000006  1178 	ar6 = 0x06
                           000005  1179 	ar5 = 0x05
                           000004  1180 	ar4 = 0x04
                           000003  1181 	ar3 = 0x03
                           000002  1182 	ar2 = 0x02
                           000001  1183 	ar1 = 0x01
                           000000  1184 	ar0 = 0x00
      000501 AF 82            [24] 1185 	mov	r7,dpl
                                   1186 ;	src/main.c:206: printf_fast_f("\n\r");
      000503 C0 07            [24] 1187 	push	ar7
      000505 74 0A            [12] 1188 	mov	a,#___str_0
      000507 C0 E0            [24] 1189 	push	acc
      000509 74 38            [12] 1190 	mov	a,#(___str_0 >> 8)
      00050B C0 E0            [24] 1191 	push	acc
      00050D 12 31 60         [24] 1192 	lcall	_printf_fast_f
      000510 15 81            [12] 1193 	dec	sp
      000512 15 81            [12] 1194 	dec	sp
      000514 D0 07            [24] 1195 	pop	ar7
                                   1196 ;	src/main.c:207: switch(au8State) {
      000516 BF 00 02         [24] 1197 	cjne	r7,#0x00,00119$
      000519 80 0A            [24] 1198 	sjmp	00101$
      00051B                       1199 00119$:
      00051B BF 01 02         [24] 1200 	cjne	r7,#0x01,00120$
      00051E 80 16            [24] 1201 	sjmp	00102$
      000520                       1202 00120$:
                                   1203 ;	src/main.c:208: case STATE_SELF :
      000520 BF 02 33         [24] 1204 	cjne	r7,#0x02,00104$
      000523 80 22            [24] 1205 	sjmp	00103$
      000525                       1206 00101$:
                                   1207 ;	src/main.c:209: printf_fast_f("self ");
      000525 74 0D            [12] 1208 	mov	a,#___str_1
      000527 C0 E0            [24] 1209 	push	acc
      000529 74 38            [12] 1210 	mov	a,#(___str_1 >> 8)
      00052B C0 E0            [24] 1211 	push	acc
      00052D 12 31 60         [24] 1212 	lcall	_printf_fast_f
      000530 15 81            [12] 1213 	dec	sp
      000532 15 81            [12] 1214 	dec	sp
                                   1215 ;	src/main.c:210: break;
                                   1216 ;	src/main.c:211: case STATE_CROSS :
      000534 80 20            [24] 1217 	sjmp	00104$
      000536                       1218 00102$:
                                   1219 ;	src/main.c:212: printf_fast_f("cross");
      000536 74 13            [12] 1220 	mov	a,#___str_2
      000538 C0 E0            [24] 1221 	push	acc
      00053A 74 38            [12] 1222 	mov	a,#(___str_2 >> 8)
      00053C C0 E0            [24] 1223 	push	acc
      00053E 12 31 60         [24] 1224 	lcall	_printf_fast_f
      000541 15 81            [12] 1225 	dec	sp
      000543 15 81            [12] 1226 	dec	sp
                                   1227 ;	src/main.c:213: break;
                                   1228 ;	src/main.c:214: case STATE_BOTH :
      000545 80 0F            [24] 1229 	sjmp	00104$
      000547                       1230 00103$:
                                   1231 ;	src/main.c:215: printf_fast_f("both ");
      000547 74 19            [12] 1232 	mov	a,#___str_3
      000549 C0 E0            [24] 1233 	push	acc
      00054B 74 38            [12] 1234 	mov	a,#(___str_3 >> 8)
      00054D C0 E0            [24] 1235 	push	acc
      00054F 12 31 60         [24] 1236 	lcall	_printf_fast_f
      000552 15 81            [12] 1237 	dec	sp
      000554 15 81            [12] 1238 	dec	sp
                                   1239 ;	src/main.c:217: }
      000556                       1240 00104$:
                                   1241 ;	src/main.c:218: printf_fast_f(" output:This is UART%d\n\r", gu8UART);
      000556 AE 11            [24] 1242 	mov	r6,_gu8UART
      000558 7F 00            [12] 1243 	mov	r7,#0x00
      00055A C0 06            [24] 1244 	push	ar6
      00055C C0 07            [24] 1245 	push	ar7
      00055E 74 1F            [12] 1246 	mov	a,#___str_4
      000560 C0 E0            [24] 1247 	push	acc
      000562 74 38            [12] 1248 	mov	a,#(___str_4 >> 8)
      000564 C0 E0            [24] 1249 	push	acc
      000566 12 31 60         [24] 1250 	lcall	_printf_fast_f
      000569 E5 81            [12] 1251 	mov	a,sp
      00056B 24 FC            [12] 1252 	add	a,#0xfc
      00056D F5 81            [12] 1253 	mov	sp,a
                                   1254 ;	src/main.c:219: }
      00056F 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'print_char'
                                   1258 ;------------------------------------------------------------
                                   1259 ;au8Data                   Allocated to registers r7 
                                   1260 ;------------------------------------------------------------
                                   1261 ;	src/main.c:221: void print_char(char au8Data)
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function print_char
                                   1264 ;	-----------------------------------------
      000570                       1265 _print_char:
      000570 AF 82            [24] 1266 	mov	r7,dpl
                                   1267 ;	src/main.c:223: switch(au8Data) {
      000572 BF 0D 02         [24] 1268 	cjne	r7,#0x0d,00115$
      000575 80 04            [24] 1269 	sjmp	00102$
      000577                       1270 00115$:
      000577 BF 1B 11         [24] 1271 	cjne	r7,#0x1b,00103$
                                   1272 ;	src/main.c:225: break;
                                   1273 ;	src/main.c:226: case '\r' :
      00057A 22               [24] 1274 	ret
      00057B                       1275 00102$:
                                   1276 ;	src/main.c:227: printf_fast_f("\r\n");
      00057B 74 38            [12] 1277 	mov	a,#___str_5
      00057D C0 E0            [24] 1278 	push	acc
      00057F 74 38            [12] 1279 	mov	a,#(___str_5 >> 8)
      000581 C0 E0            [24] 1280 	push	acc
      000583 12 31 60         [24] 1281 	lcall	_printf_fast_f
      000586 15 81            [12] 1282 	dec	sp
      000588 15 81            [12] 1283 	dec	sp
                                   1284 ;	src/main.c:228: break;
                                   1285 ;	src/main.c:229: default :
      00058A 22               [24] 1286 	ret
      00058B                       1287 00103$:
                                   1288 ;	src/main.c:230: printf_fast_f("%c",au8Data);
      00058B 7E 00            [12] 1289 	mov	r6,#0x00
      00058D C0 07            [24] 1290 	push	ar7
      00058F C0 06            [24] 1291 	push	ar6
      000591 74 3B            [12] 1292 	mov	a,#___str_6
      000593 C0 E0            [24] 1293 	push	acc
      000595 74 38            [12] 1294 	mov	a,#(___str_6 >> 8)
      000597 C0 E0            [24] 1295 	push	acc
      000599 12 31 60         [24] 1296 	lcall	_printf_fast_f
      00059C E5 81            [12] 1297 	mov	a,sp
      00059E 24 FC            [12] 1298 	add	a,#0xfc
      0005A0 F5 81            [12] 1299 	mov	sp,a
                                   1300 ;	src/main.c:231: }
                                   1301 ;	src/main.c:232: }
      0005A2 22               [24] 1302 	ret
                                   1303 ;------------------------------------------------------------
                                   1304 ;Allocation info for local variables in function 'state_machine'
                                   1305 ;------------------------------------------------------------
                                   1306 ;au8RxUART                 Allocated with name '_state_machine_PARM_2'
                                   1307 ;au8SelfID                 Allocated with name '_state_machine_PARM_3'
                                   1308 ;au8OtherID                Allocated with name '_state_machine_PARM_4'
                                   1309 ;au8State                  Allocated to registers r7 
                                   1310 ;------------------------------------------------------------
                                   1311 ;	src/main.c:234: UINT8 state_machine(UINT8 au8State, UINT8 au8RxUART, UINT8 au8SelfID, UINT8 au8OtherID)
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function state_machine
                                   1314 ;	-----------------------------------------
      0005A3                       1315 _state_machine:
      0005A3 AF 82            [24] 1316 	mov	r7,dpl
                                   1317 ;	src/main.c:236: if(au8RxUART == KEY_ESC) {
      0005A5 74 1B            [12] 1318 	mov	a,#0x1b
      0005A7 B5 23 02         [24] 1319 	cjne	a,_state_machine_PARM_2,00142$
      0005AA 80 02            [24] 1320 	sjmp	00143$
      0005AC                       1321 00142$:
      0005AC 80 79            [24] 1322 	sjmp	00110$
      0005AE                       1323 00143$:
                                   1324 ;	src/main.c:238: gu8UART = au8SelfID;
      0005AE AE 24            [24] 1325 	mov	r6,_state_machine_PARM_3
      0005B0 8E 11            [24] 1326 	mov	_gu8UART,r6
                                   1327 ;	src/main.c:239: printf_fast_f("\r\ninput:This is UART%d", gu8UART);
      0005B2 AC 11            [24] 1328 	mov	r4,_gu8UART
      0005B4 7D 00            [12] 1329 	mov	r5,#0x00
      0005B6 C0 07            [24] 1330 	push	ar7
      0005B8 C0 06            [24] 1331 	push	ar6
      0005BA C0 04            [24] 1332 	push	ar4
      0005BC C0 05            [24] 1333 	push	ar5
      0005BE 74 3E            [12] 1334 	mov	a,#___str_7
      0005C0 C0 E0            [24] 1335 	push	acc
      0005C2 74 38            [12] 1336 	mov	a,#(___str_7 >> 8)
      0005C4 C0 E0            [24] 1337 	push	acc
      0005C6 12 31 60         [24] 1338 	lcall	_printf_fast_f
      0005C9 E5 81            [12] 1339 	mov	a,sp
      0005CB 24 FC            [12] 1340 	add	a,#0xfc
      0005CD F5 81            [12] 1341 	mov	sp,a
      0005CF D0 06            [24] 1342 	pop	ar6
      0005D1 D0 07            [24] 1343 	pop	ar7
                                   1344 ;	src/main.c:240: switch(au8State) {
      0005D3 BF 00 02         [24] 1345 	cjne	r7,#0x00,00144$
      0005D6 80 0D            [24] 1346 	sjmp	00101$
      0005D8                       1347 00144$:
      0005D8 BF 01 02         [24] 1348 	cjne	r7,#0x01,00145$
      0005DB 80 21            [24] 1349 	sjmp	00102$
      0005DD                       1350 00145$:
      0005DD BF 02 02         [24] 1351 	cjne	r7,#0x02,00146$
      0005E0 80 35            [24] 1352 	sjmp	00103$
      0005E2                       1353 00146$:
      0005E2 02 06 6A         [24] 1354 	ljmp	00111$
                                   1355 ;	src/main.c:241: case STATE_SELF :
      0005E5                       1356 00101$:
                                   1357 ;	src/main.c:242: au8State = STATE_CROSS;
      0005E5 7F 01            [12] 1358 	mov	r7,#0x01
                                   1359 ;	src/main.c:243: gu8UART = au8SelfID;
      0005E7 8E 11            [24] 1360 	mov	_gu8UART,r6
                                   1361 ;	src/main.c:244: print_esc(au8State);
      0005E9 75 82 01         [24] 1362 	mov	dpl,#0x01
      0005EC C0 07            [24] 1363 	push	ar7
      0005EE 12 05 01         [24] 1364 	lcall	_print_esc
                                   1365 ;	src/main.c:245: gu8UART = au8OtherID;
      0005F1 85 25 11         [24] 1366 	mov	_gu8UART,_state_machine_PARM_4
                                   1367 ;	src/main.c:246: print_esc(au8State);
      0005F4 75 82 01         [24] 1368 	mov	dpl,#0x01
      0005F7 12 05 01         [24] 1369 	lcall	_print_esc
      0005FA D0 07            [24] 1370 	pop	ar7
                                   1371 ;	src/main.c:247: break;
                                   1372 ;	src/main.c:248: case STATE_CROSS :
      0005FC 80 6C            [24] 1373 	sjmp	00111$
      0005FE                       1374 00102$:
                                   1375 ;	src/main.c:249: au8State = STATE_BOTH;
      0005FE 7F 02            [12] 1376 	mov	r7,#0x02
                                   1377 ;	src/main.c:250: gu8UART = au8SelfID;
      000600 8E 11            [24] 1378 	mov	_gu8UART,r6
                                   1379 ;	src/main.c:251: print_esc(au8State);
      000602 75 82 02         [24] 1380 	mov	dpl,#0x02
      000605 C0 07            [24] 1381 	push	ar7
      000607 12 05 01         [24] 1382 	lcall	_print_esc
                                   1383 ;	src/main.c:252: gu8UART = au8OtherID;
      00060A 85 25 11         [24] 1384 	mov	_gu8UART,_state_machine_PARM_4
                                   1385 ;	src/main.c:253: print_esc(au8State);
      00060D 75 82 02         [24] 1386 	mov	dpl,#0x02
      000610 12 05 01         [24] 1387 	lcall	_print_esc
      000613 D0 07            [24] 1388 	pop	ar7
                                   1389 ;	src/main.c:254: break;
                                   1390 ;	src/main.c:255: case STATE_BOTH :
      000615 80 53            [24] 1391 	sjmp	00111$
      000617                       1392 00103$:
                                   1393 ;	src/main.c:256: au8State = STATE_SELF;
      000617 7F 00            [12] 1394 	mov	r7,#0x00
                                   1395 ;	src/main.c:257: gu8UART = au8SelfID;
      000619 8E 11            [24] 1396 	mov	_gu8UART,r6
                                   1397 ;	src/main.c:258: print_esc(au8State);
      00061B 75 82 00         [24] 1398 	mov	dpl,#0x00
      00061E C0 07            [24] 1399 	push	ar7
      000620 12 05 01         [24] 1400 	lcall	_print_esc
      000623 D0 07            [24] 1401 	pop	ar7
                                   1402 ;	src/main.c:260: }
      000625 80 43            [24] 1403 	sjmp	00111$
      000627                       1404 00110$:
                                   1405 ;	src/main.c:263: switch(au8State) {
      000627 BF 00 02         [24] 1406 	cjne	r7,#0x00,00147$
      00062A 80 0A            [24] 1407 	sjmp	00105$
      00062C                       1408 00147$:
      00062C BF 01 02         [24] 1409 	cjne	r7,#0x01,00148$
      00062F 80 14            [24] 1410 	sjmp	00106$
      000631                       1411 00148$:
                                   1412 ;	src/main.c:264: case STATE_SELF :
      000631 BF 02 36         [24] 1413 	cjne	r7,#0x02,00111$
      000634 80 1E            [24] 1414 	sjmp	00107$
      000636                       1415 00105$:
                                   1416 ;	src/main.c:265: gu8UART = au8SelfID;
      000636 85 24 11         [24] 1417 	mov	_gu8UART,_state_machine_PARM_3
                                   1418 ;	src/main.c:266: print_char(au8RxUART);
      000639 85 23 82         [24] 1419 	mov	dpl,_state_machine_PARM_2
      00063C C0 07            [24] 1420 	push	ar7
      00063E 12 05 70         [24] 1421 	lcall	_print_char
      000641 D0 07            [24] 1422 	pop	ar7
                                   1423 ;	src/main.c:267: break;
                                   1424 ;	src/main.c:268: case STATE_CROSS :
      000643 80 25            [24] 1425 	sjmp	00111$
      000645                       1426 00106$:
                                   1427 ;	src/main.c:269: gu8UART = au8OtherID;
      000645 85 25 11         [24] 1428 	mov	_gu8UART,_state_machine_PARM_4
                                   1429 ;	src/main.c:270: print_char(au8RxUART);
      000648 85 23 82         [24] 1430 	mov	dpl,_state_machine_PARM_2
      00064B C0 07            [24] 1431 	push	ar7
      00064D 12 05 70         [24] 1432 	lcall	_print_char
      000650 D0 07            [24] 1433 	pop	ar7
                                   1434 ;	src/main.c:271: break;
                                   1435 ;	src/main.c:272: case STATE_BOTH :
      000652 80 16            [24] 1436 	sjmp	00111$
      000654                       1437 00107$:
                                   1438 ;	src/main.c:273: gu8UART = au8SelfID;
      000654 85 24 11         [24] 1439 	mov	_gu8UART,_state_machine_PARM_3
                                   1440 ;	src/main.c:274: print_char(au8RxUART);
      000657 85 23 82         [24] 1441 	mov	dpl,_state_machine_PARM_2
      00065A C0 07            [24] 1442 	push	ar7
      00065C 12 05 70         [24] 1443 	lcall	_print_char
                                   1444 ;	src/main.c:275: gu8UART = au8OtherID;
      00065F 85 25 11         [24] 1445 	mov	_gu8UART,_state_machine_PARM_4
                                   1446 ;	src/main.c:276: print_char(au8RxUART);
      000662 85 23 82         [24] 1447 	mov	dpl,_state_machine_PARM_2
      000665 12 05 70         [24] 1448 	lcall	_print_char
      000668 D0 07            [24] 1449 	pop	ar7
                                   1450 ;	src/main.c:278: }
      00066A                       1451 00111$:
                                   1452 ;	src/main.c:280: return au8State;
      00066A 8F 82            [24] 1453 	mov	dpl,r7
                                   1454 ;	src/main.c:281: }
      00066C 22               [24] 1455 	ret
                                   1456 ;------------------------------------------------------------
                                   1457 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1458 ;------------------------------------------------------------
                                   1459 ;	src/main.c:283: void Timer0_ISR (void) interrupt(1)  //interrupt address is 0x000B
                                   1460 ;	-----------------------------------------
                                   1461 ;	 function Timer0_ISR
                                   1462 ;	-----------------------------------------
      00066D                       1463 _Timer0_ISR:
                           00000F  1464 	ar7 = 0x0f
                           00000E  1465 	ar6 = 0x0e
                           00000D  1466 	ar5 = 0x0d
                           00000C  1467 	ar4 = 0x0c
                           00000B  1468 	ar3 = 0x0b
                           00000A  1469 	ar2 = 0x0a
                           000009  1470 	ar1 = 0x09
                           000008  1471 	ar0 = 0x08
      00066D C0 E0            [24] 1472 	push	acc
      00066F C0 82            [24] 1473 	push	dpl
      000671 C0 83            [24] 1474 	push	dph
      000673 C0 D0            [24] 1475 	push	psw
                                   1476 ;	src/main.c:285: TH0 = TH0_INIT;
      000675 75 8C FF         [24] 1477 	mov	_TH0,#0xff
                                   1478 ;	src/main.c:286: TL0 = TL0_INIT;
      000678 75 8A F3         [24] 1479 	mov	_TL0,#0xf3
                                   1480 ;	src/main.c:287: gu16TimeCnt++;
      00067B 90 00 A8         [24] 1481 	mov	dptr,#_gu16TimeCnt
      00067E E0               [24] 1482 	movx	a,@dptr
      00067F 24 01            [12] 1483 	add	a,#0x01
      000681 F0               [24] 1484 	movx	@dptr,a
      000682 A3               [24] 1485 	inc	dptr
      000683 E0               [24] 1486 	movx	a,@dptr
      000684 34 00            [12] 1487 	addc	a,#0x00
      000686 F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	src/main.c:288: gu32TimeCnt++;
      000687 90 00 AA         [24] 1490 	mov	dptr,#_gu32TimeCnt
      00068A E0               [24] 1491 	movx	a,@dptr
      00068B 24 01            [12] 1492 	add	a,#0x01
      00068D F0               [24] 1493 	movx	@dptr,a
      00068E A3               [24] 1494 	inc	dptr
      00068F E0               [24] 1495 	movx	a,@dptr
      000690 34 00            [12] 1496 	addc	a,#0x00
      000692 F0               [24] 1497 	movx	@dptr,a
      000693 A3               [24] 1498 	inc	dptr
      000694 E0               [24] 1499 	movx	a,@dptr
      000695 34 00            [12] 1500 	addc	a,#0x00
      000697 F0               [24] 1501 	movx	@dptr,a
      000698 A3               [24] 1502 	inc	dptr
      000699 E0               [24] 1503 	movx	a,@dptr
      00069A 34 00            [12] 1504 	addc	a,#0x00
      00069C F0               [24] 1505 	movx	@dptr,a
                                   1506 ;	src/main.c:297: } //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B
      00069D D0 D0            [24] 1507 	pop	psw
      00069F D0 83            [24] 1508 	pop	dph
      0006A1 D0 82            [24] 1509 	pop	dpl
      0006A3 D0 E0            [24] 1510 	pop	acc
      0006A5 32               [24] 1511 	reti
                                   1512 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1513 ;	eliminated unneeded push/pop b
                                   1514 ;------------------------------------------------------------
                                   1515 ;Allocation info for local variables in function 'pin_interrupt_isr'
                                   1516 ;------------------------------------------------------------
                                   1517 ;	src/main.c:299: void pin_interrupt_isr(void) interrupt(7)
                                   1518 ;	-----------------------------------------
                                   1519 ;	 function pin_interrupt_isr
                                   1520 ;	-----------------------------------------
      0006A6                       1521 _pin_interrupt_isr:
      0006A6 C0 E0            [24] 1522 	push	acc
                                   1523 ;	src/main.c:301: if (PIF == 0x10) {
      0006A8 E5 EC            [12] 1524 	mov	a,_PIF
                                   1525 ;	src/main.c:303: PIF = 0;
      0006AA 75 EC 00         [24] 1526 	mov	_PIF,#0x00
                                   1527 ;	src/main.c:304: }// void pin_interrupt_isr (void) interrupt(7)
      0006AD D0 E0            [24] 1528 	pop	acc
      0006AF 32               [24] 1529 	reti
                                   1530 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1531 ;	eliminated unneeded push/pop psw
                                   1532 ;	eliminated unneeded push/pop dpl
                                   1533 ;	eliminated unneeded push/pop dph
                                   1534 ;	eliminated unneeded push/pop b
                                   1535 ;------------------------------------------------------------
                                   1536 ;Allocation info for local variables in function 'MODIFY_HIRC_166'
                                   1537 ;------------------------------------------------------------
                                   1538 ;hircmap0                  Allocated to registers r7 
                                   1539 ;hircmap1                  Allocated to registers r6 
                                   1540 ;trimvalue16bit            Allocated to registers r7 r5 
                                   1541 ;------------------------------------------------------------
                                   1542 ;	src/main.c:307: void MODIFY_HIRC_166(void)
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function MODIFY_HIRC_166
                                   1545 ;	-----------------------------------------
      0006B0                       1546 _MODIFY_HIRC_166:
                           000007  1547 	ar7 = 0x07
                           000006  1548 	ar6 = 0x06
                           000005  1549 	ar5 = 0x05
                           000004  1550 	ar4 = 0x04
                           000003  1551 	ar3 = 0x03
                           000002  1552 	ar2 = 0x02
                           000001  1553 	ar1 = 0x01
                           000000  1554 	ar0 = 0x00
                                   1555 ;	src/main.c:312: if ((PCON&SET_BIT4)==SET_BIT4) {
      0006B0 AE 87            [24] 1556 	mov	r6,_PCON
      0006B2 53 06 10         [24] 1557 	anl	ar6,#0x10
      0006B5 7F 00            [12] 1558 	mov	r7,#0x00
      0006B7 BE 10 41         [24] 1559 	cjne	r6,#0x10,00103$
      0006BA BF 00 3E         [24] 1560 	cjne	r7,#0x00,00103$
                                   1561 ;	src/main.c:313: hircmap0 = RCTRIM0;
      0006BD AF 84            [24] 1562 	mov	r7,_RCTRIM0
                                   1563 ;	src/main.c:314: hircmap1 = RCTRIM1;
      0006BF AE 85            [24] 1564 	mov	r6,_RCTRIM1
                                   1565 ;	src/main.c:315: trimvalue16bit = ((hircmap0<<1)+(hircmap1&0x01));
      0006C1 7D 00            [12] 1566 	mov	r5,#0x00
      0006C3 EF               [12] 1567 	mov	a,r7
      0006C4 2F               [12] 1568 	add	a,r7
      0006C5 FF               [12] 1569 	mov	r7,a
      0006C6 ED               [12] 1570 	mov	a,r5
      0006C7 33               [12] 1571 	rlc	a
      0006C8 FD               [12] 1572 	mov	r5,a
      0006C9 53 06 01         [24] 1573 	anl	ar6,#0x01
      0006CC 7C 00            [12] 1574 	mov	r4,#0x00
      0006CE EE               [12] 1575 	mov	a,r6
      0006CF 2F               [12] 1576 	add	a,r7
      0006D0 FF               [12] 1577 	mov	r7,a
      0006D1 EC               [12] 1578 	mov	a,r4
      0006D2 3D               [12] 1579 	addc	a,r5
      0006D3 FD               [12] 1580 	mov	r5,a
                                   1581 ;	src/main.c:316: trimvalue16bit = trimvalue16bit - 15;
      0006D4 EF               [12] 1582 	mov	a,r7
      0006D5 24 F1            [12] 1583 	add	a,#0xf1
      0006D7 FF               [12] 1584 	mov	r7,a
      0006D8 ED               [12] 1585 	mov	a,r5
      0006D9 34 FF            [12] 1586 	addc	a,#0xff
      0006DB FD               [12] 1587 	mov	r5,a
                                   1588 ;	src/main.c:317: hircmap1 = trimvalue16bit&0x01;
      0006DC 8F 06            [24] 1589 	mov	ar6,r7
      0006DE 53 06 01         [24] 1590 	anl	ar6,#0x01
                                   1591 ;	src/main.c:318: hircmap0 = trimvalue16bit>>1;
      0006E1 ED               [12] 1592 	mov	a,r5
      0006E2 C3               [12] 1593 	clr	c
      0006E3 13               [12] 1594 	rrc	a
      0006E4 CF               [12] 1595 	xch	a,r7
      0006E5 13               [12] 1596 	rrc	a
      0006E6 CF               [12] 1597 	xch	a,r7
      0006E7 FD               [12] 1598 	mov	r5,a
                                   1599 ;	src/main.c:319: TA=0XAA;
      0006E8 75 C7 AA         [24] 1600 	mov	_TA,#0xaa
                                   1601 ;	src/main.c:320: TA=0X55;
      0006EB 75 C7 55         [24] 1602 	mov	_TA,#0x55
                                   1603 ;	src/main.c:321: RCTRIM0 = hircmap0;
      0006EE 8F 84            [24] 1604 	mov	_RCTRIM0,r7
                                   1605 ;	src/main.c:322: TA=0XAA;
      0006F0 75 C7 AA         [24] 1606 	mov	_TA,#0xaa
                                   1607 ;	src/main.c:323: TA=0X55;
      0006F3 75 C7 55         [24] 1608 	mov	_TA,#0x55
                                   1609 ;	src/main.c:324: RCTRIM1 = hircmap1;
      0006F6 8E 85            [24] 1610 	mov	_RCTRIM1,r6
                                   1611 ;	src/main.c:326: PCON &= CLR_BIT4;
      0006F8 53 87 EF         [24] 1612 	anl	_PCON,#0xef
      0006FB                       1613 00103$:
                                   1614 ;	src/main.c:328: }
      0006FB 22               [24] 1615 	ret
                                   1616 ;------------------------------------------------------------
                                   1617 ;Allocation info for local variables in function 'disp_help'
                                   1618 ;------------------------------------------------------------
                                   1619 ;au8Code                   Allocated to registers r7 
                                   1620 ;------------------------------------------------------------
                                   1621 ;	src/main.c:329: void disp_help(UINT8 au8Code)
                                   1622 ;	-----------------------------------------
                                   1623 ;	 function disp_help
                                   1624 ;	-----------------------------------------
      0006FC                       1625 _disp_help:
      0006FC AF 82            [24] 1626 	mov	r7,dpl
                                   1627 ;	src/main.c:331: gu8UART = 0;
      0006FE 75 11 00         [24] 1628 	mov	_gu8UART,#0x00
                                   1629 ;	src/main.c:332: switch(au8Code) {
      000701 BF 31 01         [24] 1630 	cjne	r7,#0x31,00165$
      000704 22               [24] 1631 	ret
      000705                       1632 00165$:
      000705 BF 32 01         [24] 1633 	cjne	r7,#0x32,00166$
      000708 22               [24] 1634 	ret
      000709                       1635 00166$:
      000709 BF 33 02         [24] 1636 	cjne	r7,#0x33,00167$
      00070C 80 32            [24] 1637 	sjmp	00103$
      00070E                       1638 00167$:
      00070E BF 34 01         [24] 1639 	cjne	r7,#0x34,00168$
      000711 22               [24] 1640 	ret
      000712                       1641 00168$:
      000712 BF 50 02         [24] 1642 	cjne	r7,#0x50,00169$
      000715 80 49            [24] 1643 	sjmp	00106$
      000717                       1644 00169$:
      000717 BF 53 03         [24] 1645 	cjne	r7,#0x53,00170$
      00071A 02 07 A0         [24] 1646 	ljmp	00110$
      00071D                       1647 00170$:
      00071D BF 54 02         [24] 1648 	cjne	r7,#0x54,00171$
      000720 80 5E            [24] 1649 	sjmp	00108$
      000722                       1650 00171$:
      000722 BF 56 03         [24] 1651 	cjne	r7,#0x56,00172$
      000725 02 07 B0         [24] 1652 	ljmp	00112$
      000728                       1653 00172$:
      000728 BF 70 02         [24] 1654 	cjne	r7,#0x70,00173$
      00072B 80 23            [24] 1655 	sjmp	00105$
      00072D                       1656 00173$:
      00072D BF 73 02         [24] 1657 	cjne	r7,#0x73,00174$
      000730 80 5E            [24] 1658 	sjmp	00109$
      000732                       1659 00174$:
      000732 BF 74 02         [24] 1660 	cjne	r7,#0x74,00175$
      000735 80 39            [24] 1661 	sjmp	00107$
      000737                       1662 00175$:
      000737 BF 76 03         [24] 1663 	cjne	r7,#0x76,00176$
      00073A 02 07 B0         [24] 1664 	ljmp	00112$
      00073D                       1665 00176$:
      00073D 02 07 C0         [24] 1666 	ljmp	00113$
                                   1667 ;	src/main.c:337: case '3' :
      000740                       1668 00103$:
                                   1669 ;	src/main.c:338: printf_fast_f("Idle preamble on/off\r\n");
      000740 74 55            [12] 1670 	mov	a,#___str_8
      000742 C0 E0            [24] 1671 	push	acc
      000744 74 38            [12] 1672 	mov	a,#(___str_8 >> 8)
      000746 C0 E0            [24] 1673 	push	acc
      000748 12 31 60         [24] 1674 	lcall	_printf_fast_f
      00074B 15 81            [12] 1675 	dec	sp
      00074D 15 81            [12] 1676 	dec	sp
                                   1677 ;	src/main.c:339: break;
      00074F 22               [24] 1678 	ret
                                   1679 ;	src/main.c:342: case 'p' :
      000750                       1680 00105$:
                                   1681 ;	src/main.c:343: printf_fast_f("LineFi Power Off\r\n");
      000750 74 6C            [12] 1682 	mov	a,#___str_9
      000752 C0 E0            [24] 1683 	push	acc
      000754 74 38            [12] 1684 	mov	a,#(___str_9 >> 8)
      000756 C0 E0            [24] 1685 	push	acc
      000758 12 31 60         [24] 1686 	lcall	_printf_fast_f
      00075B 15 81            [12] 1687 	dec	sp
      00075D 15 81            [12] 1688 	dec	sp
                                   1689 ;	src/main.c:344: break;
      00075F 22               [24] 1690 	ret
                                   1691 ;	src/main.c:345: case 'P' :
      000760                       1692 00106$:
                                   1693 ;	src/main.c:346: printf_fast_f("LineFi Power On\r\n");
      000760 74 7F            [12] 1694 	mov	a,#___str_10
      000762 C0 E0            [24] 1695 	push	acc
      000764 74 38            [12] 1696 	mov	a,#(___str_10 >> 8)
      000766 C0 E0            [24] 1697 	push	acc
      000768 12 31 60         [24] 1698 	lcall	_printf_fast_f
      00076B 15 81            [12] 1699 	dec	sp
      00076D 15 81            [12] 1700 	dec	sp
                                   1701 ;	src/main.c:347: break;
      00076F 22               [24] 1702 	ret
                                   1703 ;	src/main.c:348: case 't' :
      000770                       1704 00107$:
                                   1705 ;	src/main.c:349: printf_fast_f("LineFi Uart Tx Low\r\n");
      000770 74 91            [12] 1706 	mov	a,#___str_11
      000772 C0 E0            [24] 1707 	push	acc
      000774 74 38            [12] 1708 	mov	a,#(___str_11 >> 8)
      000776 C0 E0            [24] 1709 	push	acc
      000778 12 31 60         [24] 1710 	lcall	_printf_fast_f
      00077B 15 81            [12] 1711 	dec	sp
      00077D 15 81            [12] 1712 	dec	sp
                                   1713 ;	src/main.c:350: break;
      00077F 22               [24] 1714 	ret
                                   1715 ;	src/main.c:351: case 'T' :
      000780                       1716 00108$:
                                   1717 ;	src/main.c:352: printf_fast_f("LineFi Uart Tx High\r\n");
      000780 74 A6            [12] 1718 	mov	a,#___str_12
      000782 C0 E0            [24] 1719 	push	acc
      000784 74 38            [12] 1720 	mov	a,#(___str_12 >> 8)
      000786 C0 E0            [24] 1721 	push	acc
      000788 12 31 60         [24] 1722 	lcall	_printf_fast_f
      00078B 15 81            [12] 1723 	dec	sp
      00078D 15 81            [12] 1724 	dec	sp
                                   1725 ;	src/main.c:353: break;
      00078F 22               [24] 1726 	ret
                                   1727 ;	src/main.c:354: case 's' :
      000790                       1728 00109$:
                                   1729 ;	src/main.c:355: printf_fast_f("LineFi CSC rx FSM Off\r\n");
      000790 74 BC            [12] 1730 	mov	a,#___str_13
      000792 C0 E0            [24] 1731 	push	acc
      000794 74 38            [12] 1732 	mov	a,#(___str_13 >> 8)
      000796 C0 E0            [24] 1733 	push	acc
      000798 12 31 60         [24] 1734 	lcall	_printf_fast_f
      00079B 15 81            [12] 1735 	dec	sp
      00079D 15 81            [12] 1736 	dec	sp
                                   1737 ;	src/main.c:356: break;
      00079F 22               [24] 1738 	ret
                                   1739 ;	src/main.c:357: case 'S' :
      0007A0                       1740 00110$:
                                   1741 ;	src/main.c:358: printf_fast_f("LineFi CSC rx FSM ON\r\n");
      0007A0 74 D4            [12] 1742 	mov	a,#___str_14
      0007A2 C0 E0            [24] 1743 	push	acc
      0007A4 74 38            [12] 1744 	mov	a,#(___str_14 >> 8)
      0007A6 C0 E0            [24] 1745 	push	acc
      0007A8 12 31 60         [24] 1746 	lcall	_printf_fast_f
      0007AB 15 81            [12] 1747 	dec	sp
      0007AD 15 81            [12] 1748 	dec	sp
                                   1749 ;	src/main.c:359: break;
                                   1750 ;	src/main.c:360: case 'v' : case 'V' :
      0007AF 22               [24] 1751 	ret
      0007B0                       1752 00112$:
                                   1753 ;	src/main.c:361: printf_fast_f(__VERSION__);
      0007B0 74 EB            [12] 1754 	mov	a,#___str_15
      0007B2 C0 E0            [24] 1755 	push	acc
      0007B4 74 38            [12] 1756 	mov	a,#(___str_15 >> 8)
      0007B6 C0 E0            [24] 1757 	push	acc
      0007B8 12 31 60         [24] 1758 	lcall	_printf_fast_f
      0007BB 15 81            [12] 1759 	dec	sp
      0007BD 15 81            [12] 1760 	dec	sp
                                   1761 ;	src/main.c:362: break;
                                   1762 ;	src/main.c:363: default :
      0007BF 22               [24] 1763 	ret
      0007C0                       1764 00113$:
                                   1765 ;	src/main.c:364: printf_fast_f("1: downlink packet 1\r\n");
      0007C0 74 05            [12] 1766 	mov	a,#___str_16
      0007C2 C0 E0            [24] 1767 	push	acc
      0007C4 74 39            [12] 1768 	mov	a,#(___str_16 >> 8)
      0007C6 C0 E0            [24] 1769 	push	acc
      0007C8 12 31 60         [24] 1770 	lcall	_printf_fast_f
      0007CB 15 81            [12] 1771 	dec	sp
      0007CD 15 81            [12] 1772 	dec	sp
                                   1773 ;	src/main.c:365: printf_fast_f("2: downlink packet 2\r\n");
      0007CF 74 1C            [12] 1774 	mov	a,#___str_17
      0007D1 C0 E0            [24] 1775 	push	acc
      0007D3 74 39            [12] 1776 	mov	a,#(___str_17 >> 8)
      0007D5 C0 E0            [24] 1777 	push	acc
      0007D7 12 31 60         [24] 1778 	lcall	_printf_fast_f
      0007DA 15 81            [12] 1779 	dec	sp
      0007DC 15 81            [12] 1780 	dec	sp
                                   1781 ;	src/main.c:366: printf_fast_f("3: uplink idle preamble on/off\r\n");
      0007DE 74 33            [12] 1782 	mov	a,#___str_18
      0007E0 C0 E0            [24] 1783 	push	acc
      0007E2 74 39            [12] 1784 	mov	a,#(___str_18 >> 8)
      0007E4 C0 E0            [24] 1785 	push	acc
      0007E6 12 31 60         [24] 1786 	lcall	_printf_fast_f
      0007E9 15 81            [12] 1787 	dec	sp
      0007EB 15 81            [12] 1788 	dec	sp
                                   1789 ;	src/main.c:367: printf_fast_f("p/P: LineFi Power off/on\r\n");
      0007ED 74 54            [12] 1790 	mov	a,#___str_19
      0007EF C0 E0            [24] 1791 	push	acc
      0007F1 74 39            [12] 1792 	mov	a,#(___str_19 >> 8)
      0007F3 C0 E0            [24] 1793 	push	acc
      0007F5 12 31 60         [24] 1794 	lcall	_printf_fast_f
      0007F8 15 81            [12] 1795 	dec	sp
      0007FA 15 81            [12] 1796 	dec	sp
                                   1797 ;	src/main.c:368: printf_fast_f("t/T: LineFi Uart Tx Low/High\r\n");
      0007FC 74 6F            [12] 1798 	mov	a,#___str_20
      0007FE C0 E0            [24] 1799 	push	acc
      000800 74 39            [12] 1800 	mov	a,#(___str_20 >> 8)
      000802 C0 E0            [24] 1801 	push	acc
      000804 12 31 60         [24] 1802 	lcall	_printf_fast_f
      000807 15 81            [12] 1803 	dec	sp
      000809 15 81            [12] 1804 	dec	sp
                                   1805 ;	src/main.c:369: printf_fast_f("s/S: LineFie CSC Rx FSM off/on\r\n");
      00080B 74 8E            [12] 1806 	mov	a,#___str_21
      00080D C0 E0            [24] 1807 	push	acc
      00080F 74 39            [12] 1808 	mov	a,#(___str_21 >> 8)
      000811 C0 E0            [24] 1809 	push	acc
      000813 12 31 60         [24] 1810 	lcall	_printf_fast_f
      000816 15 81            [12] 1811 	dec	sp
      000818 15 81            [12] 1812 	dec	sp
                                   1813 ;	src/main.c:370: printf_fast_f("test procedure: p -> P -> T -> S -> 1 or 2\r\n");
      00081A 74 AF            [12] 1814 	mov	a,#___str_22
      00081C C0 E0            [24] 1815 	push	acc
      00081E 74 39            [12] 1816 	mov	a,#(___str_22 >> 8)
      000820 C0 E0            [24] 1817 	push	acc
      000822 12 31 60         [24] 1818 	lcall	_printf_fast_f
      000825 15 81            [12] 1819 	dec	sp
      000827 15 81            [12] 1820 	dec	sp
                                   1821 ;	src/main.c:372: }
                                   1822 ;	src/main.c:373: }
      000829 22               [24] 1823 	ret
                                   1824 ;------------------------------------------------------------
                                   1825 ;Allocation info for local variables in function 'gpio_setup'
                                   1826 ;------------------------------------------------------------
                                   1827 ;	src/main.c:375: void gpio_setup()
                                   1828 ;	-----------------------------------------
                                   1829 ;	 function gpio_setup
                                   1830 ;	-----------------------------------------
      00082A                       1831 _gpio_setup:
                                   1832 ;	src/main.c:394: Set_All_GPIO_Quasi_Mode;
      00082A 75 B1 00         [24] 1833 	mov	_P0M1,#0x00
      00082D 75 B2 00         [24] 1834 	mov	_P0M2,#0x00
      000830 75 B3 00         [24] 1835 	mov	_P1M1,#0x00
      000833 75 B4 00         [24] 1836 	mov	_P1M2,#0x00
      000836 75 AC 00         [24] 1837 	mov	_P3M1,#0x00
      000839 75 AD 00         [24] 1838 	mov	_P3M2,#0x00
                                   1839 ;	src/main.c:396: P15_Input_Mode;
      00083C 43 B3 20         [24] 1840 	orl	_P1M1,#0x20
      00083F 53 B4 DF         [24] 1841 	anl	_P1M2,#0xdf
                                   1842 ;	src/main.c:397: P02_Input_Mode;
      000842 43 B1 04         [24] 1843 	orl	_P0M1,#0x04
      000845 53 B2 FB         [24] 1844 	anl	_P0M2,#0xfb
                                   1845 ;	src/main.c:398: P07_Input_Mode;
      000848 43 B1 80         [24] 1846 	orl	_P0M1,#0x80
      00084B 53 B2 7F         [24] 1847 	anl	_P0M2,#0x7f
                                   1848 ;	src/main.c:400: P16_PushPull_Mode;
      00084E 53 B3 BF         [24] 1849 	anl	_P1M1,#0xbf
      000851 43 B4 40         [24] 1850 	orl	_P1M2,#0x40
                                   1851 ;	src/main.c:401: P13_PushPull_Mode;
      000854 53 B3 F7         [24] 1852 	anl	_P1M1,#0xf7
      000857 43 B4 08         [24] 1853 	orl	_P1M2,#0x08
                                   1854 ;	src/main.c:402: P14_PushPull_Mode;
      00085A 53 B3 EF         [24] 1855 	anl	_P1M1,#0xef
      00085D 43 B4 10         [24] 1856 	orl	_P1M2,#0x10
                                   1857 ;	src/main.c:403: P12_PushPull_Mode;
      000860 53 B3 FB         [24] 1858 	anl	_P1M1,#0xfb
      000863 43 B4 04         [24] 1859 	orl	_P1M2,#0x04
                                   1860 ;	src/main.c:404: P11_PushPull_Mode;
      000866 53 B3 FD         [24] 1861 	anl	_P1M1,#0xfd
      000869 43 B4 02         [24] 1862 	orl	_P1M2,#0x02
                                   1863 ;	src/main.c:405: P10_PushPull_Mode;
      00086C 53 B3 FE         [24] 1864 	anl	_P1M1,#0xfe
      00086F 43 B4 01         [24] 1865 	orl	_P1M2,#0x01
                                   1866 ;	src/main.c:406: P00_PushPull_Mode;
      000872 53 B1 FE         [24] 1867 	anl	_P0M1,#0xfe
      000875 43 B2 01         [24] 1868 	orl	_P0M2,#0x01
                                   1869 ;	src/main.c:407: P01_PushPull_Mode;
      000878 53 B1 FD         [24] 1870 	anl	_P0M1,#0xfd
      00087B 43 B2 02         [24] 1871 	orl	_P0M2,#0x02
                                   1872 ;	src/main.c:408: P04_PushPull_Mode;
      00087E 53 B1 EF         [24] 1873 	anl	_P0M1,#0xef
      000881 43 B2 10         [24] 1874 	orl	_P0M2,#0x10
                                   1875 ;	src/main.c:409: P03_PushPull_Mode;
      000884 53 B1 F7         [24] 1876 	anl	_P0M1,#0xf7
      000887 43 B2 08         [24] 1877 	orl	_P0M2,#0x08
                                   1878 ;	src/main.c:411: UART_TX = 1;
                                   1879 ;	assignBit
      00088A D2 96            [12] 1880 	setb	_P16
                                   1881 ;	src/main.c:412: LED_B = 1;
                                   1882 ;	assignBit
      00088C D2 92            [12] 1883 	setb	_P12
                                   1884 ;	src/main.c:413: LED_G = 1;
                                   1885 ;	assignBit
      00088E D2 93            [12] 1886 	setb	_P13
                                   1887 ;	src/main.c:414: LED_R = 1;
                                   1888 ;	assignBit
      000890 D2 94            [12] 1889 	setb	_P14
                                   1890 ;	src/main.c:416: MOTOR_CW = 0;
                                   1891 ;	assignBit
      000892 C2 80            [12] 1892 	clr	_P00
                                   1893 ;	src/main.c:417: MOTOR_CCW = 0;
                                   1894 ;	assignBit
      000894 C2 81            [12] 1895 	clr	_P01
                                   1896 ;	src/main.c:418: SEL_RX_POL = 0;
                                   1897 ;	assignBit
      000896 C2 84            [12] 1898 	clr	_P04
                                   1899 ;	src/main.c:419: PWR_OUT = 0;
                                   1900 ;	assignBit
      000898 C2 83            [12] 1901 	clr	_P03
                                   1902 ;	src/main.c:420: }
      00089A 22               [24] 1903 	ret
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'ctrl_rgbled_motor'
                                   1906 ;------------------------------------------------------------
                                   1907 ;u8RxUART                  Allocated to registers r7 
                                   1908 ;------------------------------------------------------------
                                   1909 ;	src/main.c:438: void ctrl_rgbled_motor(UINT8 u8RxUART)
                                   1910 ;	-----------------------------------------
                                   1911 ;	 function ctrl_rgbled_motor
                                   1912 ;	-----------------------------------------
      00089B                       1913 _ctrl_rgbled_motor:
                                   1914 ;	src/main.c:442: if (u8RxUART) {
      00089B E5 82            [12] 1915 	mov	a,dpl
      00089D FF               [12] 1916 	mov	r7,a
      00089E 60 54            [24] 1917 	jz	00117$
                                   1918 ;	src/main.c:443: if (u8RxUART&(1<<0)) {
      0008A0 EF               [12] 1919 	mov	a,r7
      0008A1 30 E0 02         [24] 1920 	jnb	acc.0,00102$
                                   1921 ;	src/main.c:444: TOGGLE(LED_R);
      0008A4 B2 94            [12] 1922 	cpl	_P14
      0008A6                       1923 00102$:
                                   1924 ;	src/main.c:447: if (u8RxUART&(1<<1)) {
      0008A6 EF               [12] 1925 	mov	a,r7
      0008A7 30 E1 02         [24] 1926 	jnb	acc.1,00104$
                                   1927 ;	src/main.c:448: TOGGLE(LED_G);
      0008AA B2 93            [12] 1928 	cpl	_P13
      0008AC                       1929 00104$:
                                   1930 ;	src/main.c:451: if (u8RxUART&(1<<2)) {
      0008AC EF               [12] 1931 	mov	a,r7
      0008AD 30 E2 02         [24] 1932 	jnb	acc.2,00106$
                                   1933 ;	src/main.c:452: TOGGLE(LED_B);
      0008B0 B2 92            [12] 1934 	cpl	_P12
      0008B2                       1935 00106$:
                                   1936 ;	src/main.c:455: if (u8RxUART&(1<<3)) {
      0008B2 EF               [12] 1937 	mov	a,r7
      0008B3 30 E3 48         [24] 1938 	jnb	acc.3,00119$
                                   1939 ;	src/main.c:456: switch(gu8MotorState) {
      0008B6 90 00 1D         [24] 1940 	mov	dptr,#_gu8MotorState
      0008B9 E0               [24] 1941 	movx	a,@dptr
      0008BA FF               [12] 1942 	mov  r7,a
      0008BB 24 FC            [12] 1943 	add	a,#0xff - 0x03
      0008BD 40 24            [24] 1944 	jc	00111$
      0008BF EF               [12] 1945 	mov	a,r7
      0008C0 2F               [12] 1946 	add	a,r7
                                   1947 ;	src/main.c:457: case 0 :
      0008C1 90 08 C5         [24] 1948 	mov	dptr,#00155$
      0008C4 73               [24] 1949 	jmp	@a+dptr
      0008C5                       1950 00155$:
      0008C5 80 06            [24] 1951 	sjmp	00107$
      0008C7 80 0A            [24] 1952 	sjmp	00108$
      0008C9 80 0E            [24] 1953 	sjmp	00109$
      0008CB 80 12            [24] 1954 	sjmp	00110$
      0008CD                       1955 00107$:
                                   1956 ;	src/main.c:458: MOTOR_CCW = 0;
                                   1957 ;	assignBit
      0008CD C2 81            [12] 1958 	clr	_P01
                                   1959 ;	src/main.c:459: MOTOR_CW = 0 ;
                                   1960 ;	assignBit
      0008CF C2 80            [12] 1961 	clr	_P00
                                   1962 ;	src/main.c:460: break;
                                   1963 ;	src/main.c:461: case 1 :
      0008D1 80 10            [24] 1964 	sjmp	00111$
      0008D3                       1965 00108$:
                                   1966 ;	src/main.c:462: MOTOR_CCW = 1;
                                   1967 ;	assignBit
      0008D3 D2 81            [12] 1968 	setb	_P01
                                   1969 ;	src/main.c:463: MOTOR_CW = 0 ;
                                   1970 ;	assignBit
      0008D5 C2 80            [12] 1971 	clr	_P00
                                   1972 ;	src/main.c:464: break;
                                   1973 ;	src/main.c:465: case 2 :
      0008D7 80 0A            [24] 1974 	sjmp	00111$
      0008D9                       1975 00109$:
                                   1976 ;	src/main.c:466: MOTOR_CCW = 1;
                                   1977 ;	assignBit
      0008D9 D2 81            [12] 1978 	setb	_P01
                                   1979 ;	src/main.c:467: MOTOR_CW = 1 ;
                                   1980 ;	assignBit
      0008DB D2 80            [12] 1981 	setb	_P00
                                   1982 ;	src/main.c:468: break;
                                   1983 ;	src/main.c:469: case 3 :
      0008DD 80 04            [24] 1984 	sjmp	00111$
      0008DF                       1985 00110$:
                                   1986 ;	src/main.c:470: MOTOR_CCW = 0;
                                   1987 ;	assignBit
      0008DF C2 81            [12] 1988 	clr	_P01
                                   1989 ;	src/main.c:471: MOTOR_CW = 1 ;
                                   1990 ;	assignBit
      0008E1 D2 80            [12] 1991 	setb	_P00
                                   1992 ;	src/main.c:473: }
      0008E3                       1993 00111$:
                                   1994 ;	src/main.c:474: gu8MotorState ++;
      0008E3 90 00 1D         [24] 1995 	mov	dptr,#_gu8MotorState
      0008E6 EF               [12] 1996 	mov	a,r7
      0008E7 04               [12] 1997 	inc	a
      0008E8 F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	src/main.c:475: if (gu8MotorState == 4) {
      0008E9 E0               [24] 2000 	movx	a,@dptr
      0008EA FF               [12] 2001 	mov	r7,a
      0008EB BF 04 10         [24] 2002 	cjne	r7,#0x04,00119$
                                   2003 ;	src/main.c:476: gu8MotorState = 0;
      0008EE 90 00 1D         [24] 2004 	mov	dptr,#_gu8MotorState
      0008F1 E4               [12] 2005 	clr	a
      0008F2 F0               [24] 2006 	movx	@dptr,a
      0008F3 22               [24] 2007 	ret
      0008F4                       2008 00117$:
                                   2009 ;	src/main.c:481: LED_R = LED_OFF;
                                   2010 ;	assignBit
      0008F4 D2 94            [12] 2011 	setb	_P14
                                   2012 ;	src/main.c:482: LED_G = LED_OFF;
                                   2013 ;	assignBit
      0008F6 D2 93            [12] 2014 	setb	_P13
                                   2015 ;	src/main.c:483: LED_B = LED_OFF;
                                   2016 ;	assignBit
      0008F8 D2 92            [12] 2017 	setb	_P12
                                   2018 ;	src/main.c:484: MOTOR_CCW = 0;
                                   2019 ;	assignBit
      0008FA C2 81            [12] 2020 	clr	_P01
                                   2021 ;	src/main.c:485: MOTOR_CW = 0 ;
                                   2022 ;	assignBit
      0008FC C2 80            [12] 2023 	clr	_P00
      0008FE                       2024 00119$:
                                   2025 ;	src/main.c:487: }
      0008FE 22               [24] 2026 	ret
                                   2027 ;------------------------------------------------------------
                                   2028 ;Allocation info for local variables in function 'chk_my_addr'
                                   2029 ;------------------------------------------------------------
                                   2030 ;au8RxData                 Allocated with name '_chk_my_addr_PARM_2'
                                   2031 ;au8MyAddr                 Allocated to registers r7 
                                   2032 ;------------------------------------------------------------
                                   2033 ;	src/main.c:489: UINT8 chk_my_addr(UINT8 au8MyAddr, UINT8 au8RxData)
                                   2034 ;	-----------------------------------------
                                   2035 ;	 function chk_my_addr
                                   2036 ;	-----------------------------------------
      0008FF                       2037 _chk_my_addr:
      0008FF AF 82            [24] 2038 	mov	r7,dpl
                                   2039 ;	src/main.c:491: if ( (au8RxData>>4) == (au8MyAddr&0x0F)) {
      000901 E5 19            [12] 2040 	mov	a,_chk_my_addr_PARM_2
      000903 C4               [12] 2041 	swap	a
      000904 54 0F            [12] 2042 	anl	a,#0x0f
      000906 FE               [12] 2043 	mov	r6,a
      000907 53 07 0F         [24] 2044 	anl	ar7,#0x0f
      00090A E4               [12] 2045 	clr	a
      00090B FD               [12] 2046 	mov	r5,a
      00090C FC               [12] 2047 	mov	r4,a
      00090D EE               [12] 2048 	mov	a,r6
      00090E B5 07 08         [24] 2049 	cjne	a,ar7,00102$
      000911 EC               [12] 2050 	mov	a,r4
      000912 B5 05 04         [24] 2051 	cjne	a,ar5,00102$
                                   2052 ;	src/main.c:492: return 1;
      000915 75 82 01         [24] 2053 	mov	dpl,#0x01
      000918 22               [24] 2054 	ret
      000919                       2055 00102$:
                                   2056 ;	src/main.c:494: return 0;
      000919 75 82 00         [24] 2057 	mov	dpl,#0x00
                                   2058 ;	src/main.c:495: }
      00091C 22               [24] 2059 	ret
                                   2060 ;------------------------------------------------------------
                                   2061 ;Allocation info for local variables in function 'process_my_packet'
                                   2062 ;------------------------------------------------------------
                                   2063 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   2064 ;sloc0                     Allocated with name '_process_my_packet_sloc0_1_0'
                                   2065 ;------------------------------------------------------------
                                   2066 ;	src/main.c:497: void process_my_packet(linefi_packet_t * apstLineFiPkt)
                                   2067 ;	-----------------------------------------
                                   2068 ;	 function process_my_packet
                                   2069 ;	-----------------------------------------
      00091D                       2070 _process_my_packet:
      00091D AD 82            [24] 2071 	mov	r5,dpl
      00091F AE 83            [24] 2072 	mov	r6,dph
      000921 AF F0            [24] 2073 	mov	r7,b
                                   2074 ;	src/main.c:499: switch(apstLineFiPkt->u8Type) {
      000923 74 01            [12] 2075 	mov	a,#0x01
      000925 2D               [12] 2076 	add	a,r5
      000926 FA               [12] 2077 	mov	r2,a
      000927 E4               [12] 2078 	clr	a
      000928 3E               [12] 2079 	addc	a,r6
      000929 FB               [12] 2080 	mov	r3,a
      00092A 8F 04            [24] 2081 	mov	ar4,r7
      00092C 8A 82            [24] 2082 	mov	dpl,r2
      00092E 8B 83            [24] 2083 	mov	dph,r3
      000930 8C F0            [24] 2084 	mov	b,r4
      000932 12 37 EE         [24] 2085 	lcall	__gptrget
      000935 FC               [12] 2086 	mov	r4,a
      000936 BC 04 02         [24] 2087 	cjne	r4,#0x04,00119$
      000939 80 0D            [24] 2088 	sjmp	00101$
      00093B                       2089 00119$:
      00093B BC 05 03         [24] 2090 	cjne	r4,#0x05,00120$
      00093E 02 09 CC         [24] 2091 	ljmp	00102$
      000941                       2092 00120$:
      000941 BC 06 03         [24] 2093 	cjne	r4,#0x06,00121$
      000944 02 0A 22         [24] 2094 	ljmp	00103$
      000947                       2095 00121$:
      000947 22               [24] 2096 	ret
                                   2097 ;	src/main.c:508: case Type_SetLED :
      000948                       2098 00101$:
                                   2099 ;	src/main.c:509: LED_R = apstLineFiPkt->pu8Data[0];
      000948 74 05            [12] 2100 	mov	a,#0x05
      00094A 2D               [12] 2101 	add	a,r5
      00094B F5 26            [12] 2102 	mov	_process_my_packet_sloc0_1_0,a
      00094D E4               [12] 2103 	clr	a
      00094E 3E               [12] 2104 	addc	a,r6
      00094F F5 27            [12] 2105 	mov	(_process_my_packet_sloc0_1_0 + 1),a
      000951 8F 28            [24] 2106 	mov	(_process_my_packet_sloc0_1_0 + 2),r7
      000953 85 26 82         [24] 2107 	mov	dpl,_process_my_packet_sloc0_1_0
      000956 85 27 83         [24] 2108 	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
      000959 85 28 F0         [24] 2109 	mov	b,(_process_my_packet_sloc0_1_0 + 2)
      00095C 12 37 EE         [24] 2110 	lcall	__gptrget
      00095F F8               [12] 2111 	mov	r0,a
      000960 A3               [24] 2112 	inc	dptr
      000961 12 37 EE         [24] 2113 	lcall	__gptrget
      000964 F9               [12] 2114 	mov	r1,a
      000965 A3               [24] 2115 	inc	dptr
      000966 12 37 EE         [24] 2116 	lcall	__gptrget
      000969 FC               [12] 2117 	mov	r4,a
      00096A 88 82            [24] 2118 	mov	dpl,r0
      00096C 89 83            [24] 2119 	mov	dph,r1
      00096E 8C F0            [24] 2120 	mov	b,r4
      000970 12 37 EE         [24] 2121 	lcall	__gptrget
                                   2122 ;	assignBit
      000973 24 FF            [12] 2123 	add	a,#0xff
      000975 92 94            [24] 2124 	mov	_P14,c
                                   2125 ;	src/main.c:510: LED_G = apstLineFiPkt->pu8Data[1];
      000977 85 26 82         [24] 2126 	mov	dpl,_process_my_packet_sloc0_1_0
      00097A 85 27 83         [24] 2127 	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
      00097D 85 28 F0         [24] 2128 	mov	b,(_process_my_packet_sloc0_1_0 + 2)
      000980 12 37 EE         [24] 2129 	lcall	__gptrget
      000983 FA               [12] 2130 	mov	r2,a
      000984 A3               [24] 2131 	inc	dptr
      000985 12 37 EE         [24] 2132 	lcall	__gptrget
      000988 FB               [12] 2133 	mov	r3,a
      000989 A3               [24] 2134 	inc	dptr
      00098A 12 37 EE         [24] 2135 	lcall	__gptrget
      00098D FC               [12] 2136 	mov	r4,a
      00098E 0A               [12] 2137 	inc	r2
      00098F BA 00 01         [24] 2138 	cjne	r2,#0x00,00122$
      000992 0B               [12] 2139 	inc	r3
      000993                       2140 00122$:
      000993 8A 82            [24] 2141 	mov	dpl,r2
      000995 8B 83            [24] 2142 	mov	dph,r3
      000997 8C F0            [24] 2143 	mov	b,r4
      000999 12 37 EE         [24] 2144 	lcall	__gptrget
                                   2145 ;	assignBit
      00099C 24 FF            [12] 2146 	add	a,#0xff
      00099E 92 93            [24] 2147 	mov	_P13,c
                                   2148 ;	src/main.c:511: LED_B = apstLineFiPkt->pu8Data[2];
      0009A0 85 26 82         [24] 2149 	mov	dpl,_process_my_packet_sloc0_1_0
      0009A3 85 27 83         [24] 2150 	mov	dph,(_process_my_packet_sloc0_1_0 + 1)
      0009A6 85 28 F0         [24] 2151 	mov	b,(_process_my_packet_sloc0_1_0 + 2)
      0009A9 12 37 EE         [24] 2152 	lcall	__gptrget
      0009AC FA               [12] 2153 	mov	r2,a
      0009AD A3               [24] 2154 	inc	dptr
      0009AE 12 37 EE         [24] 2155 	lcall	__gptrget
      0009B1 FB               [12] 2156 	mov	r3,a
      0009B2 A3               [24] 2157 	inc	dptr
      0009B3 12 37 EE         [24] 2158 	lcall	__gptrget
      0009B6 FC               [12] 2159 	mov	r4,a
      0009B7 74 02            [12] 2160 	mov	a,#0x02
      0009B9 2A               [12] 2161 	add	a,r2
      0009BA FA               [12] 2162 	mov	r2,a
      0009BB E4               [12] 2163 	clr	a
      0009BC 3B               [12] 2164 	addc	a,r3
      0009BD FB               [12] 2165 	mov	r3,a
      0009BE 8A 82            [24] 2166 	mov	dpl,r2
      0009C0 8B 83            [24] 2167 	mov	dph,r3
      0009C2 8C F0            [24] 2168 	mov	b,r4
      0009C4 12 37 EE         [24] 2169 	lcall	__gptrget
                                   2170 ;	assignBit
      0009C7 24 FF            [12] 2171 	add	a,#0xff
      0009C9 92 92            [24] 2172 	mov	_P12,c
                                   2173 ;	src/main.c:512: break;
                                   2174 ;	src/main.c:513: case Type_CtrlMotor :
      0009CB 22               [24] 2175 	ret
      0009CC                       2176 00102$:
                                   2177 ;	src/main.c:515: MOTOR_CW = apstLineFiPkt->pu8Data[1];
      0009CC 74 05            [12] 2178 	mov	a,#0x05
      0009CE 2D               [12] 2179 	add	a,r5
      0009CF FD               [12] 2180 	mov	r5,a
      0009D0 E4               [12] 2181 	clr	a
      0009D1 3E               [12] 2182 	addc	a,r6
      0009D2 FE               [12] 2183 	mov	r6,a
      0009D3 8D 82            [24] 2184 	mov	dpl,r5
      0009D5 8E 83            [24] 2185 	mov	dph,r6
      0009D7 8F F0            [24] 2186 	mov	b,r7
      0009D9 12 37 EE         [24] 2187 	lcall	__gptrget
      0009DC FA               [12] 2188 	mov	r2,a
      0009DD A3               [24] 2189 	inc	dptr
      0009DE 12 37 EE         [24] 2190 	lcall	__gptrget
      0009E1 FB               [12] 2191 	mov	r3,a
      0009E2 A3               [24] 2192 	inc	dptr
      0009E3 12 37 EE         [24] 2193 	lcall	__gptrget
      0009E6 FC               [12] 2194 	mov	r4,a
      0009E7 0A               [12] 2195 	inc	r2
      0009E8 BA 00 01         [24] 2196 	cjne	r2,#0x00,00123$
      0009EB 0B               [12] 2197 	inc	r3
      0009EC                       2198 00123$:
      0009EC 8A 82            [24] 2199 	mov	dpl,r2
      0009EE 8B 83            [24] 2200 	mov	dph,r3
      0009F0 8C F0            [24] 2201 	mov	b,r4
      0009F2 12 37 EE         [24] 2202 	lcall	__gptrget
                                   2203 ;	assignBit
      0009F5 24 FF            [12] 2204 	add	a,#0xff
      0009F7 92 80            [24] 2205 	mov	_P00,c
                                   2206 ;	src/main.c:516: MOTOR_CCW = apstLineFiPkt->pu8Data[2];
      0009F9 8D 82            [24] 2207 	mov	dpl,r5
      0009FB 8E 83            [24] 2208 	mov	dph,r6
      0009FD 8F F0            [24] 2209 	mov	b,r7
      0009FF 12 37 EE         [24] 2210 	lcall	__gptrget
      000A02 FD               [12] 2211 	mov	r5,a
      000A03 A3               [24] 2212 	inc	dptr
      000A04 12 37 EE         [24] 2213 	lcall	__gptrget
      000A07 FE               [12] 2214 	mov	r6,a
      000A08 A3               [24] 2215 	inc	dptr
      000A09 12 37 EE         [24] 2216 	lcall	__gptrget
      000A0C FF               [12] 2217 	mov	r7,a
      000A0D 74 02            [12] 2218 	mov	a,#0x02
      000A0F 2D               [12] 2219 	add	a,r5
      000A10 FD               [12] 2220 	mov	r5,a
      000A11 E4               [12] 2221 	clr	a
      000A12 3E               [12] 2222 	addc	a,r6
      000A13 FE               [12] 2223 	mov	r6,a
      000A14 8D 82            [24] 2224 	mov	dpl,r5
      000A16 8E 83            [24] 2225 	mov	dph,r6
      000A18 8F F0            [24] 2226 	mov	b,r7
      000A1A 12 37 EE         [24] 2227 	lcall	__gptrget
                                   2228 ;	assignBit
      000A1D 24 FF            [12] 2229 	add	a,#0xff
      000A1F 92 81            [24] 2230 	mov	_P01,c
                                   2231 ;	src/main.c:517: break;
                                   2232 ;	src/main.c:518: case Type_ReadAddr :
      000A21 22               [24] 2233 	ret
      000A22                       2234 00103$:
                                   2235 ;	src/main.c:519: printf_fast_f("My address is 0x%x\r\n", gu8MyAddr);
      000A22 AE 22            [24] 2236 	mov	r6,_gu8MyAddr
      000A24 7F 00            [12] 2237 	mov	r7,#0x00
      000A26 C0 06            [24] 2238 	push	ar6
      000A28 C0 07            [24] 2239 	push	ar7
      000A2A 74 DC            [12] 2240 	mov	a,#___str_23
      000A2C C0 E0            [24] 2241 	push	acc
      000A2E 74 39            [12] 2242 	mov	a,#(___str_23 >> 8)
      000A30 C0 E0            [24] 2243 	push	acc
      000A32 12 31 60         [24] 2244 	lcall	_printf_fast_f
      000A35 E5 81            [12] 2245 	mov	a,sp
      000A37 24 FC            [12] 2246 	add	a,#0xfc
      000A39 F5 81            [12] 2247 	mov	sp,a
                                   2248 ;	src/main.c:521: }
                                   2249 ;	src/main.c:522: }
      000A3B 22               [24] 2250 	ret
                                   2251 ;------------------------------------------------------------
                                   2252 ;Allocation info for local variables in function 'set_uplink_test_mode'
                                   2253 ;------------------------------------------------------------
                                   2254 ;au8Data                   Allocated with name '_set_uplink_test_mode_PARM_2'
                                   2255 ;au8Mode                   Allocated to registers r7 
                                   2256 ;------------------------------------------------------------
                                   2257 ;	src/main.c:524: void set_uplink_test_mode(uplink_mode_t au8Mode, UINT8 au8Data)
                                   2258 ;	-----------------------------------------
                                   2259 ;	 function set_uplink_test_mode
                                   2260 ;	-----------------------------------------
      000A3C                       2261 _set_uplink_test_mode:
      000A3C AF 82            [24] 2262 	mov	r7,dpl
                                   2263 ;	src/main.c:531: gu8ULTestMode = au8Mode;
      000A3E 90 00 1E         [24] 2264 	mov	dptr,#_gu8ULTestMode
      000A41 EF               [12] 2265 	mov	a,r7
      000A42 F0               [24] 2266 	movx	@dptr,a
                                   2267 ;	src/main.c:532: gu8ULTestData = au8Data;
      000A43 AE 29            [24] 2268 	mov	r6,_set_uplink_test_mode_PARM_2
      000A45 90 00 23         [24] 2269 	mov	dptr,#_gu8ULTestData
      000A48 EE               [12] 2270 	mov	a,r6
      000A49 F0               [24] 2271 	movx	@dptr,a
                                   2272 ;	src/main.c:533: printf_fast_f("%s:%d\r\n",gppcULTestMode[au8Mode], au8Data);
      000A4A 7D 00            [12] 2273 	mov	r5,#0x00
      000A4C EF               [12] 2274 	mov	a,r7
      000A4D 75 F0 03         [24] 2275 	mov	b,#0x03
      000A50 A4               [48] 2276 	mul	ab
      000A51 24 39            [12] 2277 	add	a,#_gppcULTestMode
      000A53 F5 82            [12] 2278 	mov	dpl,a
      000A55 74 00            [12] 2279 	mov	a,#(_gppcULTestMode >> 8)
      000A57 35 F0            [12] 2280 	addc	a,b
      000A59 F5 83            [12] 2281 	mov	dph,a
      000A5B E0               [24] 2282 	movx	a,@dptr
      000A5C FB               [12] 2283 	mov	r3,a
      000A5D A3               [24] 2284 	inc	dptr
      000A5E E0               [24] 2285 	movx	a,@dptr
      000A5F FC               [12] 2286 	mov	r4,a
      000A60 A3               [24] 2287 	inc	dptr
      000A61 E0               [24] 2288 	movx	a,@dptr
      000A62 FF               [12] 2289 	mov	r7,a
      000A63 C0 06            [24] 2290 	push	ar6
      000A65 C0 05            [24] 2291 	push	ar5
      000A67 C0 03            [24] 2292 	push	ar3
      000A69 C0 04            [24] 2293 	push	ar4
      000A6B C0 07            [24] 2294 	push	ar7
      000A6D 74 F1            [12] 2295 	mov	a,#___str_24
      000A6F C0 E0            [24] 2296 	push	acc
      000A71 74 39            [12] 2297 	mov	a,#(___str_24 >> 8)
      000A73 C0 E0            [24] 2298 	push	acc
      000A75 12 31 60         [24] 2299 	lcall	_printf_fast_f
      000A78 E5 81            [12] 2300 	mov	a,sp
      000A7A 24 F9            [12] 2301 	add	a,#0xf9
      000A7C F5 81            [12] 2302 	mov	sp,a
                                   2303 ;	src/main.c:534: }
      000A7E 22               [24] 2304 	ret
                                   2305 ;------------------------------------------------------------
                                   2306 ;Allocation info for local variables in function 'process_all_packet'
                                   2307 ;------------------------------------------------------------
                                   2308 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   2309 ;u32Tmp                    Allocated to registers r1 r2 r3 r4 
                                   2310 ;sloc0                     Allocated with name '_process_all_packet_sloc0_1_0'
                                   2311 ;sloc1                     Allocated with name '_process_all_packet_sloc1_1_0'
                                   2312 ;------------------------------------------------------------
                                   2313 ;	src/main.c:536: void process_all_packet(linefi_packet_t * apstLineFiPkt)
                                   2314 ;	-----------------------------------------
                                   2315 ;	 function process_all_packet
                                   2316 ;	-----------------------------------------
      000A7F                       2317 _process_all_packet:
      000A7F AD 82            [24] 2318 	mov	r5,dpl
      000A81 AE 83            [24] 2319 	mov	r6,dph
      000A83 AF F0            [24] 2320 	mov	r7,b
                                   2321 ;	src/main.c:538: switch(apstLineFiPkt->u8Type) {
      000A85 74 01            [12] 2322 	mov	a,#0x01
      000A87 2D               [12] 2323 	add	a,r5
      000A88 FA               [12] 2324 	mov	r2,a
      000A89 E4               [12] 2325 	clr	a
      000A8A 3E               [12] 2326 	addc	a,r6
      000A8B FB               [12] 2327 	mov	r3,a
      000A8C 8F 04            [24] 2328 	mov	ar4,r7
      000A8E 8A 82            [24] 2329 	mov	dpl,r2
      000A90 8B 83            [24] 2330 	mov	dph,r3
      000A92 8C F0            [24] 2331 	mov	b,r4
      000A94 12 37 EE         [24] 2332 	lcall	__gptrget
      000A97 FC               [12] 2333 	mov	r4,a
      000A98 BC 00 01         [24] 2334 	cjne	r4,#0x00,00151$
      000A9B 22               [24] 2335 	ret
      000A9C                       2336 00151$:
      000A9C BC 02 01         [24] 2337 	cjne	r4,#0x02,00152$
      000A9F 22               [24] 2338 	ret
      000AA0                       2339 00152$:
      000AA0 BC 03 02         [24] 2340 	cjne	r4,#0x03,00153$
      000AA3 80 0C            [24] 2341 	sjmp	00101$
      000AA5                       2342 00153$:
      000AA5 BC 05 02         [24] 2343 	cjne	r4,#0x05,00154$
      000AA8 80 5B            [24] 2344 	sjmp	00106$
      000AAA                       2345 00154$:
      000AAA BC 07 03         [24] 2346 	cjne	r4,#0x07,00155$
      000AAD 02 0B 48         [24] 2347 	ljmp	00112$
      000AB0                       2348 00155$:
      000AB0 22               [24] 2349 	ret
                                   2350 ;	src/main.c:539: case Type_SetAddr :
      000AB1                       2351 00101$:
                                   2352 ;	src/main.c:540: if (SWITCH == SW_ON) {
      000AB1 20 95 01         [24] 2353 	jb	_P15,00156$
      000AB4 22               [24] 2354 	ret
      000AB5                       2355 00156$:
                                   2356 ;	src/main.c:541: printf_fast_f("set address as %d\r\n", apstLineFiPkt->u8Addr);
      000AB5 74 02            [12] 2357 	mov	a,#0x02
      000AB7 2D               [12] 2358 	add	a,r5
      000AB8 FA               [12] 2359 	mov	r2,a
      000AB9 E4               [12] 2360 	clr	a
      000ABA 3E               [12] 2361 	addc	a,r6
      000ABB FB               [12] 2362 	mov	r3,a
      000ABC 8F 04            [24] 2363 	mov	ar4,r7
      000ABE 8A 82            [24] 2364 	mov	dpl,r2
      000AC0 8B 83            [24] 2365 	mov	dph,r3
      000AC2 8C F0            [24] 2366 	mov	b,r4
      000AC4 12 37 EE         [24] 2367 	lcall	__gptrget
      000AC7 F8               [12] 2368 	mov	r0,a
      000AC8 79 00            [12] 2369 	mov	r1,#0x00
      000ACA C0 04            [24] 2370 	push	ar4
      000ACC C0 03            [24] 2371 	push	ar3
      000ACE C0 02            [24] 2372 	push	ar2
      000AD0 C0 00            [24] 2373 	push	ar0
      000AD2 C0 01            [24] 2374 	push	ar1
      000AD4 74 F9            [12] 2375 	mov	a,#___str_25
      000AD6 C0 E0            [24] 2376 	push	acc
      000AD8 74 39            [12] 2377 	mov	a,#(___str_25 >> 8)
      000ADA C0 E0            [24] 2378 	push	acc
      000ADC 12 31 60         [24] 2379 	lcall	_printf_fast_f
      000ADF E5 81            [12] 2380 	mov	a,sp
      000AE1 24 FC            [12] 2381 	add	a,#0xfc
      000AE3 F5 81            [12] 2382 	mov	sp,a
      000AE5 D0 02            [24] 2383 	pop	ar2
      000AE7 D0 03            [24] 2384 	pop	ar3
      000AE9 D0 04            [24] 2385 	pop	ar4
                                   2386 ;	src/main.c:542: gu8MyAddr = apstLineFiPkt->u8Addr;
      000AEB 8A 82            [24] 2387 	mov	dpl,r2
      000AED 8B 83            [24] 2388 	mov	dph,r3
      000AEF 8C F0            [24] 2389 	mov	b,r4
      000AF1 12 37 EE         [24] 2390 	lcall	__gptrget
      000AF4 F5 22            [12] 2391 	mov	_gu8MyAddr,a
                                   2392 ;	src/main.c:543: Erase_APROM_Page(BASE_ADDRESS);
      000AF6 90 37 00         [24] 2393 	mov	dptr,#0x3700
      000AF9 12 21 71         [24] 2394 	lcall	_Erase_APROM_Page
                                   2395 ;	src/main.c:544: Write_APROM_BYTE(BASE_ADDRESS+0, gu8MyAddr);
      000AFC 85 22 10         [24] 2396 	mov	_Write_APROM_BYTE_PARM_2,_gu8MyAddr
      000AFF 90 37 00         [24] 2397 	mov	dptr,#0x3700
                                   2398 ;	src/main.c:546: break;
      000B02 02 21 85         [24] 2399 	ljmp	_Write_APROM_BYTE
                                   2400 ;	src/main.c:551: case Type_CtrlMotor :
      000B05                       2401 00106$:
                                   2402 ;	src/main.c:552: switch(gu8MotorState) {
      000B05 90 00 1D         [24] 2403 	mov	dptr,#_gu8MotorState
      000B08 E0               [24] 2404 	movx	a,@dptr
      000B09 FC               [12] 2405 	mov  r4,a
      000B0A 24 FC            [12] 2406 	add	a,#0xff - 0x03
      000B0C 50 01            [24] 2407 	jnc	00157$
      000B0E 22               [24] 2408 	ret
      000B0F                       2409 00157$:
      000B0F EC               [12] 2410 	mov	a,r4
      000B10 2C               [12] 2411 	add	a,r4
                                   2412 ;	src/main.c:553: case STATE_MOTOR_STOP1 :
      000B11 90 0B 15         [24] 2413 	mov	dptr,#00158$
      000B14 73               [24] 2414 	jmp	@a+dptr
      000B15                       2415 00158$:
      000B15 80 06            [24] 2416 	sjmp	00107$
      000B17 80 0F            [24] 2417 	sjmp	00108$
      000B19 80 18            [24] 2418 	sjmp	00109$
      000B1B 80 21            [24] 2419 	sjmp	00110$
      000B1D                       2420 00107$:
                                   2421 ;	src/main.c:554: MOTOR_CCW = 0;
                                   2422 ;	assignBit
      000B1D C2 81            [12] 2423 	clr	_P01
                                   2424 ;	src/main.c:555: MOTOR_CW = 0 ;
                                   2425 ;	assignBit
      000B1F C2 80            [12] 2426 	clr	_P00
                                   2427 ;	src/main.c:556: gu8MotorState = STATE_MOTOR_CW;
      000B21 90 00 1D         [24] 2428 	mov	dptr,#_gu8MotorState
      000B24 74 01            [12] 2429 	mov	a,#0x01
      000B26 F0               [24] 2430 	movx	@dptr,a
                                   2431 ;	src/main.c:557: break;
      000B27 22               [24] 2432 	ret
                                   2433 ;	src/main.c:558: case STATE_MOTOR_CW :
      000B28                       2434 00108$:
                                   2435 ;	src/main.c:559: MOTOR_CCW = 0;
                                   2436 ;	assignBit
      000B28 C2 81            [12] 2437 	clr	_P01
                                   2438 ;	src/main.c:560: MOTOR_CW = 1 ;
                                   2439 ;	assignBit
      000B2A D2 80            [12] 2440 	setb	_P00
                                   2441 ;	src/main.c:561: gu8MotorState = STATE_MOTOR_STOP2;
      000B2C 90 00 1D         [24] 2442 	mov	dptr,#_gu8MotorState
      000B2F 74 02            [12] 2443 	mov	a,#0x02
      000B31 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	src/main.c:562: break;
      000B32 22               [24] 2446 	ret
                                   2447 ;	src/main.c:563: case STATE_MOTOR_STOP2 :
      000B33                       2448 00109$:
                                   2449 ;	src/main.c:564: MOTOR_CCW = 1;
                                   2450 ;	assignBit
      000B33 D2 81            [12] 2451 	setb	_P01
                                   2452 ;	src/main.c:565: MOTOR_CW = 1 ;
                                   2453 ;	assignBit
      000B35 D2 80            [12] 2454 	setb	_P00
                                   2455 ;	src/main.c:566: gu8MotorState = STATE_MOTOR_CCW;
      000B37 90 00 1D         [24] 2456 	mov	dptr,#_gu8MotorState
      000B3A 74 03            [12] 2457 	mov	a,#0x03
      000B3C F0               [24] 2458 	movx	@dptr,a
                                   2459 ;	src/main.c:567: break;
      000B3D 22               [24] 2460 	ret
                                   2461 ;	src/main.c:568: case STATE_MOTOR_CCW :
      000B3E                       2462 00110$:
                                   2463 ;	src/main.c:569: MOTOR_CCW = 1;
                                   2464 ;	assignBit
      000B3E D2 81            [12] 2465 	setb	_P01
                                   2466 ;	src/main.c:570: MOTOR_CW = 0 ;
                                   2467 ;	assignBit
      000B40 C2 80            [12] 2468 	clr	_P00
                                   2469 ;	src/main.c:571: gu8MotorState = STATE_MOTOR_STOP1;
      000B42 90 00 1D         [24] 2470 	mov	dptr,#_gu8MotorState
      000B45 E4               [12] 2471 	clr	a
      000B46 F0               [24] 2472 	movx	@dptr,a
                                   2473 ;	src/main.c:574: break;
      000B47 22               [24] 2474 	ret
                                   2475 ;	src/main.c:575: case Type_UpLinkTest :
      000B48                       2476 00112$:
                                   2477 ;	src/main.c:581: gu8UART = 0;
      000B48 75 11 00         [24] 2478 	mov	_gu8UART,#0x00
                                   2479 ;	src/main.c:582: UINT32  u32Tmp = apstLineFiPkt->pu8Data[0];
      000B4B 74 05            [12] 2480 	mov	a,#0x05
      000B4D 2D               [12] 2481 	add	a,r5
      000B4E FD               [12] 2482 	mov	r5,a
      000B4F E4               [12] 2483 	clr	a
      000B50 3E               [12] 2484 	addc	a,r6
      000B51 FE               [12] 2485 	mov	r6,a
      000B52 8D 82            [24] 2486 	mov	dpl,r5
      000B54 8E 83            [24] 2487 	mov	dph,r6
      000B56 8F F0            [24] 2488 	mov	b,r7
      000B58 12 37 EE         [24] 2489 	lcall	__gptrget
      000B5B F5 2A            [12] 2490 	mov	_process_all_packet_sloc0_1_0,a
      000B5D A3               [24] 2491 	inc	dptr
      000B5E 12 37 EE         [24] 2492 	lcall	__gptrget
      000B61 F5 2B            [12] 2493 	mov	(_process_all_packet_sloc0_1_0 + 1),a
      000B63 A3               [24] 2494 	inc	dptr
      000B64 12 37 EE         [24] 2495 	lcall	__gptrget
      000B67 F5 2C            [12] 2496 	mov	(_process_all_packet_sloc0_1_0 + 2),a
      000B69 85 2A 82         [24] 2497 	mov	dpl,_process_all_packet_sloc0_1_0
      000B6C 85 2B 83         [24] 2498 	mov	dph,(_process_all_packet_sloc0_1_0 + 1)
      000B6F 85 2C F0         [24] 2499 	mov	b,(_process_all_packet_sloc0_1_0 + 2)
      000B72 12 37 EE         [24] 2500 	lcall	__gptrget
      000B75 F8               [12] 2501 	mov	r0,a
      000B76 79 00            [12] 2502 	mov	r1,#0x00
      000B78 7B 00            [12] 2503 	mov	r3,#0x00
      000B7A 7C 00            [12] 2504 	mov	r4,#0x00
                                   2505 ;	src/main.c:583: u32Tmp <<= 8;
      000B7C 8B 30            [24] 2506 	mov	(_process_all_packet_sloc1_1_0 + 3),r3
      000B7E 89 2F            [24] 2507 	mov	(_process_all_packet_sloc1_1_0 + 2),r1
      000B80 88 2E            [24] 2508 	mov	(_process_all_packet_sloc1_1_0 + 1),r0
                                   2509 ;	1-genFromRTrack replaced	mov	_process_all_packet_sloc1_1_0,#0x00
      000B82 8C 2D            [24] 2510 	mov	_process_all_packet_sloc1_1_0,r4
                                   2511 ;	src/main.c:584: u32Tmp |= apstLineFiPkt->pu8Data[1];
      000B84 74 01            [12] 2512 	mov	a,#0x01
      000B86 25 2A            [12] 2513 	add	a,_process_all_packet_sloc0_1_0
      000B88 FA               [12] 2514 	mov	r2,a
      000B89 E4               [12] 2515 	clr	a
      000B8A 35 2B            [12] 2516 	addc	a,(_process_all_packet_sloc0_1_0 + 1)
      000B8C FB               [12] 2517 	mov	r3,a
      000B8D AC 2C            [24] 2518 	mov	r4,(_process_all_packet_sloc0_1_0 + 2)
      000B8F 8A 82            [24] 2519 	mov	dpl,r2
      000B91 8B 83            [24] 2520 	mov	dph,r3
      000B93 8C F0            [24] 2521 	mov	b,r4
      000B95 12 37 EE         [24] 2522 	lcall	__gptrget
      000B98 F9               [12] 2523 	mov	r1,a
      000B99 E4               [12] 2524 	clr	a
      000B9A FA               [12] 2525 	mov	r2,a
      000B9B FB               [12] 2526 	mov	r3,a
      000B9C FC               [12] 2527 	mov	r4,a
      000B9D E5 2D            [12] 2528 	mov	a,_process_all_packet_sloc1_1_0
      000B9F 42 01            [12] 2529 	orl	ar1,a
      000BA1 E5 2E            [12] 2530 	mov	a,(_process_all_packet_sloc1_1_0 + 1)
      000BA3 42 02            [12] 2531 	orl	ar2,a
      000BA5 E5 2F            [12] 2532 	mov	a,(_process_all_packet_sloc1_1_0 + 2)
      000BA7 42 03            [12] 2533 	orl	ar3,a
      000BA9 E5 30            [12] 2534 	mov	a,(_process_all_packet_sloc1_1_0 + 3)
      000BAB 42 04            [12] 2535 	orl	ar4,a
                                   2536 ;	src/main.c:585: u32Tmp <<= 8;
      000BAD 8B 30            [24] 2537 	mov	(_process_all_packet_sloc1_1_0 + 3),r3
      000BAF 8A 2F            [24] 2538 	mov	(_process_all_packet_sloc1_1_0 + 2),r2
      000BB1 89 2E            [24] 2539 	mov	(_process_all_packet_sloc1_1_0 + 1),r1
      000BB3 75 2D 00         [24] 2540 	mov	_process_all_packet_sloc1_1_0,#0x00
                                   2541 ;	src/main.c:586: u32Tmp |= apstLineFiPkt->pu8Data[2];
      000BB6 74 02            [12] 2542 	mov	a,#0x02
      000BB8 25 2A            [12] 2543 	add	a,_process_all_packet_sloc0_1_0
      000BBA F8               [12] 2544 	mov	r0,a
      000BBB E4               [12] 2545 	clr	a
      000BBC 35 2B            [12] 2546 	addc	a,(_process_all_packet_sloc0_1_0 + 1)
      000BBE FB               [12] 2547 	mov	r3,a
      000BBF AC 2C            [24] 2548 	mov	r4,(_process_all_packet_sloc0_1_0 + 2)
      000BC1 88 82            [24] 2549 	mov	dpl,r0
      000BC3 8B 83            [24] 2550 	mov	dph,r3
      000BC5 8C F0            [24] 2551 	mov	b,r4
      000BC7 12 37 EE         [24] 2552 	lcall	__gptrget
      000BCA F8               [12] 2553 	mov	r0,a
      000BCB E4               [12] 2554 	clr	a
      000BCC FC               [12] 2555 	mov	r4,a
      000BCD FB               [12] 2556 	mov	r3,a
      000BCE FA               [12] 2557 	mov	r2,a
      000BCF E5 2D            [12] 2558 	mov	a,_process_all_packet_sloc1_1_0
      000BD1 42 00            [12] 2559 	orl	ar0,a
      000BD3 E5 2E            [12] 2560 	mov	a,(_process_all_packet_sloc1_1_0 + 1)
      000BD5 42 04            [12] 2561 	orl	ar4,a
      000BD7 E5 2F            [12] 2562 	mov	a,(_process_all_packet_sloc1_1_0 + 2)
      000BD9 42 03            [12] 2563 	orl	ar3,a
      000BDB E5 30            [12] 2564 	mov	a,(_process_all_packet_sloc1_1_0 + 3)
      000BDD 42 02            [12] 2565 	orl	ar2,a
                                   2566 ;	src/main.c:588: printf_fast_f("uart speed: %lu", u32Tmp);
      000BDF C0 07            [24] 2567 	push	ar7
      000BE1 C0 06            [24] 2568 	push	ar6
      000BE3 C0 05            [24] 2569 	push	ar5
      000BE5 C0 04            [24] 2570 	push	ar4
      000BE7 C0 03            [24] 2571 	push	ar3
      000BE9 C0 02            [24] 2572 	push	ar2
      000BEB C0 00            [24] 2573 	push	ar0
      000BED C0 00            [24] 2574 	push	ar0
      000BEF C0 04            [24] 2575 	push	ar4
      000BF1 C0 03            [24] 2576 	push	ar3
      000BF3 C0 02            [24] 2577 	push	ar2
      000BF5 74 0D            [12] 2578 	mov	a,#___str_26
      000BF7 C0 E0            [24] 2579 	push	acc
      000BF9 74 3A            [12] 2580 	mov	a,#(___str_26 >> 8)
      000BFB C0 E0            [24] 2581 	push	acc
      000BFD 12 31 60         [24] 2582 	lcall	_printf_fast_f
      000C00 E5 81            [12] 2583 	mov	a,sp
      000C02 24 FA            [12] 2584 	add	a,#0xfa
      000C04 F5 81            [12] 2585 	mov	sp,a
      000C06 D0 00            [24] 2586 	pop	ar0
      000C08 D0 02            [24] 2587 	pop	ar2
      000C0A D0 03            [24] 2588 	pop	ar3
      000C0C D0 04            [24] 2589 	pop	ar4
                                   2590 ;	src/main.c:589: set_linefi_uplink_speed(u32Tmp);
      000C0E 88 82            [24] 2591 	mov	dpl,r0
      000C10 8C 83            [24] 2592 	mov	dph,r4
      000C12 8B F0            [24] 2593 	mov	b,r3
      000C14 EA               [12] 2594 	mov	a,r2
      000C15 12 2C C1         [24] 2595 	lcall	_set_linefi_uplink_speed
      000C18 D0 05            [24] 2596 	pop	ar5
      000C1A D0 06            [24] 2597 	pop	ar6
      000C1C D0 07            [24] 2598 	pop	ar7
                                   2599 ;	src/main.c:594: apstLineFiPkt->pu8Data[2]);
      000C1E 8D 82            [24] 2600 	mov	dpl,r5
      000C20 8E 83            [24] 2601 	mov	dph,r6
      000C22 8F F0            [24] 2602 	mov	b,r7
      000C24 12 37 EE         [24] 2603 	lcall	__gptrget
      000C27 F5 2D            [12] 2604 	mov	_process_all_packet_sloc1_1_0,a
      000C29 A3               [24] 2605 	inc	dptr
      000C2A 12 37 EE         [24] 2606 	lcall	__gptrget
      000C2D F5 2E            [12] 2607 	mov	(_process_all_packet_sloc1_1_0 + 1),a
      000C2F A3               [24] 2608 	inc	dptr
      000C30 12 37 EE         [24] 2609 	lcall	__gptrget
      000C33 F5 2F            [12] 2610 	mov	(_process_all_packet_sloc1_1_0 + 2),a
      000C35 74 02            [12] 2611 	mov	a,#0x02
      000C37 25 2D            [12] 2612 	add	a,_process_all_packet_sloc1_1_0
      000C39 F8               [12] 2613 	mov	r0,a
      000C3A E4               [12] 2614 	clr	a
      000C3B 35 2E            [12] 2615 	addc	a,(_process_all_packet_sloc1_1_0 + 1)
      000C3D F9               [12] 2616 	mov	r1,a
      000C3E AC 2F            [24] 2617 	mov	r4,(_process_all_packet_sloc1_1_0 + 2)
      000C40 88 82            [24] 2618 	mov	dpl,r0
      000C42 89 83            [24] 2619 	mov	dph,r1
      000C44 8C F0            [24] 2620 	mov	b,r4
      000C46 12 37 EE         [24] 2621 	lcall	__gptrget
      000C49 F8               [12] 2622 	mov	r0,a
      000C4A 7C 00            [12] 2623 	mov	r4,#0x00
                                   2624 ;	src/main.c:593: apstLineFiPkt->pu8Data[1] ,
      000C4C 74 01            [12] 2625 	mov	a,#0x01
      000C4E 25 2D            [12] 2626 	add	a,_process_all_packet_sloc1_1_0
      000C50 F9               [12] 2627 	mov	r1,a
      000C51 E4               [12] 2628 	clr	a
      000C52 35 2E            [12] 2629 	addc	a,(_process_all_packet_sloc1_1_0 + 1)
      000C54 FA               [12] 2630 	mov	r2,a
      000C55 AB 2F            [24] 2631 	mov	r3,(_process_all_packet_sloc1_1_0 + 2)
      000C57 89 82            [24] 2632 	mov	dpl,r1
      000C59 8A 83            [24] 2633 	mov	dph,r2
      000C5B 8B F0            [24] 2634 	mov	b,r3
      000C5D 12 37 EE         [24] 2635 	lcall	__gptrget
      000C60 F9               [12] 2636 	mov	r1,a
      000C61 89 2A            [24] 2637 	mov	_process_all_packet_sloc0_1_0,r1
                                   2638 ;	1-genFromRTrack replaced	mov	(_process_all_packet_sloc0_1_0 + 1),#0x00
      000C63 8C 2B            [24] 2639 	mov	(_process_all_packet_sloc0_1_0 + 1),r4
                                   2640 ;	src/main.c:592: apstLineFiPkt->pu8Data[0] ,
      000C65 85 2D 82         [24] 2641 	mov	dpl,_process_all_packet_sloc1_1_0
      000C68 85 2E 83         [24] 2642 	mov	dph,(_process_all_packet_sloc1_1_0 + 1)
      000C6B 85 2F F0         [24] 2643 	mov	b,(_process_all_packet_sloc1_1_0 + 2)
      000C6E 12 37 EE         [24] 2644 	lcall	__gptrget
      000C71 FA               [12] 2645 	mov	r2,a
      000C72 7B 00            [12] 2646 	mov	r3,#0x00
                                   2647 ;	src/main.c:591: printf_fast_f("(%x,%x,%x)\n\r", 
      000C74 C0 07            [24] 2648 	push	ar7
      000C76 C0 06            [24] 2649 	push	ar6
      000C78 C0 05            [24] 2650 	push	ar5
      000C7A C0 00            [24] 2651 	push	ar0
      000C7C C0 04            [24] 2652 	push	ar4
      000C7E C0 2A            [24] 2653 	push	_process_all_packet_sloc0_1_0
      000C80 C0 2B            [24] 2654 	push	(_process_all_packet_sloc0_1_0 + 1)
      000C82 C0 02            [24] 2655 	push	ar2
      000C84 C0 03            [24] 2656 	push	ar3
      000C86 74 1D            [12] 2657 	mov	a,#___str_27
      000C88 C0 E0            [24] 2658 	push	acc
      000C8A 74 3A            [12] 2659 	mov	a,#(___str_27 >> 8)
      000C8C C0 E0            [24] 2660 	push	acc
      000C8E 12 31 60         [24] 2661 	lcall	_printf_fast_f
      000C91 E5 81            [12] 2662 	mov	a,sp
      000C93 24 F8            [12] 2663 	add	a,#0xf8
      000C95 F5 81            [12] 2664 	mov	sp,a
      000C97 D0 05            [24] 2665 	pop	ar5
      000C99 D0 06            [24] 2666 	pop	ar6
      000C9B D0 07            [24] 2667 	pop	ar7
                                   2668 ;	src/main.c:597: set_uplink_test_mode((uplink_mode_t)(apstLineFiPkt->pu8Data[3]), apstLineFiPkt->pu8Data[4]);
      000C9D 8D 82            [24] 2669 	mov	dpl,r5
      000C9F 8E 83            [24] 2670 	mov	dph,r6
      000CA1 8F F0            [24] 2671 	mov	b,r7
      000CA3 12 37 EE         [24] 2672 	lcall	__gptrget
      000CA6 FD               [12] 2673 	mov	r5,a
      000CA7 A3               [24] 2674 	inc	dptr
      000CA8 12 37 EE         [24] 2675 	lcall	__gptrget
      000CAB FE               [12] 2676 	mov	r6,a
      000CAC A3               [24] 2677 	inc	dptr
      000CAD 12 37 EE         [24] 2678 	lcall	__gptrget
      000CB0 FF               [12] 2679 	mov	r7,a
      000CB1 74 03            [12] 2680 	mov	a,#0x03
      000CB3 2D               [12] 2681 	add	a,r5
      000CB4 FA               [12] 2682 	mov	r2,a
      000CB5 E4               [12] 2683 	clr	a
      000CB6 3E               [12] 2684 	addc	a,r6
      000CB7 FB               [12] 2685 	mov	r3,a
      000CB8 8F 04            [24] 2686 	mov	ar4,r7
      000CBA 8A 82            [24] 2687 	mov	dpl,r2
      000CBC 8B 83            [24] 2688 	mov	dph,r3
      000CBE 8C F0            [24] 2689 	mov	b,r4
      000CC0 12 37 EE         [24] 2690 	lcall	__gptrget
      000CC3 FA               [12] 2691 	mov	r2,a
      000CC4 74 04            [12] 2692 	mov	a,#0x04
      000CC6 2D               [12] 2693 	add	a,r5
      000CC7 FD               [12] 2694 	mov	r5,a
      000CC8 E4               [12] 2695 	clr	a
      000CC9 3E               [12] 2696 	addc	a,r6
      000CCA FE               [12] 2697 	mov	r6,a
      000CCB 8D 82            [24] 2698 	mov	dpl,r5
      000CCD 8E 83            [24] 2699 	mov	dph,r6
      000CCF 8F F0            [24] 2700 	mov	b,r7
      000CD1 12 37 EE         [24] 2701 	lcall	__gptrget
      000CD4 F5 29            [12] 2702 	mov	_set_uplink_test_mode_PARM_2,a
      000CD6 8A 82            [24] 2703 	mov	dpl,r2
                                   2704 ;	src/main.c:599: }
                                   2705 ;	src/main.c:600: }
      000CD8 02 0A 3C         [24] 2706 	ljmp	_set_uplink_test_mode
                                   2707 ;------------------------------------------------------------
                                   2708 ;Allocation info for local variables in function 'get_uart0_char_nb'
                                   2709 ;------------------------------------------------------------
                                   2710 ;apcResult                 Allocated to registers r5 r6 r7 
                                   2711 ;------------------------------------------------------------
                                   2712 ;	src/main.c:602: char get_uart0_char_nb(char * apcResult)
                                   2713 ;	-----------------------------------------
                                   2714 ;	 function get_uart0_char_nb
                                   2715 ;	-----------------------------------------
      000CDB                       2716 _get_uart0_char_nb:
                                   2717 ;	src/main.c:607: return getchar_uart0(apcResult);
                                   2718 ;	src/main.c:609: }
      000CDB 02 2D D5         [24] 2719 	ljmp	_getchar_uart0
                                   2720 ;------------------------------------------------------------
                                   2721 ;Allocation info for local variables in function 'i2c_setup'
                                   2722 ;------------------------------------------------------------
                                   2723 ;	src/main.c:611: void i2c_setup()
                                   2724 ;	-----------------------------------------
                                   2725 ;	 function i2c_setup
                                   2726 ;	-----------------------------------------
      000CDE                       2727 _i2c_setup:
                                   2728 ;	src/main.c:616: P13_OpenDrain_Mode;
      000CDE 43 B3 08         [24] 2729 	orl	_P1M1,#0x08
      000CE1 43 B4 08         [24] 2730 	orl	_P1M2,#0x08
                                   2731 ;	src/main.c:617: P14_OpenDrain_Mode;
      000CE4 43 B3 10         [24] 2732 	orl	_P1M1,#0x10
      000CE7 43 B4 10         [24] 2733 	orl	_P1M2,#0x10
                                   2734 ;	src/main.c:626: I2CPX = 0;  // Assign SCL to P1.3 and SDA to P1.4
                                   2735 ;	assignBit
      000CEA C2 C0            [12] 2736 	clr	_I2CPX
                                   2737 ;	src/main.c:631: set_EI2C;
      000CEC 43 9B 01         [24] 2738 	orl	_EIE,#0x01
                                   2739 ;	src/main.c:632: set_EA;
                                   2740 ;	assignBit
      000CEF D2 AF            [12] 2741 	setb	_EA
                                   2742 ;	src/main.c:636: }
      000CF1 22               [24] 2743 	ret
                                   2744 ;------------------------------------------------------------
                                   2745 ;Allocation info for local variables in function 'i2c_write_bitbanging'
                                   2746 ;------------------------------------------------------------
                                   2747 ;au8Data                   Allocated to registers r7 
                                   2748 ;i                         Allocated to registers r6 
                                   2749 ;u8Ack                     Allocated to registers 
                                   2750 ;------------------------------------------------------------
                                   2751 ;	src/main.c:641: UINT8 i2c_write_bitbanging(UINT8 au8Data)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function i2c_write_bitbanging
                                   2754 ;	-----------------------------------------
      000CF2                       2755 _i2c_write_bitbanging:
      000CF2 AF 82            [24] 2756 	mov	r7,dpl
                                   2757 ;	src/main.c:650: SDA_PIN = 0;
                                   2758 ;	assignBit
      000CF4 C2 94            [12] 2759 	clr	_P14
                                   2760 ;	src/main.c:651: SCL_PIN = 0;
                                   2761 ;	assignBit
      000CF6 C2 93            [12] 2762 	clr	_P13
                                   2763 ;	src/main.c:653: for (i=0;i<8;i++) {
      000CF8 7E 00            [12] 2764 	mov	r6,#0x00
      000CFA                       2765 00102$:
                                   2766 ;	src/main.c:654: SDA_PIN = (au8Data>>(7-i))&1;
      000CFA 74 07            [12] 2767 	mov	a,#0x07
      000CFC C3               [12] 2768 	clr	c
      000CFD 9E               [12] 2769 	subb	a,r6
      000CFE F5 F0            [12] 2770 	mov	b,a
      000D00 05 F0            [12] 2771 	inc	b
      000D02 EF               [12] 2772 	mov	a,r7
      000D03 80 02            [24] 2773 	sjmp	00116$
      000D05                       2774 00115$:
      000D05 C3               [12] 2775 	clr	c
      000D06 13               [12] 2776 	rrc	a
      000D07                       2777 00116$:
      000D07 D5 F0 FB         [24] 2778 	djnz	b,00115$
      000D0A 54 01            [12] 2779 	anl	a,#0x01
      000D0C 24 FF            [12] 2780 	add	a,#0xff
      000D0E 92 94            [24] 2781 	mov	_P14,c
                                   2782 ;	src/main.c:655: SCL_PIN = 1;
                                   2783 ;	assignBit
      000D10 D2 93            [12] 2784 	setb	_P13
                                   2785 ;	src/main.c:656: SCL_PIN = 0;
                                   2786 ;	assignBit
      000D12 C2 93            [12] 2787 	clr	_P13
                                   2788 ;	src/main.c:653: for (i=0;i<8;i++) {
      000D14 0E               [12] 2789 	inc	r6
      000D15 BE 08 00         [24] 2790 	cjne	r6,#0x08,00117$
      000D18                       2791 00117$:
      000D18 40 E0            [24] 2792 	jc	00102$
                                   2793 ;	src/main.c:659: SDA_PIN = 1;
                                   2794 ;	assignBit
      000D1A D2 94            [12] 2795 	setb	_P14
                                   2796 ;	src/main.c:660: SCL_PIN = 1;
                                   2797 ;	assignBit
      000D1C D2 93            [12] 2798 	setb	_P13
                                   2799 ;	src/main.c:661: u8Ack = SDA_PIN;
      000D1E A2 94            [12] 2800 	mov	c,_P14
      000D20 E4               [12] 2801 	clr	a
      000D21 33               [12] 2802 	rlc	a
      000D22 F5 82            [12] 2803 	mov	dpl,a
                                   2804 ;	src/main.c:662: SCL_PIN = 0;
                                   2805 ;	assignBit
      000D24 C2 93            [12] 2806 	clr	_P13
                                   2807 ;	src/main.c:665: return u8Ack;
                                   2808 ;	src/main.c:666: }
      000D26 22               [24] 2809 	ret
                                   2810 ;------------------------------------------------------------
                                   2811 ;Allocation info for local variables in function 'i2c_read_bitbanging'
                                   2812 ;------------------------------------------------------------
                                   2813 ;i                         Allocated to registers r6 
                                   2814 ;u8Data                    Allocated to registers r7 
                                   2815 ;------------------------------------------------------------
                                   2816 ;	src/main.c:668: UINT8 i2c_read_bitbanging()
                                   2817 ;	-----------------------------------------
                                   2818 ;	 function i2c_read_bitbanging
                                   2819 ;	-----------------------------------------
      000D27                       2820 _i2c_read_bitbanging:
                                   2821 ;	src/main.c:675: UINT8 u8Data = 0;
      000D27 7F 00            [12] 2822 	mov	r7,#0x00
                                   2823 ;	src/main.c:677: SDA_PIN = 1;
                                   2824 ;	assignBit
      000D29 D2 94            [12] 2825 	setb	_P14
                                   2826 ;	src/main.c:678: SCL_PIN = 0;
                                   2827 ;	assignBit
      000D2B C2 93            [12] 2828 	clr	_P13
                                   2829 ;	src/main.c:680: for (i=0;i<8;i++) {
      000D2D 7E 00            [12] 2830 	mov	r6,#0x00
      000D2F                       2831 00102$:
                                   2832 ;	src/main.c:681: SCL_PIN = 1;
                                   2833 ;	assignBit
      000D2F D2 93            [12] 2834 	setb	_P13
                                   2835 ;	src/main.c:682: u8Data |= (SDA_PIN<<(7-i));
      000D31 A2 94            [12] 2836 	mov	c,_P14
      000D33 E4               [12] 2837 	clr	a
      000D34 33               [12] 2838 	rlc	a
      000D35 FD               [12] 2839 	mov	r5,a
      000D36 8E 04            [24] 2840 	mov	ar4,r6
      000D38 74 07            [12] 2841 	mov	a,#0x07
      000D3A C3               [12] 2842 	clr	c
      000D3B 9C               [12] 2843 	subb	a,r4
      000D3C FC               [12] 2844 	mov	r4,a
      000D3D 8C F0            [24] 2845 	mov	b,r4
      000D3F 05 F0            [12] 2846 	inc	b
      000D41 ED               [12] 2847 	mov	a,r5
      000D42 80 02            [24] 2848 	sjmp	00117$
      000D44                       2849 00115$:
      000D44 25 E0            [12] 2850 	add	a,acc
      000D46                       2851 00117$:
      000D46 D5 F0 FB         [24] 2852 	djnz	b,00115$
      000D49 42 07            [12] 2853 	orl	ar7,a
                                   2854 ;	src/main.c:683: SCL_PIN = 0;
                                   2855 ;	assignBit
      000D4B C2 93            [12] 2856 	clr	_P13
                                   2857 ;	src/main.c:680: for (i=0;i<8;i++) {
      000D4D 0E               [12] 2858 	inc	r6
      000D4E BE 08 00         [24] 2859 	cjne	r6,#0x08,00118$
      000D51                       2860 00118$:
      000D51 40 DC            [24] 2861 	jc	00102$
                                   2862 ;	src/main.c:686: SDA_PIN = 0;
                                   2863 ;	assignBit
      000D53 C2 94            [12] 2864 	clr	_P14
                                   2865 ;	src/main.c:687: SCL_PIN = 1;
                                   2866 ;	assignBit
      000D55 D2 93            [12] 2867 	setb	_P13
                                   2868 ;	src/main.c:688: SCL_PIN = 0;
                                   2869 ;	assignBit
      000D57 C2 93            [12] 2870 	clr	_P13
                                   2871 ;	src/main.c:689: SDA_PIN = 1;
                                   2872 ;	assignBit
      000D59 D2 94            [12] 2873 	setb	_P14
                                   2874 ;	src/main.c:691: return u8Data;
      000D5B 8F 82            [24] 2875 	mov	dpl,r7
                                   2876 ;	src/main.c:692: }
      000D5D 22               [24] 2877 	ret
                                   2878 ;------------------------------------------------------------
                                   2879 ;Allocation info for local variables in function 'i2c_address_bitbanging'
                                   2880 ;------------------------------------------------------------
                                   2881 ;au8RW                     Allocated with name '_i2c_address_bitbanging_PARM_2'
                                   2882 ;au8Addr                   Allocated to registers r7 
                                   2883 ;u8Data                    Allocated to registers 
                                   2884 ;------------------------------------------------------------
                                   2885 ;	src/main.c:696: UINT8 i2c_address_bitbanging(UINT8 au8Addr, UINT8 au8RW)
                                   2886 ;	-----------------------------------------
                                   2887 ;	 function i2c_address_bitbanging
                                   2888 ;	-----------------------------------------
      000D5E                       2889 _i2c_address_bitbanging:
                                   2890 ;	src/main.c:705: u8Data = i2c_write_bitbanging((au8Addr<<1) | au8RW);
      000D5E E5 82            [12] 2891 	mov	a,dpl
      000D60 25 82            [12] 2892 	add	a,dpl
      000D62 FF               [12] 2893 	mov	r7,a
      000D63 E5 31            [12] 2894 	mov	a,_i2c_address_bitbanging_PARM_2
      000D65 4F               [12] 2895 	orl	a,r7
      000D66 F5 82            [12] 2896 	mov	dpl,a
                                   2897 ;	src/main.c:706: return u8Data;
                                   2898 ;	src/main.c:707: }
      000D68 02 0C F2         [24] 2899 	ljmp	_i2c_write_bitbanging
                                   2900 ;------------------------------------------------------------
                                   2901 ;Allocation info for local variables in function 'i2c_write_bytes_bitbannging'
                                   2902 ;------------------------------------------------------------
                                   2903 ;au8Size                   Allocated with name '_i2c_write_bytes_bitbannging_PARM_2'
                                   2904 ;apu8Data                  Allocated with name '_i2c_write_bytes_bitbannging_PARM_3'
                                   2905 ;au8Addr                   Allocated to registers r7 
                                   2906 ;i                         Allocated to registers r7 
                                   2907 ;------------------------------------------------------------
                                   2908 ;	src/main.c:709: void i2c_write_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function i2c_write_bytes_bitbannging
                                   2911 ;	-----------------------------------------
      000D6B                       2912 _i2c_write_bytes_bitbannging:
                                   2913 ;	src/main.c:713: i2c_address_bitbanging(au8Addr, I2C_W);
      000D6B 75 31 00         [24] 2914 	mov	_i2c_address_bitbanging_PARM_2,#0x00
      000D6E 12 0D 5E         [24] 2915 	lcall	_i2c_address_bitbanging
                                   2916 ;	src/main.c:714: for (i=0;i<au8Size;i++) {
      000D71 7F 00            [12] 2917 	mov	r7,#0x00
      000D73                       2918 00103$:
      000D73 C3               [12] 2919 	clr	c
      000D74 EF               [12] 2920 	mov	a,r7
      000D75 95 32            [12] 2921 	subb	a,_i2c_write_bytes_bitbannging_PARM_2
      000D77 50 1F            [24] 2922 	jnc	00101$
                                   2923 ;	src/main.c:715: i2c_write_bitbanging(apu8Data[i]);
      000D79 EF               [12] 2924 	mov	a,r7
      000D7A 25 33            [12] 2925 	add	a,_i2c_write_bytes_bitbannging_PARM_3
      000D7C FC               [12] 2926 	mov	r4,a
      000D7D E4               [12] 2927 	clr	a
      000D7E 35 34            [12] 2928 	addc	a,(_i2c_write_bytes_bitbannging_PARM_3 + 1)
      000D80 FD               [12] 2929 	mov	r5,a
      000D81 AE 35            [24] 2930 	mov	r6,(_i2c_write_bytes_bitbannging_PARM_3 + 2)
      000D83 8C 82            [24] 2931 	mov	dpl,r4
      000D85 8D 83            [24] 2932 	mov	dph,r5
      000D87 8E F0            [24] 2933 	mov	b,r6
      000D89 12 37 EE         [24] 2934 	lcall	__gptrget
      000D8C F5 82            [12] 2935 	mov	dpl,a
      000D8E C0 07            [24] 2936 	push	ar7
      000D90 12 0C F2         [24] 2937 	lcall	_i2c_write_bitbanging
      000D93 D0 07            [24] 2938 	pop	ar7
                                   2939 ;	src/main.c:714: for (i=0;i<au8Size;i++) {
      000D95 0F               [12] 2940 	inc	r7
      000D96 80 DB            [24] 2941 	sjmp	00103$
      000D98                       2942 00101$:
                                   2943 ;	src/main.c:717: SDA_PIN = 1;
                                   2944 ;	assignBit
      000D98 D2 94            [12] 2945 	setb	_P14
                                   2946 ;	src/main.c:718: SCL_PIN = 1;
                                   2947 ;	assignBit
      000D9A D2 93            [12] 2948 	setb	_P13
                                   2949 ;	src/main.c:719: }
      000D9C 22               [24] 2950 	ret
                                   2951 ;------------------------------------------------------------
                                   2952 ;Allocation info for local variables in function 'i2c_read_bytes_bitbannging'
                                   2953 ;------------------------------------------------------------
                                   2954 ;au8Size                   Allocated with name '_i2c_read_bytes_bitbannging_PARM_2'
                                   2955 ;apu8Data                  Allocated with name '_i2c_read_bytes_bitbannging_PARM_3'
                                   2956 ;au8Addr                   Allocated to registers r7 
                                   2957 ;i                         Allocated to registers r7 
                                   2958 ;------------------------------------------------------------
                                   2959 ;	src/main.c:721: void i2c_read_bytes_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
                                   2960 ;	-----------------------------------------
                                   2961 ;	 function i2c_read_bytes_bitbannging
                                   2962 ;	-----------------------------------------
      000D9D                       2963 _i2c_read_bytes_bitbannging:
                                   2964 ;	src/main.c:724: i2c_address_bitbanging(au8Addr, I2C_R);
      000D9D 75 31 01         [24] 2965 	mov	_i2c_address_bitbanging_PARM_2,#0x01
      000DA0 12 0D 5E         [24] 2966 	lcall	_i2c_address_bitbanging
                                   2967 ;	src/main.c:725: for (i=0;i<au8Size;i++) {
      000DA3 7F 00            [12] 2968 	mov	r7,#0x00
      000DA5                       2969 00103$:
      000DA5 C3               [12] 2970 	clr	c
      000DA6 EF               [12] 2971 	mov	a,r7
      000DA7 95 36            [12] 2972 	subb	a,_i2c_read_bytes_bitbannging_PARM_2
      000DA9 50 2C            [24] 2973 	jnc	00101$
                                   2974 ;	src/main.c:726: apu8Data[i] = i2c_read_bitbanging();
      000DAB EF               [12] 2975 	mov	a,r7
      000DAC 25 37            [12] 2976 	add	a,_i2c_read_bytes_bitbannging_PARM_3
      000DAE FC               [12] 2977 	mov	r4,a
      000DAF E4               [12] 2978 	clr	a
      000DB0 35 38            [12] 2979 	addc	a,(_i2c_read_bytes_bitbannging_PARM_3 + 1)
      000DB2 FD               [12] 2980 	mov	r5,a
      000DB3 AE 39            [24] 2981 	mov	r6,(_i2c_read_bytes_bitbannging_PARM_3 + 2)
      000DB5 C0 07            [24] 2982 	push	ar7
      000DB7 C0 06            [24] 2983 	push	ar6
      000DB9 C0 05            [24] 2984 	push	ar5
      000DBB C0 04            [24] 2985 	push	ar4
      000DBD 12 0D 27         [24] 2986 	lcall	_i2c_read_bitbanging
      000DC0 AB 82            [24] 2987 	mov	r3,dpl
      000DC2 D0 04            [24] 2988 	pop	ar4
      000DC4 D0 05            [24] 2989 	pop	ar5
      000DC6 D0 06            [24] 2990 	pop	ar6
      000DC8 D0 07            [24] 2991 	pop	ar7
      000DCA 8C 82            [24] 2992 	mov	dpl,r4
      000DCC 8D 83            [24] 2993 	mov	dph,r5
      000DCE 8E F0            [24] 2994 	mov	b,r6
      000DD0 EB               [12] 2995 	mov	a,r3
      000DD1 12 36 89         [24] 2996 	lcall	__gptrput
                                   2997 ;	src/main.c:725: for (i=0;i<au8Size;i++) {
      000DD4 0F               [12] 2998 	inc	r7
      000DD5 80 CE            [24] 2999 	sjmp	00103$
      000DD7                       3000 00101$:
                                   3001 ;	src/main.c:728: SDA_PIN = 1;
                                   3002 ;	assignBit
      000DD7 D2 94            [12] 3003 	setb	_P14
                                   3004 ;	src/main.c:729: SCL_PIN = 1;
                                   3005 ;	assignBit
      000DD9 D2 93            [12] 3006 	setb	_P13
                                   3007 ;	src/main.c:730: }
      000DDB 22               [24] 3008 	ret
                                   3009 ;------------------------------------------------------------
                                   3010 ;Allocation info for local variables in function 'i2c_read_bytes_cs_bitbannging'
                                   3011 ;------------------------------------------------------------
                                   3012 ;au8Size                   Allocated with name '_i2c_read_bytes_cs_bitbannging_PARM_2'
                                   3013 ;apu8Data                  Allocated with name '_i2c_read_bytes_cs_bitbannging_PARM_3'
                                   3014 ;au8Addr                   Allocated to registers r7 
                                   3015 ;i                         Allocated to registers r7 
                                   3016 ;------------------------------------------------------------
                                   3017 ;	src/main.c:732: void i2c_read_bytes_cs_bitbannging(UINT8 au8Addr, UINT8 au8Size, UINT8 * apu8Data)
                                   3018 ;	-----------------------------------------
                                   3019 ;	 function i2c_read_bytes_cs_bitbannging
                                   3020 ;	-----------------------------------------
      000DDC                       3021 _i2c_read_bytes_cs_bitbannging:
                                   3022 ;	src/main.c:738: i2c_address_bitbanging(au8Addr, I2C_R);
      000DDC 75 31 01         [24] 3023 	mov	_i2c_address_bitbanging_PARM_2,#0x01
      000DDF 12 0D 5E         [24] 3024 	lcall	_i2c_address_bitbanging
                                   3025 ;	src/main.c:739: SCL_PIN = 1;
                                   3026 ;	assignBit
      000DE2 D2 93            [12] 3027 	setb	_P13
                                   3028 ;	src/main.c:741: while(SCL_PIN == 0);
      000DE4                       3029 00101$:
                                   3030 ;	src/main.c:743: SCL_PIN = 0;
                                   3031 ;	assignBit
      000DE4 10 93 02         [24] 3032 	jbc	_P13,00127$
      000DE7 80 FB            [24] 3033 	sjmp	00101$
      000DE9                       3034 00127$:
                                   3035 ;	src/main.c:744: for (i=0;i<au8Size;i++) {
      000DE9 7F 00            [12] 3036 	mov	r7,#0x00
      000DEB                       3037 00106$:
      000DEB C3               [12] 3038 	clr	c
      000DEC EF               [12] 3039 	mov	a,r7
      000DED 95 3A            [12] 3040 	subb	a,_i2c_read_bytes_cs_bitbannging_PARM_2
      000DEF 50 2C            [24] 3041 	jnc	00104$
                                   3042 ;	src/main.c:745: apu8Data[i] = i2c_read_bitbanging();
      000DF1 EF               [12] 3043 	mov	a,r7
      000DF2 25 3B            [12] 3044 	add	a,_i2c_read_bytes_cs_bitbannging_PARM_3
      000DF4 FC               [12] 3045 	mov	r4,a
      000DF5 E4               [12] 3046 	clr	a
      000DF6 35 3C            [12] 3047 	addc	a,(_i2c_read_bytes_cs_bitbannging_PARM_3 + 1)
      000DF8 FD               [12] 3048 	mov	r5,a
      000DF9 AE 3D            [24] 3049 	mov	r6,(_i2c_read_bytes_cs_bitbannging_PARM_3 + 2)
      000DFB C0 07            [24] 3050 	push	ar7
      000DFD C0 06            [24] 3051 	push	ar6
      000DFF C0 05            [24] 3052 	push	ar5
      000E01 C0 04            [24] 3053 	push	ar4
      000E03 12 0D 27         [24] 3054 	lcall	_i2c_read_bitbanging
      000E06 AB 82            [24] 3055 	mov	r3,dpl
      000E08 D0 04            [24] 3056 	pop	ar4
      000E0A D0 05            [24] 3057 	pop	ar5
      000E0C D0 06            [24] 3058 	pop	ar6
      000E0E D0 07            [24] 3059 	pop	ar7
      000E10 8C 82            [24] 3060 	mov	dpl,r4
      000E12 8D 83            [24] 3061 	mov	dph,r5
      000E14 8E F0            [24] 3062 	mov	b,r6
      000E16 EB               [12] 3063 	mov	a,r3
      000E17 12 36 89         [24] 3064 	lcall	__gptrput
                                   3065 ;	src/main.c:744: for (i=0;i<au8Size;i++) {
      000E1A 0F               [12] 3066 	inc	r7
      000E1B 80 CE            [24] 3067 	sjmp	00106$
      000E1D                       3068 00104$:
                                   3069 ;	src/main.c:747: SDA_PIN = 1;
                                   3070 ;	assignBit
      000E1D D2 94            [12] 3071 	setb	_P14
                                   3072 ;	src/main.c:748: SCL_PIN = 1;
                                   3073 ;	assignBit
      000E1F D2 93            [12] 3074 	setb	_P13
                                   3075 ;	src/main.c:749: }
      000E21 22               [24] 3076 	ret
                                   3077 ;------------------------------------------------------------
                                   3078 ;Allocation info for local variables in function 'calc_temp'
                                   3079 ;------------------------------------------------------------
                                   3080 ;au8Data2                  Allocated with name '_calc_temp_PARM_2'
                                   3081 ;au8Data1                  Allocated to registers r7 
                                   3082 ;u32Tmp                    Allocated to registers r4 r5 r6 r7 
                                   3083 ;------------------------------------------------------------
                                   3084 ;	src/main.c:752: UINT32 calc_temp(UINT8 au8Data1, UINT8 au8Data2)
                                   3085 ;	-----------------------------------------
                                   3086 ;	 function calc_temp
                                   3087 ;	-----------------------------------------
      000E22                       3088 _calc_temp:
                                   3089 ;	src/main.c:754: UINT32 u32Tmp = au8Data1*256 + au8Data2;
      000E22 AE 82            [24] 3090 	mov	r6,dpl
      000E24 7F 00            [12] 3091 	mov	r7,#0x00
      000E26 AC 3E            [24] 3092 	mov	r4,_calc_temp_PARM_2
      000E28 7D 00            [12] 3093 	mov	r5,#0x00
      000E2A EC               [12] 3094 	mov	a,r4
      000E2B 2F               [12] 3095 	add	a,r7
      000E2C FF               [12] 3096 	mov	r7,a
      000E2D ED               [12] 3097 	mov	a,r5
      000E2E 3E               [12] 3098 	addc	a,r6
      000E2F FE               [12] 3099 	mov	r6,a
      000E30 8F 19            [24] 3100 	mov	__mullong_PARM_2,r7
      000E32 EE               [12] 3101 	mov	a,r6
      000E33 F5 1A            [12] 3102 	mov	(__mullong_PARM_2 + 1),a
      000E35 33               [12] 3103 	rlc	a
      000E36 95 E0            [12] 3104 	subb	a,acc
      000E38 F5 1B            [12] 3105 	mov	(__mullong_PARM_2 + 2),a
      000E3A F5 1C            [12] 3106 	mov	(__mullong_PARM_2 + 3),a
                                   3107 ;	src/main.c:755: u32Tmp *= 17500;
      000E3C 90 44 5C         [24] 3108 	mov	dptr,#0x445c
      000E3F E4               [12] 3109 	clr	a
      000E40 F5 F0            [12] 3110 	mov	b,a
      000E42 12 37 80         [24] 3111 	lcall	__mullong
      000E45 AC 82            [24] 3112 	mov	r4,dpl
      000E47 AD 83            [24] 3113 	mov	r5,dph
      000E49 AE F0            [24] 3114 	mov	r6,b
      000E4B FF               [12] 3115 	mov	r7,a
                                   3116 ;	src/main.c:756: u32Tmp /= 65535;
      000E4C 75 19 FF         [24] 3117 	mov	__divulong_PARM_2,#0xff
      000E4F 75 1A FF         [24] 3118 	mov	(__divulong_PARM_2 + 1),#0xff
      000E52 E4               [12] 3119 	clr	a
      000E53 F5 1B            [12] 3120 	mov	(__divulong_PARM_2 + 2),a
      000E55 F5 1C            [12] 3121 	mov	(__divulong_PARM_2 + 3),a
      000E57 8C 82            [24] 3122 	mov	dpl,r4
      000E59 8D 83            [24] 3123 	mov	dph,r5
      000E5B 8E F0            [24] 3124 	mov	b,r6
      000E5D EF               [12] 3125 	mov	a,r7
      000E5E 12 35 E1         [24] 3126 	lcall	__divulong
      000E61 AC 82            [24] 3127 	mov	r4,dpl
      000E63 AD 83            [24] 3128 	mov	r5,dph
      000E65 AE F0            [24] 3129 	mov	r6,b
      000E67 FF               [12] 3130 	mov	r7,a
                                   3131 ;	src/main.c:757: u32Tmp += -4500;
      000E68 74 6C            [12] 3132 	mov	a,#0x6c
      000E6A 2C               [12] 3133 	add	a,r4
      000E6B FC               [12] 3134 	mov	r4,a
      000E6C 74 EE            [12] 3135 	mov	a,#0xee
      000E6E 3D               [12] 3136 	addc	a,r5
      000E6F FD               [12] 3137 	mov	r5,a
      000E70 74 FF            [12] 3138 	mov	a,#0xff
      000E72 3E               [12] 3139 	addc	a,r6
      000E73 FE               [12] 3140 	mov	r6,a
      000E74 74 FF            [12] 3141 	mov	a,#0xff
      000E76 3F               [12] 3142 	addc	a,r7
                                   3143 ;	src/main.c:758: return u32Tmp;
      000E77 8C 82            [24] 3144 	mov	dpl,r4
      000E79 8D 83            [24] 3145 	mov	dph,r5
      000E7B 8E F0            [24] 3146 	mov	b,r6
                                   3147 ;	src/main.c:759: }
      000E7D 22               [24] 3148 	ret
                                   3149 ;------------------------------------------------------------
                                   3150 ;Allocation info for local variables in function 'delay_nop'
                                   3151 ;------------------------------------------------------------
                                   3152 ;au16Delay                 Allocated to registers r6 r7 
                                   3153 ;i                         Allocated to registers r4 r5 
                                   3154 ;------------------------------------------------------------
                                   3155 ;	src/main.c:762: void delay_nop(UINT16 au16Delay)
                                   3156 ;	-----------------------------------------
                                   3157 ;	 function delay_nop
                                   3158 ;	-----------------------------------------
      000E7E                       3159 _delay_nop:
      000E7E AE 82            [24] 3160 	mov	r6,dpl
      000E80 AF 83            [24] 3161 	mov	r7,dph
                                   3162 ;	src/main.c:765: for (i=0;i<au16Delay;i++) {
      000E82 7C 00            [12] 3163 	mov	r4,#0x00
      000E84 7D 00            [12] 3164 	mov	r5,#0x00
      000E86                       3165 00103$:
      000E86 8C 02            [24] 3166 	mov	ar2,r4
      000E88 8D 03            [24] 3167 	mov	ar3,r5
      000E8A C3               [12] 3168 	clr	c
      000E8B EA               [12] 3169 	mov	a,r2
      000E8C 9E               [12] 3170 	subb	a,r6
      000E8D EB               [12] 3171 	mov	a,r3
      000E8E 9F               [12] 3172 	subb	a,r7
      000E8F 50 11            [24] 3173 	jnc	00105$
                                   3174 ;	src/main.c:766: nop; nop; nop; nop; nop;
      000E91 00               [12] 3175 	NOP
      000E92 00               [12] 3176 	NOP
      000E93 00               [12] 3177 	NOP
      000E94 00               [12] 3178 	NOP
      000E95 00               [12] 3179 	NOP
                                   3180 ;	src/main.c:767: nop; nop; nop; nop; nop;
      000E96 00               [12] 3181 	NOP
      000E97 00               [12] 3182 	NOP
      000E98 00               [12] 3183 	NOP
      000E99 00               [12] 3184 	NOP
      000E9A 00               [12] 3185 	NOP
                                   3186 ;	src/main.c:765: for (i=0;i<au16Delay;i++) {
      000E9B 0C               [12] 3187 	inc	r4
      000E9C BC 00 E7         [24] 3188 	cjne	r4,#0x00,00103$
      000E9F 0D               [12] 3189 	inc	r5
      000EA0 80 E4            [24] 3190 	sjmp	00103$
      000EA2                       3191 00105$:
                                   3192 ;	src/main.c:769: }
      000EA2 22               [24] 3193 	ret
                                   3194 ;------------------------------------------------------------
                                   3195 ;Allocation info for local variables in function 'main'
                                   3196 ;------------------------------------------------------------
                                   3197 ;su8Cnt                    Allocated with name '_main_su8Cnt_327681_146'
                                   3198 ;su8Cnt                    Allocated with name '_main_su8Cnt_262146_159'
                                   3199 ;u8PrevSwitch              Allocated to registers r7 
                                   3200 ;u8UartRx                  Allocated to registers 
                                   3201 ;u8RotSense                Allocated to registers 
                                   3202 ;u8RxUART                  Allocated with name '_main_u8RxUART_65536_136'
                                   3203 ;u16Cnt                    Allocated to registers r4 r7 
                                   3204 ;u8OutputState             Allocated to registers 
                                   3205 ;u8StateRxCSC              Allocated to registers 
                                   3206 ;u8LineFiAddr              Allocated to registers 
                                   3207 ;u8LineFiSpeed             Allocated to registers 
                                   3208 ;u8Data                    Allocated to registers 
                                   3209 ;u8LineFiCmd               Allocated to registers 
                                   3210 ;u8PwrOnFirstFlag          Allocated to registers 
                                   3211 ;u8StateRxPkt              Allocated with name '_main_u8StateRxPkt_65536_136'
                                   3212 ;u8StateTxPkt              Allocated to registers 
                                   3213 ;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_136'
                                   3214 ;stLineFiPkt2              Allocated with name '_main_stLineFiPkt2_65536_136'
                                   3215 ;stLineFiPkt_UL            Allocated with name '_main_stLineFiPkt_UL_65536_136'
                                   3216 ;u8MotorState              Allocated to registers 
                                   3217 ;u8RxBufIdx                Allocated with name '_main_u8RxBufIdx_65536_136'
                                   3218 ;u8RxLFPLen                Allocated with name '_main_u8RxLFPLen_65536_136'
                                   3219 ;u8LineFiRxIdx             Allocated to registers 
                                   3220 ;u8Count2                  Allocated to registers 
                                   3221 ;u8RxPktCnt                Allocated to registers 
                                   3222 ;u8PreambleCnt             Allocated to registers 
                                   3223 ;i                         Allocated to registers r6 
                                   3224 ;i                         Allocated to registers r6 
                                   3225 ;i                         Allocated to registers r6 
                                   3226 ;i                         Allocated to registers r6 
                                   3227 ;i                         Allocated with name '_main_i_262145_199'
                                   3228 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   3229 ;pu8RxUART                 Allocated with name '_main_pu8RxUART_65536_136'
                                   3230 ;pktGenTime                Allocated with name '_main_pktGenTime_65536_136'
                                   3231 ;backoffTimer              Allocated with name '_main_backoffTimer_65536_136'
                                   3232 ;su8Cnt                    Allocated with name '_main_su8Cnt_65536_136'
                                   3233 ;su8InitCnt                Allocated with name '_main_su8InitCnt_327681_165'
                                   3234 ;------------------------------------------------------------
                                   3235 ;	src/main.c:776: void main (void)
                                   3236 ;	-----------------------------------------
                                   3237 ;	 function main
                                   3238 ;	-----------------------------------------
      000EA3                       3239 _main:
                                   3240 ;	src/main.c:797: UINT8 u8StateRxPkt = STATE_RxPKT_INIT;
      000EA3 75 42 00         [24] 3241 	mov	_main_u8StateRxPkt_65536_136,#0x00
                                   3242 ;	src/main.c:801: UINT32 __xdata pktGenTime = 0;
      000EA6 90 00 CC         [24] 3243 	mov	dptr,#_main_pktGenTime_65536_136
      000EA9 E4               [12] 3244 	clr	a
      000EAA F0               [24] 3245 	movx	@dptr,a
      000EAB A3               [24] 3246 	inc	dptr
      000EAC F0               [24] 3247 	movx	@dptr,a
      000EAD A3               [24] 3248 	inc	dptr
      000EAE F0               [24] 3249 	movx	@dptr,a
      000EAF A3               [24] 3250 	inc	dptr
      000EB0 F0               [24] 3251 	movx	@dptr,a
                                   3252 ;	src/main.c:802: UINT32 __xdata backoffTimer = 0;
      000EB1 90 00 D0         [24] 3253 	mov	dptr,#_main_backoffTimer_65536_136
      000EB4 F0               [24] 3254 	movx	@dptr,a
      000EB5 A3               [24] 3255 	inc	dptr
      000EB6 F0               [24] 3256 	movx	@dptr,a
      000EB7 A3               [24] 3257 	inc	dptr
      000EB8 F0               [24] 3258 	movx	@dptr,a
      000EB9 A3               [24] 3259 	inc	dptr
      000EBA F0               [24] 3260 	movx	@dptr,a
                                   3261 ;	src/main.c:804: linefi_packet_t stLineFiPkt = {
      000EBB 75 43 01         [24] 3262 	mov	_main_stLineFiPkt_65536_136,#0x01
      000EBE 75 44 02         [24] 3263 	mov	(_main_stLineFiPkt_65536_136 + 0x0001),#0x02
      000EC1 75 45 03         [24] 3264 	mov	(_main_stLineFiPkt_65536_136 + 0x0002),#0x03
      000EC4 75 46 04         [24] 3265 	mov	(_main_stLineFiPkt_65536_136 + 0x0003),#0x04
      000EC7 75 47 05         [24] 3266 	mov	(_main_stLineFiPkt_65536_136 + 0x0004),#0x05
      000ECA 75 48 09         [24] 3267 	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 0),#_gpu8Data
      000ECD 75 49 00         [24] 3268 	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 1),#(_gpu8Data >> 8)
                                   3269 ;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 2),#0x00
      000ED0 F5 4A            [12] 3270 	mov	((_main_stLineFiPkt_65536_136 + 0x0005) + 2),a
                                   3271 ;	src/main.c:813: linefi_packet_t stLineFiPkt2 = {
      000ED2 75 4B 01         [24] 3272 	mov	_main_stLineFiPkt2_65536_136,#0x01
      000ED5 75 4C 02         [24] 3273 	mov	(_main_stLineFiPkt2_65536_136 + 0x0001),#0x02
      000ED8 75 4D 03         [24] 3274 	mov	(_main_stLineFiPkt2_65536_136 + 0x0002),#0x03
      000EDB 75 4E 04         [24] 3275 	mov	(_main_stLineFiPkt2_65536_136 + 0x0003),#0x04
      000EDE 75 4F 05         [24] 3276 	mov	(_main_stLineFiPkt2_65536_136 + 0x0004),#0x05
      000EE1 75 50 25         [24] 3277 	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 0),#_gpu8Data2
      000EE4 75 51 00         [24] 3278 	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 1),#(_gpu8Data2 >> 8)
                                   3279 ;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 2),#0x00
      000EE7 F5 52            [12] 3280 	mov	((_main_stLineFiPkt2_65536_136 + 0x0005) + 2),a
                                   3281 ;	src/main.c:821: linefi_packet_t stLineFiPkt_UL = {
      000EE9 75 53 01         [24] 3282 	mov	_main_stLineFiPkt_UL_65536_136,#0x01
      000EEC 75 54 03         [24] 3283 	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0001),#0x03
      000EEF 75 55 03         [24] 3284 	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0002),#0x03
      000EF2 75 56 0B         [24] 3285 	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0003),#0x0b
      000EF5 75 57 FF         [24] 3286 	mov	(_main_stLineFiPkt_UL_65536_136 + 0x0004),#0xff
      000EF8 75 58 25         [24] 3287 	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 0),#_gpu8Data2
      000EFB 75 59 00         [24] 3288 	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 1),#(_gpu8Data2 >> 8)
                                   3289 ;	1-genFromRTrack replaced	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 2),#0x00
      000EFE F5 5A            [12] 3290 	mov	((_main_stLineFiPkt_UL_65536_136 + 0x0005) + 2),a
                                   3291 ;	src/main.c:832: UINT8 u8RxBufIdx = 0;
                                   3292 ;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
      000F00 F5 5B            [12] 3293 	mov	_main_u8RxBufIdx_65536_136,a
                                   3294 ;	src/main.c:833: UINT8 u8RxLFPLen = 0; //UINT8 u8RxLineFiLen = 0; 변수 이름 바꿈, 수신된 LineFiPacket 길이
                                   3295 ;	1-genFromRTrack replaced	mov	_main_u8RxLFPLen_65536_136,#0x00
      000F02 F5 5C            [12] 3296 	mov	_main_u8RxLFPLen_65536_136,a
                                   3297 ;	src/main.c:837: gpio_setup();
      000F04 12 08 2A         [24] 3298 	lcall	_gpio_setup
                                   3299 ;	src/main.c:838: uart_setup();
      000F07 12 2C DA         [24] 3300 	lcall	_uart_setup
                                   3301 ;	src/main.c:840: i2c_setup();
      000F0A 12 0C DE         [24] 3302 	lcall	_i2c_setup
                                   3303 ;	src/main.c:844: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
      000F0D 90 00 05         [24] 3304 	mov	dptr,#_gu8LineFiUpRate
      000F10 E0               [24] 3305 	movx	a,@dptr
      000F11 75 F0 04         [24] 3306 	mov	b,#0x04
      000F14 A4               [48] 3307 	mul	ab
      000F15 24 48            [12] 3308 	add	a,#_gpu32UartSpeed
      000F17 F5 82            [12] 3309 	mov	dpl,a
      000F19 74 00            [12] 3310 	mov	a,#(_gpu32UartSpeed >> 8)
      000F1B 35 F0            [12] 3311 	addc	a,b
      000F1D F5 83            [12] 3312 	mov	dph,a
      000F1F E0               [24] 3313 	movx	a,@dptr
      000F20 FA               [12] 3314 	mov	r2,a
      000F21 A3               [24] 3315 	inc	dptr
      000F22 E0               [24] 3316 	movx	a,@dptr
      000F23 FB               [12] 3317 	mov	r3,a
      000F24 A3               [24] 3318 	inc	dptr
      000F25 E0               [24] 3319 	movx	a,@dptr
      000F26 FC               [12] 3320 	mov	r4,a
      000F27 A3               [24] 3321 	inc	dptr
      000F28 E0               [24] 3322 	movx	a,@dptr
      000F29 8A 82            [24] 3323 	mov	dpl,r2
      000F2B 8B 83            [24] 3324 	mov	dph,r3
      000F2D 8C F0            [24] 3325 	mov	b,r4
      000F2F 12 2C 75         [24] 3326 	lcall	_InitialUART1_Timer3
                                   3327 ;	src/main.c:846: MODIFY_HIRC_166();
      000F32 12 06 B0         [24] 3328 	lcall	_MODIFY_HIRC_166
                                   3329 ;	src/main.c:848: clr_T0M;// 16/12 MHz
      000F35 53 8E F7         [24] 3330 	anl	_CKCON,#0xf7
                                   3331 ;	src/main.c:851: set_ET0;                                    //enable Timer0 interrupt
                                   3332 ;	assignBit
      000F38 D2 A9            [12] 3333 	setb	_ET0
                                   3334 ;	src/main.c:852: set_TR0;                                    //Timer0 run
                                   3335 ;	assignBit
      000F3A D2 8C            [12] 3336 	setb	_TR0
                                   3337 ;	src/main.c:854: gu8UART = 0;
      000F3C 75 11 00         [24] 3338 	mov	_gu8UART,#0x00
                                   3339 ;	src/main.c:855: printf_fast_f("This is UART0\n\r");
      000F3F 74 2A            [12] 3340 	mov	a,#___str_28
      000F41 C0 E0            [24] 3341 	push	acc
      000F43 74 3A            [12] 3342 	mov	a,#(___str_28 >> 8)
      000F45 C0 E0            [24] 3343 	push	acc
      000F47 12 31 60         [24] 3344 	lcall	_printf_fast_f
      000F4A 15 81            [12] 3345 	dec	sp
      000F4C 15 81            [12] 3346 	dec	sp
                                   3347 ;	src/main.c:856: gu8UART = 1;
      000F4E 75 11 01         [24] 3348 	mov	_gu8UART,#0x01
                                   3349 ;	src/main.c:857: printf_fast_f("This is UART1\n\r"); //라인파이
      000F51 74 3A            [12] 3350 	mov	a,#___str_29
      000F53 C0 E0            [24] 3351 	push	acc
      000F55 74 3A            [12] 3352 	mov	a,#(___str_29 >> 8)
      000F57 C0 E0            [24] 3353 	push	acc
      000F59 12 31 60         [24] 3354 	lcall	_printf_fast_f
      000F5C 15 81            [12] 3355 	dec	sp
      000F5E 15 81            [12] 3356 	dec	sp
                                   3357 ;	src/main.c:862: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      000F60 7C 30            [12] 3358 	mov	r4,#0x30
      000F62 7F 75            [12] 3359 	mov	r7,#0x75
      000F64                       3360 00241$:
                                   3361 ;	src/main.c:863: nop; nop; nop; nop; nop;
      000F64 00               [12] 3362 	NOP
      000F65 00               [12] 3363 	NOP
      000F66 00               [12] 3364 	NOP
      000F67 00               [12] 3365 	NOP
      000F68 00               [12] 3366 	NOP
      000F69 EC               [12] 3367 	mov	a,r4
      000F6A 24 FF            [12] 3368 	add	a,#0xff
      000F6C FA               [12] 3369 	mov	r2,a
      000F6D EF               [12] 3370 	mov	a,r7
      000F6E 34 FF            [12] 3371 	addc	a,#0xff
      000F70 FB               [12] 3372 	mov	r3,a
      000F71 8A 04            [24] 3373 	mov	ar4,r2
      000F73 8B 07            [24] 3374 	mov	ar7,r3
                                   3375 ;	src/main.c:862: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      000F75 EA               [12] 3376 	mov	a,r2
      000F76 4B               [12] 3377 	orl	a,r3
                                   3378 ;	src/main.c:865: gu8UART = 0;
      000F77 70 EB            [24] 3379 	jnz	00241$
      000F79 F5 11            [12] 3380 	mov	_gu8UART,a
                                   3381 ;	src/main.c:867: u8UartRx = UART_RX;
      000F7B A2 82            [12] 3382 	mov	c,_P02
                                   3383 ;	src/main.c:868: u8PrevSwitch = SWITCH;
      000F7D A2 95            [12] 3384 	mov	c,_P15
      000F7F E4               [12] 3385 	clr	a
      000F80 33               [12] 3386 	rlc	a
      000F81 FF               [12] 3387 	mov	r7,a
                                   3388 ;	src/main.c:870: set_EPI;
      000F82 43 9B 02         [24] 3389 	orl	_EIE,#0x02
                                   3390 ;	src/main.c:871: set_EA;
                                   3391 ;	assignBit
      000F85 D2 AF            [12] 3392 	setb	_EA
                                   3393 ;	src/main.c:873: if (UART_RX == 0) {
      000F87 20 82 02         [24] 3394 	jb	_P02,00103$
                                   3395 ;	src/main.c:874: SEL_RX_POL = 1;
                                   3396 ;	assignBit
      000F8A D2 84            [12] 3397 	setb	_P04
      000F8C                       3398 00103$:
                                   3399 ;	src/main.c:878: gu8MyAddr = gpcEEPROM[0]; // 0x00이면 펌웨어 쓴 직후
      000F8C 90 37 00         [24] 3400 	mov	dptr,#_gpcEEPROM
      000F8F E4               [12] 3401 	clr	a
      000F90 93               [24] 3402 	movc	a,@a+dptr
      000F91 F5 22            [12] 3403 	mov	_gu8MyAddr,a
                                   3404 ;	src/main.c:880: while(1) {
      000F93                       3405 00237$:
                                   3406 ;	src/main.c:883: if (get_uart0_char_nb(&u8RxUART)) {
      000F93 90 00 41         [24] 3407 	mov	dptr,#_main_u8RxUART_65536_136
      000F96 75 F0 40         [24] 3408 	mov	b,#0x40
      000F99 C0 07            [24] 3409 	push	ar7
      000F9B 12 0C DB         [24] 3410 	lcall	_get_uart0_char_nb
      000F9E E5 82            [12] 3411 	mov	a,dpl
      000FA0 D0 07            [24] 3412 	pop	ar7
      000FA2 70 03            [24] 3413 	jnz	00534$
      000FA4 02 18 21         [24] 3414 	ljmp	00155$
      000FA7                       3415 00534$:
                                   3416 ;	src/main.c:884: switch(u8RxUART) {
      000FA7 74 1B            [12] 3417 	mov	a,#0x1b
      000FA9 B5 41 03         [24] 3418 	cjne	a,_main_u8RxUART_65536_136,00535$
      000FAC 02 14 41         [24] 3419 	ljmp	00130$
      000FAF                       3420 00535$:
      000FAF 74 2B            [12] 3421 	mov	a,#0x2b
      000FB1 B5 41 03         [24] 3422 	cjne	a,_main_u8RxUART_65536_136,00536$
      000FB4 02 15 CB         [24] 3423 	ljmp	00139$
      000FB7                       3424 00536$:
      000FB7 74 2D            [12] 3425 	mov	a,#0x2d
      000FB9 B5 41 03         [24] 3426 	cjne	a,_main_u8RxUART_65536_136,00537$
      000FBC 02 16 F6         [24] 3427 	ljmp	00146$
      000FBF                       3428 00537$:
      000FBF 74 31            [12] 3429 	mov	a,#0x31
      000FC1 B5 41 03         [24] 3430 	cjne	a,_main_u8RxUART_65536_136,00538$
      000FC4 02 10 4A         [24] 3431 	ljmp	00104$
      000FC7                       3432 00538$:
      000FC7 74 32            [12] 3433 	mov	a,#0x32
      000FC9 B5 41 03         [24] 3434 	cjne	a,_main_u8RxUART_65536_136,00539$
      000FCC 02 10 7E         [24] 3435 	ljmp	00105$
      000FCF                       3436 00539$:
      000FCF 74 33            [12] 3437 	mov	a,#0x33
      000FD1 B5 41 03         [24] 3438 	cjne	a,_main_u8RxUART_65536_136,00540$
      000FD4 02 10 B2         [24] 3439 	ljmp	00106$
      000FD7                       3440 00540$:
      000FD7 74 34            [12] 3441 	mov	a,#0x34
      000FD9 B5 41 03         [24] 3442 	cjne	a,_main_u8RxUART_65536_136,00541$
      000FDC 02 10 E6         [24] 3443 	ljmp	00107$
      000FDF                       3444 00541$:
      000FDF 74 35            [12] 3445 	mov	a,#0x35
      000FE1 B5 41 03         [24] 3446 	cjne	a,_main_u8RxUART_65536_136,00542$
      000FE4 02 11 1A         [24] 3447 	ljmp	00108$
      000FE7                       3448 00542$:
      000FE7 74 36            [12] 3449 	mov	a,#0x36
      000FE9 B5 41 03         [24] 3450 	cjne	a,_main_u8RxUART_65536_136,00543$
      000FEC 02 11 30         [24] 3451 	ljmp	00109$
      000FEF                       3452 00543$:
      000FEF 74 37            [12] 3453 	mov	a,#0x37
      000FF1 B5 41 03         [24] 3454 	cjne	a,_main_u8RxUART_65536_136,00544$
      000FF4 02 11 64         [24] 3455 	ljmp	00110$
      000FF7                       3456 00544$:
      000FF7 74 38            [12] 3457 	mov	a,#0x38
      000FF9 B5 41 03         [24] 3458 	cjne	a,_main_u8RxUART_65536_136,00545$
      000FFC 02 11 98         [24] 3459 	ljmp	00111$
      000FFF                       3460 00545$:
      000FFF 74 54            [12] 3461 	mov	a,#0x54
      001001 B5 41 03         [24] 3462 	cjne	a,_main_u8RxUART_65536_136,00546$
      001004 02 12 48         [24] 3463 	ljmp	00117$
      001007                       3464 00546$:
      001007 74 62            [12] 3465 	mov	a,#0x62
      001009 B5 41 03         [24] 3466 	cjne	a,_main_u8RxUART_65536_136,00547$
      00100C 02 13 FE         [24] 3467 	ljmp	00285$
      00100F                       3468 00547$:
      00100F 74 69            [12] 3469 	mov	a,#0x69
      001011 B5 41 03         [24] 3470 	cjne	a,_main_u8RxUART_65536_136,00548$
      001014 02 13 47         [24] 3471 	ljmp	00122$
      001017                       3472 00548$:
      001017 74 6A            [12] 3473 	mov	a,#0x6a
      001019 B5 41 03         [24] 3474 	cjne	a,_main_u8RxUART_65536_136,00549$
      00101C 02 12 D2         [24] 3475 	ljmp	00119$
      00101F                       3476 00549$:
      00101F 74 6B            [12] 3477 	mov	a,#0x6b
      001021 B5 41 03         [24] 3478 	cjne	a,_main_u8RxUART_65536_136,00550$
      001024 02 12 91         [24] 3479 	ljmp	00118$
      001027                       3480 00550$:
      001027 74 70            [12] 3481 	mov	a,#0x70
      001029 B5 41 03         [24] 3482 	cjne	a,_main_u8RxUART_65536_136,00551$
      00102C 02 13 3E         [24] 3483 	ljmp	00121$
      00102F                       3484 00551$:
      00102F 74 72            [12] 3485 	mov	a,#0x72
      001031 B5 41 03         [24] 3486 	cjne	a,_main_u8RxUART_65536_136,00552$
      001034 02 12 01         [24] 3487 	ljmp	00113$
      001037                       3488 00552$:
      001037 74 73            [12] 3489 	mov	a,#0x73
      001039 B5 41 03         [24] 3490 	cjne	a,_main_u8RxUART_65536_136,00553$
      00103C 02 13 12         [24] 3491 	ljmp	00120$
      00103F                       3492 00553$:
      00103F 74 74            [12] 3493 	mov	a,#0x74
      001041 B5 41 03         [24] 3494 	cjne	a,_main_u8RxUART_65536_136,00554$
      001044 02 11 CC         [24] 3495 	ljmp	00112$
      001047                       3496 00554$:
      001047 02 18 21         [24] 3497 	ljmp	00155$
                                   3498 ;	src/main.c:885: case '1' :
      00104A                       3499 00104$:
                                   3500 ;	src/main.c:886: TOGGLE(UART_TX);
      00104A B2 96            [12] 3501 	cpl	_P16
                                   3502 ;	src/main.c:887: printf_fast_f("UART_TX=");
      00104C C0 07            [24] 3503 	push	ar7
      00104E 74 4A            [12] 3504 	mov	a,#___str_30
      001050 C0 E0            [24] 3505 	push	acc
      001052 74 3A            [12] 3506 	mov	a,#(___str_30 >> 8)
      001054 C0 E0            [24] 3507 	push	acc
      001056 12 31 60         [24] 3508 	lcall	_printf_fast_f
      001059 15 81            [12] 3509 	dec	sp
      00105B 15 81            [12] 3510 	dec	sp
                                   3511 ;	src/main.c:888: printf_fast_f("%d\n\r", UART_TX);
      00105D A2 96            [12] 3512 	mov	c,_P16
      00105F E4               [12] 3513 	clr	a
      001060 33               [12] 3514 	rlc	a
      001061 FB               [12] 3515 	mov	r3,a
      001062 7C 00            [12] 3516 	mov	r4,#0x00
      001064 C0 03            [24] 3517 	push	ar3
      001066 C0 04            [24] 3518 	push	ar4
      001068 74 53            [12] 3519 	mov	a,#___str_31
      00106A C0 E0            [24] 3520 	push	acc
      00106C 74 3A            [12] 3521 	mov	a,#(___str_31 >> 8)
      00106E C0 E0            [24] 3522 	push	acc
      001070 12 31 60         [24] 3523 	lcall	_printf_fast_f
      001073 E5 81            [12] 3524 	mov	a,sp
      001075 24 FC            [12] 3525 	add	a,#0xfc
      001077 F5 81            [12] 3526 	mov	sp,a
      001079 D0 07            [24] 3527 	pop	ar7
                                   3528 ;	src/main.c:889: break;
      00107B 02 18 21         [24] 3529 	ljmp	00155$
                                   3530 ;	src/main.c:890: case '2' :
      00107E                       3531 00105$:
                                   3532 ;	src/main.c:891: TOGGLE(LED_R);
      00107E B2 94            [12] 3533 	cpl	_P14
                                   3534 ;	src/main.c:892: printf_fast_f("LED_R=");
      001080 C0 07            [24] 3535 	push	ar7
      001082 74 58            [12] 3536 	mov	a,#___str_32
      001084 C0 E0            [24] 3537 	push	acc
      001086 74 3A            [12] 3538 	mov	a,#(___str_32 >> 8)
      001088 C0 E0            [24] 3539 	push	acc
      00108A 12 31 60         [24] 3540 	lcall	_printf_fast_f
      00108D 15 81            [12] 3541 	dec	sp
      00108F 15 81            [12] 3542 	dec	sp
                                   3543 ;	src/main.c:893: printf_fast_f("%d\n\r", LED_R);
      001091 A2 94            [12] 3544 	mov	c,_P14
      001093 E4               [12] 3545 	clr	a
      001094 33               [12] 3546 	rlc	a
      001095 FB               [12] 3547 	mov	r3,a
      001096 7C 00            [12] 3548 	mov	r4,#0x00
      001098 C0 03            [24] 3549 	push	ar3
      00109A C0 04            [24] 3550 	push	ar4
      00109C 74 53            [12] 3551 	mov	a,#___str_31
      00109E C0 E0            [24] 3552 	push	acc
      0010A0 74 3A            [12] 3553 	mov	a,#(___str_31 >> 8)
      0010A2 C0 E0            [24] 3554 	push	acc
      0010A4 12 31 60         [24] 3555 	lcall	_printf_fast_f
      0010A7 E5 81            [12] 3556 	mov	a,sp
      0010A9 24 FC            [12] 3557 	add	a,#0xfc
      0010AB F5 81            [12] 3558 	mov	sp,a
      0010AD D0 07            [24] 3559 	pop	ar7
                                   3560 ;	src/main.c:894: break;
      0010AF 02 18 21         [24] 3561 	ljmp	00155$
                                   3562 ;	src/main.c:895: case '3' :
      0010B2                       3563 00106$:
                                   3564 ;	src/main.c:896: TOGGLE(LED_G);
      0010B2 B2 93            [12] 3565 	cpl	_P13
                                   3566 ;	src/main.c:897: printf_fast_f("LED_G=");
      0010B4 C0 07            [24] 3567 	push	ar7
      0010B6 74 5F            [12] 3568 	mov	a,#___str_33
      0010B8 C0 E0            [24] 3569 	push	acc
      0010BA 74 3A            [12] 3570 	mov	a,#(___str_33 >> 8)
      0010BC C0 E0            [24] 3571 	push	acc
      0010BE 12 31 60         [24] 3572 	lcall	_printf_fast_f
      0010C1 15 81            [12] 3573 	dec	sp
      0010C3 15 81            [12] 3574 	dec	sp
                                   3575 ;	src/main.c:898: printf_fast_f("%d\n\r", LED_G);
      0010C5 A2 93            [12] 3576 	mov	c,_P13
      0010C7 E4               [12] 3577 	clr	a
      0010C8 33               [12] 3578 	rlc	a
      0010C9 FB               [12] 3579 	mov	r3,a
      0010CA 7C 00            [12] 3580 	mov	r4,#0x00
      0010CC C0 03            [24] 3581 	push	ar3
      0010CE C0 04            [24] 3582 	push	ar4
      0010D0 74 53            [12] 3583 	mov	a,#___str_31
      0010D2 C0 E0            [24] 3584 	push	acc
      0010D4 74 3A            [12] 3585 	mov	a,#(___str_31 >> 8)
      0010D6 C0 E0            [24] 3586 	push	acc
      0010D8 12 31 60         [24] 3587 	lcall	_printf_fast_f
      0010DB E5 81            [12] 3588 	mov	a,sp
      0010DD 24 FC            [12] 3589 	add	a,#0xfc
      0010DF F5 81            [12] 3590 	mov	sp,a
      0010E1 D0 07            [24] 3591 	pop	ar7
                                   3592 ;	src/main.c:899: break;
      0010E3 02 18 21         [24] 3593 	ljmp	00155$
                                   3594 ;	src/main.c:900: case '4' :
      0010E6                       3595 00107$:
                                   3596 ;	src/main.c:901: TOGGLE(LED_B);
      0010E6 B2 92            [12] 3597 	cpl	_P12
                                   3598 ;	src/main.c:902: printf_fast_f("LED_B=");
      0010E8 C0 07            [24] 3599 	push	ar7
      0010EA 74 66            [12] 3600 	mov	a,#___str_34
      0010EC C0 E0            [24] 3601 	push	acc
      0010EE 74 3A            [12] 3602 	mov	a,#(___str_34 >> 8)
      0010F0 C0 E0            [24] 3603 	push	acc
      0010F2 12 31 60         [24] 3604 	lcall	_printf_fast_f
      0010F5 15 81            [12] 3605 	dec	sp
      0010F7 15 81            [12] 3606 	dec	sp
                                   3607 ;	src/main.c:903: printf_fast_f("%d\n\r", LED_B);
      0010F9 A2 92            [12] 3608 	mov	c,_P12
      0010FB E4               [12] 3609 	clr	a
      0010FC 33               [12] 3610 	rlc	a
      0010FD FB               [12] 3611 	mov	r3,a
      0010FE 7C 00            [12] 3612 	mov	r4,#0x00
      001100 C0 03            [24] 3613 	push	ar3
      001102 C0 04            [24] 3614 	push	ar4
      001104 74 53            [12] 3615 	mov	a,#___str_31
      001106 C0 E0            [24] 3616 	push	acc
      001108 74 3A            [12] 3617 	mov	a,#(___str_31 >> 8)
      00110A C0 E0            [24] 3618 	push	acc
      00110C 12 31 60         [24] 3619 	lcall	_printf_fast_f
      00110F E5 81            [12] 3620 	mov	a,sp
      001111 24 FC            [12] 3621 	add	a,#0xfc
      001113 F5 81            [12] 3622 	mov	sp,a
      001115 D0 07            [24] 3623 	pop	ar7
                                   3624 ;	src/main.c:904: break;
      001117 02 18 21         [24] 3625 	ljmp	00155$
                                   3626 ;	src/main.c:905: case '5' :
      00111A                       3627 00108$:
                                   3628 ;	src/main.c:909: printf_fast_f("no MOTOR_EN\r\n");
      00111A C0 07            [24] 3629 	push	ar7
      00111C 74 6D            [12] 3630 	mov	a,#___str_35
      00111E C0 E0            [24] 3631 	push	acc
      001120 74 3A            [12] 3632 	mov	a,#(___str_35 >> 8)
      001122 C0 E0            [24] 3633 	push	acc
      001124 12 31 60         [24] 3634 	lcall	_printf_fast_f
      001127 15 81            [12] 3635 	dec	sp
      001129 15 81            [12] 3636 	dec	sp
      00112B D0 07            [24] 3637 	pop	ar7
                                   3638 ;	src/main.c:910: break;
      00112D 02 18 21         [24] 3639 	ljmp	00155$
                                   3640 ;	src/main.c:911: case '6' :
      001130                       3641 00109$:
                                   3642 ;	src/main.c:912: TOGGLE(MOTOR_CW);
      001130 B2 80            [12] 3643 	cpl	_P00
                                   3644 ;	src/main.c:913: printf_fast_f("MOTOR_CW=");
      001132 C0 07            [24] 3645 	push	ar7
      001134 74 7B            [12] 3646 	mov	a,#___str_36
      001136 C0 E0            [24] 3647 	push	acc
      001138 74 3A            [12] 3648 	mov	a,#(___str_36 >> 8)
      00113A C0 E0            [24] 3649 	push	acc
      00113C 12 31 60         [24] 3650 	lcall	_printf_fast_f
      00113F 15 81            [12] 3651 	dec	sp
      001141 15 81            [12] 3652 	dec	sp
                                   3653 ;	src/main.c:914: printf_fast_f("%d\n\r", MOTOR_CW);
      001143 A2 80            [12] 3654 	mov	c,_P00
      001145 E4               [12] 3655 	clr	a
      001146 33               [12] 3656 	rlc	a
      001147 FB               [12] 3657 	mov	r3,a
      001148 7C 00            [12] 3658 	mov	r4,#0x00
      00114A C0 03            [24] 3659 	push	ar3
      00114C C0 04            [24] 3660 	push	ar4
      00114E 74 53            [12] 3661 	mov	a,#___str_31
      001150 C0 E0            [24] 3662 	push	acc
      001152 74 3A            [12] 3663 	mov	a,#(___str_31 >> 8)
      001154 C0 E0            [24] 3664 	push	acc
      001156 12 31 60         [24] 3665 	lcall	_printf_fast_f
      001159 E5 81            [12] 3666 	mov	a,sp
      00115B 24 FC            [12] 3667 	add	a,#0xfc
      00115D F5 81            [12] 3668 	mov	sp,a
      00115F D0 07            [24] 3669 	pop	ar7
                                   3670 ;	src/main.c:915: break;
      001161 02 18 21         [24] 3671 	ljmp	00155$
                                   3672 ;	src/main.c:916: case '7' :
      001164                       3673 00110$:
                                   3674 ;	src/main.c:917: TOGGLE(MOTOR_CCW);
      001164 B2 81            [12] 3675 	cpl	_P01
                                   3676 ;	src/main.c:918: printf_fast_f("MOTOR_CCW=");
      001166 C0 07            [24] 3677 	push	ar7
      001168 74 85            [12] 3678 	mov	a,#___str_37
      00116A C0 E0            [24] 3679 	push	acc
      00116C 74 3A            [12] 3680 	mov	a,#(___str_37 >> 8)
      00116E C0 E0            [24] 3681 	push	acc
      001170 12 31 60         [24] 3682 	lcall	_printf_fast_f
      001173 15 81            [12] 3683 	dec	sp
      001175 15 81            [12] 3684 	dec	sp
                                   3685 ;	src/main.c:919: printf_fast_f("%d\n\r", MOTOR_CCW);
      001177 A2 81            [12] 3686 	mov	c,_P01
      001179 E4               [12] 3687 	clr	a
      00117A 33               [12] 3688 	rlc	a
      00117B FB               [12] 3689 	mov	r3,a
      00117C 7C 00            [12] 3690 	mov	r4,#0x00
      00117E C0 03            [24] 3691 	push	ar3
      001180 C0 04            [24] 3692 	push	ar4
      001182 74 53            [12] 3693 	mov	a,#___str_31
      001184 C0 E0            [24] 3694 	push	acc
      001186 74 3A            [12] 3695 	mov	a,#(___str_31 >> 8)
      001188 C0 E0            [24] 3696 	push	acc
      00118A 12 31 60         [24] 3697 	lcall	_printf_fast_f
      00118D E5 81            [12] 3698 	mov	a,sp
      00118F 24 FC            [12] 3699 	add	a,#0xfc
      001191 F5 81            [12] 3700 	mov	sp,a
      001193 D0 07            [24] 3701 	pop	ar7
                                   3702 ;	src/main.c:920: break;
      001195 02 18 21         [24] 3703 	ljmp	00155$
                                   3704 ;	src/main.c:921: case '8' :
      001198                       3705 00111$:
                                   3706 ;	src/main.c:922: TOGGLE(SEL_RX_POL);
      001198 B2 84            [12] 3707 	cpl	_P04
                                   3708 ;	src/main.c:923: printf_fast_f("SEL_RX_POL=");
      00119A C0 07            [24] 3709 	push	ar7
      00119C 74 90            [12] 3710 	mov	a,#___str_38
      00119E C0 E0            [24] 3711 	push	acc
      0011A0 74 3A            [12] 3712 	mov	a,#(___str_38 >> 8)
      0011A2 C0 E0            [24] 3713 	push	acc
      0011A4 12 31 60         [24] 3714 	lcall	_printf_fast_f
      0011A7 15 81            [12] 3715 	dec	sp
      0011A9 15 81            [12] 3716 	dec	sp
                                   3717 ;	src/main.c:924: printf_fast_f("%d\n\r", SEL_RX_POL);
      0011AB A2 84            [12] 3718 	mov	c,_P04
      0011AD E4               [12] 3719 	clr	a
      0011AE 33               [12] 3720 	rlc	a
      0011AF FB               [12] 3721 	mov	r3,a
      0011B0 7C 00            [12] 3722 	mov	r4,#0x00
      0011B2 C0 03            [24] 3723 	push	ar3
      0011B4 C0 04            [24] 3724 	push	ar4
      0011B6 74 53            [12] 3725 	mov	a,#___str_31
      0011B8 C0 E0            [24] 3726 	push	acc
      0011BA 74 3A            [12] 3727 	mov	a,#(___str_31 >> 8)
      0011BC C0 E0            [24] 3728 	push	acc
      0011BE 12 31 60         [24] 3729 	lcall	_printf_fast_f
      0011C1 E5 81            [12] 3730 	mov	a,sp
      0011C3 24 FC            [12] 3731 	add	a,#0xfc
      0011C5 F5 81            [12] 3732 	mov	sp,a
      0011C7 D0 07            [24] 3733 	pop	ar7
                                   3734 ;	src/main.c:925: break;
      0011C9 02 18 21         [24] 3735 	ljmp	00155$
                                   3736 ;	src/main.c:926: case 't' :
      0011CC                       3737 00112$:
                                   3738 ;	src/main.c:927: printf_fast_f("count:%lu\r\n", gu32TimeCnt);
      0011CC C0 07            [24] 3739 	push	ar7
      0011CE 90 00 AA         [24] 3740 	mov	dptr,#_gu32TimeCnt
      0011D1 E0               [24] 3741 	movx	a,@dptr
      0011D2 C0 E0            [24] 3742 	push	acc
      0011D4 A3               [24] 3743 	inc	dptr
      0011D5 E0               [24] 3744 	movx	a,@dptr
      0011D6 C0 E0            [24] 3745 	push	acc
      0011D8 A3               [24] 3746 	inc	dptr
      0011D9 E0               [24] 3747 	movx	a,@dptr
      0011DA C0 E0            [24] 3748 	push	acc
      0011DC A3               [24] 3749 	inc	dptr
      0011DD E0               [24] 3750 	movx	a,@dptr
      0011DE C0 E0            [24] 3751 	push	acc
      0011E0 74 9C            [12] 3752 	mov	a,#___str_39
      0011E2 C0 E0            [24] 3753 	push	acc
      0011E4 74 3A            [12] 3754 	mov	a,#(___str_39 >> 8)
      0011E6 C0 E0            [24] 3755 	push	acc
      0011E8 12 31 60         [24] 3756 	lcall	_printf_fast_f
      0011EB E5 81            [12] 3757 	mov	a,sp
      0011ED 24 FA            [12] 3758 	add	a,#0xfa
      0011EF F5 81            [12] 3759 	mov	sp,a
      0011F1 D0 07            [24] 3760 	pop	ar7
                                   3761 ;	src/main.c:928: gu32TimeCnt = 0;
      0011F3 90 00 AA         [24] 3762 	mov	dptr,#_gu32TimeCnt
      0011F6 E4               [12] 3763 	clr	a
      0011F7 F0               [24] 3764 	movx	@dptr,a
      0011F8 A3               [24] 3765 	inc	dptr
      0011F9 F0               [24] 3766 	movx	@dptr,a
      0011FA A3               [24] 3767 	inc	dptr
      0011FB F0               [24] 3768 	movx	@dptr,a
      0011FC A3               [24] 3769 	inc	dptr
      0011FD F0               [24] 3770 	movx	@dptr,a
                                   3771 ;	src/main.c:929: break;
      0011FE 02 18 21         [24] 3772 	ljmp	00155$
                                   3773 ;	src/main.c:930: case 'r' :
      001201                       3774 00113$:
                                   3775 ;	src/main.c:931: if (get_octet_from_linefi(&u8RxUART)) {
      001201 90 00 41         [24] 3776 	mov	dptr,#_main_u8RxUART_65536_136
      001204 75 F0 40         [24] 3777 	mov	b,#0x40
      001207 C0 07            [24] 3778 	push	ar7
      001209 12 22 F6         [24] 3779 	lcall	_get_octet_from_linefi
      00120C E5 82            [12] 3780 	mov	a,dpl
      00120E D0 07            [24] 3781 	pop	ar7
      001210 60 20            [24] 3782 	jz	00115$
                                   3783 ;	src/main.c:932: printf_fast_f("rx data : %x\r\n", u8RxUART);
      001212 AB 41            [24] 3784 	mov	r3,_main_u8RxUART_65536_136
      001214 7C 00            [12] 3785 	mov	r4,#0x00
      001216 C0 07            [24] 3786 	push	ar7
      001218 C0 03            [24] 3787 	push	ar3
      00121A C0 04            [24] 3788 	push	ar4
      00121C 74 A8            [12] 3789 	mov	a,#___str_40
      00121E C0 E0            [24] 3790 	push	acc
      001220 74 3A            [12] 3791 	mov	a,#(___str_40 >> 8)
      001222 C0 E0            [24] 3792 	push	acc
      001224 12 31 60         [24] 3793 	lcall	_printf_fast_f
      001227 E5 81            [12] 3794 	mov	a,sp
      001229 24 FC            [12] 3795 	add	a,#0xfc
      00122B F5 81            [12] 3796 	mov	sp,a
      00122D D0 07            [24] 3797 	pop	ar7
      00122F 02 18 21         [24] 3798 	ljmp	00155$
      001232                       3799 00115$:
                                   3800 ;	src/main.c:935: printf_fast_f("no rx\r\n");
      001232 C0 07            [24] 3801 	push	ar7
      001234 74 B7            [12] 3802 	mov	a,#___str_41
      001236 C0 E0            [24] 3803 	push	acc
      001238 74 3A            [12] 3804 	mov	a,#(___str_41 >> 8)
      00123A C0 E0            [24] 3805 	push	acc
      00123C 12 31 60         [24] 3806 	lcall	_printf_fast_f
      00123F 15 81            [12] 3807 	dec	sp
      001241 15 81            [12] 3808 	dec	sp
      001243 D0 07            [24] 3809 	pop	ar7
                                   3810 ;	src/main.c:937: break;
      001245 02 18 21         [24] 3811 	ljmp	00155$
                                   3812 ;	src/main.c:938: case 'T' :
      001248                       3813 00117$:
                                   3814 ;	src/main.c:939: printf_fast_f("%d %d %d %d\r\n",gu8BFCnt, gu8BNFCnt, gu8BECnt, gu8BNECnt);
      001248 C0 07            [24] 3815 	push	ar7
      00124A AB 2C            [24] 3816 	mov	r3,_gu8BNECnt
      00124C 7C 00            [12] 3817 	mov	r4,#0x00
      00124E AA 2D            [24] 3818 	mov	r2,_gu8BECnt
      001250 7E 00            [12] 3819 	mov	r6,#0x00
      001252 85 2A 5D         [24] 3820 	mov	_main_sloc0_1_0,_gu8BNFCnt
                                   3821 ;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
      001255 8E 5E            [24] 3822 	mov	(_main_sloc0_1_0 + 1),r6
      001257 AD 2B            [24] 3823 	mov	r5,_gu8BFCnt
      001259 7F 00            [12] 3824 	mov	r7,#0x00
      00125B C0 07            [24] 3825 	push	ar7
      00125D C0 03            [24] 3826 	push	ar3
      00125F C0 04            [24] 3827 	push	ar4
      001261 C0 02            [24] 3828 	push	ar2
      001263 C0 06            [24] 3829 	push	ar6
      001265 C0 5D            [24] 3830 	push	_main_sloc0_1_0
      001267 C0 5E            [24] 3831 	push	(_main_sloc0_1_0 + 1)
      001269 C0 05            [24] 3832 	push	ar5
      00126B C0 07            [24] 3833 	push	ar7
      00126D 74 BF            [12] 3834 	mov	a,#___str_42
      00126F C0 E0            [24] 3835 	push	acc
      001271 74 3A            [12] 3836 	mov	a,#(___str_42 >> 8)
      001273 C0 E0            [24] 3837 	push	acc
      001275 12 31 60         [24] 3838 	lcall	_printf_fast_f
      001278 E5 81            [12] 3839 	mov	a,sp
      00127A 24 F6            [12] 3840 	add	a,#0xf6
      00127C F5 81            [12] 3841 	mov	sp,a
      00127E D0 07            [24] 3842 	pop	ar7
                                   3843 ;	src/main.c:941: gu8BFCnt = 0;
      001280 75 2B 00         [24] 3844 	mov	_gu8BFCnt,#0x00
                                   3845 ;	src/main.c:942: gu8BNFCnt = 0;
      001283 75 2A 00         [24] 3846 	mov	_gu8BNFCnt,#0x00
                                   3847 ;	src/main.c:943: gu8BECnt = 0;
      001286 75 2D 00         [24] 3848 	mov	_gu8BECnt,#0x00
                                   3849 ;	src/main.c:944: gu8BNECnt = 0;
      001289 75 2C 00         [24] 3850 	mov	_gu8BNECnt,#0x00
                                   3851 ;	src/main.c:945: break;
      00128C D0 07            [24] 3852 	pop	ar7
      00128E 02 18 21         [24] 3853 	ljmp	00155$
                                   3854 ;	src/main.c:946: case 'k' : // speed up
      001291                       3855 00118$:
                                   3856 ;	src/main.c:947: gu8RateIdx++;
      001291 90 00 24         [24] 3857 	mov	dptr,#_gu8RateIdx
      001294 E0               [24] 3858 	movx	a,@dptr
      001295 24 01            [12] 3859 	add	a,#0x01
      001297 F0               [24] 3860 	movx	@dptr,a
                                   3861 ;	src/main.c:948: printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
      001298 E0               [24] 3862 	movx	a,@dptr
      001299 75 F0 04         [24] 3863 	mov	b,#0x04
      00129C A4               [48] 3864 	mul	ab
      00129D 24 48            [12] 3865 	add	a,#_gpu32UartSpeed
      00129F F5 82            [12] 3866 	mov	dpl,a
      0012A1 74 00            [12] 3867 	mov	a,#(_gpu32UartSpeed >> 8)
      0012A3 35 F0            [12] 3868 	addc	a,b
      0012A5 F5 83            [12] 3869 	mov	dph,a
      0012A7 E0               [24] 3870 	movx	a,@dptr
      0012A8 FB               [12] 3871 	mov	r3,a
      0012A9 A3               [24] 3872 	inc	dptr
      0012AA E0               [24] 3873 	movx	a,@dptr
      0012AB FC               [12] 3874 	mov	r4,a
      0012AC A3               [24] 3875 	inc	dptr
      0012AD E0               [24] 3876 	movx	a,@dptr
      0012AE FD               [12] 3877 	mov	r5,a
      0012AF A3               [24] 3878 	inc	dptr
      0012B0 E0               [24] 3879 	movx	a,@dptr
      0012B1 FE               [12] 3880 	mov	r6,a
      0012B2 C0 07            [24] 3881 	push	ar7
      0012B4 C0 03            [24] 3882 	push	ar3
      0012B6 C0 04            [24] 3883 	push	ar4
      0012B8 C0 05            [24] 3884 	push	ar5
      0012BA C0 06            [24] 3885 	push	ar6
      0012BC 74 CD            [12] 3886 	mov	a,#___str_43
      0012BE C0 E0            [24] 3887 	push	acc
      0012C0 74 3A            [12] 3888 	mov	a,#(___str_43 >> 8)
      0012C2 C0 E0            [24] 3889 	push	acc
      0012C4 12 31 60         [24] 3890 	lcall	_printf_fast_f
      0012C7 E5 81            [12] 3891 	mov	a,sp
      0012C9 24 FA            [12] 3892 	add	a,#0xfa
      0012CB F5 81            [12] 3893 	mov	sp,a
      0012CD D0 07            [24] 3894 	pop	ar7
                                   3895 ;	src/main.c:949: break;
      0012CF 02 18 21         [24] 3896 	ljmp	00155$
                                   3897 ;	src/main.c:950: case 'j' : // speed down
      0012D2                       3898 00119$:
                                   3899 ;	src/main.c:951: gu8RateIdx--;
      0012D2 90 00 24         [24] 3900 	mov	dptr,#_gu8RateIdx
      0012D5 E0               [24] 3901 	movx	a,@dptr
      0012D6 14               [12] 3902 	dec	a
      0012D7 F0               [24] 3903 	movx	@dptr,a
                                   3904 ;	src/main.c:952: printf_fast_f("%lu\r\n", gpu32UartSpeed[gu8RateIdx]);
      0012D8 E0               [24] 3905 	movx	a,@dptr
      0012D9 75 F0 04         [24] 3906 	mov	b,#0x04
      0012DC A4               [48] 3907 	mul	ab
      0012DD 24 48            [12] 3908 	add	a,#_gpu32UartSpeed
      0012DF F5 82            [12] 3909 	mov	dpl,a
      0012E1 74 00            [12] 3910 	mov	a,#(_gpu32UartSpeed >> 8)
      0012E3 35 F0            [12] 3911 	addc	a,b
      0012E5 F5 83            [12] 3912 	mov	dph,a
      0012E7 E0               [24] 3913 	movx	a,@dptr
      0012E8 FB               [12] 3914 	mov	r3,a
      0012E9 A3               [24] 3915 	inc	dptr
      0012EA E0               [24] 3916 	movx	a,@dptr
      0012EB FC               [12] 3917 	mov	r4,a
      0012EC A3               [24] 3918 	inc	dptr
      0012ED E0               [24] 3919 	movx	a,@dptr
      0012EE FD               [12] 3920 	mov	r5,a
      0012EF A3               [24] 3921 	inc	dptr
      0012F0 E0               [24] 3922 	movx	a,@dptr
      0012F1 FE               [12] 3923 	mov	r6,a
      0012F2 C0 07            [24] 3924 	push	ar7
      0012F4 C0 03            [24] 3925 	push	ar3
      0012F6 C0 04            [24] 3926 	push	ar4
      0012F8 C0 05            [24] 3927 	push	ar5
      0012FA C0 06            [24] 3928 	push	ar6
      0012FC 74 CD            [12] 3929 	mov	a,#___str_43
      0012FE C0 E0            [24] 3930 	push	acc
      001300 74 3A            [12] 3931 	mov	a,#(___str_43 >> 8)
      001302 C0 E0            [24] 3932 	push	acc
      001304 12 31 60         [24] 3933 	lcall	_printf_fast_f
      001307 E5 81            [12] 3934 	mov	a,sp
      001309 24 FA            [12] 3935 	add	a,#0xfa
      00130B F5 81            [12] 3936 	mov	sp,a
      00130D D0 07            [24] 3937 	pop	ar7
                                   3938 ;	src/main.c:953: break;
      00130F 02 18 21         [24] 3939 	ljmp	00155$
                                   3940 ;	src/main.c:954: case 's' : // speed setting
      001312                       3941 00120$:
                                   3942 ;	src/main.c:955: InitialUART1_Timer3(gpu32UartSpeed[gu8RateIdx]);
      001312 90 00 24         [24] 3943 	mov	dptr,#_gu8RateIdx
      001315 E0               [24] 3944 	movx	a,@dptr
      001316 75 F0 04         [24] 3945 	mov	b,#0x04
      001319 A4               [48] 3946 	mul	ab
      00131A 24 48            [12] 3947 	add	a,#_gpu32UartSpeed
      00131C F5 82            [12] 3948 	mov	dpl,a
      00131E 74 00            [12] 3949 	mov	a,#(_gpu32UartSpeed >> 8)
      001320 35 F0            [12] 3950 	addc	a,b
      001322 F5 83            [12] 3951 	mov	dph,a
      001324 E0               [24] 3952 	movx	a,@dptr
      001325 FB               [12] 3953 	mov	r3,a
      001326 A3               [24] 3954 	inc	dptr
      001327 E0               [24] 3955 	movx	a,@dptr
      001328 FC               [12] 3956 	mov	r4,a
      001329 A3               [24] 3957 	inc	dptr
      00132A E0               [24] 3958 	movx	a,@dptr
      00132B FD               [12] 3959 	mov	r5,a
      00132C A3               [24] 3960 	inc	dptr
      00132D E0               [24] 3961 	movx	a,@dptr
      00132E 8B 82            [24] 3962 	mov	dpl,r3
      001330 8C 83            [24] 3963 	mov	dph,r4
      001332 8D F0            [24] 3964 	mov	b,r5
      001334 C0 07            [24] 3965 	push	ar7
      001336 12 2C 75         [24] 3966 	lcall	_InitialUART1_Timer3
      001339 D0 07            [24] 3967 	pop	ar7
                                   3968 ;	src/main.c:956: break;
      00133B 02 18 21         [24] 3969 	ljmp	00155$
                                   3970 ;	src/main.c:957: case 'p' :
      00133E                       3971 00121$:
                                   3972 ;	src/main.c:958: gu8ULTestMode = ULTMODE_DATA;
      00133E 90 00 1E         [24] 3973 	mov	dptr,#_gu8ULTestMode
      001341 74 02            [12] 3974 	mov	a,#0x02
      001343 F0               [24] 3975 	movx	@dptr,a
                                   3976 ;	src/main.c:959: break;
      001344 02 18 21         [24] 3977 	ljmp	00155$
                                   3978 ;	src/main.c:960: case 'i' :
      001347                       3979 00122$:
                                   3980 ;	src/main.c:961: gpu8Data[0] = 0x2c;
      001347 90 00 09         [24] 3981 	mov	dptr,#_gpu8Data
      00134A 74 2C            [12] 3982 	mov	a,#0x2c
      00134C F0               [24] 3983 	movx	@dptr,a
                                   3984 ;	src/main.c:962: gpu8Data[1] = 0x06;
      00134D 90 00 0A         [24] 3985 	mov	dptr,#(_gpu8Data + 0x0001)
      001350 74 06            [12] 3986 	mov	a,#0x06
      001352 F0               [24] 3987 	movx	@dptr,a
                                   3988 ;	src/main.c:963: i2c_write_bytes_bitbannging(0x4a, 2, gpu8Data);
      001353 75 33 09         [24] 3989 	mov	_i2c_write_bytes_bitbannging_PARM_3,#_gpu8Data
      001356 75 34 00         [24] 3990 	mov	(_i2c_write_bytes_bitbannging_PARM_3 + 1),#(_gpu8Data >> 8)
      001359 75 35 00         [24] 3991 	mov	(_i2c_write_bytes_bitbannging_PARM_3 + 2),#0x00
      00135C 75 32 02         [24] 3992 	mov	_i2c_write_bytes_bitbannging_PARM_2,#0x02
      00135F 75 82 4A         [24] 3993 	mov	dpl,#0x4a
      001362 C0 07            [24] 3994 	push	ar7
      001364 12 0D 6B         [24] 3995 	lcall	_i2c_write_bytes_bitbannging
                                   3996 ;	src/main.c:964: delay_nop(10000);
      001367 90 27 10         [24] 3997 	mov	dptr,#0x2710
      00136A 12 0E 7E         [24] 3998 	lcall	_delay_nop
                                   3999 ;	src/main.c:965: i2c_read_bytes_bitbannging(0x4a, 3, gpu8Data);
      00136D 75 37 09         [24] 4000 	mov	_i2c_read_bytes_bitbannging_PARM_3,#_gpu8Data
      001370 75 38 00         [24] 4001 	mov	(_i2c_read_bytes_bitbannging_PARM_3 + 1),#(_gpu8Data >> 8)
      001373 75 39 00         [24] 4002 	mov	(_i2c_read_bytes_bitbannging_PARM_3 + 2),#0x00
      001376 75 36 03         [24] 4003 	mov	_i2c_read_bytes_bitbannging_PARM_2,#0x03
      001379 75 82 4A         [24] 4004 	mov	dpl,#0x4a
      00137C 12 0D 9D         [24] 4005 	lcall	_i2c_read_bytes_bitbannging
                                   4006 ;	src/main.c:974: if (gpu8Data[2] == crc8(gpu8Data,2,0xFF)) {
      00137F 90 00 0B         [24] 4007 	mov	dptr,#(_gpu8Data + 0x0002)
      001382 E0               [24] 4008 	movx	a,@dptr
      001383 FE               [12] 4009 	mov	r6,a
      001384 75 19 02         [24] 4010 	mov	_crc8_PARM_2,#0x02
      001387 75 1A FF         [24] 4011 	mov	_crc8_PARM_3,#0xff
      00138A 90 00 09         [24] 4012 	mov	dptr,#_gpu8Data
      00138D 75 F0 00         [24] 4013 	mov	b,#0x00
      001390 C0 06            [24] 4014 	push	ar6
      001392 12 28 E0         [24] 4015 	lcall	_crc8
      001395 AD 82            [24] 4016 	mov	r5,dpl
      001397 D0 06            [24] 4017 	pop	ar6
      001399 D0 07            [24] 4018 	pop	ar7
      00139B EE               [12] 4019 	mov	a,r6
      00139C B5 05 49         [24] 4020 	cjne	a,ar5,00124$
                                   4021 ;	src/main.c:976: printf_fast_f("[%d]temp : %lu\r\n", su8Cnt++, calc_temp(gpu8Data[0], gpu8Data[1]));
      00139F C0 07            [24] 4022 	push	ar7
      0013A1 90 00 09         [24] 4023 	mov	dptr,#_gpu8Data
      0013A4 E0               [24] 4024 	movx	a,@dptr
      0013A5 FE               [12] 4025 	mov	r6,a
      0013A6 90 00 0A         [24] 4026 	mov	dptr,#(_gpu8Data + 0x0001)
      0013A9 E0               [24] 4027 	movx	a,@dptr
      0013AA F5 3E            [12] 4028 	mov	_calc_temp_PARM_2,a
      0013AC 8E 82            [24] 4029 	mov	dpl,r6
      0013AE C0 07            [24] 4030 	push	ar7
      0013B0 12 0E 22         [24] 4031 	lcall	_calc_temp
      0013B3 AB 82            [24] 4032 	mov	r3,dpl
      0013B5 AC 83            [24] 4033 	mov	r4,dph
      0013B7 AD F0            [24] 4034 	mov	r5,b
      0013B9 FE               [12] 4035 	mov	r6,a
      0013BA D0 07            [24] 4036 	pop	ar7
      0013BC AA 3F            [24] 4037 	mov	r2,_main_su8Cnt_327681_146
      0013BE 05 3F            [12] 4038 	inc	_main_su8Cnt_327681_146
      0013C0 7F 00            [12] 4039 	mov	r7,#0x00
      0013C2 C0 07            [24] 4040 	push	ar7
      0013C4 C0 03            [24] 4041 	push	ar3
      0013C6 C0 04            [24] 4042 	push	ar4
      0013C8 C0 05            [24] 4043 	push	ar5
      0013CA C0 06            [24] 4044 	push	ar6
      0013CC C0 02            [24] 4045 	push	ar2
      0013CE C0 07            [24] 4046 	push	ar7
      0013D0 74 D3            [12] 4047 	mov	a,#___str_44
      0013D2 C0 E0            [24] 4048 	push	acc
      0013D4 74 3A            [12] 4049 	mov	a,#(___str_44 >> 8)
      0013D6 C0 E0            [24] 4050 	push	acc
      0013D8 12 31 60         [24] 4051 	lcall	_printf_fast_f
      0013DB E5 81            [12] 4052 	mov	a,sp
      0013DD 24 F8            [12] 4053 	add	a,#0xf8
      0013DF F5 81            [12] 4054 	mov	sp,a
      0013E1 D0 07            [24] 4055 	pop	ar7
      0013E3 D0 07            [24] 4056 	pop	ar7
      0013E5 02 18 21         [24] 4057 	ljmp	00155$
      0013E8                       4058 00124$:
                                   4059 ;	src/main.c:979: printf_fast_f("crc bad\r\n");
      0013E8 C0 07            [24] 4060 	push	ar7
      0013EA 74 E4            [12] 4061 	mov	a,#___str_45
      0013EC C0 E0            [24] 4062 	push	acc
      0013EE 74 3A            [12] 4063 	mov	a,#(___str_45 >> 8)
      0013F0 C0 E0            [24] 4064 	push	acc
      0013F2 12 31 60         [24] 4065 	lcall	_printf_fast_f
      0013F5 15 81            [12] 4066 	dec	sp
      0013F7 15 81            [12] 4067 	dec	sp
      0013F9 D0 07            [24] 4068 	pop	ar7
                                   4069 ;	src/main.c:984: break;
      0013FB 02 18 21         [24] 4070 	ljmp	00155$
                                   4071 ;	src/main.c:989: for (i=8;i<128-8;i++) {
      0013FE                       4072 00285$:
      0013FE 7E 08            [12] 4073 	mov	r6,#0x08
      001400                       4074 00242$:
                                   4075 ;	src/main.c:990: if (i2c_address_bitbanging(i,I2C_W) == 0) {
      001400 75 31 00         [24] 4076 	mov	_i2c_address_bitbanging_PARM_2,#0x00
      001403 8E 82            [24] 4077 	mov	dpl,r6
      001405 C0 07            [24] 4078 	push	ar7
      001407 C0 06            [24] 4079 	push	ar6
      001409 12 0D 5E         [24] 4080 	lcall	_i2c_address_bitbanging
      00140C E5 82            [12] 4081 	mov	a,dpl
      00140E D0 06            [24] 4082 	pop	ar6
      001410 D0 07            [24] 4083 	pop	ar7
                                   4084 ;	src/main.c:991: printf_fast_f("i2c found %x:\r\n",i);
      001412 70 20            [24] 4085 	jnz	00128$
      001414 8E 04            [24] 4086 	mov	ar4,r6
      001416 FD               [12] 4087 	mov	r5,a
      001417 C0 07            [24] 4088 	push	ar7
      001419 C0 06            [24] 4089 	push	ar6
      00141B C0 04            [24] 4090 	push	ar4
      00141D C0 05            [24] 4091 	push	ar5
      00141F 74 EE            [12] 4092 	mov	a,#___str_46
      001421 C0 E0            [24] 4093 	push	acc
      001423 74 3A            [12] 4094 	mov	a,#(___str_46 >> 8)
      001425 C0 E0            [24] 4095 	push	acc
      001427 12 31 60         [24] 4096 	lcall	_printf_fast_f
      00142A E5 81            [12] 4097 	mov	a,sp
      00142C 24 FC            [12] 4098 	add	a,#0xfc
      00142E F5 81            [12] 4099 	mov	sp,a
      001430 D0 06            [24] 4100 	pop	ar6
      001432 D0 07            [24] 4101 	pop	ar7
      001434                       4102 00128$:
                                   4103 ;	src/main.c:996: SCL_PIN = 1;
                                   4104 ;	assignBit
      001434 D2 93            [12] 4105 	setb	_P13
                                   4106 ;	src/main.c:997: SDA_PIN = 1;
                                   4107 ;	assignBit
      001436 D2 94            [12] 4108 	setb	_P14
                                   4109 ;	src/main.c:989: for (i=8;i<128-8;i++) {
      001438 0E               [12] 4110 	inc	r6
      001439 BE 78 00         [24] 4111 	cjne	r6,#0x78,00559$
      00143C                       4112 00559$:
      00143C 40 C2            [24] 4113 	jc	00242$
                                   4114 ;	src/main.c:1000: break;
      00143E 02 18 21         [24] 4115 	ljmp	00155$
                                   4116 ;	src/main.c:1001: case KEY_ESC :
      001441                       4117 00130$:
                                   4118 ;	src/main.c:1002: gu8DurMode ++;
      001441 90 00 06         [24] 4119 	mov	dptr,#_gu8DurMode
      001444 E0               [24] 4120 	movx	a,@dptr
      001445 24 01            [12] 4121 	add	a,#0x01
      001447 F0               [24] 4122 	movx	@dptr,a
                                   4123 ;	src/main.c:1003: switch(gu8DurMode) {
      001448 E0               [24] 4124 	movx	a,@dptr
      001449 FE               [12] 4125 	mov  r6,a
      00144A 24 FA            [12] 4126 	add	a,#0xff - 0x05
      00144C 50 03            [24] 4127 	jnc	00561$
      00144E 02 15 B0         [24] 4128 	ljmp	00137$
      001451                       4129 00561$:
      001451 EE               [12] 4130 	mov	a,r6
      001452 2E               [12] 4131 	add	a,r6
                                   4132 ;	src/main.c:1004: case 0 :
      001453 90 14 57         [24] 4133 	mov	dptr,#00562$
      001456 73               [24] 4134 	jmp	@a+dptr
      001457                       4135 00562$:
      001457 80 0A            [24] 4136 	sjmp	00131$
      001459 80 1E            [24] 4137 	sjmp	00132$
      00145B 80 32            [24] 4138 	sjmp	00133$
      00145D 80 46            [24] 4139 	sjmp	00134$
      00145F 80 5A            [24] 4140 	sjmp	00135$
      001461 80 6E            [24] 4141 	sjmp	00136$
      001463                       4142 00131$:
                                   4143 ;	src/main.c:1005: printf_fast_f("gu8PPambleDurHNum\r\n");
      001463 C0 07            [24] 4144 	push	ar7
      001465 74 FE            [12] 4145 	mov	a,#___str_47
      001467 C0 E0            [24] 4146 	push	acc
      001469 74 3A            [12] 4147 	mov	a,#(___str_47 >> 8)
      00146B C0 E0            [24] 4148 	push	acc
      00146D 12 31 60         [24] 4149 	lcall	_printf_fast_f
      001470 15 81            [12] 4150 	dec	sp
      001472 15 81            [12] 4151 	dec	sp
      001474 D0 07            [24] 4152 	pop	ar7
                                   4153 ;	src/main.c:1006: break;
      001476 02 18 21         [24] 4154 	ljmp	00155$
                                   4155 ;	src/main.c:1007: case 1 :
      001479                       4156 00132$:
                                   4157 ;	src/main.c:1008: printf_fast_f("gu8PPambleDurLNum\r\n");
      001479 C0 07            [24] 4158 	push	ar7
      00147B 74 12            [12] 4159 	mov	a,#___str_48
      00147D C0 E0            [24] 4160 	push	acc
      00147F 74 3B            [12] 4161 	mov	a,#(___str_48 >> 8)
      001481 C0 E0            [24] 4162 	push	acc
      001483 12 31 60         [24] 4163 	lcall	_printf_fast_f
      001486 15 81            [12] 4164 	dec	sp
      001488 15 81            [12] 4165 	dec	sp
      00148A D0 07            [24] 4166 	pop	ar7
                                   4167 ;	src/main.c:1009: break;
      00148C 02 18 21         [24] 4168 	ljmp	00155$
                                   4169 ;	src/main.c:1010: case 2 :
      00148F                       4170 00133$:
                                   4171 ;	src/main.c:1011: printf_fast_f("gu8PPambleNum\r\n");
      00148F C0 07            [24] 4172 	push	ar7
      001491 74 26            [12] 4173 	mov	a,#___str_49
      001493 C0 E0            [24] 4174 	push	acc
      001495 74 3B            [12] 4175 	mov	a,#(___str_49 >> 8)
      001497 C0 E0            [24] 4176 	push	acc
      001499 12 31 60         [24] 4177 	lcall	_printf_fast_f
      00149C 15 81            [12] 4178 	dec	sp
      00149E 15 81            [12] 4179 	dec	sp
      0014A0 D0 07            [24] 4180 	pop	ar7
                                   4181 ;	src/main.c:1012: break;
      0014A2 02 18 21         [24] 4182 	ljmp	00155$
                                   4183 ;	src/main.c:1013: case 3 :
      0014A5                       4184 00134$:
                                   4185 ;	src/main.c:1014: printf_fast_f("gu8LineFiUpRate\r\n");
      0014A5 C0 07            [24] 4186 	push	ar7
      0014A7 74 36            [12] 4187 	mov	a,#___str_50
      0014A9 C0 E0            [24] 4188 	push	acc
      0014AB 74 3B            [12] 4189 	mov	a,#(___str_50 >> 8)
      0014AD C0 E0            [24] 4190 	push	acc
      0014AF 12 31 60         [24] 4191 	lcall	_printf_fast_f
      0014B2 15 81            [12] 4192 	dec	sp
      0014B4 15 81            [12] 4193 	dec	sp
      0014B6 D0 07            [24] 4194 	pop	ar7
                                   4195 ;	src/main.c:1015: break;
      0014B8 02 18 21         [24] 4196 	ljmp	00155$
                                   4197 ;	src/main.c:1016: case 4 :
      0014BB                       4198 00135$:
                                   4199 ;	src/main.c:1017: printf_fast_f("gu8TxCnt\r\n");
      0014BB C0 07            [24] 4200 	push	ar7
      0014BD 74 48            [12] 4201 	mov	a,#___str_51
      0014BF C0 E0            [24] 4202 	push	acc
      0014C1 74 3B            [12] 4203 	mov	a,#(___str_51 >> 8)
      0014C3 C0 E0            [24] 4204 	push	acc
      0014C5 12 31 60         [24] 4205 	lcall	_printf_fast_f
      0014C8 15 81            [12] 4206 	dec	sp
      0014CA 15 81            [12] 4207 	dec	sp
      0014CC D0 07            [24] 4208 	pop	ar7
                                   4209 ;	src/main.c:1018: break;
      0014CE 02 18 21         [24] 4210 	ljmp	00155$
                                   4211 ;	src/main.c:1019: case 5 :
      0014D1                       4212 00136$:
                                   4213 ;	src/main.c:1020: printf_fast_f("-------------------------------\r\n");
      0014D1 C0 07            [24] 4214 	push	ar7
      0014D3 C0 07            [24] 4215 	push	ar7
      0014D5 74 53            [12] 4216 	mov	a,#___str_52
      0014D7 C0 E0            [24] 4217 	push	acc
      0014D9 74 3B            [12] 4218 	mov	a,#(___str_52 >> 8)
      0014DB C0 E0            [24] 4219 	push	acc
      0014DD 12 31 60         [24] 4220 	lcall	_printf_fast_f
      0014E0 15 81            [12] 4221 	dec	sp
      0014E2 15 81            [12] 4222 	dec	sp
                                   4223 ;	src/main.c:1021: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
      0014E4 90 00 01         [24] 4224 	mov	dptr,#_gu8PPambleDurHNum
      0014E7 E0               [24] 4225 	movx	a,@dptr
      0014E8 FE               [12] 4226 	mov	r6,a
      0014E9 7D 00            [12] 4227 	mov	r5,#0x00
      0014EB C0 06            [24] 4228 	push	ar6
      0014ED C0 05            [24] 4229 	push	ar5
      0014EF 74 75            [12] 4230 	mov	a,#___str_53
      0014F1 C0 E0            [24] 4231 	push	acc
      0014F3 74 3B            [12] 4232 	mov	a,#(___str_53 >> 8)
      0014F5 C0 E0            [24] 4233 	push	acc
      0014F7 12 31 60         [24] 4234 	lcall	_printf_fast_f
      0014FA E5 81            [12] 4235 	mov	a,sp
      0014FC 24 FC            [12] 4236 	add	a,#0xfc
      0014FE F5 81            [12] 4237 	mov	sp,a
                                   4238 ;	src/main.c:1022: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
      001500 90 00 02         [24] 4239 	mov	dptr,#_gu8PPambleDurLNum
      001503 E0               [24] 4240 	movx	a,@dptr
      001504 FE               [12] 4241 	mov	r6,a
      001505 7D 00            [12] 4242 	mov	r5,#0x00
      001507 C0 06            [24] 4243 	push	ar6
      001509 C0 05            [24] 4244 	push	ar5
      00150B 74 8C            [12] 4245 	mov	a,#___str_54
      00150D C0 E0            [24] 4246 	push	acc
      00150F 74 3B            [12] 4247 	mov	a,#(___str_54 >> 8)
      001511 C0 E0            [24] 4248 	push	acc
      001513 12 31 60         [24] 4249 	lcall	_printf_fast_f
      001516 E5 81            [12] 4250 	mov	a,sp
      001518 24 FC            [12] 4251 	add	a,#0xfc
      00151A F5 81            [12] 4252 	mov	sp,a
                                   4253 ;	src/main.c:1023: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
      00151C 90 00 03         [24] 4254 	mov	dptr,#_gu8PPambleNum
      00151F E0               [24] 4255 	movx	a,@dptr
      001520 C0 E0            [24] 4256 	push	acc
      001522 A3               [24] 4257 	inc	dptr
      001523 E0               [24] 4258 	movx	a,@dptr
      001524 C0 E0            [24] 4259 	push	acc
      001526 74 A3            [12] 4260 	mov	a,#___str_55
      001528 C0 E0            [24] 4261 	push	acc
      00152A 74 3B            [12] 4262 	mov	a,#(___str_55 >> 8)
      00152C C0 E0            [24] 4263 	push	acc
      00152E 12 31 60         [24] 4264 	lcall	_printf_fast_f
      001531 E5 81            [12] 4265 	mov	a,sp
      001533 24 FC            [12] 4266 	add	a,#0xfc
      001535 F5 81            [12] 4267 	mov	sp,a
      001537 D0 07            [24] 4268 	pop	ar7
                                   4269 ;	src/main.c:1024: printf_fast_f("%lu[%d]\r\n", gpu32UartSpeed[gu8LineFiUpRate],gu8LineFiUpRate);
      001539 90 00 05         [24] 4270 	mov	dptr,#_gu8LineFiUpRate
      00153C E0               [24] 4271 	movx	a,@dptr
      00153D FE               [12] 4272 	mov	r6,a
      00153E FC               [12] 4273 	mov	r4,a
      00153F 7D 00            [12] 4274 	mov	r5,#0x00
      001541 EE               [12] 4275 	mov	a,r6
      001542 75 F0 04         [24] 4276 	mov	b,#0x04
      001545 A4               [48] 4277 	mul	ab
      001546 24 48            [12] 4278 	add	a,#_gpu32UartSpeed
      001548 F5 82            [12] 4279 	mov	dpl,a
      00154A 74 00            [12] 4280 	mov	a,#(_gpu32UartSpeed >> 8)
      00154C 35 F0            [12] 4281 	addc	a,b
      00154E F5 83            [12] 4282 	mov	dph,a
      001550 E0               [24] 4283 	movx	a,@dptr
      001551 FA               [12] 4284 	mov	r2,a
      001552 A3               [24] 4285 	inc	dptr
      001553 E0               [24] 4286 	movx	a,@dptr
      001554 FB               [12] 4287 	mov	r3,a
      001555 A3               [24] 4288 	inc	dptr
      001556 E0               [24] 4289 	movx	a,@dptr
      001557 FE               [12] 4290 	mov	r6,a
      001558 A3               [24] 4291 	inc	dptr
      001559 E0               [24] 4292 	movx	a,@dptr
      00155A FF               [12] 4293 	mov	r7,a
      00155B C0 07            [24] 4294 	push	ar7
      00155D C0 04            [24] 4295 	push	ar4
      00155F C0 05            [24] 4296 	push	ar5
      001561 C0 02            [24] 4297 	push	ar2
      001563 C0 03            [24] 4298 	push	ar3
      001565 C0 06            [24] 4299 	push	ar6
      001567 C0 07            [24] 4300 	push	ar7
      001569 74 B6            [12] 4301 	mov	a,#___str_56
      00156B C0 E0            [24] 4302 	push	acc
      00156D 74 3B            [12] 4303 	mov	a,#(___str_56 >> 8)
      00156F C0 E0            [24] 4304 	push	acc
      001571 12 31 60         [24] 4305 	lcall	_printf_fast_f
      001574 E5 81            [12] 4306 	mov	a,sp
      001576 24 F8            [12] 4307 	add	a,#0xf8
      001578 F5 81            [12] 4308 	mov	sp,a
      00157A D0 07            [24] 4309 	pop	ar7
                                   4310 ;	src/main.c:1025: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
      00157C 90 00 07         [24] 4311 	mov	dptr,#_gu8TxCnt
      00157F E0               [24] 4312 	movx	a,@dptr
      001580 FF               [12] 4313 	mov	r7,a
      001581 7E 00            [12] 4314 	mov	r6,#0x00
      001583 C0 07            [24] 4315 	push	ar7
      001585 C0 07            [24] 4316 	push	ar7
      001587 C0 06            [24] 4317 	push	ar6
      001589 74 C0            [12] 4318 	mov	a,#___str_57
      00158B C0 E0            [24] 4319 	push	acc
      00158D 74 3B            [12] 4320 	mov	a,#(___str_57 >> 8)
      00158F C0 E0            [24] 4321 	push	acc
      001591 12 31 60         [24] 4322 	lcall	_printf_fast_f
      001594 E5 81            [12] 4323 	mov	a,sp
      001596 24 FC            [12] 4324 	add	a,#0xfc
      001598 F5 81            [12] 4325 	mov	sp,a
                                   4326 ;	src/main.c:1026: printf_fast_f("-------------------------------\r\n");
      00159A 74 53            [12] 4327 	mov	a,#___str_52
      00159C C0 E0            [24] 4328 	push	acc
      00159E 74 3B            [12] 4329 	mov	a,#(___str_52 >> 8)
      0015A0 C0 E0            [24] 4330 	push	acc
      0015A2 12 31 60         [24] 4331 	lcall	_printf_fast_f
      0015A5 15 81            [12] 4332 	dec	sp
      0015A7 15 81            [12] 4333 	dec	sp
      0015A9 D0 07            [24] 4334 	pop	ar7
                                   4335 ;	src/main.c:1027: break;
      0015AB D0 07            [24] 4336 	pop	ar7
      0015AD 02 18 21         [24] 4337 	ljmp	00155$
                                   4338 ;	src/main.c:1028: default :
      0015B0                       4339 00137$:
                                   4340 ;	src/main.c:1029: gu8DurMode = 0;
      0015B0 90 00 06         [24] 4341 	mov	dptr,#_gu8DurMode
      0015B3 E4               [12] 4342 	clr	a
      0015B4 F0               [24] 4343 	movx	@dptr,a
                                   4344 ;	src/main.c:1030: printf_fast_f("gu8PPambleDurHNum\r\n");
      0015B5 C0 07            [24] 4345 	push	ar7
      0015B7 74 FE            [12] 4346 	mov	a,#___str_47
      0015B9 C0 E0            [24] 4347 	push	acc
      0015BB 74 3A            [12] 4348 	mov	a,#(___str_47 >> 8)
      0015BD C0 E0            [24] 4349 	push	acc
      0015BF 12 31 60         [24] 4350 	lcall	_printf_fast_f
      0015C2 15 81            [12] 4351 	dec	sp
      0015C4 15 81            [12] 4352 	dec	sp
      0015C6 D0 07            [24] 4353 	pop	ar7
                                   4354 ;	src/main.c:1033: break;
      0015C8 02 18 21         [24] 4355 	ljmp	00155$
                                   4356 ;	src/main.c:1034: case '+' :
      0015CB                       4357 00139$:
                                   4358 ;	src/main.c:1035: switch(gu8DurMode) {
      0015CB 90 00 06         [24] 4359 	mov	dptr,#_gu8DurMode
      0015CE E0               [24] 4360 	movx	a,@dptr
      0015CF FE               [12] 4361 	mov  r6,a
      0015D0 24 FB            [12] 4362 	add	a,#0xff - 0x04
      0015D2 50 03            [24] 4363 	jnc	00563$
      0015D4 02 18 21         [24] 4364 	ljmp	00155$
      0015D7                       4365 00563$:
      0015D7 EE               [12] 4366 	mov	a,r6
      0015D8 2E               [12] 4367 	add	a,r6
      0015D9 2E               [12] 4368 	add	a,r6
      0015DA 90 15 DE         [24] 4369 	mov	dptr,#00564$
      0015DD 73               [24] 4370 	jmp	@a+dptr
      0015DE                       4371 00564$:
      0015DE 02 15 ED         [24] 4372 	ljmp	00140$
      0015E1 02 16 14         [24] 4373 	ljmp	00141$
      0015E4 02 16 3B         [24] 4374 	ljmp	00142$
      0015E7 02 16 69         [24] 4375 	ljmp	00143$
      0015EA 02 16 CF         [24] 4376 	ljmp	00144$
                                   4377 ;	src/main.c:1036: case 0 :
      0015ED                       4378 00140$:
                                   4379 ;	src/main.c:1037: gu8PPambleDurHNum ++;
      0015ED 90 00 01         [24] 4380 	mov	dptr,#_gu8PPambleDurHNum
      0015F0 E0               [24] 4381 	movx	a,@dptr
      0015F1 24 01            [12] 4382 	add	a,#0x01
      0015F3 F0               [24] 4383 	movx	@dptr,a
                                   4384 ;	src/main.c:1038: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
      0015F4 E0               [24] 4385 	movx	a,@dptr
      0015F5 FE               [12] 4386 	mov	r6,a
      0015F6 7D 00            [12] 4387 	mov	r5,#0x00
      0015F8 C0 07            [24] 4388 	push	ar7
      0015FA C0 06            [24] 4389 	push	ar6
      0015FC C0 05            [24] 4390 	push	ar5
      0015FE 74 75            [12] 4391 	mov	a,#___str_53
      001600 C0 E0            [24] 4392 	push	acc
      001602 74 3B            [12] 4393 	mov	a,#(___str_53 >> 8)
      001604 C0 E0            [24] 4394 	push	acc
      001606 12 31 60         [24] 4395 	lcall	_printf_fast_f
      001609 E5 81            [12] 4396 	mov	a,sp
      00160B 24 FC            [12] 4397 	add	a,#0xfc
      00160D F5 81            [12] 4398 	mov	sp,a
      00160F D0 07            [24] 4399 	pop	ar7
                                   4400 ;	src/main.c:1039: break;
      001611 02 18 21         [24] 4401 	ljmp	00155$
                                   4402 ;	src/main.c:1040: case 1 :
      001614                       4403 00141$:
                                   4404 ;	src/main.c:1041: gu8PPambleDurLNum ++;
      001614 90 00 02         [24] 4405 	mov	dptr,#_gu8PPambleDurLNum
      001617 E0               [24] 4406 	movx	a,@dptr
      001618 24 01            [12] 4407 	add	a,#0x01
      00161A F0               [24] 4408 	movx	@dptr,a
                                   4409 ;	src/main.c:1042: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
      00161B E0               [24] 4410 	movx	a,@dptr
      00161C FE               [12] 4411 	mov	r6,a
      00161D 7D 00            [12] 4412 	mov	r5,#0x00
      00161F C0 07            [24] 4413 	push	ar7
      001621 C0 06            [24] 4414 	push	ar6
      001623 C0 05            [24] 4415 	push	ar5
      001625 74 8C            [12] 4416 	mov	a,#___str_54
      001627 C0 E0            [24] 4417 	push	acc
      001629 74 3B            [12] 4418 	mov	a,#(___str_54 >> 8)
      00162B C0 E0            [24] 4419 	push	acc
      00162D 12 31 60         [24] 4420 	lcall	_printf_fast_f
      001630 E5 81            [12] 4421 	mov	a,sp
      001632 24 FC            [12] 4422 	add	a,#0xfc
      001634 F5 81            [12] 4423 	mov	sp,a
      001636 D0 07            [24] 4424 	pop	ar7
                                   4425 ;	src/main.c:1043: break;
      001638 02 18 21         [24] 4426 	ljmp	00155$
                                   4427 ;	src/main.c:1044: case 2 :
      00163B                       4428 00142$:
                                   4429 ;	src/main.c:1045: gu8PPambleNum ++;
      00163B 90 00 03         [24] 4430 	mov	dptr,#_gu8PPambleNum
      00163E E0               [24] 4431 	movx	a,@dptr
      00163F 24 01            [12] 4432 	add	a,#0x01
      001641 F0               [24] 4433 	movx	@dptr,a
      001642 A3               [24] 4434 	inc	dptr
      001643 E0               [24] 4435 	movx	a,@dptr
      001644 34 00            [12] 4436 	addc	a,#0x00
      001646 F0               [24] 4437 	movx	@dptr,a
                                   4438 ;	src/main.c:1046: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
      001647 C0 07            [24] 4439 	push	ar7
      001649 90 00 03         [24] 4440 	mov	dptr,#_gu8PPambleNum
      00164C E0               [24] 4441 	movx	a,@dptr
      00164D C0 E0            [24] 4442 	push	acc
      00164F A3               [24] 4443 	inc	dptr
      001650 E0               [24] 4444 	movx	a,@dptr
      001651 C0 E0            [24] 4445 	push	acc
      001653 74 A3            [12] 4446 	mov	a,#___str_55
      001655 C0 E0            [24] 4447 	push	acc
      001657 74 3B            [12] 4448 	mov	a,#(___str_55 >> 8)
      001659 C0 E0            [24] 4449 	push	acc
      00165B 12 31 60         [24] 4450 	lcall	_printf_fast_f
      00165E E5 81            [12] 4451 	mov	a,sp
      001660 24 FC            [12] 4452 	add	a,#0xfc
      001662 F5 81            [12] 4453 	mov	sp,a
      001664 D0 07            [24] 4454 	pop	ar7
                                   4455 ;	src/main.c:1047: break;
      001666 02 18 21         [24] 4456 	ljmp	00155$
                                   4457 ;	src/main.c:1048: case 3 :
      001669                       4458 00143$:
                                   4459 ;	src/main.c:1049: printf_fast_f("%lu\r\n", gpu32UartSpeed[++gu8LineFiUpRate]);
      001669 90 00 05         [24] 4460 	mov	dptr,#_gu8LineFiUpRate
      00166C E0               [24] 4461 	movx	a,@dptr
      00166D 24 01            [12] 4462 	add	a,#0x01
      00166F F0               [24] 4463 	movx	@dptr,a
      001670 E0               [24] 4464 	movx	a,@dptr
      001671 75 F0 04         [24] 4465 	mov	b,#0x04
      001674 A4               [48] 4466 	mul	ab
      001675 24 48            [12] 4467 	add	a,#_gpu32UartSpeed
      001677 F5 82            [12] 4468 	mov	dpl,a
      001679 74 00            [12] 4469 	mov	a,#(_gpu32UartSpeed >> 8)
      00167B 35 F0            [12] 4470 	addc	a,b
      00167D F5 83            [12] 4471 	mov	dph,a
      00167F E0               [24] 4472 	movx	a,@dptr
      001680 FB               [12] 4473 	mov	r3,a
      001681 A3               [24] 4474 	inc	dptr
      001682 E0               [24] 4475 	movx	a,@dptr
      001683 FC               [12] 4476 	mov	r4,a
      001684 A3               [24] 4477 	inc	dptr
      001685 E0               [24] 4478 	movx	a,@dptr
      001686 FD               [12] 4479 	mov	r5,a
      001687 A3               [24] 4480 	inc	dptr
      001688 E0               [24] 4481 	movx	a,@dptr
      001689 FE               [12] 4482 	mov	r6,a
      00168A C0 07            [24] 4483 	push	ar7
      00168C C0 03            [24] 4484 	push	ar3
      00168E C0 04            [24] 4485 	push	ar4
      001690 C0 05            [24] 4486 	push	ar5
      001692 C0 06            [24] 4487 	push	ar6
      001694 74 CD            [12] 4488 	mov	a,#___str_43
      001696 C0 E0            [24] 4489 	push	acc
      001698 74 3A            [12] 4490 	mov	a,#(___str_43 >> 8)
      00169A C0 E0            [24] 4491 	push	acc
      00169C 12 31 60         [24] 4492 	lcall	_printf_fast_f
      00169F E5 81            [12] 4493 	mov	a,sp
      0016A1 24 FA            [12] 4494 	add	a,#0xfa
      0016A3 F5 81            [12] 4495 	mov	sp,a
                                   4496 ;	src/main.c:1050: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
      0016A5 90 00 05         [24] 4497 	mov	dptr,#_gu8LineFiUpRate
      0016A8 E0               [24] 4498 	movx	a,@dptr
      0016A9 75 F0 04         [24] 4499 	mov	b,#0x04
      0016AC A4               [48] 4500 	mul	ab
      0016AD 24 48            [12] 4501 	add	a,#_gpu32UartSpeed
      0016AF F5 82            [12] 4502 	mov	dpl,a
      0016B1 74 00            [12] 4503 	mov	a,#(_gpu32UartSpeed >> 8)
      0016B3 35 F0            [12] 4504 	addc	a,b
      0016B5 F5 83            [12] 4505 	mov	dph,a
      0016B7 E0               [24] 4506 	movx	a,@dptr
      0016B8 FB               [12] 4507 	mov	r3,a
      0016B9 A3               [24] 4508 	inc	dptr
      0016BA E0               [24] 4509 	movx	a,@dptr
      0016BB FC               [12] 4510 	mov	r4,a
      0016BC A3               [24] 4511 	inc	dptr
      0016BD E0               [24] 4512 	movx	a,@dptr
      0016BE FD               [12] 4513 	mov	r5,a
      0016BF A3               [24] 4514 	inc	dptr
      0016C0 E0               [24] 4515 	movx	a,@dptr
      0016C1 8B 82            [24] 4516 	mov	dpl,r3
      0016C3 8C 83            [24] 4517 	mov	dph,r4
      0016C5 8D F0            [24] 4518 	mov	b,r5
      0016C7 12 2C 75         [24] 4519 	lcall	_InitialUART1_Timer3
      0016CA D0 07            [24] 4520 	pop	ar7
                                   4521 ;	src/main.c:1051: break;
      0016CC 02 18 21         [24] 4522 	ljmp	00155$
                                   4523 ;	src/main.c:1052: case 4 :
      0016CF                       4524 00144$:
                                   4525 ;	src/main.c:1053: gu8TxCnt ++;
      0016CF 90 00 07         [24] 4526 	mov	dptr,#_gu8TxCnt
      0016D2 E0               [24] 4527 	movx	a,@dptr
      0016D3 24 01            [12] 4528 	add	a,#0x01
      0016D5 F0               [24] 4529 	movx	@dptr,a
                                   4530 ;	src/main.c:1054: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
      0016D6 E0               [24] 4531 	movx	a,@dptr
      0016D7 FE               [12] 4532 	mov	r6,a
      0016D8 7D 00            [12] 4533 	mov	r5,#0x00
      0016DA C0 07            [24] 4534 	push	ar7
      0016DC C0 06            [24] 4535 	push	ar6
      0016DE C0 05            [24] 4536 	push	ar5
      0016E0 74 C0            [12] 4537 	mov	a,#___str_57
      0016E2 C0 E0            [24] 4538 	push	acc
      0016E4 74 3B            [12] 4539 	mov	a,#(___str_57 >> 8)
      0016E6 C0 E0            [24] 4540 	push	acc
      0016E8 12 31 60         [24] 4541 	lcall	_printf_fast_f
      0016EB E5 81            [12] 4542 	mov	a,sp
      0016ED 24 FC            [12] 4543 	add	a,#0xfc
      0016EF F5 81            [12] 4544 	mov	sp,a
      0016F1 D0 07            [24] 4545 	pop	ar7
                                   4546 ;	src/main.c:1057: break;
      0016F3 02 18 21         [24] 4547 	ljmp	00155$
                                   4548 ;	src/main.c:1058: case '-' :
      0016F6                       4549 00146$:
                                   4550 ;	src/main.c:1059: switch(gu8DurMode) {
      0016F6 90 00 06         [24] 4551 	mov	dptr,#_gu8DurMode
      0016F9 E0               [24] 4552 	movx	a,@dptr
      0016FA FE               [12] 4553 	mov  r6,a
      0016FB 24 FB            [12] 4554 	add	a,#0xff - 0x04
      0016FD 50 03            [24] 4555 	jnc	00565$
      0016FF 02 18 21         [24] 4556 	ljmp	00155$
      001702                       4557 00565$:
      001702 EE               [12] 4558 	mov	a,r6
      001703 2E               [12] 4559 	add	a,r6
      001704 2E               [12] 4560 	add	a,r6
      001705 90 17 09         [24] 4561 	mov	dptr,#00566$
      001708 73               [24] 4562 	jmp	@a+dptr
      001709                       4563 00566$:
      001709 02 17 18         [24] 4564 	ljmp	00147$
      00170C 02 17 3E         [24] 4565 	ljmp	00148$
      00170F 02 17 64         [24] 4566 	ljmp	00149$
      001712 02 17 9A         [24] 4567 	ljmp	00150$
      001715 02 17 FE         [24] 4568 	ljmp	00151$
                                   4569 ;	src/main.c:1060: case 0 :
      001718                       4570 00147$:
                                   4571 ;	src/main.c:1061: gu8PPambleDurHNum --;
      001718 90 00 01         [24] 4572 	mov	dptr,#_gu8PPambleDurHNum
      00171B E0               [24] 4573 	movx	a,@dptr
      00171C 14               [12] 4574 	dec	a
      00171D F0               [24] 4575 	movx	@dptr,a
                                   4576 ;	src/main.c:1062: printf_fast_f("gu8PPambleDurHNum:%d\r\n",gu8PPambleDurHNum);
      00171E E0               [24] 4577 	movx	a,@dptr
      00171F FE               [12] 4578 	mov	r6,a
      001720 7D 00            [12] 4579 	mov	r5,#0x00
      001722 C0 07            [24] 4580 	push	ar7
      001724 C0 06            [24] 4581 	push	ar6
      001726 C0 05            [24] 4582 	push	ar5
      001728 74 75            [12] 4583 	mov	a,#___str_53
      00172A C0 E0            [24] 4584 	push	acc
      00172C 74 3B            [12] 4585 	mov	a,#(___str_53 >> 8)
      00172E C0 E0            [24] 4586 	push	acc
      001730 12 31 60         [24] 4587 	lcall	_printf_fast_f
      001733 E5 81            [12] 4588 	mov	a,sp
      001735 24 FC            [12] 4589 	add	a,#0xfc
      001737 F5 81            [12] 4590 	mov	sp,a
      001739 D0 07            [24] 4591 	pop	ar7
                                   4592 ;	src/main.c:1063: break;
      00173B 02 18 21         [24] 4593 	ljmp	00155$
                                   4594 ;	src/main.c:1064: case 1 :
      00173E                       4595 00148$:
                                   4596 ;	src/main.c:1065: gu8PPambleDurLNum --;
      00173E 90 00 02         [24] 4597 	mov	dptr,#_gu8PPambleDurLNum
      001741 E0               [24] 4598 	movx	a,@dptr
      001742 14               [12] 4599 	dec	a
      001743 F0               [24] 4600 	movx	@dptr,a
                                   4601 ;	src/main.c:1066: printf_fast_f("gu8PPambleDurLNum:%d\r\n",gu8PPambleDurLNum);
      001744 E0               [24] 4602 	movx	a,@dptr
      001745 FE               [12] 4603 	mov	r6,a
      001746 7D 00            [12] 4604 	mov	r5,#0x00
      001748 C0 07            [24] 4605 	push	ar7
      00174A C0 06            [24] 4606 	push	ar6
      00174C C0 05            [24] 4607 	push	ar5
      00174E 74 8C            [12] 4608 	mov	a,#___str_54
      001750 C0 E0            [24] 4609 	push	acc
      001752 74 3B            [12] 4610 	mov	a,#(___str_54 >> 8)
      001754 C0 E0            [24] 4611 	push	acc
      001756 12 31 60         [24] 4612 	lcall	_printf_fast_f
      001759 E5 81            [12] 4613 	mov	a,sp
      00175B 24 FC            [12] 4614 	add	a,#0xfc
      00175D F5 81            [12] 4615 	mov	sp,a
      00175F D0 07            [24] 4616 	pop	ar7
                                   4617 ;	src/main.c:1067: break;
      001761 02 18 21         [24] 4618 	ljmp	00155$
                                   4619 ;	src/main.c:1068: case 2 :
      001764                       4620 00149$:
                                   4621 ;	src/main.c:1069: gu8PPambleNum --;
      001764 90 00 03         [24] 4622 	mov	dptr,#_gu8PPambleNum
      001767 E0               [24] 4623 	movx	a,@dptr
      001768 24 FF            [12] 4624 	add	a,#0xff
      00176A FD               [12] 4625 	mov	r5,a
      00176B A3               [24] 4626 	inc	dptr
      00176C E0               [24] 4627 	movx	a,@dptr
      00176D 34 FF            [12] 4628 	addc	a,#0xff
      00176F FE               [12] 4629 	mov	r6,a
      001770 90 00 03         [24] 4630 	mov	dptr,#_gu8PPambleNum
      001773 ED               [12] 4631 	mov	a,r5
      001774 F0               [24] 4632 	movx	@dptr,a
      001775 EE               [12] 4633 	mov	a,r6
      001776 A3               [24] 4634 	inc	dptr
      001777 F0               [24] 4635 	movx	@dptr,a
                                   4636 ;	src/main.c:1070: printf_fast_f("gu8PPambleNum:%d\r\n",gu8PPambleNum);
      001778 C0 07            [24] 4637 	push	ar7
      00177A 90 00 03         [24] 4638 	mov	dptr,#_gu8PPambleNum
      00177D E0               [24] 4639 	movx	a,@dptr
      00177E C0 E0            [24] 4640 	push	acc
      001780 A3               [24] 4641 	inc	dptr
      001781 E0               [24] 4642 	movx	a,@dptr
      001782 C0 E0            [24] 4643 	push	acc
      001784 74 A3            [12] 4644 	mov	a,#___str_55
      001786 C0 E0            [24] 4645 	push	acc
      001788 74 3B            [12] 4646 	mov	a,#(___str_55 >> 8)
      00178A C0 E0            [24] 4647 	push	acc
      00178C 12 31 60         [24] 4648 	lcall	_printf_fast_f
      00178F E5 81            [12] 4649 	mov	a,sp
      001791 24 FC            [12] 4650 	add	a,#0xfc
      001793 F5 81            [12] 4651 	mov	sp,a
      001795 D0 07            [24] 4652 	pop	ar7
                                   4653 ;	src/main.c:1071: break;
      001797 02 18 21         [24] 4654 	ljmp	00155$
                                   4655 ;	src/main.c:1072: case 3 :
      00179A                       4656 00150$:
                                   4657 ;	src/main.c:1073: printf_fast_f("%lu\r\n", gpu32UartSpeed[--gu8LineFiUpRate]);
      00179A 90 00 05         [24] 4658 	mov	dptr,#_gu8LineFiUpRate
      00179D E0               [24] 4659 	movx	a,@dptr
      00179E 14               [12] 4660 	dec	a
      00179F F0               [24] 4661 	movx	@dptr,a
      0017A0 E0               [24] 4662 	movx	a,@dptr
      0017A1 75 F0 04         [24] 4663 	mov	b,#0x04
      0017A4 A4               [48] 4664 	mul	ab
      0017A5 24 48            [12] 4665 	add	a,#_gpu32UartSpeed
      0017A7 F5 82            [12] 4666 	mov	dpl,a
      0017A9 74 00            [12] 4667 	mov	a,#(_gpu32UartSpeed >> 8)
      0017AB 35 F0            [12] 4668 	addc	a,b
      0017AD F5 83            [12] 4669 	mov	dph,a
      0017AF E0               [24] 4670 	movx	a,@dptr
      0017B0 FB               [12] 4671 	mov	r3,a
      0017B1 A3               [24] 4672 	inc	dptr
      0017B2 E0               [24] 4673 	movx	a,@dptr
      0017B3 FC               [12] 4674 	mov	r4,a
      0017B4 A3               [24] 4675 	inc	dptr
      0017B5 E0               [24] 4676 	movx	a,@dptr
      0017B6 FD               [12] 4677 	mov	r5,a
      0017B7 A3               [24] 4678 	inc	dptr
      0017B8 E0               [24] 4679 	movx	a,@dptr
      0017B9 FE               [12] 4680 	mov	r6,a
      0017BA C0 07            [24] 4681 	push	ar7
      0017BC C0 03            [24] 4682 	push	ar3
      0017BE C0 04            [24] 4683 	push	ar4
      0017C0 C0 05            [24] 4684 	push	ar5
      0017C2 C0 06            [24] 4685 	push	ar6
      0017C4 74 CD            [12] 4686 	mov	a,#___str_43
      0017C6 C0 E0            [24] 4687 	push	acc
      0017C8 74 3A            [12] 4688 	mov	a,#(___str_43 >> 8)
      0017CA C0 E0            [24] 4689 	push	acc
      0017CC 12 31 60         [24] 4690 	lcall	_printf_fast_f
      0017CF E5 81            [12] 4691 	mov	a,sp
      0017D1 24 FA            [12] 4692 	add	a,#0xfa
      0017D3 F5 81            [12] 4693 	mov	sp,a
                                   4694 ;	src/main.c:1074: InitialUART1_Timer3(gpu32UartSpeed[gu8LineFiUpRate]);
      0017D5 90 00 05         [24] 4695 	mov	dptr,#_gu8LineFiUpRate
      0017D8 E0               [24] 4696 	movx	a,@dptr
      0017D9 75 F0 04         [24] 4697 	mov	b,#0x04
      0017DC A4               [48] 4698 	mul	ab
      0017DD 24 48            [12] 4699 	add	a,#_gpu32UartSpeed
      0017DF F5 82            [12] 4700 	mov	dpl,a
      0017E1 74 00            [12] 4701 	mov	a,#(_gpu32UartSpeed >> 8)
      0017E3 35 F0            [12] 4702 	addc	a,b
      0017E5 F5 83            [12] 4703 	mov	dph,a
      0017E7 E0               [24] 4704 	movx	a,@dptr
      0017E8 FB               [12] 4705 	mov	r3,a
      0017E9 A3               [24] 4706 	inc	dptr
      0017EA E0               [24] 4707 	movx	a,@dptr
      0017EB FC               [12] 4708 	mov	r4,a
      0017EC A3               [24] 4709 	inc	dptr
      0017ED E0               [24] 4710 	movx	a,@dptr
      0017EE FD               [12] 4711 	mov	r5,a
      0017EF A3               [24] 4712 	inc	dptr
      0017F0 E0               [24] 4713 	movx	a,@dptr
      0017F1 8B 82            [24] 4714 	mov	dpl,r3
      0017F3 8C 83            [24] 4715 	mov	dph,r4
      0017F5 8D F0            [24] 4716 	mov	b,r5
      0017F7 12 2C 75         [24] 4717 	lcall	_InitialUART1_Timer3
      0017FA D0 07            [24] 4718 	pop	ar7
                                   4719 ;	src/main.c:1075: break;
                                   4720 ;	src/main.c:1076: case 4 :
      0017FC 80 23            [24] 4721 	sjmp	00155$
      0017FE                       4722 00151$:
                                   4723 ;	src/main.c:1077: gu8TxCnt --;
      0017FE 90 00 07         [24] 4724 	mov	dptr,#_gu8TxCnt
      001801 E0               [24] 4725 	movx	a,@dptr
      001802 14               [12] 4726 	dec	a
      001803 F0               [24] 4727 	movx	@dptr,a
                                   4728 ;	src/main.c:1078: printf_fast_f("gu8TxCnt:%d\r\n",gu8TxCnt);
      001804 E0               [24] 4729 	movx	a,@dptr
      001805 FE               [12] 4730 	mov	r6,a
      001806 7D 00            [12] 4731 	mov	r5,#0x00
      001808 C0 07            [24] 4732 	push	ar7
      00180A C0 06            [24] 4733 	push	ar6
      00180C C0 05            [24] 4734 	push	ar5
      00180E 74 C0            [12] 4735 	mov	a,#___str_57
      001810 C0 E0            [24] 4736 	push	acc
      001812 74 3B            [12] 4737 	mov	a,#(___str_57 >> 8)
      001814 C0 E0            [24] 4738 	push	acc
      001816 12 31 60         [24] 4739 	lcall	_printf_fast_f
      001819 E5 81            [12] 4740 	mov	a,sp
      00181B 24 FC            [12] 4741 	add	a,#0xfc
      00181D F5 81            [12] 4742 	mov	sp,a
      00181F D0 07            [24] 4743 	pop	ar7
                                   4744 ;	src/main.c:1082: }
      001821                       4745 00155$:
                                   4746 ;	src/main.c:1085: if (u8PrevSwitch != SWITCH) { // 스위치 스테이트가 변하면..
      001821 8F 06            [24] 4747 	mov	ar6,r7
      001823 A2 95            [12] 4748 	mov	c,_P15
      001825 E4               [12] 4749 	clr	a
      001826 33               [12] 4750 	rlc	a
      001827 FD               [12] 4751 	mov	r5,a
      001828 EE               [12] 4752 	mov	a,r6
      001829 B5 05 02         [24] 4753 	cjne	a,ar5,00567$
      00182C 80 64            [24] 4754 	sjmp	00160$
      00182E                       4755 00567$:
                                   4756 ;	src/main.c:1086: gu8UART = 0;
      00182E 75 11 00         [24] 4757 	mov	_gu8UART,#0x00
                                   4758 ;	src/main.c:1087: printf_fast_f("SWITCH:%d\n\r", SWITCH);
      001831 A2 95            [12] 4759 	mov	c,_P15
      001833 E4               [12] 4760 	clr	a
      001834 33               [12] 4761 	rlc	a
      001835 FD               [12] 4762 	mov	r5,a
      001836 7E 00            [12] 4763 	mov	r6,#0x00
      001838 C0 05            [24] 4764 	push	ar5
      00183A C0 06            [24] 4765 	push	ar6
      00183C 74 CE            [12] 4766 	mov	a,#___str_58
      00183E C0 E0            [24] 4767 	push	acc
      001840 74 3B            [12] 4768 	mov	a,#(___str_58 >> 8)
      001842 C0 E0            [24] 4769 	push	acc
      001844 12 31 60         [24] 4770 	lcall	_printf_fast_f
      001847 E5 81            [12] 4771 	mov	a,sp
      001849 24 FC            [12] 4772 	add	a,#0xfc
      00184B F5 81            [12] 4773 	mov	sp,a
                                   4774 ;	src/main.c:1088: if (SWITCH) { //눌렸을 때
      00184D 30 95 0D         [24] 4775 	jnb	_P15,00157$
                                   4776 ;	src/main.c:1089: gu8PPambleCnt = 0;
      001850 90 00 21         [24] 4777 	mov	dptr,#_gu8PPambleCnt
      001853 E4               [12] 4778 	clr	a
      001854 F0               [24] 4779 	movx	@dptr,a
      001855 A3               [24] 4780 	inc	dptr
      001856 F0               [24] 4781 	movx	@dptr,a
                                   4782 ;	src/main.c:1090: gu8PPambleDurCnt = 0;
      001857 90 00 20         [24] 4783 	mov	dptr,#_gu8PPambleDurCnt
      00185A F0               [24] 4784 	movx	@dptr,a
      00185B 80 30            [24] 4785 	sjmp	00158$
      00185D                       4786 00157$:
                                   4787 ;	src/main.c:1093: gu8UpLinkTxState = ULTxState_INIT;
      00185D 90 00 1F         [24] 4788 	mov	dptr,#_gu8UpLinkTxState
      001860 E4               [12] 4789 	clr	a
      001861 F0               [24] 4790 	movx	@dptr,a
                                   4791 ;	src/main.c:1096: gu8UART = 0;
                                   4792 ;	1-genFromRTrack replaced	mov	_gu8UART,#0x00
      001862 F5 11            [12] 4793 	mov	_gu8UART,a
                                   4794 ;	src/main.c:1102: su8Cnt++;
      001864 05 40            [12] 4795 	inc	_main_su8Cnt_262146_159
                                   4796 ;	src/main.c:1103: LED_R = su8Cnt&1;
      001866 E5 40            [12] 4797 	mov	a,_main_su8Cnt_262146_159
      001868 54 01            [12] 4798 	anl	a,#0x01
      00186A 24 FF            [12] 4799 	add	a,#0xff
      00186C 92 94            [24] 4800 	mov	_P14,c
                                   4801 ;	src/main.c:1104: LED_G = (su8Cnt>>1)&1;
      00186E E5 40            [12] 4802 	mov	a,_main_su8Cnt_262146_159
      001870 03               [12] 4803 	rr	a
      001871 54 01            [12] 4804 	anl	a,#0x01
                                   4805 ;	assignBit
      001873 FE               [12] 4806 	mov	r6,a
      001874 24 FF            [12] 4807 	add	a,#0xff
      001876 92 93            [24] 4808 	mov	_P13,c
                                   4809 ;	src/main.c:1105: LED_B = (su8Cnt>>2)&1;
      001878 E5 40            [12] 4810 	mov	a,_main_su8Cnt_262146_159
      00187A 03               [12] 4811 	rr	a
      00187B 03               [12] 4812 	rr	a
      00187C 54 01            [12] 4813 	anl	a,#0x01
                                   4814 ;	assignBit
      00187E FD               [12] 4815 	mov	r5,a
      00187F 24 FF            [12] 4816 	add	a,#0xff
      001881 92 92            [24] 4817 	mov	_P12,c
                                   4818 ;	src/main.c:1108: MOTOR_CW = (su8Cnt>>1)&1;
                                   4819 ;	assignBit
      001883 EE               [12] 4820 	mov	a,r6
      001884 24 FF            [12] 4821 	add	a,#0xff
      001886 92 80            [24] 4822 	mov	_P00,c
                                   4823 ;	src/main.c:1109: MOTOR_CCW = (su8Cnt>>2)&1;
                                   4824 ;	assignBit
      001888 ED               [12] 4825 	mov	a,r5
      001889 24 FF            [12] 4826 	add	a,#0xff
      00188B 92 81            [24] 4827 	mov	_P01,c
      00188D                       4828 00158$:
                                   4829 ;	src/main.c:1112: u8PrevSwitch = SWITCH;
      00188D A2 95            [12] 4830 	mov	c,_P15
      00188F E4               [12] 4831 	clr	a
      001890 33               [12] 4832 	rlc	a
      001891 FF               [12] 4833 	mov	r7,a
      001892                       4834 00160$:
                                   4835 ;	src/main.c:1115: if (SWITCH) {
      001892 20 95 03         [24] 4836 	jb	_P15,00569$
      001895 02 19 58         [24] 4837 	ljmp	00179$
      001898                       4838 00569$:
                                   4839 ;	src/main.c:1116: if (gu8PPambleCnt < gu8PPambleNum) {
      001898 90 00 21         [24] 4840 	mov	dptr,#_gu8PPambleCnt
      00189B E0               [24] 4841 	movx	a,@dptr
      00189C FD               [12] 4842 	mov	r5,a
      00189D A3               [24] 4843 	inc	dptr
      00189E E0               [24] 4844 	movx	a,@dptr
      00189F FE               [12] 4845 	mov	r6,a
      0018A0 90 00 03         [24] 4846 	mov	dptr,#_gu8PPambleNum
      0018A3 E0               [24] 4847 	movx	a,@dptr
      0018A4 FB               [12] 4848 	mov	r3,a
      0018A5 A3               [24] 4849 	inc	dptr
      0018A6 E0               [24] 4850 	movx	a,@dptr
      0018A7 FC               [12] 4851 	mov	r4,a
      0018A8 C3               [12] 4852 	clr	c
      0018A9 ED               [12] 4853 	mov	a,r5
      0018AA 9B               [12] 4854 	subb	a,r3
      0018AB EE               [12] 4855 	mov	a,r6
      0018AC 9C               [12] 4856 	subb	a,r4
      0018AD 50 18            [24] 4857 	jnc	00171$
                                   4858 ;	src/main.c:1117: if (UART_TX) {
                                   4859 ;	src/main.c:1118: UART_TX = 0;
                                   4860 ;	assignBit
      0018AF 10 96 02         [24] 4861 	jbc	_P16,00571$
      0018B2 80 03            [24] 4862 	sjmp	00162$
      0018B4                       4863 00571$:
      0018B4 02 19 51         [24] 4864 	ljmp	00172$
      0018B7                       4865 00162$:
                                   4866 ;	src/main.c:1121: UART_TX = 1;
                                   4867 ;	assignBit
      0018B7 D2 96            [12] 4868 	setb	_P16
                                   4869 ;	src/main.c:1122: gu8PPambleCnt++;
      0018B9 90 00 21         [24] 4870 	mov	dptr,#_gu8PPambleCnt
      0018BC 74 01            [12] 4871 	mov	a,#0x01
      0018BE 2D               [12] 4872 	add	a,r5
      0018BF F0               [24] 4873 	movx	@dptr,a
      0018C0 E4               [12] 4874 	clr	a
      0018C1 3E               [12] 4875 	addc	a,r6
      0018C2 A3               [24] 4876 	inc	dptr
      0018C3 F0               [24] 4877 	movx	@dptr,a
      0018C4 02 19 51         [24] 4878 	ljmp	00172$
      0018C7                       4879 00171$:
                                   4880 ;	src/main.c:1126: if (gu8PPambleDurCnt < gu8PPambleDurHNum) {
      0018C7 90 00 20         [24] 4881 	mov	dptr,#_gu8PPambleDurCnt
      0018CA E0               [24] 4882 	movx	a,@dptr
      0018CB FE               [12] 4883 	mov	r6,a
      0018CC 90 00 01         [24] 4884 	mov	dptr,#_gu8PPambleDurHNum
      0018CF E0               [24] 4885 	movx	a,@dptr
      0018D0 FD               [12] 4886 	mov	r5,a
      0018D1 C3               [12] 4887 	clr	c
      0018D2 EE               [12] 4888 	mov	a,r6
      0018D3 9D               [12] 4889 	subb	a,r5
      0018D4 50 7B            [24] 4890 	jnc	00172$
                                   4891 ;	src/main.c:1129: gu8UART = 1;
      0018D6 75 11 01         [24] 4892 	mov	_gu8UART,#0x01
                                   4893 ;	src/main.c:1130: putchar(0xF0);
      0018D9 90 00 F0         [24] 4894 	mov	dptr,#0x00f0
      0018DC C0 07            [24] 4895 	push	ar7
      0018DE 12 2C C4         [24] 4896 	lcall	_putchar
                                   4897 ;	src/main.c:1131: putchar(0xF0);
      0018E1 90 00 F0         [24] 4898 	mov	dptr,#0x00f0
      0018E4 12 2C C4         [24] 4899 	lcall	_putchar
                                   4900 ;	src/main.c:1132: putchar(0xF0);
      0018E7 90 00 F0         [24] 4901 	mov	dptr,#0x00f0
      0018EA 12 2C C4         [24] 4902 	lcall	_putchar
                                   4903 ;	src/main.c:1133: putchar(0xF0);
      0018ED 90 00 F0         [24] 4904 	mov	dptr,#0x00f0
      0018F0 12 2C C4         [24] 4905 	lcall	_putchar
                                   4906 ;	src/main.c:1134: putchar(0xF0);
      0018F3 90 00 F0         [24] 4907 	mov	dptr,#0x00f0
      0018F6 12 2C C4         [24] 4908 	lcall	_putchar
      0018F9 D0 07            [24] 4909 	pop	ar7
                                   4910 ;	src/main.c:1135: for (i = 0;i<gu8TxCnt;i++) {
      0018FB 7E 00            [12] 4911 	mov	r6,#0x00
      0018FD                       4912 00245$:
      0018FD 90 00 07         [24] 4913 	mov	dptr,#_gu8TxCnt
      001900 E0               [24] 4914 	movx	a,@dptr
      001901 FD               [12] 4915 	mov	r5,a
      001902 C3               [12] 4916 	clr	c
      001903 EE               [12] 4917 	mov	a,r6
      001904 9D               [12] 4918 	subb	a,r5
      001905 50 32            [24] 4919 	jnc	00167$
                                   4920 ;	src/main.c:1138: if (i == 2) {
      001907 BE 02 10         [24] 4921 	cjne	r6,#0x02,00165$
                                   4922 ;	src/main.c:1139: putchar(MY_ADDR);
      00190A 90 00 03         [24] 4923 	mov	dptr,#0x0003
      00190D C0 07            [24] 4924 	push	ar7
      00190F C0 06            [24] 4925 	push	ar6
      001911 12 2C C4         [24] 4926 	lcall	_putchar
      001914 D0 06            [24] 4927 	pop	ar6
      001916 D0 07            [24] 4928 	pop	ar7
      001918 80 1C            [24] 4929 	sjmp	00246$
      00191A                       4930 00165$:
                                   4931 ;	src/main.c:1142: putchar(i + su8InitCnt);
      00191A 8E 04            [24] 4932 	mov	ar4,r6
      00191C 7D 00            [12] 4933 	mov	r5,#0x00
      00191E 90 00 D5         [24] 4934 	mov	dptr,#_main_su8InitCnt_327681_165
      001921 E0               [24] 4935 	movx	a,@dptr
      001922 7A 00            [12] 4936 	mov	r2,#0x00
      001924 2C               [12] 4937 	add	a,r4
      001925 F5 82            [12] 4938 	mov	dpl,a
      001927 EA               [12] 4939 	mov	a,r2
      001928 3D               [12] 4940 	addc	a,r5
      001929 F5 83            [12] 4941 	mov	dph,a
      00192B C0 07            [24] 4942 	push	ar7
      00192D C0 06            [24] 4943 	push	ar6
      00192F 12 2C C4         [24] 4944 	lcall	_putchar
      001932 D0 06            [24] 4945 	pop	ar6
      001934 D0 07            [24] 4946 	pop	ar7
      001936                       4947 00246$:
                                   4948 ;	src/main.c:1135: for (i = 0;i<gu8TxCnt;i++) {
      001936 0E               [12] 4949 	inc	r6
      001937 80 C4            [24] 4950 	sjmp	00245$
      001939                       4951 00167$:
                                   4952 ;	src/main.c:1145: su8InitCnt++;
      001939 90 00 D5         [24] 4953 	mov	dptr,#_main_su8InitCnt_327681_165
      00193C E0               [24] 4954 	movx	a,@dptr
      00193D 24 01            [12] 4955 	add	a,#0x01
      00193F F0               [24] 4956 	movx	@dptr,a
                                   4957 ;	src/main.c:1146: gu8PPambleDurCnt++;
      001940 90 00 20         [24] 4958 	mov	dptr,#_gu8PPambleDurCnt
      001943 E0               [24] 4959 	movx	a,@dptr
      001944 24 01            [12] 4960 	add	a,#0x01
      001946 F0               [24] 4961 	movx	@dptr,a
                                   4962 ;	src/main.c:1147: gu8UART = 0;
      001947 75 11 00         [24] 4963 	mov	_gu8UART,#0x00
                                   4964 ;	src/main.c:1148: gu8PPambleCnt = 0;
      00194A 90 00 21         [24] 4965 	mov	dptr,#_gu8PPambleCnt
      00194D E4               [12] 4966 	clr	a
      00194E F0               [24] 4967 	movx	@dptr,a
      00194F A3               [24] 4968 	inc	dptr
      001950 F0               [24] 4969 	movx	@dptr,a
      001951                       4970 00172$:
                                   4971 ;	src/main.c:1153: gu8ULTestMode = ULTMODE_INIT;
      001951 90 00 1E         [24] 4972 	mov	dptr,#_gu8ULTestMode
      001954 E4               [12] 4973 	clr	a
      001955 F0               [24] 4974 	movx	@dptr,a
      001956 80 47            [24] 4975 	sjmp	00180$
      001958                       4976 00179$:
                                   4977 ;	src/main.c:1160: switch(gu8ULTestMode) {
      001958 90 00 1E         [24] 4978 	mov	dptr,#_gu8ULTestMode
      00195B E0               [24] 4979 	movx	a,@dptr
      00195C FE               [12] 4980 	mov  r6,a
      00195D 24 FC            [12] 4981 	add	a,#0xff - 0x03
      00195F 40 3E            [24] 4982 	jc	00180$
      001961 EE               [12] 4983 	mov	a,r6
      001962 2E               [12] 4984 	add	a,r6
                                   4985 ;	src/main.c:1163: case ULTMODE_PREAMBLE:
      001963 90 19 67         [24] 4986 	mov	dptr,#00577$
      001966 73               [24] 4987 	jmp	@a+dptr
      001967                       4988 00577$:
      001967 80 36            [24] 4989 	sjmp	00180$
      001969 80 04            [24] 4990 	sjmp	00174$
      00196B 80 0B            [24] 4991 	sjmp	00175$
      00196D 80 18            [24] 4992 	sjmp	00176$
      00196F                       4993 00174$:
                                   4994 ;	src/main.c:1164: preamble();
      00196F C0 07            [24] 4995 	push	ar7
      001971 12 30 70         [24] 4996 	lcall	_preamble
      001974 D0 07            [24] 4997 	pop	ar7
                                   4998 ;	src/main.c:1165: break;
                                   4999 ;	src/main.c:1166: case ULTMODE_DATA:
      001976 80 27            [24] 5000 	sjmp	00180$
      001978                       5001 00175$:
                                   5002 ;	src/main.c:1167: putchar_manchester(gu8ULTestData);
      001978 90 00 23         [24] 5003 	mov	dptr,#_gu8ULTestData
      00197B E0               [24] 5004 	movx	a,@dptr
      00197C F5 82            [12] 5005 	mov	dpl,a
      00197E C0 07            [24] 5006 	push	ar7
      001980 12 30 79         [24] 5007 	lcall	_putchar_manchester
      001983 D0 07            [24] 5008 	pop	ar7
                                   5009 ;	src/main.c:1168: break;
                                   5010 ;	src/main.c:1169: case ULTMODE_NO_MANCHESTER:
      001985 80 18            [24] 5011 	sjmp	00180$
      001987                       5012 00176$:
                                   5013 ;	src/main.c:1170: gu8UART = 1;
      001987 75 11 01         [24] 5014 	mov	_gu8UART,#0x01
                                   5015 ;	src/main.c:1171: putchar(gu8ULTestData);
      00198A 90 00 23         [24] 5016 	mov	dptr,#_gu8ULTestData
      00198D E0               [24] 5017 	movx	a,@dptr
      00198E FE               [12] 5018 	mov	r6,a
      00198F 7D 00            [12] 5019 	mov	r5,#0x00
      001991 8E 82            [24] 5020 	mov	dpl,r6
      001993 8D 83            [24] 5021 	mov	dph,r5
      001995 C0 07            [24] 5022 	push	ar7
      001997 12 2C C4         [24] 5023 	lcall	_putchar
      00199A D0 07            [24] 5024 	pop	ar7
                                   5025 ;	src/main.c:1172: gu8UART = 0;
      00199C 75 11 00         [24] 5026 	mov	_gu8UART,#0x00
                                   5027 ;	src/main.c:1174: }
      00199F                       5028 00180$:
                                   5029 ;	src/main.c:1178: if (u8UartRx != UART_RX) {
      00199F A2 82            [12] 5030 	mov	c,_P02
                                   5031 ;	src/main.c:1183: switch(u8StateRxPkt) { // 수신 시
      0019A1 E5 42            [12] 5032 	mov	a,_main_u8StateRxPkt_65536_136
      0019A3 24 F8            [12] 5033 	add	a,#0xff - 0x07
      0019A5 50 03            [24] 5034 	jnc	00578$
      0019A7 02 0F 93         [24] 5035 	ljmp	00237$
      0019AA                       5036 00578$:
      0019AA E5 42            [12] 5037 	mov	a,_main_u8StateRxPkt_65536_136
      0019AC 24 0B            [12] 5038 	add	a,#(00579$-3-.)
      0019AE 83               [24] 5039 	movc	a,@a+pc
      0019AF F5 82            [12] 5040 	mov	dpl,a
      0019B1 E5 42            [12] 5041 	mov	a,_main_u8StateRxPkt_65536_136
      0019B3 24 0C            [12] 5042 	add	a,#(00580$-3-.)
      0019B5 83               [24] 5043 	movc	a,@a+pc
      0019B6 F5 83            [12] 5044 	mov	dph,a
      0019B8 E4               [12] 5045 	clr	a
      0019B9 73               [24] 5046 	jmp	@a+dptr
      0019BA                       5047 00579$:
      0019BA CA                    5048 	.db	00181$
      0019BB 02                    5049 	.db	00184$
      0019BC 26                    5050 	.db	00222$
      0019BD 82                    5051 	.db	00190$
      0019BE C6                    5052 	.db	00196$
      0019BF 28                    5053 	.db	00197$
      0019C0 A9                    5054 	.db	00208$
      0019C1 ED                    5055 	.db	00214$
      0019C2                       5056 00580$:
      0019C2 19                    5057 	.db	00181$>>8
      0019C3 1A                    5058 	.db	00184$>>8
      0019C4 1E                    5059 	.db	00222$>>8
      0019C5 1A                    5060 	.db	00190$>>8
      0019C6 1A                    5061 	.db	00196$>>8
      0019C7 1B                    5062 	.db	00197$>>8
      0019C8 1C                    5063 	.db	00208$>>8
      0019C9 1C                    5064 	.db	00214$>>8
                                   5065 ;	src/main.c:1184: case STATE_RxPKT_INIT :
      0019CA                       5066 00181$:
                                   5067 ;	src/main.c:1185: if (get_octet_from_linefi(&u8RxUART)) {
      0019CA 90 00 41         [24] 5068 	mov	dptr,#_main_u8RxUART_65536_136
      0019CD 75 F0 40         [24] 5069 	mov	b,#0x40
      0019D0 C0 07            [24] 5070 	push	ar7
      0019D2 12 22 F6         [24] 5071 	lcall	_get_octet_from_linefi
      0019D5 E5 82            [12] 5072 	mov	a,dpl
      0019D7 D0 07            [24] 5073 	pop	ar7
      0019D9 70 03            [24] 5074 	jnz	00581$
      0019DB 02 0F 93         [24] 5075 	ljmp	00237$
      0019DE                       5076 00581$:
                                   5077 ;	src/main.c:1186: gu16TimeCnt = 0;
      0019DE 90 00 A8         [24] 5078 	mov	dptr,#_gu16TimeCnt
      0019E1 E4               [12] 5079 	clr	a
      0019E2 F0               [24] 5080 	movx	@dptr,a
      0019E3 A3               [24] 5081 	inc	dptr
      0019E4 F0               [24] 5082 	movx	@dptr,a
                                   5083 ;	src/main.c:1188: pu8RxUART[u8RxBufIdx++] = u8RxUART;
      0019E5 75 5B 01         [24] 5084 	mov	_main_u8RxBufIdx_65536_136,#0x01
      0019E8 90 00 AE         [24] 5085 	mov	dptr,#_main_pu8RxUART_65536_136
      0019EB E5 41            [12] 5086 	mov	a,_main_u8RxUART_65536_136
      0019ED F0               [24] 5087 	movx	@dptr,a
                                   5088 ;	src/main.c:1189: gu8UART = 0;
      0019EE 75 11 00         [24] 5089 	mov	_gu8UART,#0x00
                                   5090 ;	src/main.c:1190: gu8PPambleCnt = 0;
      0019F1 90 00 21         [24] 5091 	mov	dptr,#_gu8PPambleCnt
      0019F4 E4               [12] 5092 	clr	a
      0019F5 F0               [24] 5093 	movx	@dptr,a
      0019F6 A3               [24] 5094 	inc	dptr
      0019F7 F0               [24] 5095 	movx	@dptr,a
                                   5096 ;	src/main.c:1191: gu8PPambleDurCnt = 0;
      0019F8 90 00 20         [24] 5097 	mov	dptr,#_gu8PPambleDurCnt
      0019FB F0               [24] 5098 	movx	@dptr,a
                                   5099 ;	src/main.c:1193: u8StateRxPkt = STATE_RxPKT_START;
      0019FC 75 42 01         [24] 5100 	mov	_main_u8StateRxPkt_65536_136,#0x01
                                   5101 ;	src/main.c:1195: break;
      0019FF 02 0F 93         [24] 5102 	ljmp	00237$
                                   5103 ;	src/main.c:1196: case STATE_RxPKT_START :
      001A02                       5104 00184$:
                                   5105 ;	src/main.c:1197: if (get_octet_from_linefi(&u8RxUART)) {
      001A02 90 00 41         [24] 5106 	mov	dptr,#_main_u8RxUART_65536_136
      001A05 75 F0 40         [24] 5107 	mov	b,#0x40
      001A08 C0 07            [24] 5108 	push	ar7
      001A0A 12 22 F6         [24] 5109 	lcall	_get_octet_from_linefi
      001A0D E5 82            [12] 5110 	mov	a,dpl
      001A0F D0 07            [24] 5111 	pop	ar7
      001A11 60 52            [24] 5112 	jz	00188$
                                   5113 ;	src/main.c:1198: gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
      001A13 AE 5B            [24] 5114 	mov	r6,_main_u8RxBufIdx_65536_136
      001A15 1E               [12] 5115 	dec	r6
      001A16 C2 D5            [12] 5116 	clr	F0
      001A18 75 F0 02         [24] 5117 	mov	b,#0x02
      001A1B EE               [12] 5118 	mov	a,r6
      001A1C 30 E7 04         [24] 5119 	jnb	acc.7,00583$
      001A1F B2 D5            [12] 5120 	cpl	F0
      001A21 F4               [12] 5121 	cpl	a
      001A22 04               [12] 5122 	inc	a
      001A23                       5123 00583$:
      001A23 A4               [48] 5124 	mul	ab
      001A24 30 D5 0A         [24] 5125 	jnb	F0,00584$
      001A27 F4               [12] 5126 	cpl	a
      001A28 24 01            [12] 5127 	add	a,#0x01
      001A2A C5 F0            [12] 5128 	xch	a,b
      001A2C F4               [12] 5129 	cpl	a
      001A2D 34 00            [12] 5130 	addc	a,#0x00
      001A2F C5 F0            [12] 5131 	xch	a,b
      001A31                       5132 00584$:
      001A31 24 80            [12] 5133 	add	a,#_gpu16RxTime
      001A33 FD               [12] 5134 	mov	r5,a
      001A34 74 00            [12] 5135 	mov	a,#(_gpu16RxTime >> 8)
      001A36 35 F0            [12] 5136 	addc	a,b
      001A38 FE               [12] 5137 	mov	r6,a
      001A39 90 00 A8         [24] 5138 	mov	dptr,#_gu16TimeCnt
      001A3C E0               [24] 5139 	movx	a,@dptr
      001A3D FB               [12] 5140 	mov	r3,a
      001A3E A3               [24] 5141 	inc	dptr
      001A3F E0               [24] 5142 	movx	a,@dptr
      001A40 FC               [12] 5143 	mov	r4,a
      001A41 8D 82            [24] 5144 	mov	dpl,r5
      001A43 8E 83            [24] 5145 	mov	dph,r6
      001A45 EB               [12] 5146 	mov	a,r3
      001A46 F0               [24] 5147 	movx	@dptr,a
      001A47 EC               [12] 5148 	mov	a,r4
      001A48 A3               [24] 5149 	inc	dptr
      001A49 F0               [24] 5150 	movx	@dptr,a
                                   5151 ;	src/main.c:1199: gu16TimeCnt = 0;
      001A4A 90 00 A8         [24] 5152 	mov	dptr,#_gu16TimeCnt
      001A4D E4               [12] 5153 	clr	a
      001A4E F0               [24] 5154 	movx	@dptr,a
      001A4F A3               [24] 5155 	inc	dptr
      001A50 F0               [24] 5156 	movx	@dptr,a
                                   5157 ;	src/main.c:1200: pu8RxUART[u8RxBufIdx++] = u8RxUART;
      001A51 AE 5B            [24] 5158 	mov	r6,_main_u8RxBufIdx_65536_136
      001A53 05 5B            [12] 5159 	inc	_main_u8RxBufIdx_65536_136
      001A55 EE               [12] 5160 	mov	a,r6
      001A56 24 AE            [12] 5161 	add	a,#_main_pu8RxUART_65536_136
      001A58 F5 82            [12] 5162 	mov	dpl,a
      001A5A E4               [12] 5163 	clr	a
      001A5B 34 00            [12] 5164 	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
      001A5D F5 83            [12] 5165 	mov	dph,a
      001A5F E5 41            [12] 5166 	mov	a,_main_u8RxUART_65536_136
      001A61 F0               [24] 5167 	movx	@dptr,a
      001A62 02 0F 93         [24] 5168 	ljmp	00237$
      001A65                       5169 00188$:
                                   5170 ;	src/main.c:1202: else if (gu16TimeCnt > 1000) { //
      001A65 90 00 A8         [24] 5171 	mov	dptr,#_gu16TimeCnt
      001A68 E0               [24] 5172 	movx	a,@dptr
      001A69 FD               [12] 5173 	mov	r5,a
      001A6A A3               [24] 5174 	inc	dptr
      001A6B E0               [24] 5175 	movx	a,@dptr
      001A6C FE               [12] 5176 	mov	r6,a
      001A6D C3               [12] 5177 	clr	c
      001A6E 74 E8            [12] 5178 	mov	a,#0xe8
      001A70 9D               [12] 5179 	subb	a,r5
      001A71 74 03            [12] 5180 	mov	a,#0x03
      001A73 9E               [12] 5181 	subb	a,r6
      001A74 40 03            [24] 5182 	jc	00585$
      001A76 02 0F 93         [24] 5183 	ljmp	00237$
      001A79                       5184 00585$:
                                   5185 ;	src/main.c:1203: u8RxLFPLen = u8RxBufIdx;
      001A79 85 5B 5C         [24] 5186 	mov	_main_u8RxLFPLen_65536_136,_main_u8RxBufIdx_65536_136
                                   5187 ;	src/main.c:1204: u8StateRxPkt = STATE_RxPKT_END;
      001A7C 75 42 02         [24] 5188 	mov	_main_u8StateRxPkt_65536_136,#0x02
                                   5189 ;	src/main.c:1206: break;
      001A7F 02 0F 93         [24] 5190 	ljmp	00237$
                                   5191 ;	src/main.c:1207: case STATE_ULPKT_GEN : 				
      001A82                       5192 00190$:
                                   5193 ;	src/main.c:1208: if (pktGenTime == 0) {
      001A82 90 00 CC         [24] 5194 	mov	dptr,#_main_pktGenTime_65536_136
      001A85 E0               [24] 5195 	movx	a,@dptr
      001A86 FB               [12] 5196 	mov	r3,a
      001A87 A3               [24] 5197 	inc	dptr
      001A88 E0               [24] 5198 	movx	a,@dptr
      001A89 FC               [12] 5199 	mov	r4,a
      001A8A A3               [24] 5200 	inc	dptr
      001A8B E0               [24] 5201 	movx	a,@dptr
      001A8C FD               [12] 5202 	mov	r5,a
      001A8D A3               [24] 5203 	inc	dptr
      001A8E E0               [24] 5204 	movx	a,@dptr
      001A8F FE               [12] 5205 	mov	r6,a
      001A90 EB               [12] 5206 	mov	a,r3
      001A91 4C               [12] 5207 	orl	a,r4
      001A92 4D               [12] 5208 	orl	a,r5
      001A93 4E               [12] 5209 	orl	a,r6
      001A94 70 06            [24] 5210 	jnz	00194$
                                   5211 ;	src/main.c:1209: u8StateRxPkt = STATE_ULPKT_SEND;
      001A96 75 42 04         [24] 5212 	mov	_main_u8StateRxPkt_65536_136,#0x04
      001A99 02 0F 93         [24] 5213 	ljmp	00237$
      001A9C                       5214 00194$:
                                   5215 ;	src/main.c:1223: else if (pktGenTime > 0) {
      001A9C EB               [12] 5216 	mov	a,r3
      001A9D 4C               [12] 5217 	orl	a,r4
      001A9E 4D               [12] 5218 	orl	a,r5
      001A9F 4E               [12] 5219 	orl	a,r6
      001AA0 70 03            [24] 5220 	jnz	00587$
      001AA2 02 0F 93         [24] 5221 	ljmp	00237$
      001AA5                       5222 00587$:
                                   5223 ;	src/main.c:1224: pktGenTime -= 1;
      001AA5 1B               [12] 5224 	dec	r3
      001AA6 BB FF 09         [24] 5225 	cjne	r3,#0xff,00588$
      001AA9 1C               [12] 5226 	dec	r4
      001AAA BC FF 05         [24] 5227 	cjne	r4,#0xff,00588$
      001AAD 1D               [12] 5228 	dec	r5
      001AAE BD FF 01         [24] 5229 	cjne	r5,#0xff,00588$
      001AB1 1E               [12] 5230 	dec	r6
      001AB2                       5231 00588$:
      001AB2 90 00 CC         [24] 5232 	mov	dptr,#_main_pktGenTime_65536_136
      001AB5 EB               [12] 5233 	mov	a,r3
      001AB6 F0               [24] 5234 	movx	@dptr,a
      001AB7 EC               [12] 5235 	mov	a,r4
      001AB8 A3               [24] 5236 	inc	dptr
      001AB9 F0               [24] 5237 	movx	@dptr,a
      001ABA ED               [12] 5238 	mov	a,r5
      001ABB A3               [24] 5239 	inc	dptr
      001ABC F0               [24] 5240 	movx	@dptr,a
      001ABD EE               [12] 5241 	mov	a,r6
      001ABE A3               [24] 5242 	inc	dptr
      001ABF F0               [24] 5243 	movx	@dptr,a
                                   5244 ;	src/main.c:1229: u8StateRxPkt = STATE_ULPKT_GEN;
      001AC0 75 42 03         [24] 5245 	mov	_main_u8StateRxPkt_65536_136,#0x03
                                   5246 ;	src/main.c:1231: break;
      001AC3 02 0F 93         [24] 5247 	ljmp	00237$
                                   5248 ;	src/main.c:1233: case STATE_ULPKT_SEND :
      001AC6                       5249 00196$:
                                   5250 ;	src/main.c:1234: printf_fast_f("33333\r\n");
      001AC6 C0 07            [24] 5251 	push	ar7
      001AC8 74 DA            [12] 5252 	mov	a,#___str_59
      001ACA C0 E0            [24] 5253 	push	acc
      001ACC 74 3B            [12] 5254 	mov	a,#(___str_59 >> 8)
      001ACE C0 E0            [24] 5255 	push	acc
      001AD0 12 31 60         [24] 5256 	lcall	_printf_fast_f
      001AD3 15 81            [12] 5257 	dec	sp
      001AD5 15 81            [12] 5258 	dec	sp
                                   5259 ;	src/main.c:1235: gu8UART = 1;
      001AD7 75 11 01         [24] 5260 	mov	_gu8UART,#0x01
                                   5261 ;	src/main.c:1236: putchar(0x00); //prepreamble
      001ADA 90 00 00         [24] 5262 	mov	dptr,#0x0000
      001ADD 12 2C C4         [24] 5263 	lcall	_putchar
                                   5264 ;	src/main.c:1237: putchar(0x00);
      001AE0 90 00 00         [24] 5265 	mov	dptr,#0x0000
      001AE3 12 2C C4         [24] 5266 	lcall	_putchar
                                   5267 ;	src/main.c:1238: putchar(0xF0); // preamble 
      001AE6 90 00 F0         [24] 5268 	mov	dptr,#0x00f0
      001AE9 12 2C C4         [24] 5269 	lcall	_putchar
                                   5270 ;	src/main.c:1239: putchar(0xF0);
      001AEC 90 00 F0         [24] 5271 	mov	dptr,#0x00f0
      001AEF 12 2C C4         [24] 5272 	lcall	_putchar
                                   5273 ;	src/main.c:1240: putchar(0xF0);
      001AF2 90 00 F0         [24] 5274 	mov	dptr,#0x00f0
      001AF5 12 2C C4         [24] 5275 	lcall	_putchar
                                   5276 ;	src/main.c:1242: add_crc_linefi_packet_packet(&stLineFiPkt_UL);
      001AF8 90 00 53         [24] 5277 	mov	dptr,#_main_stLineFiPkt_UL_65536_136
      001AFB 75 F0 40         [24] 5278 	mov	b,#0x40
      001AFE 12 22 9C         [24] 5279 	lcall	_add_crc_linefi_packet_packet
                                   5280 ;	src/main.c:1243: send_linefi_packet(&stLineFiPkt_UL);
      001B01 90 00 53         [24] 5281 	mov	dptr,#_main_stLineFiPkt_UL_65536_136
      001B04 75 F0 40         [24] 5282 	mov	b,#0x40
      001B07 12 22 FC         [24] 5283 	lcall	_send_linefi_packet
      001B0A D0 07            [24] 5284 	pop	ar7
                                   5285 ;	src/main.c:1246: gu8UART = 0;
      001B0C 75 11 00         [24] 5286 	mov	_gu8UART,#0x00
                                   5287 ;	src/main.c:1247: gu32TimeCnt = 0;
      001B0F 90 00 AA         [24] 5288 	mov	dptr,#_gu32TimeCnt
      001B12 E4               [12] 5289 	clr	a
      001B13 F0               [24] 5290 	movx	@dptr,a
      001B14 A3               [24] 5291 	inc	dptr
      001B15 F0               [24] 5292 	movx	@dptr,a
      001B16 A3               [24] 5293 	inc	dptr
      001B17 F0               [24] 5294 	movx	@dptr,a
      001B18 A3               [24] 5295 	inc	dptr
      001B19 F0               [24] 5296 	movx	@dptr,a
                                   5297 ;	src/main.c:1248: gu16TimeCnt = 0;
      001B1A 90 00 A8         [24] 5298 	mov	dptr,#_gu16TimeCnt
      001B1D F0               [24] 5299 	movx	@dptr,a
      001B1E A3               [24] 5300 	inc	dptr
      001B1F F0               [24] 5301 	movx	@dptr,a
                                   5302 ;	src/main.c:1249: u8RxBufIdx = 0;
                                   5303 ;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
      001B20 F5 5B            [12] 5304 	mov	_main_u8RxBufIdx_65536_136,a
                                   5305 ;	src/main.c:1250: u8StateRxPkt = STATE_ACK_WAIT;
      001B22 75 42 05         [24] 5306 	mov	_main_u8StateRxPkt_65536_136,#0x05
                                   5307 ;	src/main.c:1251: break;
      001B25 02 0F 93         [24] 5308 	ljmp	00237$
                                   5309 ;	src/main.c:1253: case STATE_ACK_WAIT : 				
      001B28                       5310 00197$:
                                   5311 ;	src/main.c:1254: if (get_octet_from_linefi(&u8RxUART)) {
      001B28 90 00 41         [24] 5312 	mov	dptr,#_main_u8RxUART_65536_136
      001B2B 75 F0 40         [24] 5313 	mov	b,#0x40
      001B2E C0 07            [24] 5314 	push	ar7
      001B30 12 22 F6         [24] 5315 	lcall	_get_octet_from_linefi
      001B33 E5 82            [12] 5316 	mov	a,dpl
      001B35 D0 07            [24] 5317 	pop	ar7
      001B37 60 65            [24] 5318 	jz	00204$
                                   5319 ;	src/main.c:1255: gpu16RxTime[u8RxBufIdx-1] = gu16TimeCnt;
      001B39 AE 5B            [24] 5320 	mov	r6,_main_u8RxBufIdx_65536_136
      001B3B 1E               [12] 5321 	dec	r6
      001B3C C2 D5            [12] 5322 	clr	F0
      001B3E 75 F0 02         [24] 5323 	mov	b,#0x02
      001B41 EE               [12] 5324 	mov	a,r6
      001B42 30 E7 04         [24] 5325 	jnb	acc.7,00590$
      001B45 B2 D5            [12] 5326 	cpl	F0
      001B47 F4               [12] 5327 	cpl	a
      001B48 04               [12] 5328 	inc	a
      001B49                       5329 00590$:
      001B49 A4               [48] 5330 	mul	ab
      001B4A 30 D5 0A         [24] 5331 	jnb	F0,00591$
      001B4D F4               [12] 5332 	cpl	a
      001B4E 24 01            [12] 5333 	add	a,#0x01
      001B50 C5 F0            [12] 5334 	xch	a,b
      001B52 F4               [12] 5335 	cpl	a
      001B53 34 00            [12] 5336 	addc	a,#0x00
      001B55 C5 F0            [12] 5337 	xch	a,b
      001B57                       5338 00591$:
      001B57 24 80            [12] 5339 	add	a,#_gpu16RxTime
      001B59 FD               [12] 5340 	mov	r5,a
      001B5A 74 00            [12] 5341 	mov	a,#(_gpu16RxTime >> 8)
      001B5C 35 F0            [12] 5342 	addc	a,b
      001B5E FE               [12] 5343 	mov	r6,a
      001B5F 90 00 A8         [24] 5344 	mov	dptr,#_gu16TimeCnt
      001B62 E0               [24] 5345 	movx	a,@dptr
      001B63 FB               [12] 5346 	mov	r3,a
      001B64 A3               [24] 5347 	inc	dptr
      001B65 E0               [24] 5348 	movx	a,@dptr
      001B66 FC               [12] 5349 	mov	r4,a
      001B67 8D 82            [24] 5350 	mov	dpl,r5
      001B69 8E 83            [24] 5351 	mov	dph,r6
      001B6B EB               [12] 5352 	mov	a,r3
      001B6C F0               [24] 5353 	movx	@dptr,a
      001B6D EC               [12] 5354 	mov	a,r4
      001B6E A3               [24] 5355 	inc	dptr
      001B6F F0               [24] 5356 	movx	@dptr,a
                                   5357 ;	src/main.c:1256: gu16TimeCnt = 0;
      001B70 90 00 A8         [24] 5358 	mov	dptr,#_gu16TimeCnt
      001B73 E4               [12] 5359 	clr	a
      001B74 F0               [24] 5360 	movx	@dptr,a
      001B75 A3               [24] 5361 	inc	dptr
      001B76 F0               [24] 5362 	movx	@dptr,a
                                   5363 ;	src/main.c:1257: pu8RxUART[u8RxBufIdx++] = u8RxUART;
      001B77 AE 5B            [24] 5364 	mov	r6,_main_u8RxBufIdx_65536_136
      001B79 05 5B            [12] 5365 	inc	_main_u8RxBufIdx_65536_136
      001B7B EE               [12] 5366 	mov	a,r6
      001B7C 24 AE            [12] 5367 	add	a,#_main_pu8RxUART_65536_136
      001B7E F5 82            [12] 5368 	mov	dpl,a
      001B80 E4               [12] 5369 	clr	a
      001B81 34 00            [12] 5370 	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
      001B83 F5 83            [12] 5371 	mov	dph,a
      001B85 E5 41            [12] 5372 	mov	a,_main_u8RxUART_65536_136
      001B87 F0               [24] 5373 	movx	@dptr,a
                                   5374 ;	src/main.c:1258: printf_fast_f("1");
      001B88 C0 07            [24] 5375 	push	ar7
      001B8A 74 E2            [12] 5376 	mov	a,#___str_60
      001B8C C0 E0            [24] 5377 	push	acc
      001B8E 74 3B            [12] 5378 	mov	a,#(___str_60 >> 8)
      001B90 C0 E0            [24] 5379 	push	acc
      001B92 12 31 60         [24] 5380 	lcall	_printf_fast_f
      001B95 15 81            [12] 5381 	dec	sp
      001B97 15 81            [12] 5382 	dec	sp
      001B99 D0 07            [24] 5383 	pop	ar7
      001B9B 02 1C 33         [24] 5384 	ljmp	00205$
      001B9E                       5385 00204$:
                                   5386 ;	src/main.c:1260: else if (gu16TimeCnt > 10000) { //
      001B9E 90 00 A8         [24] 5387 	mov	dptr,#_gu16TimeCnt
      001BA1 E0               [24] 5388 	movx	a,@dptr
      001BA2 FD               [12] 5389 	mov	r5,a
      001BA3 A3               [24] 5390 	inc	dptr
      001BA4 E0               [24] 5391 	movx	a,@dptr
      001BA5 FE               [12] 5392 	mov	r6,a
      001BA6 C3               [12] 5393 	clr	c
      001BA7 74 10            [12] 5394 	mov	a,#0x10
      001BA9 9D               [12] 5395 	subb	a,r5
      001BAA 74 27            [12] 5396 	mov	a,#0x27
      001BAC 9E               [12] 5397 	subb	a,r6
      001BAD 40 03            [24] 5398 	jc	00592$
      001BAF 02 1C 33         [24] 5399 	ljmp	00205$
      001BB2                       5400 00592$:
                                   5401 ;	src/main.c:1261: u8RxLFPLen = u8RxBufIdx;
      001BB2 85 5B 5C         [24] 5402 	mov	_main_u8RxLFPLen_65536_136,_main_u8RxBufIdx_65536_136
                                   5403 ;	src/main.c:1262: printf_fast_f("\r\nu8RxLFPLen: %d\r\n",u8RxLFPLen);
      001BB5 AD 5B            [24] 5404 	mov	r5,_main_u8RxBufIdx_65536_136
      001BB7 7E 00            [12] 5405 	mov	r6,#0x00
      001BB9 C0 07            [24] 5406 	push	ar7
      001BBB C0 05            [24] 5407 	push	ar5
      001BBD C0 06            [24] 5408 	push	ar6
      001BBF 74 E4            [12] 5409 	mov	a,#___str_61
      001BC1 C0 E0            [24] 5410 	push	acc
      001BC3 74 3B            [12] 5411 	mov	a,#(___str_61 >> 8)
      001BC5 C0 E0            [24] 5412 	push	acc
      001BC7 12 31 60         [24] 5413 	lcall	_printf_fast_f
      001BCA E5 81            [12] 5414 	mov	a,sp
      001BCC 24 FC            [12] 5415 	add	a,#0xfc
      001BCE F5 81            [12] 5416 	mov	sp,a
      001BD0 D0 07            [24] 5417 	pop	ar7
                                   5418 ;	src/main.c:1263: if (pu8RxUART[1] == 7 ) {
      001BD2 90 00 AF         [24] 5419 	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0001)
      001BD5 E0               [24] 5420 	movx	a,@dptr
      001BD6 FE               [12] 5421 	mov	r6,a
      001BD7 BE 07 05         [24] 5422 	cjne	r6,#0x07,00199$
                                   5423 ;	src/main.c:1264: u8StateRxPkt = STATE_ACK_PROCESS;
      001BDA 75 42 07         [24] 5424 	mov	_main_u8StateRxPkt_65536_136,#0x07
      001BDD 80 54            [24] 5425 	sjmp	00205$
      001BDF                       5426 00199$:
                                   5427 ;	src/main.c:1267: gu32TimeCnt = 0;
      001BDF 90 00 AA         [24] 5428 	mov	dptr,#_gu32TimeCnt
      001BE2 E4               [12] 5429 	clr	a
      001BE3 F0               [24] 5430 	movx	@dptr,a
      001BE4 A3               [24] 5431 	inc	dptr
      001BE5 F0               [24] 5432 	movx	@dptr,a
      001BE6 A3               [24] 5433 	inc	dptr
      001BE7 F0               [24] 5434 	movx	@dptr,a
      001BE8 A3               [24] 5435 	inc	dptr
      001BE9 F0               [24] 5436 	movx	@dptr,a
                                   5437 ;	src/main.c:1268: u8RxBufIdx = 0;
                                   5438 ;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
      001BEA F5 5B            [12] 5439 	mov	_main_u8RxBufIdx_65536_136,a
                                   5440 ;	src/main.c:1269: backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
      001BEC 75 82 03         [24] 5441 	mov	dpl,#0x03
      001BEF C0 07            [24] 5442 	push	ar7
      001BF1 12 28 8A         [24] 5443 	lcall	_get_bktimer_value
      001BF4 AE 82            [24] 5444 	mov	r6,dpl
      001BF6 8E 19            [24] 5445 	mov	__mullong_PARM_2,r6
      001BF8 75 1A 00         [24] 5446 	mov	(__mullong_PARM_2 + 1),#0x00
      001BFB 75 1B 00         [24] 5447 	mov	(__mullong_PARM_2 + 2),#0x00
      001BFE 75 1C 00         [24] 5448 	mov	(__mullong_PARM_2 + 3),#0x00
      001C01 90 00 0A         [24] 5449 	mov	dptr,#(0x0a&0x00ff)
      001C04 E4               [12] 5450 	clr	a
      001C05 F5 F0            [12] 5451 	mov	b,a
      001C07 12 37 80         [24] 5452 	lcall	__mullong
      001C0A AB 82            [24] 5453 	mov	r3,dpl
      001C0C AC 83            [24] 5454 	mov	r4,dph
      001C0E AD F0            [24] 5455 	mov	r5,b
      001C10 FE               [12] 5456 	mov	r6,a
      001C11 90 00 D0         [24] 5457 	mov	dptr,#_main_backoffTimer_65536_136
      001C14 EB               [12] 5458 	mov	a,r3
      001C15 F0               [24] 5459 	movx	@dptr,a
      001C16 EC               [12] 5460 	mov	a,r4
      001C17 A3               [24] 5461 	inc	dptr
      001C18 F0               [24] 5462 	movx	@dptr,a
      001C19 ED               [12] 5463 	mov	a,r5
      001C1A A3               [24] 5464 	inc	dptr
      001C1B F0               [24] 5465 	movx	@dptr,a
      001C1C EE               [12] 5466 	mov	a,r6
      001C1D A3               [24] 5467 	inc	dptr
      001C1E F0               [24] 5468 	movx	@dptr,a
                                   5469 ;	src/main.c:1270: printf_fast_f("ack wait->wrong ack->backoff\r\n");
      001C1F 74 F7            [12] 5470 	mov	a,#___str_62
      001C21 C0 E0            [24] 5471 	push	acc
      001C23 74 3B            [12] 5472 	mov	a,#(___str_62 >> 8)
      001C25 C0 E0            [24] 5473 	push	acc
      001C27 12 31 60         [24] 5474 	lcall	_printf_fast_f
      001C2A 15 81            [12] 5475 	dec	sp
      001C2C 15 81            [12] 5476 	dec	sp
      001C2E D0 07            [24] 5477 	pop	ar7
                                   5478 ;	src/main.c:1272: u8StateRxPkt = STATE_BKOFF; 
      001C30 75 42 06         [24] 5479 	mov	_main_u8StateRxPkt_65536_136,#0x06
      001C33                       5480 00205$:
                                   5481 ;	src/main.c:1287: if (gu32TimeCnt > 100000) {
      001C33 90 00 AA         [24] 5482 	mov	dptr,#_gu32TimeCnt
      001C36 E0               [24] 5483 	movx	a,@dptr
      001C37 FB               [12] 5484 	mov	r3,a
      001C38 A3               [24] 5485 	inc	dptr
      001C39 E0               [24] 5486 	movx	a,@dptr
      001C3A FC               [12] 5487 	mov	r4,a
      001C3B A3               [24] 5488 	inc	dptr
      001C3C E0               [24] 5489 	movx	a,@dptr
      001C3D FD               [12] 5490 	mov	r5,a
      001C3E A3               [24] 5491 	inc	dptr
      001C3F E0               [24] 5492 	movx	a,@dptr
      001C40 FE               [12] 5493 	mov	r6,a
      001C41 C3               [12] 5494 	clr	c
      001C42 74 A0            [12] 5495 	mov	a,#0xa0
      001C44 9B               [12] 5496 	subb	a,r3
      001C45 74 86            [12] 5497 	mov	a,#0x86
      001C47 9C               [12] 5498 	subb	a,r4
      001C48 74 01            [12] 5499 	mov	a,#0x01
      001C4A 9D               [12] 5500 	subb	a,r5
      001C4B E4               [12] 5501 	clr	a
      001C4C 9E               [12] 5502 	subb	a,r6
      001C4D 40 03            [24] 5503 	jc	00595$
      001C4F 02 0F 93         [24] 5504 	ljmp	00237$
      001C52                       5505 00595$:
                                   5506 ;	src/main.c:1288: gu32TimeCnt = 0;
      001C52 90 00 AA         [24] 5507 	mov	dptr,#_gu32TimeCnt
      001C55 E4               [12] 5508 	clr	a
      001C56 F0               [24] 5509 	movx	@dptr,a
      001C57 A3               [24] 5510 	inc	dptr
      001C58 F0               [24] 5511 	movx	@dptr,a
      001C59 A3               [24] 5512 	inc	dptr
      001C5A F0               [24] 5513 	movx	@dptr,a
      001C5B A3               [24] 5514 	inc	dptr
      001C5C F0               [24] 5515 	movx	@dptr,a
                                   5516 ;	src/main.c:1289: u8RxBufIdx = 0;
                                   5517 ;	1-genFromRTrack replaced	mov	_main_u8RxBufIdx_65536_136,#0x00
      001C5D F5 5B            [12] 5518 	mov	_main_u8RxBufIdx_65536_136,a
                                   5519 ;	src/main.c:1290: backoffTimer = (uint32)get_bktimer_value(MY_ADDR)*10;
      001C5F 75 82 03         [24] 5520 	mov	dpl,#0x03
      001C62 C0 07            [24] 5521 	push	ar7
      001C64 12 28 8A         [24] 5522 	lcall	_get_bktimer_value
      001C67 AE 82            [24] 5523 	mov	r6,dpl
      001C69 8E 19            [24] 5524 	mov	__mullong_PARM_2,r6
      001C6B 75 1A 00         [24] 5525 	mov	(__mullong_PARM_2 + 1),#0x00
      001C6E 75 1B 00         [24] 5526 	mov	(__mullong_PARM_2 + 2),#0x00
      001C71 75 1C 00         [24] 5527 	mov	(__mullong_PARM_2 + 3),#0x00
      001C74 90 00 0A         [24] 5528 	mov	dptr,#(0x0a&0x00ff)
      001C77 E4               [12] 5529 	clr	a
      001C78 F5 F0            [12] 5530 	mov	b,a
      001C7A 12 37 80         [24] 5531 	lcall	__mullong
      001C7D AB 82            [24] 5532 	mov	r3,dpl
      001C7F AC 83            [24] 5533 	mov	r4,dph
      001C81 AD F0            [24] 5534 	mov	r5,b
      001C83 FE               [12] 5535 	mov	r6,a
      001C84 90 00 D0         [24] 5536 	mov	dptr,#_main_backoffTimer_65536_136
      001C87 EB               [12] 5537 	mov	a,r3
      001C88 F0               [24] 5538 	movx	@dptr,a
      001C89 EC               [12] 5539 	mov	a,r4
      001C8A A3               [24] 5540 	inc	dptr
      001C8B F0               [24] 5541 	movx	@dptr,a
      001C8C ED               [12] 5542 	mov	a,r5
      001C8D A3               [24] 5543 	inc	dptr
      001C8E F0               [24] 5544 	movx	@dptr,a
      001C8F EE               [12] 5545 	mov	a,r6
      001C90 A3               [24] 5546 	inc	dptr
      001C91 F0               [24] 5547 	movx	@dptr,a
                                   5548 ;	src/main.c:1291: printf_fast_f("ack wait->timeout->backoff\r\n");
      001C92 74 16            [12] 5549 	mov	a,#___str_63
      001C94 C0 E0            [24] 5550 	push	acc
      001C96 74 3C            [12] 5551 	mov	a,#(___str_63 >> 8)
      001C98 C0 E0            [24] 5552 	push	acc
      001C9A 12 31 60         [24] 5553 	lcall	_printf_fast_f
      001C9D 15 81            [12] 5554 	dec	sp
      001C9F 15 81            [12] 5555 	dec	sp
      001CA1 D0 07            [24] 5556 	pop	ar7
                                   5557 ;	src/main.c:1293: u8StateRxPkt = STATE_BKOFF; 
      001CA3 75 42 06         [24] 5558 	mov	_main_u8StateRxPkt_65536_136,#0x06
                                   5559 ;	src/main.c:1295: break;
      001CA6 02 0F 93         [24] 5560 	ljmp	00237$
                                   5561 ;	src/main.c:1297: case STATE_BKOFF : 
      001CA9                       5562 00208$:
                                   5563 ;	src/main.c:1298: if (backoffTimer == 0) {
      001CA9 90 00 D0         [24] 5564 	mov	dptr,#_main_backoffTimer_65536_136
      001CAC E0               [24] 5565 	movx	a,@dptr
      001CAD FB               [12] 5566 	mov	r3,a
      001CAE A3               [24] 5567 	inc	dptr
      001CAF E0               [24] 5568 	movx	a,@dptr
      001CB0 FC               [12] 5569 	mov	r4,a
      001CB1 A3               [24] 5570 	inc	dptr
      001CB2 E0               [24] 5571 	movx	a,@dptr
      001CB3 FD               [12] 5572 	mov	r5,a
      001CB4 A3               [24] 5573 	inc	dptr
      001CB5 E0               [24] 5574 	movx	a,@dptr
      001CB6 FE               [12] 5575 	mov	r6,a
      001CB7 EB               [12] 5576 	mov	a,r3
      001CB8 4C               [12] 5577 	orl	a,r4
      001CB9 4D               [12] 5578 	orl	a,r5
      001CBA 4E               [12] 5579 	orl	a,r6
      001CBB 70 06            [24] 5580 	jnz	00212$
                                   5581 ;	src/main.c:1299: u8StateRxPkt = STATE_ULPKT_SEND; 
      001CBD 75 42 04         [24] 5582 	mov	_main_u8StateRxPkt_65536_136,#0x04
      001CC0 02 0F 93         [24] 5583 	ljmp	00237$
      001CC3                       5584 00212$:
                                   5585 ;	src/main.c:1301: else if (backoffTimer > 0) {
      001CC3 EB               [12] 5586 	mov	a,r3
      001CC4 4C               [12] 5587 	orl	a,r4
      001CC5 4D               [12] 5588 	orl	a,r5
      001CC6 4E               [12] 5589 	orl	a,r6
      001CC7 70 03            [24] 5590 	jnz	00597$
      001CC9 02 0F 93         [24] 5591 	ljmp	00237$
      001CCC                       5592 00597$:
                                   5593 ;	src/main.c:1302: backoffTimer -= 1;
      001CCC 1B               [12] 5594 	dec	r3
      001CCD BB FF 09         [24] 5595 	cjne	r3,#0xff,00598$
      001CD0 1C               [12] 5596 	dec	r4
      001CD1 BC FF 05         [24] 5597 	cjne	r4,#0xff,00598$
      001CD4 1D               [12] 5598 	dec	r5
      001CD5 BD FF 01         [24] 5599 	cjne	r5,#0xff,00598$
      001CD8 1E               [12] 5600 	dec	r6
      001CD9                       5601 00598$:
      001CD9 90 00 D0         [24] 5602 	mov	dptr,#_main_backoffTimer_65536_136
      001CDC EB               [12] 5603 	mov	a,r3
      001CDD F0               [24] 5604 	movx	@dptr,a
      001CDE EC               [12] 5605 	mov	a,r4
      001CDF A3               [24] 5606 	inc	dptr
      001CE0 F0               [24] 5607 	movx	@dptr,a
      001CE1 ED               [12] 5608 	mov	a,r5
      001CE2 A3               [24] 5609 	inc	dptr
      001CE3 F0               [24] 5610 	movx	@dptr,a
      001CE4 EE               [12] 5611 	mov	a,r6
      001CE5 A3               [24] 5612 	inc	dptr
      001CE6 F0               [24] 5613 	movx	@dptr,a
                                   5614 ;	src/main.c:1310: u8StateRxPkt = STATE_BKOFF; 				
      001CE7 75 42 06         [24] 5615 	mov	_main_u8StateRxPkt_65536_136,#0x06
                                   5616 ;	src/main.c:1312: break;
      001CEA 02 0F 93         [24] 5617 	ljmp	00237$
                                   5618 ;	src/main.c:1313: case STATE_ACK_PROCESS :				
      001CED                       5619 00214$:
                                   5620 ;	src/main.c:1315: if (u8RxLFPLen == 16) { // receive ACK pu8RxUART[1] == 7 && 
      001CED 74 10            [12] 5621 	mov	a,#0x10
      001CEF B5 5C 02         [24] 5622 	cjne	a,_main_u8RxLFPLen_65536_136,00599$
      001CF2 80 03            [24] 5623 	sjmp	00600$
      001CF4                       5624 00599$:
      001CF4 02 1E 16         [24] 5625 	ljmp	00220$
      001CF7                       5626 00600$:
                                   5627 ;	src/main.c:1316: if (pu8RxUART[2] == MY_ADDR){ //chk_crc_linefi_packet_packet(&stLineFiPkt) ?
      001CF7 90 00 B0         [24] 5628 	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0002)
      001CFA E0               [24] 5629 	movx	a,@dptr
      001CFB FE               [12] 5630 	mov	r6,a
      001CFC BE 03 02         [24] 5631 	cjne	r6,#0x03,00601$
      001CFF 80 03            [24] 5632 	sjmp	00602$
      001D01                       5633 00601$:
      001D01 02 1E 06         [24] 5634 	ljmp	00217$
      001D04                       5635 00602$:
                                   5636 ;	src/main.c:1318: printf_fast_f("ACKACKACK\r\n");
      001D04 C0 07            [24] 5637 	push	ar7
      001D06 74 33            [12] 5638 	mov	a,#___str_64
      001D08 C0 E0            [24] 5639 	push	acc
      001D0A 74 3C            [12] 5640 	mov	a,#(___str_64 >> 8)
      001D0C C0 E0            [24] 5641 	push	acc
      001D0E 12 31 60         [24] 5642 	lcall	_printf_fast_f
      001D11 15 81            [12] 5643 	dec	sp
      001D13 15 81            [12] 5644 	dec	sp
                                   5645 ;	src/main.c:1319: cp_buf2linefipacket(u8RxLFPLen, pu8RxUART, &stLineFiPkt);
      001D15 75 61 AE         [24] 5646 	mov	_cp_buf2linefipacket_PARM_2,#_main_pu8RxUART_65536_136
      001D18 75 62 00         [24] 5647 	mov	(_cp_buf2linefipacket_PARM_2 + 1),#(_main_pu8RxUART_65536_136 >> 8)
      001D1B 75 63 00         [24] 5648 	mov	(_cp_buf2linefipacket_PARM_2 + 2),#0x00
      001D1E 75 64 43         [24] 5649 	mov	_cp_buf2linefipacket_PARM_3,#_main_stLineFiPkt_65536_136
      001D21 75 65 00         [24] 5650 	mov	(_cp_buf2linefipacket_PARM_3 + 1),#0x00
      001D24 75 66 40         [24] 5651 	mov	(_cp_buf2linefipacket_PARM_3 + 2),#0x40
      001D27 85 5C 82         [24] 5652 	mov	dpl,_main_u8RxLFPLen_65536_136
      001D2A 12 24 6A         [24] 5653 	lcall	_cp_buf2linefipacket
                                   5654 ;	src/main.c:1320: print_linefipacket(&stLineFiPkt);
      001D2D 90 00 43         [24] 5655 	mov	dptr,#_main_stLineFiPkt_65536_136
      001D30 75 F0 40         [24] 5656 	mov	b,#0x40
      001D33 12 25 FC         [24] 5657 	lcall	_print_linefipacket
                                   5658 ;	src/main.c:1322: printf_fast_f("Slave %d, DL_packet_num: %d, Rx size:%d\n\r", MY_ADDR, pu8RxUART[5+MY_ADDR],u8RxLFPLen);
      001D36 AD 5C            [24] 5659 	mov	r5,_main_u8RxLFPLen_65536_136
      001D38 7E 00            [12] 5660 	mov	r6,#0x00
      001D3A 90 00 B6         [24] 5661 	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0008)
      001D3D E0               [24] 5662 	movx	a,@dptr
      001D3E FC               [12] 5663 	mov	r4,a
      001D3F 7B 00            [12] 5664 	mov	r3,#0x00
      001D41 C0 05            [24] 5665 	push	ar5
      001D43 C0 06            [24] 5666 	push	ar6
      001D45 C0 04            [24] 5667 	push	ar4
      001D47 C0 03            [24] 5668 	push	ar3
      001D49 74 03            [12] 5669 	mov	a,#0x03
      001D4B C0 E0            [24] 5670 	push	acc
      001D4D E4               [12] 5671 	clr	a
      001D4E C0 E0            [24] 5672 	push	acc
      001D50 74 3F            [12] 5673 	mov	a,#___str_65
      001D52 C0 E0            [24] 5674 	push	acc
      001D54 74 3C            [12] 5675 	mov	a,#(___str_65 >> 8)
      001D56 C0 E0            [24] 5676 	push	acc
      001D58 12 31 60         [24] 5677 	lcall	_printf_fast_f
      001D5B E5 81            [12] 5678 	mov	a,sp
      001D5D 24 F8            [12] 5679 	add	a,#0xf8
      001D5F F5 81            [12] 5680 	mov	sp,a
      001D61 D0 07            [24] 5681 	pop	ar7
                                   5682 ;	src/main.c:1323: for (i=0; i<u8RxLFPLen;i++) {
      001D63 7E 00            [12] 5683 	mov	r6,#0x00
      001D65                       5684 00248$:
      001D65 C3               [12] 5685 	clr	c
      001D66 EE               [12] 5686 	mov	a,r6
      001D67 95 5C            [12] 5687 	subb	a,_main_u8RxLFPLen_65536_136
      001D69 50 2E            [24] 5688 	jnc	00215$
                                   5689 ;	src/main.c:1324: printf_fast_f("0x%x ", pu8RxUART[i]);
      001D6B EE               [12] 5690 	mov	a,r6
      001D6C 24 AE            [12] 5691 	add	a,#_main_pu8RxUART_65536_136
      001D6E F5 82            [12] 5692 	mov	dpl,a
      001D70 E4               [12] 5693 	clr	a
      001D71 34 00            [12] 5694 	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
      001D73 F5 83            [12] 5695 	mov	dph,a
      001D75 E0               [24] 5696 	movx	a,@dptr
      001D76 FD               [12] 5697 	mov	r5,a
      001D77 7C 00            [12] 5698 	mov	r4,#0x00
      001D79 C0 07            [24] 5699 	push	ar7
      001D7B C0 06            [24] 5700 	push	ar6
      001D7D C0 05            [24] 5701 	push	ar5
      001D7F C0 04            [24] 5702 	push	ar4
      001D81 74 69            [12] 5703 	mov	a,#___str_66
      001D83 C0 E0            [24] 5704 	push	acc
      001D85 74 3C            [12] 5705 	mov	a,#(___str_66 >> 8)
      001D87 C0 E0            [24] 5706 	push	acc
      001D89 12 31 60         [24] 5707 	lcall	_printf_fast_f
      001D8C E5 81            [12] 5708 	mov	a,sp
      001D8E 24 FC            [12] 5709 	add	a,#0xfc
      001D90 F5 81            [12] 5710 	mov	sp,a
      001D92 D0 06            [24] 5711 	pop	ar6
      001D94 D0 07            [24] 5712 	pop	ar7
                                   5713 ;	src/main.c:1323: for (i=0; i<u8RxLFPLen;i++) {
      001D96 0E               [12] 5714 	inc	r6
      001D97 80 CC            [24] 5715 	sjmp	00248$
      001D99                       5716 00215$:
                                   5717 ;	src/main.c:1326: su8Cnt++;
      001D99 90 00 D4         [24] 5718 	mov	dptr,#_main_su8Cnt_65536_136
      001D9C E0               [24] 5719 	movx	a,@dptr
      001D9D 24 01            [12] 5720 	add	a,#0x01
      001D9F F0               [24] 5721 	movx	@dptr,a
                                   5722 ;	src/main.c:1327: stLineFiPkt_UL.u8Ver = su8Cnt;
      001DA0 E0               [24] 5723 	movx	a,@dptr
      001DA1 F5 53            [12] 5724 	mov	_main_stLineFiPkt_UL_65536_136,a
                                   5725 ;	src/main.c:1328: pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;
      001DA3 75 82 03         [24] 5726 	mov	dpl,#0x03
      001DA6 C0 07            [24] 5727 	push	ar7
      001DA8 12 28 34         [24] 5728 	lcall	_get_timer_value
      001DAB AE 82            [24] 5729 	mov	r6,dpl
      001DAD 8E 19            [24] 5730 	mov	__mullong_PARM_2,r6
      001DAF 75 1A 00         [24] 5731 	mov	(__mullong_PARM_2 + 1),#0x00
      001DB2 75 1B 00         [24] 5732 	mov	(__mullong_PARM_2 + 2),#0x00
      001DB5 75 1C 00         [24] 5733 	mov	(__mullong_PARM_2 + 3),#0x00
      001DB8 90 00 0A         [24] 5734 	mov	dptr,#(0x0a&0x00ff)
      001DBB E4               [12] 5735 	clr	a
      001DBC F5 F0            [12] 5736 	mov	b,a
      001DBE 12 37 80         [24] 5737 	lcall	__mullong
      001DC1 AB 82            [24] 5738 	mov	r3,dpl
      001DC3 AC 83            [24] 5739 	mov	r4,dph
      001DC5 AD F0            [24] 5740 	mov	r5,b
      001DC7 FE               [12] 5741 	mov	r6,a
      001DC8 90 00 CC         [24] 5742 	mov	dptr,#_main_pktGenTime_65536_136
      001DCB EB               [12] 5743 	mov	a,r3
      001DCC F0               [24] 5744 	movx	@dptr,a
      001DCD EC               [12] 5745 	mov	a,r4
      001DCE A3               [24] 5746 	inc	dptr
      001DCF F0               [24] 5747 	movx	@dptr,a
      001DD0 ED               [12] 5748 	mov	a,r5
      001DD1 A3               [24] 5749 	inc	dptr
      001DD2 F0               [24] 5750 	movx	@dptr,a
      001DD3 EE               [12] 5751 	mov	a,r6
      001DD4 A3               [24] 5752 	inc	dptr
      001DD5 F0               [24] 5753 	movx	@dptr,a
                                   5754 ;	src/main.c:1330: u8StateRxPkt = STATE_ULPKT_GEN; 
      001DD6 75 42 03         [24] 5755 	mov	_main_u8StateRxPkt_65536_136,#0x03
                                   5756 ;	src/main.c:1331: printf_fast_f("\n\r");
      001DD9 74 0A            [12] 5757 	mov	a,#___str_0
      001DDB C0 E0            [24] 5758 	push	acc
      001DDD 74 38            [12] 5759 	mov	a,#(___str_0 >> 8)
      001DDF C0 E0            [24] 5760 	push	acc
      001DE1 12 31 60         [24] 5761 	lcall	_printf_fast_f
      001DE4 15 81            [12] 5762 	dec	sp
      001DE6 15 81            [12] 5763 	dec	sp
                                   5764 ;	src/main.c:1332: printf_fast_f("\n\r");
      001DE8 74 0A            [12] 5765 	mov	a,#___str_0
      001DEA C0 E0            [24] 5766 	push	acc
      001DEC 74 38            [12] 5767 	mov	a,#(___str_0 >> 8)
      001DEE C0 E0            [24] 5768 	push	acc
      001DF0 12 31 60         [24] 5769 	lcall	_printf_fast_f
      001DF3 15 81            [12] 5770 	dec	sp
      001DF5 15 81            [12] 5771 	dec	sp
      001DF7 D0 07            [24] 5772 	pop	ar7
                                   5773 ;	src/main.c:1333: u8RxBufIdx = 0;	
      001DF9 75 5B 00         [24] 5774 	mov	_main_u8RxBufIdx_65536_136,#0x00
                                   5775 ;	src/main.c:1334: gu16TimeCnt = 0;
      001DFC 90 00 A8         [24] 5776 	mov	dptr,#_gu16TimeCnt
      001DFF E4               [12] 5777 	clr	a
      001E00 F0               [24] 5778 	movx	@dptr,a
      001E01 A3               [24] 5779 	inc	dptr
      001E02 F0               [24] 5780 	movx	@dptr,a
      001E03 02 0F 93         [24] 5781 	ljmp	00237$
      001E06                       5782 00217$:
                                   5783 ;	src/main.c:1337: u8StateRxPkt = STATE_ACK_WAIT; 
      001E06 75 42 05         [24] 5784 	mov	_main_u8StateRxPkt_65536_136,#0x05
                                   5785 ;	src/main.c:1338: u8RxBufIdx = 0;	
      001E09 75 5B 00         [24] 5786 	mov	_main_u8RxBufIdx_65536_136,#0x00
                                   5787 ;	src/main.c:1339: gu16TimeCnt = 0;
      001E0C 90 00 A8         [24] 5788 	mov	dptr,#_gu16TimeCnt
      001E0F E4               [12] 5789 	clr	a
      001E10 F0               [24] 5790 	movx	@dptr,a
      001E11 A3               [24] 5791 	inc	dptr
      001E12 F0               [24] 5792 	movx	@dptr,a
      001E13 02 0F 93         [24] 5793 	ljmp	00237$
      001E16                       5794 00220$:
                                   5795 ;	src/main.c:1345: u8RxBufIdx = 0;
      001E16 75 5B 00         [24] 5796 	mov	_main_u8RxBufIdx_65536_136,#0x00
                                   5797 ;	src/main.c:1346: gu16TimeCnt = 0;
      001E19 90 00 A8         [24] 5798 	mov	dptr,#_gu16TimeCnt
      001E1C E4               [12] 5799 	clr	a
      001E1D F0               [24] 5800 	movx	@dptr,a
      001E1E A3               [24] 5801 	inc	dptr
      001E1F F0               [24] 5802 	movx	@dptr,a
                                   5803 ;	src/main.c:1348: u8StateRxPkt = STATE_ACK_WAIT; 
      001E20 75 42 05         [24] 5804 	mov	_main_u8StateRxPkt_65536_136,#0x05
                                   5805 ;	src/main.c:1350: break;
      001E23 02 0F 93         [24] 5806 	ljmp	00237$
                                   5807 ;	src/main.c:1351: case STATE_RxPKT_END :
      001E26                       5808 00222$:
                                   5809 ;	src/main.c:1352: printf_fast_f("\r\nTo %d -> Rx SIZE:%d\n\r", pu8RxUART[2], u8RxLFPLen);
      001E26 AD 5C            [24] 5810 	mov	r5,_main_u8RxLFPLen_65536_136
      001E28 7E 00            [12] 5811 	mov	r6,#0x00
      001E2A 90 00 B0         [24] 5812 	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0002)
      001E2D E0               [24] 5813 	movx	a,@dptr
      001E2E FC               [12] 5814 	mov	r4,a
      001E2F 7B 00            [12] 5815 	mov	r3,#0x00
      001E31 C0 07            [24] 5816 	push	ar7
      001E33 C0 06            [24] 5817 	push	ar6
      001E35 C0 05            [24] 5818 	push	ar5
      001E37 C0 05            [24] 5819 	push	ar5
      001E39 C0 06            [24] 5820 	push	ar6
      001E3B C0 04            [24] 5821 	push	ar4
      001E3D C0 03            [24] 5822 	push	ar3
      001E3F 74 6F            [12] 5823 	mov	a,#___str_67
      001E41 C0 E0            [24] 5824 	push	acc
      001E43 74 3C            [12] 5825 	mov	a,#(___str_67 >> 8)
      001E45 C0 E0            [24] 5826 	push	acc
      001E47 12 31 60         [24] 5827 	lcall	_printf_fast_f
      001E4A E5 81            [12] 5828 	mov	a,sp
      001E4C 24 FA            [12] 5829 	add	a,#0xfa
      001E4E F5 81            [12] 5830 	mov	sp,a
      001E50 D0 05            [24] 5831 	pop	ar5
      001E52 D0 06            [24] 5832 	pop	ar6
      001E54 D0 07            [24] 5833 	pop	ar7
                                   5834 ;	src/main.c:1354: if (u8RxLFPLen == 1) {
      001E56 74 01            [12] 5835 	mov	a,#0x01
      001E58 B5 5C 40         [24] 5836 	cjne	a,_main_u8RxLFPLen_65536_136,00233$
                                   5837 ;	src/main.c:1356: if (chk_my_addr(MY_ADDR, pu8RxUART[0])) {
      001E5B 90 00 AE         [24] 5838 	mov	dptr,#_main_pu8RxUART_65536_136
      001E5E E0               [24] 5839 	movx	a,@dptr
      001E5F F5 19            [12] 5840 	mov	_chk_my_addr_PARM_2,a
      001E61 75 82 03         [24] 5841 	mov	dpl,#0x03
      001E64 C0 07            [24] 5842 	push	ar7
      001E66 12 08 FF         [24] 5843 	lcall	_chk_my_addr
      001E69 E5 82            [12] 5844 	mov	a,dpl
      001E6B D0 07            [24] 5845 	pop	ar7
      001E6D 70 03            [24] 5846 	jnz	00606$
      001E6F 02 0F 93         [24] 5847 	ljmp	00237$
      001E72                       5848 00606$:
                                   5849 ;	src/main.c:1358: printf_fast_f("Rx:%d\n\r", pu8RxUART[0]);
      001E72 90 00 AE         [24] 5850 	mov	dptr,#_main_pu8RxUART_65536_136
      001E75 E0               [24] 5851 	movx	a,@dptr
      001E76 FC               [12] 5852 	mov	r4,a
      001E77 7B 00            [12] 5853 	mov	r3,#0x00
      001E79 C0 07            [24] 5854 	push	ar7
      001E7B C0 04            [24] 5855 	push	ar4
      001E7D C0 03            [24] 5856 	push	ar3
      001E7F 74 87            [12] 5857 	mov	a,#___str_68
      001E81 C0 E0            [24] 5858 	push	acc
      001E83 74 3C            [12] 5859 	mov	a,#(___str_68 >> 8)
      001E85 C0 E0            [24] 5860 	push	acc
      001E87 12 31 60         [24] 5861 	lcall	_printf_fast_f
      001E8A E5 81            [12] 5862 	mov	a,sp
      001E8C 24 FC            [12] 5863 	add	a,#0xfc
      001E8E F5 81            [12] 5864 	mov	sp,a
                                   5865 ;	src/main.c:1359: ctrl_rgbled_motor(u8RxUART);
      001E90 85 41 82         [24] 5866 	mov	dpl,_main_u8RxUART_65536_136
      001E93 12 08 9B         [24] 5867 	lcall	_ctrl_rgbled_motor
      001E96 D0 07            [24] 5868 	pop	ar7
      001E98 02 0F 93         [24] 5869 	ljmp	00237$
      001E9B                       5870 00233$:
                                   5871 ;	src/main.c:1362: else if(u8RxLFPLen < 8) {
      001E9B 74 F8            [12] 5872 	mov	a,#0x100 - 0x08
      001E9D 25 5C            [12] 5873 	add	a,_main_u8RxLFPLen_65536_136
      001E9F 50 03            [24] 5874 	jnc	00607$
      001EA1 02 1F 58         [24] 5875 	ljmp	00230$
      001EA4                       5876 00607$:
                                   5877 ;	src/main.c:1365: printf_fast_f("1:Rx size:%d\n\r", u8RxLFPLen);
      001EA4 C0 07            [24] 5878 	push	ar7
      001EA6 C0 05            [24] 5879 	push	ar5
      001EA8 C0 06            [24] 5880 	push	ar6
      001EAA 74 8F            [12] 5881 	mov	a,#___str_69
      001EAC C0 E0            [24] 5882 	push	acc
      001EAE 74 3C            [12] 5883 	mov	a,#(___str_69 >> 8)
      001EB0 C0 E0            [24] 5884 	push	acc
      001EB2 12 31 60         [24] 5885 	lcall	_printf_fast_f
      001EB5 E5 81            [12] 5886 	mov	a,sp
      001EB7 24 FC            [12] 5887 	add	a,#0xfc
      001EB9 F5 81            [12] 5888 	mov	sp,a
      001EBB D0 07            [24] 5889 	pop	ar7
                                   5890 ;	src/main.c:1366: for (i=0; i<u8RxLFPLen;i++) {
      001EBD 7E 00            [12] 5891 	mov	r6,#0x00
      001EBF                       5892 00251$:
      001EBF C3               [12] 5893 	clr	c
      001EC0 EE               [12] 5894 	mov	a,r6
      001EC1 95 5C            [12] 5895 	subb	a,_main_u8RxLFPLen_65536_136
      001EC3 50 2E            [24] 5896 	jnc	00225$
                                   5897 ;	src/main.c:1367: printf_fast_f("0x%x ", pu8RxUART[i]);
      001EC5 EE               [12] 5898 	mov	a,r6
      001EC6 24 AE            [12] 5899 	add	a,#_main_pu8RxUART_65536_136
      001EC8 F5 82            [12] 5900 	mov	dpl,a
      001ECA E4               [12] 5901 	clr	a
      001ECB 34 00            [12] 5902 	addc	a,#(_main_pu8RxUART_65536_136 >> 8)
      001ECD F5 83            [12] 5903 	mov	dph,a
      001ECF E0               [24] 5904 	movx	a,@dptr
      001ED0 FD               [12] 5905 	mov	r5,a
      001ED1 7C 00            [12] 5906 	mov	r4,#0x00
      001ED3 C0 07            [24] 5907 	push	ar7
      001ED5 C0 06            [24] 5908 	push	ar6
      001ED7 C0 05            [24] 5909 	push	ar5
      001ED9 C0 04            [24] 5910 	push	ar4
      001EDB 74 69            [12] 5911 	mov	a,#___str_66
      001EDD C0 E0            [24] 5912 	push	acc
      001EDF 74 3C            [12] 5913 	mov	a,#(___str_66 >> 8)
      001EE1 C0 E0            [24] 5914 	push	acc
      001EE3 12 31 60         [24] 5915 	lcall	_printf_fast_f
      001EE6 E5 81            [12] 5916 	mov	a,sp
      001EE8 24 FC            [12] 5917 	add	a,#0xfc
      001EEA F5 81            [12] 5918 	mov	sp,a
      001EEC D0 06            [24] 5919 	pop	ar6
      001EEE D0 07            [24] 5920 	pop	ar7
                                   5921 ;	src/main.c:1366: for (i=0; i<u8RxLFPLen;i++) {
      001EF0 0E               [12] 5922 	inc	r6
      001EF1 80 CC            [24] 5923 	sjmp	00251$
      001EF3                       5924 00225$:
                                   5925 ;	src/main.c:1369: printf_fast_f("\n\r");
      001EF3 C0 07            [24] 5926 	push	ar7
      001EF5 74 0A            [12] 5927 	mov	a,#___str_0
      001EF7 C0 E0            [24] 5928 	push	acc
      001EF9 74 38            [12] 5929 	mov	a,#(___str_0 >> 8)
      001EFB C0 E0            [24] 5930 	push	acc
      001EFD 12 31 60         [24] 5931 	lcall	_printf_fast_f
      001F00 15 81            [12] 5932 	dec	sp
      001F02 15 81            [12] 5933 	dec	sp
      001F04 D0 07            [24] 5934 	pop	ar7
                                   5935 ;	src/main.c:1370: for (i=0; i<u8RxLFPLen;i++) {
      001F06 7E 00            [12] 5936 	mov	r6,#0x00
      001F08                       5937 00254$:
      001F08 C3               [12] 5938 	clr	c
      001F09 EE               [12] 5939 	mov	a,r6
      001F0A 95 5C            [12] 5940 	subb	a,_main_u8RxLFPLen_65536_136
      001F0C 50 34            [24] 5941 	jnc	00226$
                                   5942 ;	src/main.c:1371: printf_fast_f("%d  ", gpu16RxTime[i]);
      001F0E EE               [12] 5943 	mov	a,r6
      001F0F 75 F0 02         [24] 5944 	mov	b,#0x02
      001F12 A4               [48] 5945 	mul	ab
      001F13 24 80            [12] 5946 	add	a,#_gpu16RxTime
      001F15 F5 82            [12] 5947 	mov	dpl,a
      001F17 74 00            [12] 5948 	mov	a,#(_gpu16RxTime >> 8)
      001F19 35 F0            [12] 5949 	addc	a,b
      001F1B F5 83            [12] 5950 	mov	dph,a
      001F1D E0               [24] 5951 	movx	a,@dptr
      001F1E FC               [12] 5952 	mov	r4,a
      001F1F A3               [24] 5953 	inc	dptr
      001F20 E0               [24] 5954 	movx	a,@dptr
      001F21 FD               [12] 5955 	mov	r5,a
      001F22 C0 07            [24] 5956 	push	ar7
      001F24 C0 06            [24] 5957 	push	ar6
      001F26 C0 04            [24] 5958 	push	ar4
      001F28 C0 05            [24] 5959 	push	ar5
      001F2A 74 9E            [12] 5960 	mov	a,#___str_70
      001F2C C0 E0            [24] 5961 	push	acc
      001F2E 74 3C            [12] 5962 	mov	a,#(___str_70 >> 8)
      001F30 C0 E0            [24] 5963 	push	acc
      001F32 12 31 60         [24] 5964 	lcall	_printf_fast_f
      001F35 E5 81            [12] 5965 	mov	a,sp
      001F37 24 FC            [12] 5966 	add	a,#0xfc
      001F39 F5 81            [12] 5967 	mov	sp,a
      001F3B D0 06            [24] 5968 	pop	ar6
      001F3D D0 07            [24] 5969 	pop	ar7
                                   5970 ;	src/main.c:1370: for (i=0; i<u8RxLFPLen;i++) {
      001F3F 0E               [12] 5971 	inc	r6
      001F40 80 C6            [24] 5972 	sjmp	00254$
      001F42                       5973 00226$:
                                   5974 ;	src/main.c:1373: printf_fast_f("\n\r");
      001F42 C0 07            [24] 5975 	push	ar7
      001F44 74 0A            [12] 5976 	mov	a,#___str_0
      001F46 C0 E0            [24] 5977 	push	acc
      001F48 74 38            [12] 5978 	mov	a,#(___str_0 >> 8)
      001F4A C0 E0            [24] 5979 	push	acc
      001F4C 12 31 60         [24] 5980 	lcall	_printf_fast_f
      001F4F 15 81            [12] 5981 	dec	sp
      001F51 15 81            [12] 5982 	dec	sp
      001F53 D0 07            [24] 5983 	pop	ar7
      001F55 02 0F 93         [24] 5984 	ljmp	00237$
      001F58                       5985 00230$:
                                   5986 ;	src/main.c:1378: if (pu8RxUART[1] == 100) { // start aloha
      001F58 90 00 AF         [24] 5987 	mov	dptr,#(_main_pu8RxUART_65536_136 + 0x0001)
      001F5B E0               [24] 5988 	movx	a,@dptr
      001F5C FE               [12] 5989 	mov	r6,a
      001F5D BE 64 02         [24] 5990 	cjne	r6,#0x64,00610$
      001F60 80 03            [24] 5991 	sjmp	00611$
      001F62                       5992 00610$:
      001F62 02 0F 93         [24] 5993 	ljmp	00237$
      001F65                       5994 00611$:
                                   5995 ;	src/main.c:1379: pktGenTime = (uint32)get_timer_value(MY_ADDR)*10;	
      001F65 75 82 03         [24] 5996 	mov	dpl,#0x03
      001F68 C0 07            [24] 5997 	push	ar7
      001F6A 12 28 34         [24] 5998 	lcall	_get_timer_value
      001F6D AE 82            [24] 5999 	mov	r6,dpl
      001F6F 8E 19            [24] 6000 	mov	__mullong_PARM_2,r6
      001F71 75 1A 00         [24] 6001 	mov	(__mullong_PARM_2 + 1),#0x00
      001F74 75 1B 00         [24] 6002 	mov	(__mullong_PARM_2 + 2),#0x00
      001F77 75 1C 00         [24] 6003 	mov	(__mullong_PARM_2 + 3),#0x00
      001F7A 90 00 0A         [24] 6004 	mov	dptr,#(0x0a&0x00ff)
      001F7D E4               [12] 6005 	clr	a
      001F7E F5 F0            [12] 6006 	mov	b,a
      001F80 12 37 80         [24] 6007 	lcall	__mullong
      001F83 AB 82            [24] 6008 	mov	r3,dpl
      001F85 AC 83            [24] 6009 	mov	r4,dph
      001F87 AD F0            [24] 6010 	mov	r5,b
      001F89 FE               [12] 6011 	mov	r6,a
      001F8A D0 07            [24] 6012 	pop	ar7
      001F8C 90 00 CC         [24] 6013 	mov	dptr,#_main_pktGenTime_65536_136
      001F8F EB               [12] 6014 	mov	a,r3
      001F90 F0               [24] 6015 	movx	@dptr,a
      001F91 EC               [12] 6016 	mov	a,r4
      001F92 A3               [24] 6017 	inc	dptr
      001F93 F0               [24] 6018 	movx	@dptr,a
      001F94 ED               [12] 6019 	mov	a,r5
      001F95 A3               [24] 6020 	inc	dptr
      001F96 F0               [24] 6021 	movx	@dptr,a
      001F97 EE               [12] 6022 	mov	a,r6
      001F98 A3               [24] 6023 	inc	dptr
      001F99 F0               [24] 6024 	movx	@dptr,a
                                   6025 ;	src/main.c:1381: u8RxBufIdx = 0;
      001F9A 75 5B 00         [24] 6026 	mov	_main_u8RxBufIdx_65536_136,#0x00
                                   6027 ;	src/main.c:1382: u8StateRxPkt = STATE_ULPKT_GEN; 
      001F9D 75 42 03         [24] 6028 	mov	_main_u8StateRxPkt_65536_136,#0x03
                                   6029 ;	src/main.c:1443: } //switch(u8StateRxPkt)
                                   6030 ;	src/main.c:1445: }
      001FA0 02 0F 93         [24] 6031 	ljmp	00237$
                                   6032 	.area CSEG    (CODE)
                                   6033 	.area CONST   (CODE)
                                   6034 	.area CONST   (CODE)
      00380A                       6035 ___str_0:
      00380A 0A                    6036 	.db 0x0a
      00380B 0D                    6037 	.db 0x0d
      00380C 00                    6038 	.db 0x00
                                   6039 	.area CSEG    (CODE)
                                   6040 	.area CONST   (CODE)
      00380D                       6041 ___str_1:
      00380D 73 65 6C 66 20        6042 	.ascii "self "
      003812 00                    6043 	.db 0x00
                                   6044 	.area CSEG    (CODE)
                                   6045 	.area CONST   (CODE)
      003813                       6046 ___str_2:
      003813 63 72 6F 73 73        6047 	.ascii "cross"
      003818 00                    6048 	.db 0x00
                                   6049 	.area CSEG    (CODE)
                                   6050 	.area CONST   (CODE)
      003819                       6051 ___str_3:
      003819 62 6F 74 68 20        6052 	.ascii "both "
      00381E 00                    6053 	.db 0x00
                                   6054 	.area CSEG    (CODE)
                                   6055 	.area CONST   (CODE)
      00381F                       6056 ___str_4:
      00381F 20 6F 75 74 70 75 74  6057 	.ascii " output:This is UART%d"
             3A 54 68 69 73 20 69
             73 20 55 41 52 54 25
             64
      003835 0A                    6058 	.db 0x0a
      003836 0D                    6059 	.db 0x0d
      003837 00                    6060 	.db 0x00
                                   6061 	.area CSEG    (CODE)
                                   6062 	.area CONST   (CODE)
      003838                       6063 ___str_5:
      003838 0D                    6064 	.db 0x0d
      003839 0A                    6065 	.db 0x0a
      00383A 00                    6066 	.db 0x00
                                   6067 	.area CSEG    (CODE)
                                   6068 	.area CONST   (CODE)
      00383B                       6069 ___str_6:
      00383B 25 63                 6070 	.ascii "%c"
      00383D 00                    6071 	.db 0x00
                                   6072 	.area CSEG    (CODE)
                                   6073 	.area CONST   (CODE)
      00383E                       6074 ___str_7:
      00383E 0D                    6075 	.db 0x0d
      00383F 0A                    6076 	.db 0x0a
      003840 69 6E 70 75 74 3A 54  6077 	.ascii "input:This is UART%d"
             68 69 73 20 69 73 20
             55 41 52 54 25 64
      003854 00                    6078 	.db 0x00
                                   6079 	.area CSEG    (CODE)
                                   6080 	.area CONST   (CODE)
      003855                       6081 ___str_8:
      003855 49 64 6C 65 20 70 72  6082 	.ascii "Idle preamble on/off"
             65 61 6D 62 6C 65 20
             6F 6E 2F 6F 66 66
      003869 0D                    6083 	.db 0x0d
      00386A 0A                    6084 	.db 0x0a
      00386B 00                    6085 	.db 0x00
                                   6086 	.area CSEG    (CODE)
                                   6087 	.area CONST   (CODE)
      00386C                       6088 ___str_9:
      00386C 4C 69 6E 65 46 69 20  6089 	.ascii "LineFi Power Off"
             50 6F 77 65 72 20 4F
             66 66
      00387C 0D                    6090 	.db 0x0d
      00387D 0A                    6091 	.db 0x0a
      00387E 00                    6092 	.db 0x00
                                   6093 	.area CSEG    (CODE)
                                   6094 	.area CONST   (CODE)
      00387F                       6095 ___str_10:
      00387F 4C 69 6E 65 46 69 20  6096 	.ascii "LineFi Power On"
             50 6F 77 65 72 20 4F
             6E
      00388E 0D                    6097 	.db 0x0d
      00388F 0A                    6098 	.db 0x0a
      003890 00                    6099 	.db 0x00
                                   6100 	.area CSEG    (CODE)
                                   6101 	.area CONST   (CODE)
      003891                       6102 ___str_11:
      003891 4C 69 6E 65 46 69 20  6103 	.ascii "LineFi Uart Tx Low"
             55 61 72 74 20 54 78
             20 4C 6F 77
      0038A3 0D                    6104 	.db 0x0d
      0038A4 0A                    6105 	.db 0x0a
      0038A5 00                    6106 	.db 0x00
                                   6107 	.area CSEG    (CODE)
                                   6108 	.area CONST   (CODE)
      0038A6                       6109 ___str_12:
      0038A6 4C 69 6E 65 46 69 20  6110 	.ascii "LineFi Uart Tx High"
             55 61 72 74 20 54 78
             20 48 69 67 68
      0038B9 0D                    6111 	.db 0x0d
      0038BA 0A                    6112 	.db 0x0a
      0038BB 00                    6113 	.db 0x00
                                   6114 	.area CSEG    (CODE)
                                   6115 	.area CONST   (CODE)
      0038BC                       6116 ___str_13:
      0038BC 4C 69 6E 65 46 69 20  6117 	.ascii "LineFi CSC rx FSM Off"
             43 53 43 20 72 78 20
             46 53 4D 20 4F 66 66
      0038D1 0D                    6118 	.db 0x0d
      0038D2 0A                    6119 	.db 0x0a
      0038D3 00                    6120 	.db 0x00
                                   6121 	.area CSEG    (CODE)
                                   6122 	.area CONST   (CODE)
      0038D4                       6123 ___str_14:
      0038D4 4C 69 6E 65 46 69 20  6124 	.ascii "LineFi CSC rx FSM ON"
             43 53 43 20 72 78 20
             46 53 4D 20 4F 4E
      0038E8 0D                    6125 	.db 0x0d
      0038E9 0A                    6126 	.db 0x0a
      0038EA 00                    6127 	.db 0x00
                                   6128 	.area CSEG    (CODE)
                                   6129 	.area CONST   (CODE)
      0038EB                       6130 ___str_15:
      0038EB 56 65 72 73 69 6F 6E  6131 	.ascii "Version 1.4 on 20231026"
             20 31 2E 34 20 6F 6E
             20 32 30 32 33 31 30
             32 36
      003902 0D                    6132 	.db 0x0d
      003903 0A                    6133 	.db 0x0a
      003904 00                    6134 	.db 0x00
                                   6135 	.area CSEG    (CODE)
                                   6136 	.area CONST   (CODE)
      003905                       6137 ___str_16:
      003905 31 3A 20 64 6F 77 6E  6138 	.ascii "1: downlink packet 1"
             6C 69 6E 6B 20 70 61
             63 6B 65 74 20 31
      003919 0D                    6139 	.db 0x0d
      00391A 0A                    6140 	.db 0x0a
      00391B 00                    6141 	.db 0x00
                                   6142 	.area CSEG    (CODE)
                                   6143 	.area CONST   (CODE)
      00391C                       6144 ___str_17:
      00391C 32 3A 20 64 6F 77 6E  6145 	.ascii "2: downlink packet 2"
             6C 69 6E 6B 20 70 61
             63 6B 65 74 20 32
      003930 0D                    6146 	.db 0x0d
      003931 0A                    6147 	.db 0x0a
      003932 00                    6148 	.db 0x00
                                   6149 	.area CSEG    (CODE)
                                   6150 	.area CONST   (CODE)
      003933                       6151 ___str_18:
      003933 33 3A 20 75 70 6C 69  6152 	.ascii "3: uplink idle preamble on/off"
             6E 6B 20 69 64 6C 65
             20 70 72 65 61 6D 62
             6C 65 20 6F 6E 2F 6F
             66 66
      003951 0D                    6153 	.db 0x0d
      003952 0A                    6154 	.db 0x0a
      003953 00                    6155 	.db 0x00
                                   6156 	.area CSEG    (CODE)
                                   6157 	.area CONST   (CODE)
      003954                       6158 ___str_19:
      003954 70 2F 50 3A 20 4C 69  6159 	.ascii "p/P: LineFi Power off/on"
             6E 65 46 69 20 50 6F
             77 65 72 20 6F 66 66
             2F 6F 6E
      00396C 0D                    6160 	.db 0x0d
      00396D 0A                    6161 	.db 0x0a
      00396E 00                    6162 	.db 0x00
                                   6163 	.area CSEG    (CODE)
                                   6164 	.area CONST   (CODE)
      00396F                       6165 ___str_20:
      00396F 74 2F 54 3A 20 4C 69  6166 	.ascii "t/T: LineFi Uart Tx Low/High"
             6E 65 46 69 20 55 61
             72 74 20 54 78 20 4C
             6F 77 2F 48 69 67 68
      00398B 0D                    6167 	.db 0x0d
      00398C 0A                    6168 	.db 0x0a
      00398D 00                    6169 	.db 0x00
                                   6170 	.area CSEG    (CODE)
                                   6171 	.area CONST   (CODE)
      00398E                       6172 ___str_21:
      00398E 73 2F 53 3A 20 4C 69  6173 	.ascii "s/S: LineFie CSC Rx FSM off/on"
             6E 65 46 69 65 20 43
             53 43 20 52 78 20 46
             53 4D 20 6F 66 66 2F
             6F 6E
      0039AC 0D                    6174 	.db 0x0d
      0039AD 0A                    6175 	.db 0x0a
      0039AE 00                    6176 	.db 0x00
                                   6177 	.area CSEG    (CODE)
                                   6178 	.area CONST   (CODE)
      0039AF                       6179 ___str_22:
      0039AF 74 65 73 74 20 70 72  6180 	.ascii "test procedure: p -> P -> T -> S -> 1 or 2"
             6F 63 65 64 75 72 65
             3A 20 70 20 2D 3E 20
             50 20 2D 3E 20 54 20
             2D 3E 20 53 20 2D 3E
             20 31 20 6F 72 20 32
      0039D9 0D                    6181 	.db 0x0d
      0039DA 0A                    6182 	.db 0x0a
      0039DB 00                    6183 	.db 0x00
                                   6184 	.area CSEG    (CODE)
                                   6185 	.area CONST   (CODE)
      0039DC                       6186 ___str_23:
      0039DC 4D 79 20 61 64 64 72  6187 	.ascii "My address is 0x%x"
             65 73 73 20 69 73 20
             30 78 25 78
      0039EE 0D                    6188 	.db 0x0d
      0039EF 0A                    6189 	.db 0x0a
      0039F0 00                    6190 	.db 0x00
                                   6191 	.area CSEG    (CODE)
                                   6192 	.area CONST   (CODE)
      0039F1                       6193 ___str_24:
      0039F1 25 73 3A 25 64        6194 	.ascii "%s:%d"
      0039F6 0D                    6195 	.db 0x0d
      0039F7 0A                    6196 	.db 0x0a
      0039F8 00                    6197 	.db 0x00
                                   6198 	.area CSEG    (CODE)
                                   6199 	.area CONST   (CODE)
      0039F9                       6200 ___str_25:
      0039F9 73 65 74 20 61 64 64  6201 	.ascii "set address as %d"
             72 65 73 73 20 61 73
             20 25 64
      003A0A 0D                    6202 	.db 0x0d
      003A0B 0A                    6203 	.db 0x0a
      003A0C 00                    6204 	.db 0x00
                                   6205 	.area CSEG    (CODE)
                                   6206 	.area CONST   (CODE)
      003A0D                       6207 ___str_26:
      003A0D 75 61 72 74 20 73 70  6208 	.ascii "uart speed: %lu"
             65 65 64 3A 20 25 6C
             75
      003A1C 00                    6209 	.db 0x00
                                   6210 	.area CSEG    (CODE)
                                   6211 	.area CONST   (CODE)
      003A1D                       6212 ___str_27:
      003A1D 28 25 78 2C 25 78 2C  6213 	.ascii "(%x,%x,%x)"
             25 78 29
      003A27 0A                    6214 	.db 0x0a
      003A28 0D                    6215 	.db 0x0d
      003A29 00                    6216 	.db 0x00
                                   6217 	.area CSEG    (CODE)
                                   6218 	.area CONST   (CODE)
      003A2A                       6219 ___str_28:
      003A2A 54 68 69 73 20 69 73  6220 	.ascii "This is UART0"
             20 55 41 52 54 30
      003A37 0A                    6221 	.db 0x0a
      003A38 0D                    6222 	.db 0x0d
      003A39 00                    6223 	.db 0x00
                                   6224 	.area CSEG    (CODE)
                                   6225 	.area CONST   (CODE)
      003A3A                       6226 ___str_29:
      003A3A 54 68 69 73 20 69 73  6227 	.ascii "This is UART1"
             20 55 41 52 54 31
      003A47 0A                    6228 	.db 0x0a
      003A48 0D                    6229 	.db 0x0d
      003A49 00                    6230 	.db 0x00
                                   6231 	.area CSEG    (CODE)
                                   6232 	.area CONST   (CODE)
      003A4A                       6233 ___str_30:
      003A4A 55 41 52 54 5F 54 58  6234 	.ascii "UART_TX="
             3D
      003A52 00                    6235 	.db 0x00
                                   6236 	.area CSEG    (CODE)
                                   6237 	.area CONST   (CODE)
      003A53                       6238 ___str_31:
      003A53 25 64                 6239 	.ascii "%d"
      003A55 0A                    6240 	.db 0x0a
      003A56 0D                    6241 	.db 0x0d
      003A57 00                    6242 	.db 0x00
                                   6243 	.area CSEG    (CODE)
                                   6244 	.area CONST   (CODE)
      003A58                       6245 ___str_32:
      003A58 4C 45 44 5F 52 3D     6246 	.ascii "LED_R="
      003A5E 00                    6247 	.db 0x00
                                   6248 	.area CSEG    (CODE)
                                   6249 	.area CONST   (CODE)
      003A5F                       6250 ___str_33:
      003A5F 4C 45 44 5F 47 3D     6251 	.ascii "LED_G="
      003A65 00                    6252 	.db 0x00
                                   6253 	.area CSEG    (CODE)
                                   6254 	.area CONST   (CODE)
      003A66                       6255 ___str_34:
      003A66 4C 45 44 5F 42 3D     6256 	.ascii "LED_B="
      003A6C 00                    6257 	.db 0x00
                                   6258 	.area CSEG    (CODE)
                                   6259 	.area CONST   (CODE)
      003A6D                       6260 ___str_35:
      003A6D 6E 6F 20 4D 4F 54 4F  6261 	.ascii "no MOTOR_EN"
             52 5F 45 4E
      003A78 0D                    6262 	.db 0x0d
      003A79 0A                    6263 	.db 0x0a
      003A7A 00                    6264 	.db 0x00
                                   6265 	.area CSEG    (CODE)
                                   6266 	.area CONST   (CODE)
      003A7B                       6267 ___str_36:
      003A7B 4D 4F 54 4F 52 5F 43  6268 	.ascii "MOTOR_CW="
             57 3D
      003A84 00                    6269 	.db 0x00
                                   6270 	.area CSEG    (CODE)
                                   6271 	.area CONST   (CODE)
      003A85                       6272 ___str_37:
      003A85 4D 4F 54 4F 52 5F 43  6273 	.ascii "MOTOR_CCW="
             43 57 3D
      003A8F 00                    6274 	.db 0x00
                                   6275 	.area CSEG    (CODE)
                                   6276 	.area CONST   (CODE)
      003A90                       6277 ___str_38:
      003A90 53 45 4C 5F 52 58 5F  6278 	.ascii "SEL_RX_POL="
             50 4F 4C 3D
      003A9B 00                    6279 	.db 0x00
                                   6280 	.area CSEG    (CODE)
                                   6281 	.area CONST   (CODE)
      003A9C                       6282 ___str_39:
      003A9C 63 6F 75 6E 74 3A 25  6283 	.ascii "count:%lu"
             6C 75
      003AA5 0D                    6284 	.db 0x0d
      003AA6 0A                    6285 	.db 0x0a
      003AA7 00                    6286 	.db 0x00
                                   6287 	.area CSEG    (CODE)
                                   6288 	.area CONST   (CODE)
      003AA8                       6289 ___str_40:
      003AA8 72 78 20 64 61 74 61  6290 	.ascii "rx data : %x"
             20 3A 20 25 78
      003AB4 0D                    6291 	.db 0x0d
      003AB5 0A                    6292 	.db 0x0a
      003AB6 00                    6293 	.db 0x00
                                   6294 	.area CSEG    (CODE)
                                   6295 	.area CONST   (CODE)
      003AB7                       6296 ___str_41:
      003AB7 6E 6F 20 72 78        6297 	.ascii "no rx"
      003ABC 0D                    6298 	.db 0x0d
      003ABD 0A                    6299 	.db 0x0a
      003ABE 00                    6300 	.db 0x00
                                   6301 	.area CSEG    (CODE)
                                   6302 	.area CONST   (CODE)
      003ABF                       6303 ___str_42:
      003ABF 25 64 20 25 64 20 25  6304 	.ascii "%d %d %d %d"
             64 20 25 64
      003ACA 0D                    6305 	.db 0x0d
      003ACB 0A                    6306 	.db 0x0a
      003ACC 00                    6307 	.db 0x00
                                   6308 	.area CSEG    (CODE)
                                   6309 	.area CONST   (CODE)
      003ACD                       6310 ___str_43:
      003ACD 25 6C 75              6311 	.ascii "%lu"
      003AD0 0D                    6312 	.db 0x0d
      003AD1 0A                    6313 	.db 0x0a
      003AD2 00                    6314 	.db 0x00
                                   6315 	.area CSEG    (CODE)
                                   6316 	.area CONST   (CODE)
      003AD3                       6317 ___str_44:
      003AD3 5B 25 64 5D 74 65 6D  6318 	.ascii "[%d]temp : %lu"
             70 20 3A 20 25 6C 75
      003AE1 0D                    6319 	.db 0x0d
      003AE2 0A                    6320 	.db 0x0a
      003AE3 00                    6321 	.db 0x00
                                   6322 	.area CSEG    (CODE)
                                   6323 	.area CONST   (CODE)
      003AE4                       6324 ___str_45:
      003AE4 63 72 63 20 62 61 64  6325 	.ascii "crc bad"
      003AEB 0D                    6326 	.db 0x0d
      003AEC 0A                    6327 	.db 0x0a
      003AED 00                    6328 	.db 0x00
                                   6329 	.area CSEG    (CODE)
                                   6330 	.area CONST   (CODE)
      003AEE                       6331 ___str_46:
      003AEE 69 32 63 20 66 6F 75  6332 	.ascii "i2c found %x:"
             6E 64 20 25 78 3A
      003AFB 0D                    6333 	.db 0x0d
      003AFC 0A                    6334 	.db 0x0a
      003AFD 00                    6335 	.db 0x00
                                   6336 	.area CSEG    (CODE)
                                   6337 	.area CONST   (CODE)
      003AFE                       6338 ___str_47:
      003AFE 67 75 38 50 50 61 6D  6339 	.ascii "gu8PPambleDurHNum"
             62 6C 65 44 75 72 48
             4E 75 6D
      003B0F 0D                    6340 	.db 0x0d
      003B10 0A                    6341 	.db 0x0a
      003B11 00                    6342 	.db 0x00
                                   6343 	.area CSEG    (CODE)
                                   6344 	.area CONST   (CODE)
      003B12                       6345 ___str_48:
      003B12 67 75 38 50 50 61 6D  6346 	.ascii "gu8PPambleDurLNum"
             62 6C 65 44 75 72 4C
             4E 75 6D
      003B23 0D                    6347 	.db 0x0d
      003B24 0A                    6348 	.db 0x0a
      003B25 00                    6349 	.db 0x00
                                   6350 	.area CSEG    (CODE)
                                   6351 	.area CONST   (CODE)
      003B26                       6352 ___str_49:
      003B26 67 75 38 50 50 61 6D  6353 	.ascii "gu8PPambleNum"
             62 6C 65 4E 75 6D
      003B33 0D                    6354 	.db 0x0d
      003B34 0A                    6355 	.db 0x0a
      003B35 00                    6356 	.db 0x00
                                   6357 	.area CSEG    (CODE)
                                   6358 	.area CONST   (CODE)
      003B36                       6359 ___str_50:
      003B36 67 75 38 4C 69 6E 65  6360 	.ascii "gu8LineFiUpRate"
             46 69 55 70 52 61 74
             65
      003B45 0D                    6361 	.db 0x0d
      003B46 0A                    6362 	.db 0x0a
      003B47 00                    6363 	.db 0x00
                                   6364 	.area CSEG    (CODE)
                                   6365 	.area CONST   (CODE)
      003B48                       6366 ___str_51:
      003B48 67 75 38 54 78 43 6E  6367 	.ascii "gu8TxCnt"
             74
      003B50 0D                    6368 	.db 0x0d
      003B51 0A                    6369 	.db 0x0a
      003B52 00                    6370 	.db 0x00
                                   6371 	.area CSEG    (CODE)
                                   6372 	.area CONST   (CODE)
      003B53                       6373 ___str_52:
      003B53 2D 2D 2D 2D 2D 2D 2D  6374 	.ascii "-------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D
      003B72 0D                    6375 	.db 0x0d
      003B73 0A                    6376 	.db 0x0a
      003B74 00                    6377 	.db 0x00
                                   6378 	.area CSEG    (CODE)
                                   6379 	.area CONST   (CODE)
      003B75                       6380 ___str_53:
      003B75 67 75 38 50 50 61 6D  6381 	.ascii "gu8PPambleDurHNum:%d"
             62 6C 65 44 75 72 48
             4E 75 6D 3A 25 64
      003B89 0D                    6382 	.db 0x0d
      003B8A 0A                    6383 	.db 0x0a
      003B8B 00                    6384 	.db 0x00
                                   6385 	.area CSEG    (CODE)
                                   6386 	.area CONST   (CODE)
      003B8C                       6387 ___str_54:
      003B8C 67 75 38 50 50 61 6D  6388 	.ascii "gu8PPambleDurLNum:%d"
             62 6C 65 44 75 72 4C
             4E 75 6D 3A 25 64
      003BA0 0D                    6389 	.db 0x0d
      003BA1 0A                    6390 	.db 0x0a
      003BA2 00                    6391 	.db 0x00
                                   6392 	.area CSEG    (CODE)
                                   6393 	.area CONST   (CODE)
      003BA3                       6394 ___str_55:
      003BA3 67 75 38 50 50 61 6D  6395 	.ascii "gu8PPambleNum:%d"
             62 6C 65 4E 75 6D 3A
             25 64
      003BB3 0D                    6396 	.db 0x0d
      003BB4 0A                    6397 	.db 0x0a
      003BB5 00                    6398 	.db 0x00
                                   6399 	.area CSEG    (CODE)
                                   6400 	.area CONST   (CODE)
      003BB6                       6401 ___str_56:
      003BB6 25 6C 75 5B 25 64 5D  6402 	.ascii "%lu[%d]"
      003BBD 0D                    6403 	.db 0x0d
      003BBE 0A                    6404 	.db 0x0a
      003BBF 00                    6405 	.db 0x00
                                   6406 	.area CSEG    (CODE)
                                   6407 	.area CONST   (CODE)
      003BC0                       6408 ___str_57:
      003BC0 67 75 38 54 78 43 6E  6409 	.ascii "gu8TxCnt:%d"
             74 3A 25 64
      003BCB 0D                    6410 	.db 0x0d
      003BCC 0A                    6411 	.db 0x0a
      003BCD 00                    6412 	.db 0x00
                                   6413 	.area CSEG    (CODE)
                                   6414 	.area CONST   (CODE)
      003BCE                       6415 ___str_58:
      003BCE 53 57 49 54 43 48 3A  6416 	.ascii "SWITCH:%d"
             25 64
      003BD7 0A                    6417 	.db 0x0a
      003BD8 0D                    6418 	.db 0x0d
      003BD9 00                    6419 	.db 0x00
                                   6420 	.area CSEG    (CODE)
                                   6421 	.area CONST   (CODE)
      003BDA                       6422 ___str_59:
      003BDA 33 33 33 33 33        6423 	.ascii "33333"
      003BDF 0D                    6424 	.db 0x0d
      003BE0 0A                    6425 	.db 0x0a
      003BE1 00                    6426 	.db 0x00
                                   6427 	.area CSEG    (CODE)
                                   6428 	.area CONST   (CODE)
      003BE2                       6429 ___str_60:
      003BE2 31                    6430 	.ascii "1"
      003BE3 00                    6431 	.db 0x00
                                   6432 	.area CSEG    (CODE)
                                   6433 	.area CONST   (CODE)
      003BE4                       6434 ___str_61:
      003BE4 0D                    6435 	.db 0x0d
      003BE5 0A                    6436 	.db 0x0a
      003BE6 75 38 52 78 4C 46 50  6437 	.ascii "u8RxLFPLen: %d"
             4C 65 6E 3A 20 25 64
      003BF4 0D                    6438 	.db 0x0d
      003BF5 0A                    6439 	.db 0x0a
      003BF6 00                    6440 	.db 0x00
                                   6441 	.area CSEG    (CODE)
                                   6442 	.area CONST   (CODE)
      003BF7                       6443 ___str_62:
      003BF7 61 63 6B 20 77 61 69  6444 	.ascii "ack wait->wrong ack->backoff"
             74 2D 3E 77 72 6F 6E
             67 20 61 63 6B 2D 3E
             62 61 63 6B 6F 66 66
      003C13 0D                    6445 	.db 0x0d
      003C14 0A                    6446 	.db 0x0a
      003C15 00                    6447 	.db 0x00
                                   6448 	.area CSEG    (CODE)
                                   6449 	.area CONST   (CODE)
      003C16                       6450 ___str_63:
      003C16 61 63 6B 20 77 61 69  6451 	.ascii "ack wait->timeout->backoff"
             74 2D 3E 74 69 6D 65
             6F 75 74 2D 3E 62 61
             63 6B 6F 66 66
      003C30 0D                    6452 	.db 0x0d
      003C31 0A                    6453 	.db 0x0a
      003C32 00                    6454 	.db 0x00
                                   6455 	.area CSEG    (CODE)
                                   6456 	.area CONST   (CODE)
      003C33                       6457 ___str_64:
      003C33 41 43 4B 41 43 4B 41  6458 	.ascii "ACKACKACK"
             43 4B
      003C3C 0D                    6459 	.db 0x0d
      003C3D 0A                    6460 	.db 0x0a
      003C3E 00                    6461 	.db 0x00
                                   6462 	.area CSEG    (CODE)
                                   6463 	.area CONST   (CODE)
      003C3F                       6464 ___str_65:
      003C3F 53 6C 61 76 65 20 25  6465 	.ascii "Slave %d, DL_packet_num: %d, Rx size:%d"
             64 2C 20 44 4C 5F 70
             61 63 6B 65 74 5F 6E
             75 6D 3A 20 25 64 2C
             20 52 78 20 73 69 7A
             65 3A 25 64
      003C66 0A                    6466 	.db 0x0a
      003C67 0D                    6467 	.db 0x0d
      003C68 00                    6468 	.db 0x00
                                   6469 	.area CSEG    (CODE)
                                   6470 	.area CONST   (CODE)
      003C69                       6471 ___str_66:
      003C69 30 78 25 78 20        6472 	.ascii "0x%x "
      003C6E 00                    6473 	.db 0x00
                                   6474 	.area CSEG    (CODE)
                                   6475 	.area CONST   (CODE)
      003C6F                       6476 ___str_67:
      003C6F 0D                    6477 	.db 0x0d
      003C70 0A                    6478 	.db 0x0a
      003C71 54 6F 20 25 64 20 2D  6479 	.ascii "To %d -> Rx SIZE:%d"
             3E 20 52 78 20 53 49
             5A 45 3A 25 64
      003C84 0A                    6480 	.db 0x0a
      003C85 0D                    6481 	.db 0x0d
      003C86 00                    6482 	.db 0x00
                                   6483 	.area CSEG    (CODE)
                                   6484 	.area CONST   (CODE)
      003C87                       6485 ___str_68:
      003C87 52 78 3A 25 64        6486 	.ascii "Rx:%d"
      003C8C 0A                    6487 	.db 0x0a
      003C8D 0D                    6488 	.db 0x0d
      003C8E 00                    6489 	.db 0x00
                                   6490 	.area CSEG    (CODE)
                                   6491 	.area CONST   (CODE)
      003C8F                       6492 ___str_69:
      003C8F 31 3A 52 78 20 73 69  6493 	.ascii "1:Rx size:%d"
             7A 65 3A 25 64
      003C9B 0A                    6494 	.db 0x0a
      003C9C 0D                    6495 	.db 0x0d
      003C9D 00                    6496 	.db 0x00
                                   6497 	.area CSEG    (CODE)
                                   6498 	.area CONST   (CODE)
      003C9E                       6499 ___str_70:
      003C9E 25 64 20 20           6500 	.ascii "%d  "
      003CA2 00                    6501 	.db 0x00
                                   6502 	.area CSEG    (CODE)
                                   6503 	.area CONST   (CODE)
      003CA3                       6504 ___str_71:
      003CA3 55 4C 54 4D 4F 44 45  6505 	.ascii "ULTMODE_INIT"
             5F 49 4E 49 54
      003CAF 00                    6506 	.db 0x00
                                   6507 	.area CSEG    (CODE)
                                   6508 	.area CONST   (CODE)
      003CB0                       6509 ___str_72:
      003CB0 55 4C 54 4D 4F 44 45  6510 	.ascii "ULTMODE_PREAMBLE"
             5F 50 52 45 41 4D 42
             4C 45
      003CC0 00                    6511 	.db 0x00
                                   6512 	.area CSEG    (CODE)
                                   6513 	.area CONST   (CODE)
      003CC1                       6514 ___str_73:
      003CC1 55 4C 54 4D 4F 44 45  6515 	.ascii "ULTMODE_DATA"
             5F 44 41 54 41
      003CCD 00                    6516 	.db 0x00
                                   6517 	.area CSEG    (CODE)
                                   6518 	.area CONST   (CODE)
      003CCE                       6519 ___str_74:
      003CCE 55 4C 54 4D 4F 44 45  6520 	.ascii "ULTMODE_NO_MANCHESTER"
             5F 4E 4F 5F 4D 41 4E
             43 48 45 53 54 45 52
      003CE3 00                    6521 	.db 0x00
                                   6522 	.area CSEG    (CODE)
                                   6523 	.area CONST   (CODE)
      003CE4                       6524 ___str_75:
      003CE4 55 4C 54 4D 4F 44 45  6525 	.ascii "ULTMODE_NONE"
             5F 4E 4F 4E 45
      003CF0 00                    6526 	.db 0x00
                                   6527 	.area CSEG    (CODE)
                                   6528 	.area CABS    (ABS,CODE)
      003700                       6529 	.org 0x3700
      003700                       6530 _gpcEEPROM:
      003700 00                    6531 	.db 0x00
      003701 00                    6532 	.db 0x00
      003702 00                    6533 	.db 0x00
      003703 00                    6534 	.db 0x00
      003704 00                    6535 	.db 0x00
      003705 00                    6536 	.db 0x00
      003706 00                    6537 	.db 0x00
      003707 00                    6538 	.db 0x00
      003708 00                    6539 	.db 0x00
      003709 00                    6540 	.db 0x00
      00370A 00                    6541 	.db 0x00
      00370B 00                    6542 	.db 0x00
      00370C 00                    6543 	.db 0x00
      00370D 00                    6544 	.db 0x00
      00370E 00                    6545 	.db 0x00
      00370F 00                    6546 	.db 0x00
      003710 00                    6547 	.db 0x00
      003711 00                    6548 	.db 0x00
      003712 00                    6549 	.db 0x00
      003713 00                    6550 	.db 0x00
      003714 00                    6551 	.db 0x00
      003715 00                    6552 	.db 0x00
      003716 00                    6553 	.db 0x00
      003717 00                    6554 	.db 0x00
      003718 00                    6555 	.db 0x00
      003719 00                    6556 	.db 0x00
      00371A 00                    6557 	.db 0x00
      00371B 00                    6558 	.db 0x00
      00371C 00                    6559 	.db 0x00
      00371D 00                    6560 	.db 0x00
      00371E 00                    6561 	.db 0x00
      00371F 00                    6562 	.db 0x00
      003720 00                    6563 	.db 0x00
      003721 00                    6564 	.db 0x00
      003722 00                    6565 	.db 0x00
      003723 00                    6566 	.db 0x00
      003724 00                    6567 	.db 0x00
      003725 00                    6568 	.db 0x00
      003726 00                    6569 	.db 0x00
      003727 00                    6570 	.db 0x00
      003728 00                    6571 	.db 0x00
      003729 00                    6572 	.db 0x00
      00372A 00                    6573 	.db 0x00
      00372B 00                    6574 	.db 0x00
      00372C 00                    6575 	.db 0x00
      00372D 00                    6576 	.db 0x00
      00372E 00                    6577 	.db 0x00
      00372F 00                    6578 	.db 0x00
      003730 00                    6579 	.db 0x00
      003731 00                    6580 	.db 0x00
      003732 00                    6581 	.db 0x00
      003733 00                    6582 	.db 0x00
      003734 00                    6583 	.db 0x00
      003735 00                    6584 	.db 0x00
      003736 00                    6585 	.db 0x00
      003737 00                    6586 	.db 0x00
      003738 00                    6587 	.db 0x00
      003739 00                    6588 	.db 0x00
      00373A 00                    6589 	.db 0x00
      00373B 00                    6590 	.db 0x00
      00373C 00                    6591 	.db 0x00
      00373D 00                    6592 	.db 0x00
      00373E 00                    6593 	.db 0x00
      00373F 00                    6594 	.db 0x00
      003740 00                    6595 	.db 0x00
      003741 00                    6596 	.db 0x00
      003742 00                    6597 	.db 0x00
      003743 00                    6598 	.db 0x00
      003744 00                    6599 	.db 0x00
      003745 00                    6600 	.db 0x00
      003746 00                    6601 	.db 0x00
      003747 00                    6602 	.db 0x00
      003748 00                    6603 	.db 0x00
      003749 00                    6604 	.db 0x00
      00374A 00                    6605 	.db 0x00
      00374B 00                    6606 	.db 0x00
      00374C 00                    6607 	.db 0x00
      00374D 00                    6608 	.db 0x00
      00374E 00                    6609 	.db 0x00
      00374F 00                    6610 	.db 0x00
      003750 00                    6611 	.db 0x00
      003751 00                    6612 	.db 0x00
      003752 00                    6613 	.db 0x00
      003753 00                    6614 	.db 0x00
      003754 00                    6615 	.db 0x00
      003755 00                    6616 	.db 0x00
      003756 00                    6617 	.db 0x00
      003757 00                    6618 	.db 0x00
      003758 00                    6619 	.db 0x00
      003759 00                    6620 	.db 0x00
      00375A 00                    6621 	.db 0x00
      00375B 00                    6622 	.db 0x00
      00375C 00                    6623 	.db 0x00
      00375D 00                    6624 	.db 0x00
      00375E 00                    6625 	.db 0x00
      00375F 00                    6626 	.db 0x00
      003760 00                    6627 	.db 0x00
      003761 00                    6628 	.db 0x00
      003762 00                    6629 	.db 0x00
      003763 00                    6630 	.db 0x00
      003764 00                    6631 	.db 0x00
      003765 00                    6632 	.db 0x00
      003766 00                    6633 	.db 0x00
      003767 00                    6634 	.db 0x00
      003768 00                    6635 	.db 0x00
      003769 00                    6636 	.db 0x00
      00376A 00                    6637 	.db 0x00
      00376B 00                    6638 	.db 0x00
      00376C 00                    6639 	.db 0x00
      00376D 00                    6640 	.db 0x00
      00376E 00                    6641 	.db 0x00
      00376F 00                    6642 	.db 0x00
      003770 00                    6643 	.db 0x00
      003771 00                    6644 	.db 0x00
      003772 00                    6645 	.db 0x00
      003773 00                    6646 	.db 0x00
      003774 00                    6647 	.db 0x00
      003775 00                    6648 	.db 0x00
      003776 00                    6649 	.db 0x00
      003777 00                    6650 	.db 0x00
      003778 00                    6651 	.db 0x00
      003779 00                    6652 	.db 0x00
      00377A 00                    6653 	.db 0x00
      00377B 00                    6654 	.db 0x00
      00377C 00                    6655 	.db 0x00
      00377D 00                    6656 	.db 0x00
      00377E 00                    6657 	.db 0x00
      00377F 00                    6658 	.db 0x00
