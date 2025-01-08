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
                                     11 	.globl _state_switches_PARM_2
                                     12 	.globl _main
                                     13 	.globl _make_linefi_payload
                                     14 	.globl _send_ACK
                                     15 	.globl _start_aloha
                                     16 	.globl _act_by_one_key
                                     17 	.globl _print_help
                                     18 	.globl _printoutbuf
                                     19 	.globl _state_switches
                                     20 	.globl _gpio_setup
                                     21 	.globl _disp_help
                                     22 	.globl _MODIFY_HIRC_166
                                     23 	.globl _pin_interrupt_isr
                                     24 	.globl _Timer0_ISR
                                     25 	.globl _state_machine
                                     26 	.globl _print_char
                                     27 	.globl _print_esc
                                     28 	.globl _print_linefipacket
                                     29 	.globl _cp_buf2linefipacket
                                     30 	.globl _send_linefi_packet
                                     31 	.globl _send_octet_to_linefi
                                     32 	.globl _add_crc_linefi_packet_packet
                                     33 	.globl _getchar_uart1
                                     34 	.globl _getchar_uart0
                                     35 	.globl _uart_setup
                                     36 	.globl _InitialUART1_Timer3
                                     37 	.globl _printf_fast_f
                                     38 	.globl _printf
                                     39 	.globl _MOSI
                                     40 	.globl _P00
                                     41 	.globl _MISO
                                     42 	.globl _P01
                                     43 	.globl _RXD_1
                                     44 	.globl _P02
                                     45 	.globl _P03
                                     46 	.globl _STADC
                                     47 	.globl _P04
                                     48 	.globl _P05
                                     49 	.globl _TXD
                                     50 	.globl _P06
                                     51 	.globl _RXD
                                     52 	.globl _P07
                                     53 	.globl _IT0
                                     54 	.globl _IE0
                                     55 	.globl _IT1
                                     56 	.globl _IE1
                                     57 	.globl _TR0
                                     58 	.globl _TF0
                                     59 	.globl _TR1
                                     60 	.globl _TF1
                                     61 	.globl _P10
                                     62 	.globl _P11
                                     63 	.globl _P12
                                     64 	.globl _SCL
                                     65 	.globl _P13
                                     66 	.globl _SDA
                                     67 	.globl _P14
                                     68 	.globl _P15
                                     69 	.globl _TXD_1
                                     70 	.globl _P16
                                     71 	.globl _P17
                                     72 	.globl _RI
                                     73 	.globl _TI
                                     74 	.globl _RB8
                                     75 	.globl _TB8
                                     76 	.globl _REN
                                     77 	.globl _SM2
                                     78 	.globl _SM1
                                     79 	.globl _FE
                                     80 	.globl _SM0
                                     81 	.globl _P20
                                     82 	.globl _EX0
                                     83 	.globl _ET0
                                     84 	.globl _EX1
                                     85 	.globl _ET1
                                     86 	.globl _ES
                                     87 	.globl _EBOD
                                     88 	.globl _EADC
                                     89 	.globl _EA
                                     90 	.globl _P30
                                     91 	.globl _PX0
                                     92 	.globl _PT0
                                     93 	.globl _PX1
                                     94 	.globl _PT1
                                     95 	.globl _PS
                                     96 	.globl _PBOD
                                     97 	.globl _PADC
                                     98 	.globl _I2CPX
                                     99 	.globl _AA
                                    100 	.globl _SI
                                    101 	.globl _STO
                                    102 	.globl _STA
                                    103 	.globl _I2CEN
                                    104 	.globl _CM_RL2
                                    105 	.globl _TR2
                                    106 	.globl _TF2
                                    107 	.globl _P
                                    108 	.globl _OV
                                    109 	.globl _RS0
                                    110 	.globl _RS1
                                    111 	.globl _F0
                                    112 	.globl _AC
                                    113 	.globl _CY
                                    114 	.globl _CLRPWM
                                    115 	.globl _PWMF
                                    116 	.globl _LOAD
                                    117 	.globl _PWMRUN
                                    118 	.globl _ADCHS0
                                    119 	.globl _ADCHS1
                                    120 	.globl _ADCHS2
                                    121 	.globl _ADCHS3
                                    122 	.globl _ETGSEL0
                                    123 	.globl _ETGSEL1
                                    124 	.globl _ADCS
                                    125 	.globl _ADCF
                                    126 	.globl _RI_1
                                    127 	.globl _TI_1
                                    128 	.globl _RB8_1
                                    129 	.globl _TB8_1
                                    130 	.globl _REN_1
                                    131 	.globl _SM2_1
                                    132 	.globl _SM1_1
                                    133 	.globl _FE_1
                                    134 	.globl _SM0_1
                                    135 	.globl _EIPH1
                                    136 	.globl _EIP1
                                    137 	.globl _PMD
                                    138 	.globl _PMEN
                                    139 	.globl _PDTCNT
                                    140 	.globl _PDTEN
                                    141 	.globl _SCON_1
                                    142 	.globl _EIPH
                                    143 	.globl _AINDIDS
                                    144 	.globl _SPDR
                                    145 	.globl _SPSR
                                    146 	.globl _SPCR2
                                    147 	.globl _SPCR
                                    148 	.globl _CAPCON4
                                    149 	.globl _CAPCON3
                                    150 	.globl _B
                                    151 	.globl _EIP
                                    152 	.globl _C2H
                                    153 	.globl _C2L
                                    154 	.globl _PIF
                                    155 	.globl _PIPEN
                                    156 	.globl _PINEN
                                    157 	.globl _PICON
                                    158 	.globl _ADCCON0
                                    159 	.globl _C1H
                                    160 	.globl _C1L
                                    161 	.globl _C0H
                                    162 	.globl _C0L
                                    163 	.globl _ADCDLY
                                    164 	.globl _ADCCON2
                                    165 	.globl _ADCCON1
                                    166 	.globl _ACC
                                    167 	.globl _PWMCON1
                                    168 	.globl _PIOCON0
                                    169 	.globl _PWM3L
                                    170 	.globl _PWM2L
                                    171 	.globl _PWM1L
                                    172 	.globl _PWM0L
                                    173 	.globl _PWMPL
                                    174 	.globl _PWMCON0
                                    175 	.globl _FBD
                                    176 	.globl _PNP
                                    177 	.globl _PWM3H
                                    178 	.globl _PWM2H
                                    179 	.globl _PWM1H
                                    180 	.globl _PWM0H
                                    181 	.globl _PWMPH
                                    182 	.globl _PSW
                                    183 	.globl _ADCMPH
                                    184 	.globl _ADCMPL
                                    185 	.globl _PWM5L
                                    186 	.globl _TH2
                                    187 	.globl _PWM4L
                                    188 	.globl _TL2
                                    189 	.globl _RCMP2H
                                    190 	.globl _RCMP2L
                                    191 	.globl _T2MOD
                                    192 	.globl _T2CON
                                    193 	.globl _TA
                                    194 	.globl _PIOCON1
                                    195 	.globl _RH3
                                    196 	.globl _PWM5H
                                    197 	.globl _RL3
                                    198 	.globl _PWM4H
                                    199 	.globl _T3CON
                                    200 	.globl _ADCRH
                                    201 	.globl _ADCRL
                                    202 	.globl _I2ADDR
                                    203 	.globl _I2CON
                                    204 	.globl _I2TOC
                                    205 	.globl _I2CLK
                                    206 	.globl _I2STAT
                                    207 	.globl _I2DAT
                                    208 	.globl _SADDR_1
                                    209 	.globl _SADEN_1
                                    210 	.globl _SADEN
                                    211 	.globl _IP
                                    212 	.globl _PWMINTC
                                    213 	.globl _IPH
                                    214 	.globl _P2S
                                    215 	.globl _P1SR
                                    216 	.globl _P1M2
                                    217 	.globl _P1S
                                    218 	.globl _P1M1
                                    219 	.globl _P0SR
                                    220 	.globl _P0M2
                                    221 	.globl _P0S
                                    222 	.globl _P0M1
                                    223 	.globl _P3
                                    224 	.globl _IAPCN
                                    225 	.globl _IAPFD
                                    226 	.globl _P3SR
                                    227 	.globl _P3M2
                                    228 	.globl _P3S
                                    229 	.globl _P3M1
                                    230 	.globl _BODCON1
                                    231 	.globl _WDCON
                                    232 	.globl _SADDR
                                    233 	.globl _IE
                                    234 	.globl _IAPAH
                                    235 	.globl _IAPAL
                                    236 	.globl _IAPUEN
                                    237 	.globl _IAPTRG
                                    238 	.globl _BODCON0
                                    239 	.globl _AUXR1
                                    240 	.globl _P2
                                    241 	.globl _CHPCON
                                    242 	.globl _EIE1
                                    243 	.globl _EIE
                                    244 	.globl _SBUF_1
                                    245 	.globl _SBUF
                                    246 	.globl _SCON
                                    247 	.globl _CKEN
                                    248 	.globl _CKSWT
                                    249 	.globl _CKDIV
                                    250 	.globl _CAPCON2
                                    251 	.globl _CAPCON1
                                    252 	.globl _CAPCON0
                                    253 	.globl _SFRS
                                    254 	.globl _P1
                                    255 	.globl _WKCON
                                    256 	.globl _CKCON
                                    257 	.globl _TH1
                                    258 	.globl _TH0
                                    259 	.globl _TL1
                                    260 	.globl _TL0
                                    261 	.globl _TMOD
                                    262 	.globl _TCON
                                    263 	.globl _PCON
                                    264 	.globl _RWK
                                    265 	.globl _RCTRIM1
                                    266 	.globl _RCTRIM0
                                    267 	.globl _DPH
                                    268 	.globl _DPL
                                    269 	.globl _SP
                                    270 	.globl _P0
                                    271 	.globl _gpu32UartSpeed
                                    272 	.globl _gu8LineFiUpRxState4
                                    273 	.globl _gu8LineFiUpRxState
                                    274 	.globl _gu16TimeCntMilliSec
                                    275 	.globl _gu16TimeCnt
                                    276 	.globl _gu8PreambleCnt
                                    277 	.globl _gu8PPambleCnt
                                    278 	.globl _gu8MCRxBuf
                                    279 	.globl _gu8RxBufCnt
                                    280 	.globl _gpu8RxBuf
                                    281 	.globl _gpu8Data2
                                    282 	.globl _gpu8Data
                                    283 	.globl _gcUartInputMode
                                    284 	.globl _make_linefi_payload_PARM_4
                                    285 	.globl _make_linefi_payload_PARM_3
                                    286 	.globl _make_linefi_payload_PARM_2
                                    287 	.globl _send_ACK_PARM_2
                                    288 	.globl _act_by_one_key_PARM_3
                                    289 	.globl _act_by_one_key_PARM_2
                                    290 	.globl _printoutbuf_PARM_2
                                    291 	.globl _state_machine_PARM_4
                                    292 	.globl _state_machine_PARM_3
                                    293 	.globl _state_machine_PARM_2
                                    294 ;--------------------------------------------------------
                                    295 ; special function registers
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           000080   299 _P0	=	0x0080
                           000081   300 _SP	=	0x0081
                           000082   301 _DPL	=	0x0082
                           000083   302 _DPH	=	0x0083
                           000084   303 _RCTRIM0	=	0x0084
                           000085   304 _RCTRIM1	=	0x0085
                           000086   305 _RWK	=	0x0086
                           000087   306 _PCON	=	0x0087
                           000088   307 _TCON	=	0x0088
                           000089   308 _TMOD	=	0x0089
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           00008E   313 _CKCON	=	0x008e
                           00008F   314 _WKCON	=	0x008f
                           000090   315 _P1	=	0x0090
                           000091   316 _SFRS	=	0x0091
                           000092   317 _CAPCON0	=	0x0092
                           000093   318 _CAPCON1	=	0x0093
                           000094   319 _CAPCON2	=	0x0094
                           000095   320 _CKDIV	=	0x0095
                           000096   321 _CKSWT	=	0x0096
                           000097   322 _CKEN	=	0x0097
                           000098   323 _SCON	=	0x0098
                           000099   324 _SBUF	=	0x0099
                           00009A   325 _SBUF_1	=	0x009a
                           00009B   326 _EIE	=	0x009b
                           00009C   327 _EIE1	=	0x009c
                           00009F   328 _CHPCON	=	0x009f
                           0000A0   329 _P2	=	0x00a0
                           0000A2   330 _AUXR1	=	0x00a2
                           0000A3   331 _BODCON0	=	0x00a3
                           0000A4   332 _IAPTRG	=	0x00a4
                           0000A5   333 _IAPUEN	=	0x00a5
                           0000A6   334 _IAPAL	=	0x00a6
                           0000A7   335 _IAPAH	=	0x00a7
                           0000A8   336 _IE	=	0x00a8
                           0000A9   337 _SADDR	=	0x00a9
                           0000AA   338 _WDCON	=	0x00aa
                           0000AB   339 _BODCON1	=	0x00ab
                           0000AC   340 _P3M1	=	0x00ac
                           0000AC   341 _P3S	=	0x00ac
                           0000AD   342 _P3M2	=	0x00ad
                           0000AD   343 _P3SR	=	0x00ad
                           0000AE   344 _IAPFD	=	0x00ae
                           0000AF   345 _IAPCN	=	0x00af
                           0000B0   346 _P3	=	0x00b0
                           0000B1   347 _P0M1	=	0x00b1
                           0000B1   348 _P0S	=	0x00b1
                           0000B2   349 _P0M2	=	0x00b2
                           0000B2   350 _P0SR	=	0x00b2
                           0000B3   351 _P1M1	=	0x00b3
                           0000B3   352 _P1S	=	0x00b3
                           0000B4   353 _P1M2	=	0x00b4
                           0000B4   354 _P1SR	=	0x00b4
                           0000B5   355 _P2S	=	0x00b5
                           0000B7   356 _IPH	=	0x00b7
                           0000B7   357 _PWMINTC	=	0x00b7
                           0000B8   358 _IP	=	0x00b8
                           0000B9   359 _SADEN	=	0x00b9
                           0000BA   360 _SADEN_1	=	0x00ba
                           0000BB   361 _SADDR_1	=	0x00bb
                           0000BC   362 _I2DAT	=	0x00bc
                           0000BD   363 _I2STAT	=	0x00bd
                           0000BE   364 _I2CLK	=	0x00be
                           0000BF   365 _I2TOC	=	0x00bf
                           0000C0   366 _I2CON	=	0x00c0
                           0000C1   367 _I2ADDR	=	0x00c1
                           0000C2   368 _ADCRL	=	0x00c2
                           0000C3   369 _ADCRH	=	0x00c3
                           0000C4   370 _T3CON	=	0x00c4
                           0000C4   371 _PWM4H	=	0x00c4
                           0000C5   372 _RL3	=	0x00c5
                           0000C5   373 _PWM5H	=	0x00c5
                           0000C6   374 _RH3	=	0x00c6
                           0000C6   375 _PIOCON1	=	0x00c6
                           0000C7   376 _TA	=	0x00c7
                           0000C8   377 _T2CON	=	0x00c8
                           0000C9   378 _T2MOD	=	0x00c9
                           0000CA   379 _RCMP2L	=	0x00ca
                           0000CB   380 _RCMP2H	=	0x00cb
                           0000CC   381 _TL2	=	0x00cc
                           0000CC   382 _PWM4L	=	0x00cc
                           0000CD   383 _TH2	=	0x00cd
                           0000CD   384 _PWM5L	=	0x00cd
                           0000CE   385 _ADCMPL	=	0x00ce
                           0000CF   386 _ADCMPH	=	0x00cf
                           0000D0   387 _PSW	=	0x00d0
                           0000D1   388 _PWMPH	=	0x00d1
                           0000D2   389 _PWM0H	=	0x00d2
                           0000D3   390 _PWM1H	=	0x00d3
                           0000D4   391 _PWM2H	=	0x00d4
                           0000D5   392 _PWM3H	=	0x00d5
                           0000D6   393 _PNP	=	0x00d6
                           0000D7   394 _FBD	=	0x00d7
                           0000D8   395 _PWMCON0	=	0x00d8
                           0000D9   396 _PWMPL	=	0x00d9
                           0000DA   397 _PWM0L	=	0x00da
                           0000DB   398 _PWM1L	=	0x00db
                           0000DC   399 _PWM2L	=	0x00dc
                           0000DD   400 _PWM3L	=	0x00dd
                           0000DE   401 _PIOCON0	=	0x00de
                           0000DF   402 _PWMCON1	=	0x00df
                           0000E0   403 _ACC	=	0x00e0
                           0000E1   404 _ADCCON1	=	0x00e1
                           0000E2   405 _ADCCON2	=	0x00e2
                           0000E3   406 _ADCDLY	=	0x00e3
                           0000E4   407 _C0L	=	0x00e4
                           0000E5   408 _C0H	=	0x00e5
                           0000E6   409 _C1L	=	0x00e6
                           0000E7   410 _C1H	=	0x00e7
                           0000E8   411 _ADCCON0	=	0x00e8
                           0000E9   412 _PICON	=	0x00e9
                           0000EA   413 _PINEN	=	0x00ea
                           0000EB   414 _PIPEN	=	0x00eb
                           0000EC   415 _PIF	=	0x00ec
                           0000ED   416 _C2L	=	0x00ed
                           0000EE   417 _C2H	=	0x00ee
                           0000EF   418 _EIP	=	0x00ef
                           0000F0   419 _B	=	0x00f0
                           0000F1   420 _CAPCON3	=	0x00f1
                           0000F2   421 _CAPCON4	=	0x00f2
                           0000F3   422 _SPCR	=	0x00f3
                           0000F3   423 _SPCR2	=	0x00f3
                           0000F4   424 _SPSR	=	0x00f4
                           0000F5   425 _SPDR	=	0x00f5
                           0000F6   426 _AINDIDS	=	0x00f6
                           0000F7   427 _EIPH	=	0x00f7
                           0000F8   428 _SCON_1	=	0x00f8
                           0000F9   429 _PDTEN	=	0x00f9
                           0000FA   430 _PDTCNT	=	0x00fa
                           0000FB   431 _PMEN	=	0x00fb
                           0000FC   432 _PMD	=	0x00fc
                           0000FE   433 _EIP1	=	0x00fe
                           0000FF   434 _EIPH1	=	0x00ff
                                    435 ;--------------------------------------------------------
                                    436 ; special function bits
                                    437 ;--------------------------------------------------------
                                    438 	.area RSEG    (ABS,DATA)
      000000                        439 	.org 0x0000
                           0000FF   440 _SM0_1	=	0x00ff
                           0000FF   441 _FE_1	=	0x00ff
                           0000FE   442 _SM1_1	=	0x00fe
                           0000FD   443 _SM2_1	=	0x00fd
                           0000FC   444 _REN_1	=	0x00fc
                           0000FB   445 _TB8_1	=	0x00fb
                           0000FA   446 _RB8_1	=	0x00fa
                           0000F9   447 _TI_1	=	0x00f9
                           0000F8   448 _RI_1	=	0x00f8
                           0000EF   449 _ADCF	=	0x00ef
                           0000EE   450 _ADCS	=	0x00ee
                           0000ED   451 _ETGSEL1	=	0x00ed
                           0000EC   452 _ETGSEL0	=	0x00ec
                           0000EB   453 _ADCHS3	=	0x00eb
                           0000EA   454 _ADCHS2	=	0x00ea
                           0000E9   455 _ADCHS1	=	0x00e9
                           0000E8   456 _ADCHS0	=	0x00e8
                           0000DF   457 _PWMRUN	=	0x00df
                           0000DE   458 _LOAD	=	0x00de
                           0000DD   459 _PWMF	=	0x00dd
                           0000DC   460 _CLRPWM	=	0x00dc
                           0000D7   461 _CY	=	0x00d7
                           0000D6   462 _AC	=	0x00d6
                           0000D5   463 _F0	=	0x00d5
                           0000D4   464 _RS1	=	0x00d4
                           0000D3   465 _RS0	=	0x00d3
                           0000D2   466 _OV	=	0x00d2
                           0000D0   467 _P	=	0x00d0
                           0000CF   468 _TF2	=	0x00cf
                           0000CA   469 _TR2	=	0x00ca
                           0000C8   470 _CM_RL2	=	0x00c8
                           0000C6   471 _I2CEN	=	0x00c6
                           0000C5   472 _STA	=	0x00c5
                           0000C4   473 _STO	=	0x00c4
                           0000C3   474 _SI	=	0x00c3
                           0000C2   475 _AA	=	0x00c2
                           0000C0   476 _I2CPX	=	0x00c0
                           0000BE   477 _PADC	=	0x00be
                           0000BD   478 _PBOD	=	0x00bd
                           0000BC   479 _PS	=	0x00bc
                           0000BB   480 _PT1	=	0x00bb
                           0000BA   481 _PX1	=	0x00ba
                           0000B9   482 _PT0	=	0x00b9
                           0000B8   483 _PX0	=	0x00b8
                           0000B0   484 _P30	=	0x00b0
                           0000AF   485 _EA	=	0x00af
                           0000AE   486 _EADC	=	0x00ae
                           0000AD   487 _EBOD	=	0x00ad
                           0000AC   488 _ES	=	0x00ac
                           0000AB   489 _ET1	=	0x00ab
                           0000AA   490 _EX1	=	0x00aa
                           0000A9   491 _ET0	=	0x00a9
                           0000A8   492 _EX0	=	0x00a8
                           0000A0   493 _P20	=	0x00a0
                           00009F   494 _SM0	=	0x009f
                           00009F   495 _FE	=	0x009f
                           00009E   496 _SM1	=	0x009e
                           00009D   497 _SM2	=	0x009d
                           00009C   498 _REN	=	0x009c
                           00009B   499 _TB8	=	0x009b
                           00009A   500 _RB8	=	0x009a
                           000099   501 _TI	=	0x0099
                           000098   502 _RI	=	0x0098
                           000097   503 _P17	=	0x0097
                           000096   504 _P16	=	0x0096
                           000096   505 _TXD_1	=	0x0096
                           000095   506 _P15	=	0x0095
                           000094   507 _P14	=	0x0094
                           000094   508 _SDA	=	0x0094
                           000093   509 _P13	=	0x0093
                           000093   510 _SCL	=	0x0093
                           000092   511 _P12	=	0x0092
                           000091   512 _P11	=	0x0091
                           000090   513 _P10	=	0x0090
                           00008F   514 _TF1	=	0x008f
                           00008E   515 _TR1	=	0x008e
                           00008D   516 _TF0	=	0x008d
                           00008C   517 _TR0	=	0x008c
                           00008B   518 _IE1	=	0x008b
                           00008A   519 _IT1	=	0x008a
                           000089   520 _IE0	=	0x0089
                           000088   521 _IT0	=	0x0088
                           000087   522 _P07	=	0x0087
                           000087   523 _RXD	=	0x0087
                           000086   524 _P06	=	0x0086
                           000086   525 _TXD	=	0x0086
                           000085   526 _P05	=	0x0085
                           000084   527 _P04	=	0x0084
                           000084   528 _STADC	=	0x0084
                           000083   529 _P03	=	0x0083
                           000082   530 _P02	=	0x0082
                           000082   531 _RXD_1	=	0x0082
                           000081   532 _P01	=	0x0081
                           000081   533 _MISO	=	0x0081
                           000080   534 _P00	=	0x0080
                           000080   535 _MOSI	=	0x0080
                                    536 ;--------------------------------------------------------
                                    537 ; overlayable register banks
                                    538 ;--------------------------------------------------------
                                    539 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        540 	.ds 8
                                    541 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        542 	.ds 8
                                    543 ;--------------------------------------------------------
                                    544 ; internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area DSEG    (DATA)
      000022                        547 _state_machine_PARM_2:
      000022                        548 	.ds 1
      000023                        549 _state_machine_PARM_3:
      000023                        550 	.ds 1
      000024                        551 _state_machine_PARM_4:
      000024                        552 	.ds 1
      000025                        553 _printoutbuf_PARM_2:
      000025                        554 	.ds 3
      000028                        555 _act_by_one_key_PARM_2:
      000028                        556 	.ds 3
      00002B                        557 _act_by_one_key_PARM_3:
      00002B                        558 	.ds 3
      00002E                        559 _act_by_one_key_sloc0_1_0:
      00002E                        560 	.ds 3
      000031                        561 _send_ACK_PARM_2:
      000031                        562 	.ds 3
      000034                        563 _make_linefi_payload_PARM_2:
      000034                        564 	.ds 1
      000035                        565 _make_linefi_payload_PARM_3:
      000035                        566 	.ds 1
      000036                        567 _make_linefi_payload_PARM_4:
      000036                        568 	.ds 3
      000039                        569 _make_linefi_payload_au32LineFiUpSpeed_65536_100:
      000039                        570 	.ds 4
      00003D                        571 _make_linefi_payload_sloc0_1_0:
      00003D                        572 	.ds 3
                                    573 ;--------------------------------------------------------
                                    574 ; overlayable items in internal ram 
                                    575 ;--------------------------------------------------------
                                    576 	.area	OSEG    (OVR,DATA)
                                    577 	.area	OSEG    (OVR,DATA)
      00001A                        578 _state_switches_PARM_2:
      00001A                        579 	.ds 3
                                    580 ;--------------------------------------------------------
                                    581 ; Stack segment in internal ram 
                                    582 ;--------------------------------------------------------
                                    583 	.area	SSEG
      000083                        584 __start__stack:
      000083                        585 	.ds	1
                                    586 
                                    587 ;--------------------------------------------------------
                                    588 ; indirectly addressable internal ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area ISEG    (DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; absolute internal ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area IABS    (ABS,DATA)
                                    595 	.area IABS    (ABS,DATA)
                                    596 ;--------------------------------------------------------
                                    597 ; bit data
                                    598 ;--------------------------------------------------------
                                    599 	.area BSEG    (BIT)
                                    600 ;--------------------------------------------------------
                                    601 ; paged external ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area PSEG    (PAG,XDATA)
                                    604 ;--------------------------------------------------------
                                    605 ; external ram data
                                    606 ;--------------------------------------------------------
                                    607 	.area XSEG    (XDATA)
      000001                        608 _gcUartInputMode::
      000001                        609 	.ds 27
      00001C                        610 _gpu8Data::
      00001C                        611 	.ds 20
      000030                        612 _gpu8Data2::
      000030                        613 	.ds 20
      000044                        614 _gpu8RxBuf::
      000044                        615 	.ds 16
      000054                        616 _gu8RxBufCnt::
      000054                        617 	.ds 1
      000055                        618 _gu8MCRxBuf::
      000055                        619 	.ds 1
      000056                        620 _gu8PPambleCnt::
      000056                        621 	.ds 1
      000057                        622 _gu8PreambleCnt::
      000057                        623 	.ds 1
      000058                        624 _gu16TimeCnt::
      000058                        625 	.ds 2
      00005A                        626 _gu16TimeCntMilliSec::
      00005A                        627 	.ds 2
      00005C                        628 _gu8LineFiUpRxState::
      00005C                        629 	.ds 1
      00005D                        630 _gu8LineFiUpRxState4::
      00005D                        631 	.ds 1
      00005E                        632 _gpu32UartSpeed::
      00005E                        633 	.ds 56
      000096                        634 _state_switches_su8PrevSW_65536_76:
      000096                        635 	.ds 1
      000097                        636 _act_by_one_key_u8Data_65536_88:
      000097                        637 	.ds 1
      000098                        638 _main_u8RxUART_65536_103:
      000098                        639 	.ds 1
      000099                        640 _main_u8RxUART1_65536_103:
      000099                        641 	.ds 1
      00009A                        642 _main_u8LineFiAddr_65536_103:
      00009A                        643 	.ds 1
      00009B                        644 _main_u8LineFiSpeed_65536_103:
      00009B                        645 	.ds 1
      00009C                        646 _main_u8LineFiCmd_65536_103:
      00009C                        647 	.ds 1
      00009D                        648 _main_u8PwrOnFirstFlag_65536_103:
      00009D                        649 	.ds 1
      00009E                        650 _main_u8SwNum_65536_103:
      00009E                        651 	.ds 1
      00009F                        652 _main_u8StatePeriodicSend_65536_103:
      00009F                        653 	.ds 1
      0000A0                        654 _main_u8PSCmd_65536_103:
      0000A0                        655 	.ds 1
      0000A1                        656 _main_u8StateUart0InputMode_65536_103:
      0000A1                        657 	.ds 1
      0000A2                        658 _main_pcBuf_65536_103:
      0000A2                        659 	.ds 50
      0000D4                        660 _main_pu8Data_65536_103:
      0000D4                        661 	.ds 10
      0000DE                        662 _main_u8DataIdx_65536_103:
      0000DE                        663 	.ds 1
      0000DF                        664 _main_ucBufIdx_65536_103:
      0000DF                        665 	.ds 1
      0000E0                        666 _main_pstLineFiPkt_65536_103:
      0000E0                        667 	.ds 40
      000108                        668 _main_stLineFiPkt_test_65536_103:
      000108                        669 	.ds 8
      000110                        670 _main_stLineFiPkt_65536_103:
      000110                        671 	.ds 8
                                    672 ;--------------------------------------------------------
                                    673 ; absolute external ram data
                                    674 ;--------------------------------------------------------
                                    675 	.area XABS    (ABS,XDATA)
                                    676 ;--------------------------------------------------------
                                    677 ; external initialized ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area HOME    (CODE)
                                    680 	.area GSINIT0 (CODE)
                                    681 	.area GSINIT1 (CODE)
                                    682 	.area GSINIT2 (CODE)
                                    683 	.area GSINIT3 (CODE)
                                    684 	.area GSINIT4 (CODE)
                                    685 	.area GSINIT5 (CODE)
                                    686 	.area GSINIT  (CODE)
                                    687 	.area GSFINAL (CODE)
                                    688 	.area CSEG    (CODE)
                                    689 ;--------------------------------------------------------
                                    690 ; interrupt vector 
                                    691 ;--------------------------------------------------------
                                    692 	.area HOME    (CODE)
      000000                        693 __interrupt_vect:
      000000 02 00 81         [24]  694 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  695 	reti
      000004                        696 	.ds	7
      00000B 02 06 71         [24]  697 	ljmp	_Timer0_ISR
      00000E                        698 	.ds	5
      000013 32               [24]  699 	reti
      000014                        700 	.ds	7
      00001B 32               [24]  701 	reti
      00001C                        702 	.ds	7
      000023 02 2A A6         [24]  703 	ljmp	_SerialPort0_ISR
      000026                        704 	.ds	5
      00002B 32               [24]  705 	reti
      00002C                        706 	.ds	7
      000033 32               [24]  707 	reti
      000034                        708 	.ds	7
      00003B 02 06 A0         [24]  709 	ljmp	_pin_interrupt_isr
      00003E                        710 	.ds	5
      000043 32               [24]  711 	reti
      000044                        712 	.ds	7
      00004B 32               [24]  713 	reti
      00004C                        714 	.ds	7
      000053 32               [24]  715 	reti
      000054                        716 	.ds	7
      00005B 32               [24]  717 	reti
      00005C                        718 	.ds	7
      000063 32               [24]  719 	reti
      000064                        720 	.ds	7
      00006B 32               [24]  721 	reti
      00006C                        722 	.ds	7
      000073 32               [24]  723 	reti
      000074                        724 	.ds	7
      00007B 02 2C 1F         [24]  725 	ljmp	_SerialPort1_ISR
                                    726 ;--------------------------------------------------------
                                    727 ; global & static initialisations
                                    728 ;--------------------------------------------------------
                                    729 	.area HOME    (CODE)
                                    730 	.area GSINIT  (CODE)
                                    731 	.area GSFINAL (CODE)
                                    732 	.area GSINIT  (CODE)
                                    733 	.globl __sdcc_gsinit_startup
                                    734 	.globl __sdcc_program_startup
                                    735 	.globl __start__stack
                                    736 	.globl __mcs51_genRAMCLEAR
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'state_switches'
                                    739 ;------------------------------------------------------------
                                    740 ;su8PrevSW                 Allocated with name '_state_switches_su8PrevSW_65536_76'
                                    741 ;apu8SwNum                 Allocated with name '_state_switches_PARM_2'
                                    742 ;au8SW                     Allocated to registers r7 
                                    743 ;i                         Allocated to registers r2 
                                    744 ;u8Result                  Allocated to registers r6 
                                    745 ;------------------------------------------------------------
                                    746 ;	src/main.c:410: static UINT8 __xdata su8PrevSW = 0;
      000094 90 00 96         [24]  747 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      000097 E4               [12]  748 	clr	a
      000098 F0               [24]  749 	movx	@dptr,a
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'act_by_one_key'
                                    752 ;------------------------------------------------------------
                                    753 ;apu8LineFiCmd             Allocated with name '_act_by_one_key_PARM_2'
                                    754 ;apu8LineFiAddr            Allocated with name '_act_by_one_key_PARM_3'
                                    755 ;au8RxUART                 Allocated to registers r7 
                                    756 ;sloc0                     Allocated with name '_act_by_one_key_sloc0_1_0'
                                    757 ;u8Data                    Allocated with name '_act_by_one_key_u8Data_65536_88'
                                    758 ;------------------------------------------------------------
                                    759 ;	src/main.c:483: static UINT8 __xdata u8Data = 0;
      000099 90 00 97         [24]  760 	mov	dptr,#_act_by_one_key_u8Data_65536_88
      00009C E4               [12]  761 	clr	a
      00009D F0               [24]  762 	movx	@dptr,a
                                    763 ;	src/main.c:98: const char * __xdata  gcUartInputMode[MAX_STATE_UART0_INPUT] = {
      00009E 90 00 01         [24]  764 	mov	dptr,#_gcUartInputMode
      0000A1 74 D1            [12]  765 	mov	a,#___str_72
      0000A3 F0               [24]  766 	movx	@dptr,a
      0000A4 74 41            [12]  767 	mov	a,#(___str_72 >> 8)
      0000A6 A3               [24]  768 	inc	dptr
      0000A7 F0               [24]  769 	movx	@dptr,a
      0000A8 74 80            [12]  770 	mov	a,#0x80
      0000AA A3               [24]  771 	inc	dptr
      0000AB F0               [24]  772 	movx	@dptr,a
      0000AC 90 00 04         [24]  773 	mov	dptr,#(_gcUartInputMode + 0x0003)
      0000AF 74 F3            [12]  774 	mov	a,#___str_73
      0000B1 F0               [24]  775 	movx	@dptr,a
      0000B2 74 41            [12]  776 	mov	a,#(___str_73 >> 8)
      0000B4 A3               [24]  777 	inc	dptr
      0000B5 F0               [24]  778 	movx	@dptr,a
      0000B6 74 80            [12]  779 	mov	a,#0x80
      0000B8 A3               [24]  780 	inc	dptr
      0000B9 F0               [24]  781 	movx	@dptr,a
      0000BA 90 00 07         [24]  782 	mov	dptr,#(_gcUartInputMode + 0x0006)
      0000BD 74 12            [12]  783 	mov	a,#___str_74
      0000BF F0               [24]  784 	movx	@dptr,a
      0000C0 74 42            [12]  785 	mov	a,#(___str_74 >> 8)
      0000C2 A3               [24]  786 	inc	dptr
      0000C3 F0               [24]  787 	movx	@dptr,a
      0000C4 74 80            [12]  788 	mov	a,#0x80
      0000C6 A3               [24]  789 	inc	dptr
      0000C7 F0               [24]  790 	movx	@dptr,a
      0000C8 90 00 0A         [24]  791 	mov	dptr,#(_gcUartInputMode + 0x0009)
      0000CB 74 39            [12]  792 	mov	a,#___str_75
      0000CD F0               [24]  793 	movx	@dptr,a
      0000CE 74 42            [12]  794 	mov	a,#(___str_75 >> 8)
      0000D0 A3               [24]  795 	inc	dptr
      0000D1 F0               [24]  796 	movx	@dptr,a
      0000D2 74 80            [12]  797 	mov	a,#0x80
      0000D4 A3               [24]  798 	inc	dptr
      0000D5 F0               [24]  799 	movx	@dptr,a
      0000D6 90 00 0D         [24]  800 	mov	dptr,#(_gcUartInputMode + 0x000c)
      0000D9 74 58            [12]  801 	mov	a,#___str_76
      0000DB F0               [24]  802 	movx	@dptr,a
      0000DC 74 42            [12]  803 	mov	a,#(___str_76 >> 8)
      0000DE A3               [24]  804 	inc	dptr
      0000DF F0               [24]  805 	movx	@dptr,a
      0000E0 74 80            [12]  806 	mov	a,#0x80
      0000E2 A3               [24]  807 	inc	dptr
      0000E3 F0               [24]  808 	movx	@dptr,a
      0000E4 90 00 10         [24]  809 	mov	dptr,#(_gcUartInputMode + 0x000f)
      0000E7 74 7C            [12]  810 	mov	a,#___str_77
      0000E9 F0               [24]  811 	movx	@dptr,a
      0000EA 74 42            [12]  812 	mov	a,#(___str_77 >> 8)
      0000EC A3               [24]  813 	inc	dptr
      0000ED F0               [24]  814 	movx	@dptr,a
      0000EE 74 80            [12]  815 	mov	a,#0x80
      0000F0 A3               [24]  816 	inc	dptr
      0000F1 F0               [24]  817 	movx	@dptr,a
      0000F2 90 00 13         [24]  818 	mov	dptr,#(_gcUartInputMode + 0x0012)
      0000F5 74 9A            [12]  819 	mov	a,#___str_78
      0000F7 F0               [24]  820 	movx	@dptr,a
      0000F8 74 42            [12]  821 	mov	a,#(___str_78 >> 8)
      0000FA A3               [24]  822 	inc	dptr
      0000FB F0               [24]  823 	movx	@dptr,a
      0000FC 74 80            [12]  824 	mov	a,#0x80
      0000FE A3               [24]  825 	inc	dptr
      0000FF F0               [24]  826 	movx	@dptr,a
      000100 90 00 16         [24]  827 	mov	dptr,#(_gcUartInputMode + 0x0015)
      000103 74 BA            [12]  828 	mov	a,#___str_79
      000105 F0               [24]  829 	movx	@dptr,a
      000106 74 42            [12]  830 	mov	a,#(___str_79 >> 8)
      000108 A3               [24]  831 	inc	dptr
      000109 F0               [24]  832 	movx	@dptr,a
      00010A 74 80            [12]  833 	mov	a,#0x80
      00010C A3               [24]  834 	inc	dptr
      00010D F0               [24]  835 	movx	@dptr,a
      00010E 90 00 19         [24]  836 	mov	dptr,#(_gcUartInputMode + 0x0018)
      000111 74 D9            [12]  837 	mov	a,#___str_80
      000113 F0               [24]  838 	movx	@dptr,a
      000114 74 42            [12]  839 	mov	a,#(___str_80 >> 8)
      000116 A3               [24]  840 	inc	dptr
      000117 F0               [24]  841 	movx	@dptr,a
      000118 74 80            [12]  842 	mov	a,#0x80
      00011A A3               [24]  843 	inc	dptr
      00011B F0               [24]  844 	movx	@dptr,a
                                    845 ;	src/main.c:110: UINT8 __xdata gpu8Data[20] = {
      00011C 90 00 1C         [24]  846 	mov	dptr,#_gpu8Data
      00011F 23               [12]  847 	rl	a
      000120 F0               [24]  848 	movx	@dptr,a
      000121 90 00 1D         [24]  849 	mov	dptr,#(_gpu8Data + 0x0001)
      000124 F0               [24]  850 	movx	@dptr,a
      000125 90 00 1E         [24]  851 	mov	dptr,#(_gpu8Data + 0x0002)
      000128 F0               [24]  852 	movx	@dptr,a
      000129 90 00 1F         [24]  853 	mov	dptr,#(_gpu8Data + 0x0003)
      00012C F0               [24]  854 	movx	@dptr,a
      00012D 90 00 20         [24]  855 	mov	dptr,#(_gpu8Data + 0x0004)
      000130 04               [12]  856 	inc	a
      000131 F0               [24]  857 	movx	@dptr,a
      000132 90 00 21         [24]  858 	mov	dptr,#(_gpu8Data + 0x0005)
      000135 F0               [24]  859 	movx	@dptr,a
      000136 90 00 22         [24]  860 	mov	dptr,#(_gpu8Data + 0x0006)
      000139 F0               [24]  861 	movx	@dptr,a
      00013A 90 00 23         [24]  862 	mov	dptr,#(_gpu8Data + 0x0007)
      00013D F0               [24]  863 	movx	@dptr,a
      00013E 90 00 24         [24]  864 	mov	dptr,#(_gpu8Data + 0x0008)
      000141 04               [12]  865 	inc	a
      000142 F0               [24]  866 	movx	@dptr,a
      000143 90 00 25         [24]  867 	mov	dptr,#(_gpu8Data + 0x0009)
      000146 F0               [24]  868 	movx	@dptr,a
      000147 90 00 26         [24]  869 	mov	dptr,#(_gpu8Data + 0x000a)
      00014A F0               [24]  870 	movx	@dptr,a
      00014B 90 00 27         [24]  871 	mov	dptr,#(_gpu8Data + 0x000b)
      00014E F0               [24]  872 	movx	@dptr,a
      00014F 90 00 28         [24]  873 	mov	dptr,#(_gpu8Data + 0x000c)
      000152 04               [12]  874 	inc	a
      000153 F0               [24]  875 	movx	@dptr,a
      000154 90 00 29         [24]  876 	mov	dptr,#(_gpu8Data + 0x000d)
      000157 F0               [24]  877 	movx	@dptr,a
      000158 90 00 2A         [24]  878 	mov	dptr,#(_gpu8Data + 0x000e)
      00015B F0               [24]  879 	movx	@dptr,a
      00015C 90 00 2B         [24]  880 	mov	dptr,#(_gpu8Data + 0x000f)
      00015F F0               [24]  881 	movx	@dptr,a
      000160 90 00 2C         [24]  882 	mov	dptr,#(_gpu8Data + 0x0010)
      000163 04               [12]  883 	inc	a
      000164 F0               [24]  884 	movx	@dptr,a
      000165 90 00 2D         [24]  885 	mov	dptr,#(_gpu8Data + 0x0011)
      000168 F0               [24]  886 	movx	@dptr,a
      000169 90 00 2E         [24]  887 	mov	dptr,#(_gpu8Data + 0x0012)
      00016C F0               [24]  888 	movx	@dptr,a
      00016D 90 00 2F         [24]  889 	mov	dptr,#(_gpu8Data + 0x0013)
      000170 F0               [24]  890 	movx	@dptr,a
                                    891 ;	src/main.c:118: UINT8 __xdata gpu8Data2[20] = {
      000171 90 00 30         [24]  892 	mov	dptr,#_gpu8Data2
      000174 74 01            [12]  893 	mov	a,#0x01
      000176 F0               [24]  894 	movx	@dptr,a
      000177 90 00 31         [24]  895 	mov	dptr,#(_gpu8Data2 + 0x0001)
      00017A F0               [24]  896 	movx	@dptr,a
      00017B 90 00 32         [24]  897 	mov	dptr,#(_gpu8Data2 + 0x0002)
      00017E F0               [24]  898 	movx	@dptr,a
      00017F 90 00 33         [24]  899 	mov	dptr,#(_gpu8Data2 + 0x0003)
      000182 F0               [24]  900 	movx	@dptr,a
      000183 90 00 34         [24]  901 	mov	dptr,#(_gpu8Data2 + 0x0004)
      000186 F0               [24]  902 	movx	@dptr,a
      000187 90 00 35         [24]  903 	mov	dptr,#(_gpu8Data2 + 0x0005)
      00018A F0               [24]  904 	movx	@dptr,a
      00018B 90 00 36         [24]  905 	mov	dptr,#(_gpu8Data2 + 0x0006)
      00018E F0               [24]  906 	movx	@dptr,a
      00018F 90 00 37         [24]  907 	mov	dptr,#(_gpu8Data2 + 0x0007)
      000192 F0               [24]  908 	movx	@dptr,a
      000193 90 00 38         [24]  909 	mov	dptr,#(_gpu8Data2 + 0x0008)
      000196 74 04            [12]  910 	mov	a,#0x04
      000198 F0               [24]  911 	movx	@dptr,a
      000199 90 00 39         [24]  912 	mov	dptr,#(_gpu8Data2 + 0x0009)
      00019C F0               [24]  913 	movx	@dptr,a
      00019D 90 00 3A         [24]  914 	mov	dptr,#(_gpu8Data2 + 0x000a)
      0001A0 F0               [24]  915 	movx	@dptr,a
      0001A1 90 00 3B         [24]  916 	mov	dptr,#(_gpu8Data2 + 0x000b)
      0001A4 F0               [24]  917 	movx	@dptr,a
      0001A5 90 00 3C         [24]  918 	mov	dptr,#(_gpu8Data2 + 0x000c)
      0001A8 14               [12]  919 	dec	a
      0001A9 F0               [24]  920 	movx	@dptr,a
      0001AA 90 00 3D         [24]  921 	mov	dptr,#(_gpu8Data2 + 0x000d)
      0001AD F0               [24]  922 	movx	@dptr,a
      0001AE 90 00 3E         [24]  923 	mov	dptr,#(_gpu8Data2 + 0x000e)
      0001B1 F0               [24]  924 	movx	@dptr,a
      0001B2 90 00 3F         [24]  925 	mov	dptr,#(_gpu8Data2 + 0x000f)
      0001B5 F0               [24]  926 	movx	@dptr,a
      0001B6 90 00 40         [24]  927 	mov	dptr,#(_gpu8Data2 + 0x0010)
      0001B9 74 05            [12]  928 	mov	a,#0x05
      0001BB F0               [24]  929 	movx	@dptr,a
      0001BC 90 00 41         [24]  930 	mov	dptr,#(_gpu8Data2 + 0x0011)
      0001BF F0               [24]  931 	movx	@dptr,a
      0001C0 90 00 42         [24]  932 	mov	dptr,#(_gpu8Data2 + 0x0012)
      0001C3 F0               [24]  933 	movx	@dptr,a
      0001C4 90 00 43         [24]  934 	mov	dptr,#(_gpu8Data2 + 0x0013)
      0001C7 F0               [24]  935 	movx	@dptr,a
                                    936 ;	src/main.c:138: linefi_uplink_rx_state_t __xdata gu8LineFiUpRxState = LFURxState_INIT;
      0001C8 90 00 5C         [24]  937 	mov	dptr,#_gu8LineFiUpRxState
      0001CB E4               [12]  938 	clr	a
      0001CC F0               [24]  939 	movx	@dptr,a
                                    940 ;	src/main.c:139: linefi_uplink_rx_state_t __xdata gu8LineFiUpRxState4 = LFURxState_INIT4;
      0001CD 90 00 5D         [24]  941 	mov	dptr,#_gu8LineFiUpRxState4
      0001D0 74 06            [12]  942 	mov	a,#0x06
      0001D2 F0               [24]  943 	movx	@dptr,a
                                    944 ;	src/main.c:141: UINT32 __xdata gpu32UartSpeed[] = {
      0001D3 90 00 5E         [24]  945 	mov	dptr,#_gpu32UartSpeed
      0001D6 C4               [12]  946 	swap	a
      0001D7 F0               [24]  947 	movx	@dptr,a
      0001D8 74 09            [12]  948 	mov	a,#0x09
      0001DA A3               [24]  949 	inc	dptr
      0001DB F0               [24]  950 	movx	@dptr,a
      0001DC E4               [12]  951 	clr	a
      0001DD A3               [24]  952 	inc	dptr
      0001DE F0               [24]  953 	movx	@dptr,a
      0001DF A3               [24]  954 	inc	dptr
      0001E0 F0               [24]  955 	movx	@dptr,a
      0001E1 90 00 62         [24]  956 	mov	dptr,#(_gpu32UartSpeed + 0x0004)
      0001E4 74 80            [12]  957 	mov	a,#0x80
      0001E6 F0               [24]  958 	movx	@dptr,a
      0001E7 74 70            [12]  959 	mov	a,#0x70
      0001E9 A3               [24]  960 	inc	dptr
      0001EA F0               [24]  961 	movx	@dptr,a
      0001EB E4               [12]  962 	clr	a
      0001EC A3               [24]  963 	inc	dptr
      0001ED F0               [24]  964 	movx	@dptr,a
      0001EE A3               [24]  965 	inc	dptr
      0001EF F0               [24]  966 	movx	@dptr,a
      0001F0 90 00 66         [24]  967 	mov	dptr,#(_gpu32UartSpeed + 0x0008)
      0001F3 F0               [24]  968 	movx	@dptr,a
      0001F4 74 96            [12]  969 	mov	a,#0x96
      0001F6 A3               [24]  970 	inc	dptr
      0001F7 F0               [24]  971 	movx	@dptr,a
      0001F8 E4               [12]  972 	clr	a
      0001F9 A3               [24]  973 	inc	dptr
      0001FA F0               [24]  974 	movx	@dptr,a
      0001FB A3               [24]  975 	inc	dptr
      0001FC F0               [24]  976 	movx	@dptr,a
      0001FD 90 00 6A         [24]  977 	mov	dptr,#(_gpu32UartSpeed + 0x000c)
      000200 F0               [24]  978 	movx	@dptr,a
      000201 74 E1            [12]  979 	mov	a,#0xe1
      000203 A3               [24]  980 	inc	dptr
      000204 F0               [24]  981 	movx	@dptr,a
      000205 E4               [12]  982 	clr	a
      000206 A3               [24]  983 	inc	dptr
      000207 F0               [24]  984 	movx	@dptr,a
      000208 A3               [24]  985 	inc	dptr
      000209 F0               [24]  986 	movx	@dptr,a
      00020A 90 00 6E         [24]  987 	mov	dptr,#(_gpu32UartSpeed + 0x0010)
      00020D F0               [24]  988 	movx	@dptr,a
      00020E 74 C2            [12]  989 	mov	a,#0xc2
      000210 A3               [24]  990 	inc	dptr
      000211 F0               [24]  991 	movx	@dptr,a
      000212 74 01            [12]  992 	mov	a,#0x01
      000214 A3               [24]  993 	inc	dptr
      000215 F0               [24]  994 	movx	@dptr,a
      000216 E4               [12]  995 	clr	a
      000217 A3               [24]  996 	inc	dptr
      000218 F0               [24]  997 	movx	@dptr,a
      000219 90 00 72         [24]  998 	mov	dptr,#(_gpu32UartSpeed + 0x0014)
      00021C F0               [24]  999 	movx	@dptr,a
      00021D 74 84            [12] 1000 	mov	a,#0x84
      00021F A3               [24] 1001 	inc	dptr
      000220 F0               [24] 1002 	movx	@dptr,a
      000221 74 03            [12] 1003 	mov	a,#0x03
      000223 A3               [24] 1004 	inc	dptr
      000224 F0               [24] 1005 	movx	@dptr,a
      000225 E4               [12] 1006 	clr	a
      000226 A3               [24] 1007 	inc	dptr
      000227 F0               [24] 1008 	movx	@dptr,a
      000228 90 00 76         [24] 1009 	mov	dptr,#(_gpu32UartSpeed + 0x0018)
      00022B 74 E0            [12] 1010 	mov	a,#0xe0
      00022D F0               [24] 1011 	movx	@dptr,a
      00022E 74 93            [12] 1012 	mov	a,#0x93
      000230 A3               [24] 1013 	inc	dptr
      000231 F0               [24] 1014 	movx	@dptr,a
      000232 74 04            [12] 1015 	mov	a,#0x04
      000234 A3               [24] 1016 	inc	dptr
      000235 F0               [24] 1017 	movx	@dptr,a
      000236 E4               [12] 1018 	clr	a
      000237 A3               [24] 1019 	inc	dptr
      000238 F0               [24] 1020 	movx	@dptr,a
      000239 90 00 7A         [24] 1021 	mov	dptr,#(_gpu32UartSpeed + 0x001c)
      00023C F0               [24] 1022 	movx	@dptr,a
      00023D 74 08            [12] 1023 	mov	a,#0x08
      00023F A3               [24] 1024 	inc	dptr
      000240 F0               [24] 1025 	movx	@dptr,a
      000241 14               [12] 1026 	dec	a
      000242 A3               [24] 1027 	inc	dptr
      000243 F0               [24] 1028 	movx	@dptr,a
      000244 E4               [12] 1029 	clr	a
      000245 A3               [24] 1030 	inc	dptr
      000246 F0               [24] 1031 	movx	@dptr,a
      000247 90 00 7E         [24] 1032 	mov	dptr,#(_gpu32UartSpeed + 0x0020)
      00024A 74 20            [12] 1033 	mov	a,#0x20
      00024C F0               [24] 1034 	movx	@dptr,a
      00024D 74 A1            [12] 1035 	mov	a,#0xa1
      00024F A3               [24] 1036 	inc	dptr
      000250 F0               [24] 1037 	movx	@dptr,a
      000251 74 07            [12] 1038 	mov	a,#0x07
      000253 A3               [24] 1039 	inc	dptr
      000254 F0               [24] 1040 	movx	@dptr,a
      000255 E4               [12] 1041 	clr	a
      000256 A3               [24] 1042 	inc	dptr
      000257 F0               [24] 1043 	movx	@dptr,a
      000258 90 00 82         [24] 1044 	mov	dptr,#(_gpu32UartSpeed + 0x0024)
      00025B 74 C0            [12] 1045 	mov	a,#0xc0
      00025D F0               [24] 1046 	movx	@dptr,a
      00025E 74 27            [12] 1047 	mov	a,#0x27
      000260 A3               [24] 1048 	inc	dptr
      000261 F0               [24] 1049 	movx	@dptr,a
      000262 74 09            [12] 1050 	mov	a,#0x09
      000264 A3               [24] 1051 	inc	dptr
      000265 F0               [24] 1052 	movx	@dptr,a
      000266 E4               [12] 1053 	clr	a
      000267 A3               [24] 1054 	inc	dptr
      000268 F0               [24] 1055 	movx	@dptr,a
      000269 90 00 86         [24] 1056 	mov	dptr,#(_gpu32UartSpeed + 0x0028)
      00026C 74 60            [12] 1057 	mov	a,#0x60
      00026E F0               [24] 1058 	movx	@dptr,a
      00026F 74 AE            [12] 1059 	mov	a,#0xae
      000271 A3               [24] 1060 	inc	dptr
      000272 F0               [24] 1061 	movx	@dptr,a
      000273 74 0A            [12] 1062 	mov	a,#0x0a
      000275 A3               [24] 1063 	inc	dptr
      000276 F0               [24] 1064 	movx	@dptr,a
      000277 E4               [12] 1065 	clr	a
      000278 A3               [24] 1066 	inc	dptr
      000279 F0               [24] 1067 	movx	@dptr,a
      00027A 90 00 8A         [24] 1068 	mov	dptr,#(_gpu32UartSpeed + 0x002c)
      00027D F0               [24] 1069 	movx	@dptr,a
      00027E 74 35            [12] 1070 	mov	a,#0x35
      000280 A3               [24] 1071 	inc	dptr
      000281 F0               [24] 1072 	movx	@dptr,a
      000282 74 0C            [12] 1073 	mov	a,#0x0c
      000284 A3               [24] 1074 	inc	dptr
      000285 F0               [24] 1075 	movx	@dptr,a
      000286 E4               [12] 1076 	clr	a
      000287 A3               [24] 1077 	inc	dptr
      000288 F0               [24] 1078 	movx	@dptr,a
      000289 90 00 8E         [24] 1079 	mov	dptr,#(_gpu32UartSpeed + 0x0030)
      00028C 74 A0            [12] 1080 	mov	a,#0xa0
      00028E F0               [24] 1081 	movx	@dptr,a
      00028F 74 BB            [12] 1082 	mov	a,#0xbb
      000291 A3               [24] 1083 	inc	dptr
      000292 F0               [24] 1084 	movx	@dptr,a
      000293 74 0D            [12] 1085 	mov	a,#0x0d
      000295 A3               [24] 1086 	inc	dptr
      000296 F0               [24] 1087 	movx	@dptr,a
      000297 E4               [12] 1088 	clr	a
      000298 A3               [24] 1089 	inc	dptr
      000299 F0               [24] 1090 	movx	@dptr,a
      00029A 90 00 92         [24] 1091 	mov	dptr,#(_gpu32UartSpeed + 0x0034)
      00029D F0               [24] 1092 	movx	@dptr,a
      00029E 74 10            [12] 1093 	mov	a,#0x10
      0002A0 A3               [24] 1094 	inc	dptr
      0002A1 F0               [24] 1095 	movx	@dptr,a
      0002A2 74 0E            [12] 1096 	mov	a,#0x0e
      0002A4 A3               [24] 1097 	inc	dptr
      0002A5 F0               [24] 1098 	movx	@dptr,a
      0002A6 E4               [12] 1099 	clr	a
      0002A7 A3               [24] 1100 	inc	dptr
      0002A8 F0               [24] 1101 	movx	@dptr,a
                                   1102 	.area GSFINAL (CODE)
      0004FA 02 00 7E         [24] 1103 	ljmp	__sdcc_program_startup
                                   1104 ;--------------------------------------------------------
                                   1105 ; Home
                                   1106 ;--------------------------------------------------------
                                   1107 	.area HOME    (CODE)
                                   1108 	.area HOME    (CODE)
      00007E                       1109 __sdcc_program_startup:
      00007E 02 12 69         [24] 1110 	ljmp	_main
                                   1111 ;	return from main will return to caller
                                   1112 ;--------------------------------------------------------
                                   1113 ; code
                                   1114 ;--------------------------------------------------------
                                   1115 	.area CSEG    (CODE)
                                   1116 ;------------------------------------------------------------
                                   1117 ;Allocation info for local variables in function 'print_esc'
                                   1118 ;------------------------------------------------------------
                                   1119 ;au8State                  Allocated to registers r7 
                                   1120 ;------------------------------------------------------------
                                   1121 ;	src/main.c:173: void print_esc(UINT8 au8State)
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function print_esc
                                   1124 ;	-----------------------------------------
      0004FD                       1125 _print_esc:
                           000007  1126 	ar7 = 0x07
                           000006  1127 	ar6 = 0x06
                           000005  1128 	ar5 = 0x05
                           000004  1129 	ar4 = 0x04
                           000003  1130 	ar3 = 0x03
                           000002  1131 	ar2 = 0x02
                           000001  1132 	ar1 = 0x01
                           000000  1133 	ar0 = 0x00
      0004FD AF 82            [24] 1134 	mov	r7,dpl
                                   1135 ;	src/main.c:175: printf_fast_f("\n\r");
      0004FF C0 07            [24] 1136 	push	ar7
      000501 74 48            [12] 1137 	mov	a,#___str_0
      000503 C0 E0            [24] 1138 	push	acc
      000505 74 3D            [12] 1139 	mov	a,#(___str_0 >> 8)
      000507 C0 E0            [24] 1140 	push	acc
      000509 12 2E DD         [24] 1141 	lcall	_printf_fast_f
      00050C 15 81            [12] 1142 	dec	sp
      00050E 15 81            [12] 1143 	dec	sp
      000510 D0 07            [24] 1144 	pop	ar7
                                   1145 ;	src/main.c:176: switch(au8State) {
      000512 BF 00 02         [24] 1146 	cjne	r7,#0x00,00119$
      000515 80 0A            [24] 1147 	sjmp	00101$
      000517                       1148 00119$:
      000517 BF 01 02         [24] 1149 	cjne	r7,#0x01,00120$
      00051A 80 16            [24] 1150 	sjmp	00102$
      00051C                       1151 00120$:
                                   1152 ;	src/main.c:177: case STATE_SELF :
      00051C BF 02 33         [24] 1153 	cjne	r7,#0x02,00104$
      00051F 80 22            [24] 1154 	sjmp	00103$
      000521                       1155 00101$:
                                   1156 ;	src/main.c:178: printf_fast_f("self ");
      000521 74 4B            [12] 1157 	mov	a,#___str_1
      000523 C0 E0            [24] 1158 	push	acc
      000525 74 3D            [12] 1159 	mov	a,#(___str_1 >> 8)
      000527 C0 E0            [24] 1160 	push	acc
      000529 12 2E DD         [24] 1161 	lcall	_printf_fast_f
      00052C 15 81            [12] 1162 	dec	sp
      00052E 15 81            [12] 1163 	dec	sp
                                   1164 ;	src/main.c:179: break;
                                   1165 ;	src/main.c:180: case STATE_CROSS :
      000530 80 20            [24] 1166 	sjmp	00104$
      000532                       1167 00102$:
                                   1168 ;	src/main.c:181: printf_fast_f("cross");
      000532 74 51            [12] 1169 	mov	a,#___str_2
      000534 C0 E0            [24] 1170 	push	acc
      000536 74 3D            [12] 1171 	mov	a,#(___str_2 >> 8)
      000538 C0 E0            [24] 1172 	push	acc
      00053A 12 2E DD         [24] 1173 	lcall	_printf_fast_f
      00053D 15 81            [12] 1174 	dec	sp
      00053F 15 81            [12] 1175 	dec	sp
                                   1176 ;	src/main.c:182: break;
                                   1177 ;	src/main.c:183: case STATE_BOTH :
      000541 80 0F            [24] 1178 	sjmp	00104$
      000543                       1179 00103$:
                                   1180 ;	src/main.c:184: printf_fast_f("both ");
      000543 74 57            [12] 1181 	mov	a,#___str_3
      000545 C0 E0            [24] 1182 	push	acc
      000547 74 3D            [12] 1183 	mov	a,#(___str_3 >> 8)
      000549 C0 E0            [24] 1184 	push	acc
      00054B 12 2E DD         [24] 1185 	lcall	_printf_fast_f
      00054E 15 81            [12] 1186 	dec	sp
      000550 15 81            [12] 1187 	dec	sp
                                   1188 ;	src/main.c:186: }
      000552                       1189 00104$:
                                   1190 ;	src/main.c:187: printf_fast_f(" output:This is UART%d\n\r", gu8UART);
      000552 AE 11            [24] 1191 	mov	r6,_gu8UART
      000554 7F 00            [12] 1192 	mov	r7,#0x00
      000556 C0 06            [24] 1193 	push	ar6
      000558 C0 07            [24] 1194 	push	ar7
      00055A 74 5D            [12] 1195 	mov	a,#___str_4
      00055C C0 E0            [24] 1196 	push	acc
      00055E 74 3D            [12] 1197 	mov	a,#(___str_4 >> 8)
      000560 C0 E0            [24] 1198 	push	acc
      000562 12 2E DD         [24] 1199 	lcall	_printf_fast_f
      000565 E5 81            [12] 1200 	mov	a,sp
      000567 24 FC            [12] 1201 	add	a,#0xfc
      000569 F5 81            [12] 1202 	mov	sp,a
                                   1203 ;	src/main.c:188: }
      00056B 22               [24] 1204 	ret
                                   1205 ;------------------------------------------------------------
                                   1206 ;Allocation info for local variables in function 'print_char'
                                   1207 ;------------------------------------------------------------
                                   1208 ;au8Data                   Allocated to registers r7 
                                   1209 ;------------------------------------------------------------
                                   1210 ;	src/main.c:190: void print_char(char au8Data)
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function print_char
                                   1213 ;	-----------------------------------------
      00056C                       1214 _print_char:
      00056C AF 82            [24] 1215 	mov	r7,dpl
                                   1216 ;	src/main.c:192: switch(au8Data) {
      00056E BF 0D 02         [24] 1217 	cjne	r7,#0x0d,00125$
      000571 80 0C            [24] 1218 	sjmp	00104$
      000573                       1219 00125$:
      000573 BF 1B 01         [24] 1220 	cjne	r7,#0x1b,00126$
      000576 22               [24] 1221 	ret
      000577                       1222 00126$:
      000577 BF 1C 01         [24] 1223 	cjne	r7,#0x1c,00127$
      00057A 22               [24] 1224 	ret
      00057B                       1225 00127$:
                                   1226 ;	src/main.c:197: case '\r' :
      00057B BF 1D 11         [24] 1227 	cjne	r7,#0x1d,00105$
      00057E 22               [24] 1228 	ret
      00057F                       1229 00104$:
                                   1230 ;	src/main.c:198: printf_fast_f("\r\n");
      00057F 74 76            [12] 1231 	mov	a,#___str_5
      000581 C0 E0            [24] 1232 	push	acc
      000583 74 3D            [12] 1233 	mov	a,#(___str_5 >> 8)
      000585 C0 E0            [24] 1234 	push	acc
      000587 12 2E DD         [24] 1235 	lcall	_printf_fast_f
      00058A 15 81            [12] 1236 	dec	sp
      00058C 15 81            [12] 1237 	dec	sp
                                   1238 ;	src/main.c:199: break;
                                   1239 ;	src/main.c:200: default :
      00058E 22               [24] 1240 	ret
      00058F                       1241 00105$:
                                   1242 ;	src/main.c:201: printf_fast_f("%c",au8Data);
      00058F 7E 00            [12] 1243 	mov	r6,#0x00
      000591 C0 07            [24] 1244 	push	ar7
      000593 C0 06            [24] 1245 	push	ar6
      000595 74 79            [12] 1246 	mov	a,#___str_6
      000597 C0 E0            [24] 1247 	push	acc
      000599 74 3D            [12] 1248 	mov	a,#(___str_6 >> 8)
      00059B C0 E0            [24] 1249 	push	acc
      00059D 12 2E DD         [24] 1250 	lcall	_printf_fast_f
      0005A0 E5 81            [12] 1251 	mov	a,sp
      0005A2 24 FC            [12] 1252 	add	a,#0xfc
      0005A4 F5 81            [12] 1253 	mov	sp,a
                                   1254 ;	src/main.c:202: }
                                   1255 ;	src/main.c:203: }
      0005A6 22               [24] 1256 	ret
                                   1257 ;------------------------------------------------------------
                                   1258 ;Allocation info for local variables in function 'state_machine'
                                   1259 ;------------------------------------------------------------
                                   1260 ;au8RxUART                 Allocated with name '_state_machine_PARM_2'
                                   1261 ;au8SelfID                 Allocated with name '_state_machine_PARM_3'
                                   1262 ;au8OtherID                Allocated with name '_state_machine_PARM_4'
                                   1263 ;au8State                  Allocated to registers r7 
                                   1264 ;------------------------------------------------------------
                                   1265 ;	src/main.c:205: UINT8 state_machine(UINT8 au8State, UINT8 au8RxUART, UINT8 au8SelfID, UINT8 au8OtherID)
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function state_machine
                                   1268 ;	-----------------------------------------
      0005A7                       1269 _state_machine:
      0005A7 AF 82            [24] 1270 	mov	r7,dpl
                                   1271 ;	src/main.c:207: if(au8RxUART == KEY_ESC) {
      0005A9 74 1B            [12] 1272 	mov	a,#0x1b
      0005AB B5 22 02         [24] 1273 	cjne	a,_state_machine_PARM_2,00142$
      0005AE 80 02            [24] 1274 	sjmp	00143$
      0005B0                       1275 00142$:
      0005B0 80 79            [24] 1276 	sjmp	00110$
      0005B2                       1277 00143$:
                                   1278 ;	src/main.c:208: gu8UART = au8SelfID;
      0005B2 AE 23            [24] 1279 	mov	r6,_state_machine_PARM_3
      0005B4 8E 11            [24] 1280 	mov	_gu8UART,r6
                                   1281 ;	src/main.c:209: printf_fast_f("\r\ninput:This is UART%d", gu8UART);
      0005B6 AC 11            [24] 1282 	mov	r4,_gu8UART
      0005B8 7D 00            [12] 1283 	mov	r5,#0x00
      0005BA C0 07            [24] 1284 	push	ar7
      0005BC C0 06            [24] 1285 	push	ar6
      0005BE C0 04            [24] 1286 	push	ar4
      0005C0 C0 05            [24] 1287 	push	ar5
      0005C2 74 7C            [12] 1288 	mov	a,#___str_7
      0005C4 C0 E0            [24] 1289 	push	acc
      0005C6 74 3D            [12] 1290 	mov	a,#(___str_7 >> 8)
      0005C8 C0 E0            [24] 1291 	push	acc
      0005CA 12 2E DD         [24] 1292 	lcall	_printf_fast_f
      0005CD E5 81            [12] 1293 	mov	a,sp
      0005CF 24 FC            [12] 1294 	add	a,#0xfc
      0005D1 F5 81            [12] 1295 	mov	sp,a
      0005D3 D0 06            [24] 1296 	pop	ar6
      0005D5 D0 07            [24] 1297 	pop	ar7
                                   1298 ;	src/main.c:210: switch(au8State) {
      0005D7 BF 00 02         [24] 1299 	cjne	r7,#0x00,00144$
      0005DA 80 0D            [24] 1300 	sjmp	00101$
      0005DC                       1301 00144$:
      0005DC BF 01 02         [24] 1302 	cjne	r7,#0x01,00145$
      0005DF 80 21            [24] 1303 	sjmp	00102$
      0005E1                       1304 00145$:
      0005E1 BF 02 02         [24] 1305 	cjne	r7,#0x02,00146$
      0005E4 80 35            [24] 1306 	sjmp	00103$
      0005E6                       1307 00146$:
      0005E6 02 06 6E         [24] 1308 	ljmp	00111$
                                   1309 ;	src/main.c:211: case STATE_SELF :
      0005E9                       1310 00101$:
                                   1311 ;	src/main.c:212: au8State = STATE_CROSS;
      0005E9 7F 01            [12] 1312 	mov	r7,#0x01
                                   1313 ;	src/main.c:213: gu8UART = au8SelfID;
      0005EB 8E 11            [24] 1314 	mov	_gu8UART,r6
                                   1315 ;	src/main.c:214: print_esc(au8State);
      0005ED 75 82 01         [24] 1316 	mov	dpl,#0x01
      0005F0 C0 07            [24] 1317 	push	ar7
      0005F2 12 04 FD         [24] 1318 	lcall	_print_esc
                                   1319 ;	src/main.c:215: gu8UART = au8OtherID;
      0005F5 85 24 11         [24] 1320 	mov	_gu8UART,_state_machine_PARM_4
                                   1321 ;	src/main.c:216: print_esc(au8State);
      0005F8 75 82 01         [24] 1322 	mov	dpl,#0x01
      0005FB 12 04 FD         [24] 1323 	lcall	_print_esc
      0005FE D0 07            [24] 1324 	pop	ar7
                                   1325 ;	src/main.c:217: break;
                                   1326 ;	src/main.c:218: case STATE_CROSS :
      000600 80 6C            [24] 1327 	sjmp	00111$
      000602                       1328 00102$:
                                   1329 ;	src/main.c:219: au8State = STATE_BOTH;
      000602 7F 02            [12] 1330 	mov	r7,#0x02
                                   1331 ;	src/main.c:220: gu8UART = au8SelfID;
      000604 8E 11            [24] 1332 	mov	_gu8UART,r6
                                   1333 ;	src/main.c:221: print_esc(au8State);
      000606 75 82 02         [24] 1334 	mov	dpl,#0x02
      000609 C0 07            [24] 1335 	push	ar7
      00060B 12 04 FD         [24] 1336 	lcall	_print_esc
                                   1337 ;	src/main.c:222: gu8UART = au8OtherID;
      00060E 85 24 11         [24] 1338 	mov	_gu8UART,_state_machine_PARM_4
                                   1339 ;	src/main.c:223: print_esc(au8State);
      000611 75 82 02         [24] 1340 	mov	dpl,#0x02
      000614 12 04 FD         [24] 1341 	lcall	_print_esc
      000617 D0 07            [24] 1342 	pop	ar7
                                   1343 ;	src/main.c:224: break;
                                   1344 ;	src/main.c:225: case STATE_BOTH :
      000619 80 53            [24] 1345 	sjmp	00111$
      00061B                       1346 00103$:
                                   1347 ;	src/main.c:226: au8State = STATE_SELF;
      00061B 7F 00            [12] 1348 	mov	r7,#0x00
                                   1349 ;	src/main.c:227: gu8UART = au8SelfID;
      00061D 8E 11            [24] 1350 	mov	_gu8UART,r6
                                   1351 ;	src/main.c:228: print_esc(au8State);
      00061F 75 82 00         [24] 1352 	mov	dpl,#0x00
      000622 C0 07            [24] 1353 	push	ar7
      000624 12 04 FD         [24] 1354 	lcall	_print_esc
      000627 D0 07            [24] 1355 	pop	ar7
                                   1356 ;	src/main.c:230: }
      000629 80 43            [24] 1357 	sjmp	00111$
      00062B                       1358 00110$:
                                   1359 ;	src/main.c:233: switch(au8State) {
      00062B BF 00 02         [24] 1360 	cjne	r7,#0x00,00147$
      00062E 80 0A            [24] 1361 	sjmp	00105$
      000630                       1362 00147$:
      000630 BF 01 02         [24] 1363 	cjne	r7,#0x01,00148$
      000633 80 14            [24] 1364 	sjmp	00106$
      000635                       1365 00148$:
                                   1366 ;	src/main.c:234: case STATE_SELF :
      000635 BF 02 36         [24] 1367 	cjne	r7,#0x02,00111$
      000638 80 1E            [24] 1368 	sjmp	00107$
      00063A                       1369 00105$:
                                   1370 ;	src/main.c:235: gu8UART = au8SelfID;
      00063A 85 23 11         [24] 1371 	mov	_gu8UART,_state_machine_PARM_3
                                   1372 ;	src/main.c:236: print_char(au8RxUART);
      00063D 85 22 82         [24] 1373 	mov	dpl,_state_machine_PARM_2
      000640 C0 07            [24] 1374 	push	ar7
      000642 12 05 6C         [24] 1375 	lcall	_print_char
      000645 D0 07            [24] 1376 	pop	ar7
                                   1377 ;	src/main.c:237: break;
                                   1378 ;	src/main.c:238: case STATE_CROSS :
      000647 80 25            [24] 1379 	sjmp	00111$
      000649                       1380 00106$:
                                   1381 ;	src/main.c:239: gu8UART = au8OtherID;
      000649 85 24 11         [24] 1382 	mov	_gu8UART,_state_machine_PARM_4
                                   1383 ;	src/main.c:240: print_char(au8RxUART);
      00064C 85 22 82         [24] 1384 	mov	dpl,_state_machine_PARM_2
      00064F C0 07            [24] 1385 	push	ar7
      000651 12 05 6C         [24] 1386 	lcall	_print_char
      000654 D0 07            [24] 1387 	pop	ar7
                                   1388 ;	src/main.c:241: break;
                                   1389 ;	src/main.c:242: case STATE_BOTH :
      000656 80 16            [24] 1390 	sjmp	00111$
      000658                       1391 00107$:
                                   1392 ;	src/main.c:243: gu8UART = au8SelfID;
      000658 85 23 11         [24] 1393 	mov	_gu8UART,_state_machine_PARM_3
                                   1394 ;	src/main.c:244: print_char(au8RxUART);
      00065B 85 22 82         [24] 1395 	mov	dpl,_state_machine_PARM_2
      00065E C0 07            [24] 1396 	push	ar7
      000660 12 05 6C         [24] 1397 	lcall	_print_char
                                   1398 ;	src/main.c:245: gu8UART = au8OtherID;
      000663 85 24 11         [24] 1399 	mov	_gu8UART,_state_machine_PARM_4
                                   1400 ;	src/main.c:246: print_char(au8RxUART);
      000666 85 22 82         [24] 1401 	mov	dpl,_state_machine_PARM_2
      000669 12 05 6C         [24] 1402 	lcall	_print_char
      00066C D0 07            [24] 1403 	pop	ar7
                                   1404 ;	src/main.c:248: }
      00066E                       1405 00111$:
                                   1406 ;	src/main.c:250: return au8State;
      00066E 8F 82            [24] 1407 	mov	dpl,r7
                                   1408 ;	src/main.c:251: }
      000670 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1412 ;------------------------------------------------------------
                                   1413 ;	src/main.c:253: void Timer0_ISR (void) interrupt(1)  //interrupt address is 0x000B
                                   1414 ;	-----------------------------------------
                                   1415 ;	 function Timer0_ISR
                                   1416 ;	-----------------------------------------
      000671                       1417 _Timer0_ISR:
                           00000F  1418 	ar7 = 0x0f
                           00000E  1419 	ar6 = 0x0e
                           00000D  1420 	ar5 = 0x0d
                           00000C  1421 	ar4 = 0x0c
                           00000B  1422 	ar3 = 0x0b
                           00000A  1423 	ar2 = 0x0a
                           000009  1424 	ar1 = 0x09
                           000008  1425 	ar0 = 0x08
      000671 C0 E0            [24] 1426 	push	acc
      000673 C0 82            [24] 1427 	push	dpl
      000675 C0 83            [24] 1428 	push	dph
      000677 C0 D0            [24] 1429 	push	psw
                                   1430 ;	src/main.c:255: TH0 = TH0_INIT;
      000679 75 8C D4         [24] 1431 	mov	_TH0,#0xd4
                                   1432 ;	src/main.c:256: TL0 = TL0_INIT;
      00067C 75 8A 13         [24] 1433 	mov	_TL0,#0x13
                                   1434 ;	src/main.c:257: gu16TimeCnt++;
      00067F 90 00 58         [24] 1435 	mov	dptr,#_gu16TimeCnt
      000682 E0               [24] 1436 	movx	a,@dptr
      000683 24 01            [12] 1437 	add	a,#0x01
      000685 F0               [24] 1438 	movx	@dptr,a
      000686 A3               [24] 1439 	inc	dptr
      000687 E0               [24] 1440 	movx	a,@dptr
      000688 34 00            [12] 1441 	addc	a,#0x00
      00068A F0               [24] 1442 	movx	@dptr,a
                                   1443 ;	src/main.c:258: gu16TimeCntMilliSec++;
      00068B 90 00 5A         [24] 1444 	mov	dptr,#_gu16TimeCntMilliSec
      00068E E0               [24] 1445 	movx	a,@dptr
      00068F 24 01            [12] 1446 	add	a,#0x01
      000691 F0               [24] 1447 	movx	@dptr,a
      000692 A3               [24] 1448 	inc	dptr
      000693 E0               [24] 1449 	movx	a,@dptr
      000694 34 00            [12] 1450 	addc	a,#0x00
      000696 F0               [24] 1451 	movx	@dptr,a
                                   1452 ;	src/main.c:268: } //void Timer0_ISR (void) __interrupt 1  //interrupt address is 0x000B
      000697 D0 D0            [24] 1453 	pop	psw
      000699 D0 83            [24] 1454 	pop	dph
      00069B D0 82            [24] 1455 	pop	dpl
      00069D D0 E0            [24] 1456 	pop	acc
      00069F 32               [24] 1457 	reti
                                   1458 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1459 ;	eliminated unneeded push/pop b
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'pin_interrupt_isr'
                                   1462 ;------------------------------------------------------------
                                   1463 ;	src/main.c:270: void pin_interrupt_isr(void) interrupt(7)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function pin_interrupt_isr
                                   1466 ;	-----------------------------------------
      0006A0                       1467 _pin_interrupt_isr:
      0006A0 C0 E0            [24] 1468 	push	acc
                                   1469 ;	src/main.c:272: if (PIF == 0x10) {
      0006A2 E5 EC            [12] 1470 	mov	a,_PIF
                                   1471 ;	src/main.c:274: PIF = 0;
      0006A4 75 EC 00         [24] 1472 	mov	_PIF,#0x00
                                   1473 ;	src/main.c:275: }// void pin_interrupt_isr (void) interrupt(7)
      0006A7 D0 E0            [24] 1474 	pop	acc
      0006A9 32               [24] 1475 	reti
                                   1476 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1477 ;	eliminated unneeded push/pop psw
                                   1478 ;	eliminated unneeded push/pop dpl
                                   1479 ;	eliminated unneeded push/pop dph
                                   1480 ;	eliminated unneeded push/pop b
                                   1481 ;------------------------------------------------------------
                                   1482 ;Allocation info for local variables in function 'MODIFY_HIRC_166'
                                   1483 ;------------------------------------------------------------
                                   1484 ;hircmap0                  Allocated to registers r7 
                                   1485 ;hircmap1                  Allocated to registers r6 
                                   1486 ;trimvalue16bit            Allocated to registers r7 r5 
                                   1487 ;------------------------------------------------------------
                                   1488 ;	src/main.c:277: void MODIFY_HIRC_166(void)
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function MODIFY_HIRC_166
                                   1491 ;	-----------------------------------------
      0006AA                       1492 _MODIFY_HIRC_166:
                           000007  1493 	ar7 = 0x07
                           000006  1494 	ar6 = 0x06
                           000005  1495 	ar5 = 0x05
                           000004  1496 	ar4 = 0x04
                           000003  1497 	ar3 = 0x03
                           000002  1498 	ar2 = 0x02
                           000001  1499 	ar1 = 0x01
                           000000  1500 	ar0 = 0x00
                                   1501 ;	src/main.c:282: if ((PCON&SET_BIT4)==SET_BIT4) {
      0006AA AE 87            [24] 1502 	mov	r6,_PCON
      0006AC 53 06 10         [24] 1503 	anl	ar6,#0x10
      0006AF 7F 00            [12] 1504 	mov	r7,#0x00
      0006B1 BE 10 41         [24] 1505 	cjne	r6,#0x10,00103$
      0006B4 BF 00 3E         [24] 1506 	cjne	r7,#0x00,00103$
                                   1507 ;	src/main.c:283: hircmap0 = RCTRIM0;
      0006B7 AF 84            [24] 1508 	mov	r7,_RCTRIM0
                                   1509 ;	src/main.c:284: hircmap1 = RCTRIM1;
      0006B9 AE 85            [24] 1510 	mov	r6,_RCTRIM1
                                   1511 ;	src/main.c:285: trimvalue16bit = ((hircmap0<<1)+(hircmap1&0x01));
      0006BB 7D 00            [12] 1512 	mov	r5,#0x00
      0006BD EF               [12] 1513 	mov	a,r7
      0006BE 2F               [12] 1514 	add	a,r7
      0006BF FF               [12] 1515 	mov	r7,a
      0006C0 ED               [12] 1516 	mov	a,r5
      0006C1 33               [12] 1517 	rlc	a
      0006C2 FD               [12] 1518 	mov	r5,a
      0006C3 53 06 01         [24] 1519 	anl	ar6,#0x01
      0006C6 7C 00            [12] 1520 	mov	r4,#0x00
      0006C8 EE               [12] 1521 	mov	a,r6
      0006C9 2F               [12] 1522 	add	a,r7
      0006CA FF               [12] 1523 	mov	r7,a
      0006CB EC               [12] 1524 	mov	a,r4
      0006CC 3D               [12] 1525 	addc	a,r5
      0006CD FD               [12] 1526 	mov	r5,a
                                   1527 ;	src/main.c:286: trimvalue16bit = trimvalue16bit - 15;
      0006CE EF               [12] 1528 	mov	a,r7
      0006CF 24 F1            [12] 1529 	add	a,#0xf1
      0006D1 FF               [12] 1530 	mov	r7,a
      0006D2 ED               [12] 1531 	mov	a,r5
      0006D3 34 FF            [12] 1532 	addc	a,#0xff
      0006D5 FD               [12] 1533 	mov	r5,a
                                   1534 ;	src/main.c:287: hircmap1 = trimvalue16bit&0x01;
      0006D6 8F 06            [24] 1535 	mov	ar6,r7
      0006D8 53 06 01         [24] 1536 	anl	ar6,#0x01
                                   1537 ;	src/main.c:288: hircmap0 = trimvalue16bit>>1;
      0006DB ED               [12] 1538 	mov	a,r5
      0006DC C3               [12] 1539 	clr	c
      0006DD 13               [12] 1540 	rrc	a
      0006DE CF               [12] 1541 	xch	a,r7
      0006DF 13               [12] 1542 	rrc	a
      0006E0 CF               [12] 1543 	xch	a,r7
      0006E1 FD               [12] 1544 	mov	r5,a
                                   1545 ;	src/main.c:289: TA=0XAA;
      0006E2 75 C7 AA         [24] 1546 	mov	_TA,#0xaa
                                   1547 ;	src/main.c:290: TA=0X55;
      0006E5 75 C7 55         [24] 1548 	mov	_TA,#0x55
                                   1549 ;	src/main.c:291: RCTRIM0 = hircmap0;
      0006E8 8F 84            [24] 1550 	mov	_RCTRIM0,r7
                                   1551 ;	src/main.c:292: TA=0XAA;
      0006EA 75 C7 AA         [24] 1552 	mov	_TA,#0xaa
                                   1553 ;	src/main.c:293: TA=0X55;
      0006ED 75 C7 55         [24] 1554 	mov	_TA,#0x55
                                   1555 ;	src/main.c:294: RCTRIM1 = hircmap1;
      0006F0 8E 85            [24] 1556 	mov	_RCTRIM1,r6
                                   1557 ;	src/main.c:296: PCON &= CLR_BIT4;
      0006F2 53 87 EF         [24] 1558 	anl	_PCON,#0xef
      0006F5                       1559 00103$:
                                   1560 ;	src/main.c:298: }
      0006F5 22               [24] 1561 	ret
                                   1562 ;------------------------------------------------------------
                                   1563 ;Allocation info for local variables in function 'disp_help'
                                   1564 ;------------------------------------------------------------
                                   1565 ;au8Code                   Allocated to registers r7 
                                   1566 ;------------------------------------------------------------
                                   1567 ;	src/main.c:299: void disp_help(UINT8 au8Code)
                                   1568 ;	-----------------------------------------
                                   1569 ;	 function disp_help
                                   1570 ;	-----------------------------------------
      0006F6                       1571 _disp_help:
      0006F6 AF 82            [24] 1572 	mov	r7,dpl
                                   1573 ;	src/main.c:301: gu8UART = 1;
      0006F8 75 11 01         [24] 1574 	mov	_gu8UART,#0x01
                                   1575 ;	src/main.c:302: switch(au8Code) {
      0006FB BF 31 01         [24] 1576 	cjne	r7,#0x31,00165$
      0006FE 22               [24] 1577 	ret
      0006FF                       1578 00165$:
      0006FF BF 32 01         [24] 1579 	cjne	r7,#0x32,00166$
      000702 22               [24] 1580 	ret
      000703                       1581 00166$:
      000703 BF 33 02         [24] 1582 	cjne	r7,#0x33,00167$
      000706 80 32            [24] 1583 	sjmp	00103$
      000708                       1584 00167$:
      000708 BF 34 01         [24] 1585 	cjne	r7,#0x34,00168$
      00070B 22               [24] 1586 	ret
      00070C                       1587 00168$:
      00070C BF 50 02         [24] 1588 	cjne	r7,#0x50,00169$
      00070F 80 49            [24] 1589 	sjmp	00106$
      000711                       1590 00169$:
      000711 BF 53 03         [24] 1591 	cjne	r7,#0x53,00170$
      000714 02 07 9A         [24] 1592 	ljmp	00110$
      000717                       1593 00170$:
      000717 BF 54 02         [24] 1594 	cjne	r7,#0x54,00171$
      00071A 80 5E            [24] 1595 	sjmp	00108$
      00071C                       1596 00171$:
      00071C BF 56 03         [24] 1597 	cjne	r7,#0x56,00172$
      00071F 02 07 AA         [24] 1598 	ljmp	00112$
      000722                       1599 00172$:
      000722 BF 70 02         [24] 1600 	cjne	r7,#0x70,00173$
      000725 80 23            [24] 1601 	sjmp	00105$
      000727                       1602 00173$:
      000727 BF 73 02         [24] 1603 	cjne	r7,#0x73,00174$
      00072A 80 5E            [24] 1604 	sjmp	00109$
      00072C                       1605 00174$:
      00072C BF 74 02         [24] 1606 	cjne	r7,#0x74,00175$
      00072F 80 39            [24] 1607 	sjmp	00107$
      000731                       1608 00175$:
      000731 BF 76 03         [24] 1609 	cjne	r7,#0x76,00176$
      000734 02 07 AA         [24] 1610 	ljmp	00112$
      000737                       1611 00176$:
      000737 02 07 BA         [24] 1612 	ljmp	00113$
                                   1613 ;	src/main.c:307: case '3' :
      00073A                       1614 00103$:
                                   1615 ;	src/main.c:308: printf_fast_f("Idle preamble on/off\r\n");
      00073A 74 93            [12] 1616 	mov	a,#___str_8
      00073C C0 E0            [24] 1617 	push	acc
      00073E 74 3D            [12] 1618 	mov	a,#(___str_8 >> 8)
      000740 C0 E0            [24] 1619 	push	acc
      000742 12 2E DD         [24] 1620 	lcall	_printf_fast_f
      000745 15 81            [12] 1621 	dec	sp
      000747 15 81            [12] 1622 	dec	sp
                                   1623 ;	src/main.c:309: break;
      000749 22               [24] 1624 	ret
                                   1625 ;	src/main.c:312: case 'p' :
      00074A                       1626 00105$:
                                   1627 ;	src/main.c:313: printf_fast_f("LineFi Power Off\r\n");
      00074A 74 AA            [12] 1628 	mov	a,#___str_9
      00074C C0 E0            [24] 1629 	push	acc
      00074E 74 3D            [12] 1630 	mov	a,#(___str_9 >> 8)
      000750 C0 E0            [24] 1631 	push	acc
      000752 12 2E DD         [24] 1632 	lcall	_printf_fast_f
      000755 15 81            [12] 1633 	dec	sp
      000757 15 81            [12] 1634 	dec	sp
                                   1635 ;	src/main.c:314: break;
      000759 22               [24] 1636 	ret
                                   1637 ;	src/main.c:315: case 'P' :
      00075A                       1638 00106$:
                                   1639 ;	src/main.c:316: printf_fast_f("LineFi Power On\r\n");
      00075A 74 BD            [12] 1640 	mov	a,#___str_10
      00075C C0 E0            [24] 1641 	push	acc
      00075E 74 3D            [12] 1642 	mov	a,#(___str_10 >> 8)
      000760 C0 E0            [24] 1643 	push	acc
      000762 12 2E DD         [24] 1644 	lcall	_printf_fast_f
      000765 15 81            [12] 1645 	dec	sp
      000767 15 81            [12] 1646 	dec	sp
                                   1647 ;	src/main.c:317: break;
      000769 22               [24] 1648 	ret
                                   1649 ;	src/main.c:318: case 't' :
      00076A                       1650 00107$:
                                   1651 ;	src/main.c:319: printf_fast_f("LineFi Uart Tx Low\r\n");
      00076A 74 CF            [12] 1652 	mov	a,#___str_11
      00076C C0 E0            [24] 1653 	push	acc
      00076E 74 3D            [12] 1654 	mov	a,#(___str_11 >> 8)
      000770 C0 E0            [24] 1655 	push	acc
      000772 12 2E DD         [24] 1656 	lcall	_printf_fast_f
      000775 15 81            [12] 1657 	dec	sp
      000777 15 81            [12] 1658 	dec	sp
                                   1659 ;	src/main.c:320: break;
      000779 22               [24] 1660 	ret
                                   1661 ;	src/main.c:321: case 'T' :
      00077A                       1662 00108$:
                                   1663 ;	src/main.c:322: printf_fast_f("LineFi Uart Tx High\r\n");
      00077A 74 E4            [12] 1664 	mov	a,#___str_12
      00077C C0 E0            [24] 1665 	push	acc
      00077E 74 3D            [12] 1666 	mov	a,#(___str_12 >> 8)
      000780 C0 E0            [24] 1667 	push	acc
      000782 12 2E DD         [24] 1668 	lcall	_printf_fast_f
      000785 15 81            [12] 1669 	dec	sp
      000787 15 81            [12] 1670 	dec	sp
                                   1671 ;	src/main.c:323: break;
      000789 22               [24] 1672 	ret
                                   1673 ;	src/main.c:324: case 's' :
      00078A                       1674 00109$:
                                   1675 ;	src/main.c:325: printf_fast_f("LineFi CSC rx FSM Off\r\n");
      00078A 74 FA            [12] 1676 	mov	a,#___str_13
      00078C C0 E0            [24] 1677 	push	acc
      00078E 74 3D            [12] 1678 	mov	a,#(___str_13 >> 8)
      000790 C0 E0            [24] 1679 	push	acc
      000792 12 2E DD         [24] 1680 	lcall	_printf_fast_f
      000795 15 81            [12] 1681 	dec	sp
      000797 15 81            [12] 1682 	dec	sp
                                   1683 ;	src/main.c:326: break;
      000799 22               [24] 1684 	ret
                                   1685 ;	src/main.c:327: case 'S' :
      00079A                       1686 00110$:
                                   1687 ;	src/main.c:328: printf_fast_f("LineFi CSC rx FSM ON\r\n");
      00079A 74 12            [12] 1688 	mov	a,#___str_14
      00079C C0 E0            [24] 1689 	push	acc
      00079E 74 3E            [12] 1690 	mov	a,#(___str_14 >> 8)
      0007A0 C0 E0            [24] 1691 	push	acc
      0007A2 12 2E DD         [24] 1692 	lcall	_printf_fast_f
      0007A5 15 81            [12] 1693 	dec	sp
      0007A7 15 81            [12] 1694 	dec	sp
                                   1695 ;	src/main.c:329: break;
                                   1696 ;	src/main.c:330: case 'v' : case 'V' :
      0007A9 22               [24] 1697 	ret
      0007AA                       1698 00112$:
                                   1699 ;	src/main.c:331: printf_fast_f(__VERSION__);
      0007AA 74 29            [12] 1700 	mov	a,#___str_15
      0007AC C0 E0            [24] 1701 	push	acc
      0007AE 74 3E            [12] 1702 	mov	a,#(___str_15 >> 8)
      0007B0 C0 E0            [24] 1703 	push	acc
      0007B2 12 2E DD         [24] 1704 	lcall	_printf_fast_f
      0007B5 15 81            [12] 1705 	dec	sp
      0007B7 15 81            [12] 1706 	dec	sp
                                   1707 ;	src/main.c:332: break;
                                   1708 ;	src/main.c:333: default :
      0007B9 22               [24] 1709 	ret
      0007BA                       1710 00113$:
                                   1711 ;	src/main.c:334: printf_fast_f("1: downlink packet 1\r\n");
      0007BA 74 43            [12] 1712 	mov	a,#___str_16
      0007BC C0 E0            [24] 1713 	push	acc
      0007BE 74 3E            [12] 1714 	mov	a,#(___str_16 >> 8)
      0007C0 C0 E0            [24] 1715 	push	acc
      0007C2 12 2E DD         [24] 1716 	lcall	_printf_fast_f
      0007C5 15 81            [12] 1717 	dec	sp
      0007C7 15 81            [12] 1718 	dec	sp
                                   1719 ;	src/main.c:335: printf_fast_f("2: downlink packet 2\r\n");
      0007C9 74 5A            [12] 1720 	mov	a,#___str_17
      0007CB C0 E0            [24] 1721 	push	acc
      0007CD 74 3E            [12] 1722 	mov	a,#(___str_17 >> 8)
      0007CF C0 E0            [24] 1723 	push	acc
      0007D1 12 2E DD         [24] 1724 	lcall	_printf_fast_f
      0007D4 15 81            [12] 1725 	dec	sp
      0007D6 15 81            [12] 1726 	dec	sp
                                   1727 ;	src/main.c:336: printf_fast_f("3: uplink idle preamble on/off\r\n");
      0007D8 74 71            [12] 1728 	mov	a,#___str_18
      0007DA C0 E0            [24] 1729 	push	acc
      0007DC 74 3E            [12] 1730 	mov	a,#(___str_18 >> 8)
      0007DE C0 E0            [24] 1731 	push	acc
      0007E0 12 2E DD         [24] 1732 	lcall	_printf_fast_f
      0007E3 15 81            [12] 1733 	dec	sp
      0007E5 15 81            [12] 1734 	dec	sp
                                   1735 ;	src/main.c:337: printf_fast_f("p/P: LineFi Power off/on\r\n");
      0007E7 74 92            [12] 1736 	mov	a,#___str_19
      0007E9 C0 E0            [24] 1737 	push	acc
      0007EB 74 3E            [12] 1738 	mov	a,#(___str_19 >> 8)
      0007ED C0 E0            [24] 1739 	push	acc
      0007EF 12 2E DD         [24] 1740 	lcall	_printf_fast_f
      0007F2 15 81            [12] 1741 	dec	sp
      0007F4 15 81            [12] 1742 	dec	sp
                                   1743 ;	src/main.c:338: printf_fast_f("t/T: LineFi Uart Tx Low/High\r\n");
      0007F6 74 AD            [12] 1744 	mov	a,#___str_20
      0007F8 C0 E0            [24] 1745 	push	acc
      0007FA 74 3E            [12] 1746 	mov	a,#(___str_20 >> 8)
      0007FC C0 E0            [24] 1747 	push	acc
      0007FE 12 2E DD         [24] 1748 	lcall	_printf_fast_f
      000801 15 81            [12] 1749 	dec	sp
      000803 15 81            [12] 1750 	dec	sp
                                   1751 ;	src/main.c:339: printf_fast_f("s/S: LineFie CSC Rx FSM off/on\r\n");
      000805 74 CC            [12] 1752 	mov	a,#___str_21
      000807 C0 E0            [24] 1753 	push	acc
      000809 74 3E            [12] 1754 	mov	a,#(___str_21 >> 8)
      00080B C0 E0            [24] 1755 	push	acc
      00080D 12 2E DD         [24] 1756 	lcall	_printf_fast_f
      000810 15 81            [12] 1757 	dec	sp
      000812 15 81            [12] 1758 	dec	sp
                                   1759 ;	src/main.c:340: printf_fast_f("test procedure: p -> P -> T -> S -> 1 or 2\r\n");
      000814 74 ED            [12] 1760 	mov	a,#___str_22
      000816 C0 E0            [24] 1761 	push	acc
      000818 74 3E            [12] 1762 	mov	a,#(___str_22 >> 8)
      00081A C0 E0            [24] 1763 	push	acc
      00081C 12 2E DD         [24] 1764 	lcall	_printf_fast_f
      00081F 15 81            [12] 1765 	dec	sp
      000821 15 81            [12] 1766 	dec	sp
                                   1767 ;	src/main.c:342: }
                                   1768 ;	src/main.c:343: }
      000823 22               [24] 1769 	ret
                                   1770 ;------------------------------------------------------------
                                   1771 ;Allocation info for local variables in function 'gpio_setup'
                                   1772 ;------------------------------------------------------------
                                   1773 ;	src/main.c:345: void gpio_setup()
                                   1774 ;	-----------------------------------------
                                   1775 ;	 function gpio_setup
                                   1776 ;	-----------------------------------------
      000824                       1777 _gpio_setup:
                                   1778 ;	src/main.c:373: Set_All_GPIO_Quasi_Mode;
      000824 75 B1 00         [24] 1779 	mov	_P0M1,#0x00
      000827 75 B2 00         [24] 1780 	mov	_P0M2,#0x00
      00082A 75 B3 00         [24] 1781 	mov	_P1M1,#0x00
      00082D 75 B4 00         [24] 1782 	mov	_P1M2,#0x00
      000830 75 AC 00         [24] 1783 	mov	_P3M1,#0x00
      000833 75 AD 00         [24] 1784 	mov	_P3M2,#0x00
                                   1785 ;	src/main.c:375: P13_Input_Mode;
      000836 43 B3 08         [24] 1786 	orl	_P1M1,#0x08
      000839 53 B4 F7         [24] 1787 	anl	_P1M2,#0xf7
                                   1788 ;	src/main.c:376: P30_Input_Mode;
      00083C 43 AC 01         [24] 1789 	orl	_P3M1,#0x01
      00083F 53 AD FE         [24] 1790 	anl	_P3M2,#0xfe
                                   1791 ;	src/main.c:377: P17_Input_Mode;
      000842 43 B3 80         [24] 1792 	orl	_P1M1,#0x80
      000845 53 B4 7F         [24] 1793 	anl	_P1M2,#0x7f
                                   1794 ;	src/main.c:378: P00_Input_Mode;
      000848 43 B1 01         [24] 1795 	orl	_P0M1,#0x01
      00084B 53 B2 FE         [24] 1796 	anl	_P0M2,#0xfe
                                   1797 ;	src/main.c:379: P15_Input_Mode;
      00084E 43 B3 20         [24] 1798 	orl	_P1M1,#0x20
      000851 53 B4 DF         [24] 1799 	anl	_P1M2,#0xdf
                                   1800 ;	src/main.c:381: P05_Input_Mode; // rx_level1
      000854 43 B1 20         [24] 1801 	orl	_P0M1,#0x20
      000857 53 B2 DF         [24] 1802 	anl	_P0M2,#0xdf
                                   1803 ;	src/main.c:382: P04_Input_Mode; // rx_level2
      00085A 43 B1 10         [24] 1804 	orl	_P0M1,#0x10
      00085D 53 B2 EF         [24] 1805 	anl	_P0M2,#0xef
                                   1806 ;	src/main.c:384: P10_PushPull_Mode; // line fi enable
      000860 53 B3 FE         [24] 1807 	anl	_P1M1,#0xfe
      000863 43 B4 01         [24] 1808 	orl	_P1M2,#0x01
                                   1809 ;	src/main.c:385: P11_PushPull_Mode; // line fi enable1
      000866 53 B3 FD         [24] 1810 	anl	_P1M1,#0xfd
      000869 43 B4 02         [24] 1811 	orl	_P1M2,#0x02
                                   1812 ;	src/main.c:386: P12_PushPull_Mode; // line fi enable2
      00086C 53 B3 FB         [24] 1813 	anl	_P1M1,#0xfb
      00086F 43 B4 04         [24] 1814 	orl	_P1M2,#0x04
                                   1815 ;	src/main.c:387: LINEFI_EN0 = 0;
                                   1816 ;	assignBit
      000872 C2 90            [12] 1817 	clr	_P10
                                   1818 ;	src/main.c:388: LINEFI_EN1 = 0;
                                   1819 ;	assignBit
      000874 C2 91            [12] 1820 	clr	_P11
                                   1821 ;	src/main.c:389: LINEFI_EN2 = 0;
                                   1822 ;	assignBit
      000876 C2 92            [12] 1823 	clr	_P12
                                   1824 ;	src/main.c:390: }
      000878 22               [24] 1825 	ret
                                   1826 ;------------------------------------------------------------
                                   1827 ;Allocation info for local variables in function 'state_switches'
                                   1828 ;------------------------------------------------------------
                                   1829 ;su8PrevSW                 Allocated with name '_state_switches_su8PrevSW_65536_76'
                                   1830 ;apu8SwNum                 Allocated with name '_state_switches_PARM_2'
                                   1831 ;au8SW                     Allocated to registers r7 
                                   1832 ;i                         Allocated to registers r2 
                                   1833 ;u8Result                  Allocated to registers r6 
                                   1834 ;------------------------------------------------------------
                                   1835 ;	src/main.c:408: UINT8 state_switches(UINT8 au8SW, UINT8 *apu8SwNum)
                                   1836 ;	-----------------------------------------
                                   1837 ;	 function state_switches
                                   1838 ;	-----------------------------------------
      000879                       1839 _state_switches:
      000879 AF 82            [24] 1840 	mov	r7,dpl
                                   1841 ;	src/main.c:413: UINT8 u8Result = SW_NONE;
      00087B 7E 04            [12] 1842 	mov	r6,#0x04
                                   1843 ;	src/main.c:414: if (su8PrevSW == au8SW) {
      00087D 90 00 96         [24] 1844 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      000880 E0               [24] 1845 	movx	a,@dptr
      000881 B5 07 14         [24] 1846 	cjne	a,ar7,00102$
                                   1847 ;	src/main.c:415: *apu8SwNum = 0;
      000884 AB 1A            [24] 1848 	mov	r3,_state_switches_PARM_2
      000886 AC 1B            [24] 1849 	mov	r4,(_state_switches_PARM_2 + 1)
      000888 AD 1C            [24] 1850 	mov	r5,(_state_switches_PARM_2 + 2)
      00088A 8B 82            [24] 1851 	mov	dpl,r3
      00088C 8C 83            [24] 1852 	mov	dph,r4
      00088E 8D F0            [24] 1853 	mov	b,r5
      000890 E4               [12] 1854 	clr	a
      000891 12 34 06         [24] 1855 	lcall	__gptrput
                                   1856 ;	src/main.c:416: return SW_NONE;
      000894 75 82 04         [24] 1857 	mov	dpl,#0x04
      000897 22               [24] 1858 	ret
      000898                       1859 00102$:
                                   1860 ;	src/main.c:424: *apu8SwNum = 0;
      000898 AB 1A            [24] 1861 	mov	r3,_state_switches_PARM_2
      00089A AC 1B            [24] 1862 	mov	r4,(_state_switches_PARM_2 + 1)
      00089C AD 1C            [24] 1863 	mov	r5,(_state_switches_PARM_2 + 2)
      00089E 8B 82            [24] 1864 	mov	dpl,r3
      0008A0 8C 83            [24] 1865 	mov	dph,r4
      0008A2 8D F0            [24] 1866 	mov	b,r5
      0008A4 E4               [12] 1867 	clr	a
      0008A5 12 34 06         [24] 1868 	lcall	__gptrput
                                   1869 ;	src/main.c:426: for (i=0;i<5;i++) {
      0008A8 7A 00            [12] 1870 	mov	r2,#0x00
      0008AA                       1871 00110$:
                                   1872 ;	src/main.c:427: if (((su8PrevSW>>i)&1) == SW_ON 
      0008AA 90 00 96         [24] 1873 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      0008AD E0               [24] 1874 	movx	a,@dptr
      0008AE 8A F0            [24] 1875 	mov	b,r2
      0008B0 05 F0            [12] 1876 	inc	b
      0008B2 80 02            [24] 1877 	sjmp	00146$
      0008B4                       1878 00145$:
      0008B4 C3               [12] 1879 	clr	c
      0008B5 13               [12] 1880 	rrc	a
      0008B6                       1881 00146$:
      0008B6 D5 F0 FB         [24] 1882 	djnz	b,00145$
      0008B9 F8               [12] 1883 	mov	r0,a
      0008BA 53 00 01         [24] 1884 	anl	ar0,#0x01
      0008BD 79 00            [12] 1885 	mov	r1,#0x00
      0008BF B8 01 40         [24] 1886 	cjne	r0,#0x01,00104$
      0008C2 B9 00 3D         [24] 1887 	cjne	r1,#0x00,00104$
                                   1888 ;	src/main.c:428: && ((au8SW>>i)&1) == SW_OFF ) {
      0008C5 8A F0            [24] 1889 	mov	b,r2
      0008C7 05 F0            [12] 1890 	inc	b
      0008C9 EF               [12] 1891 	mov	a,r7
      0008CA 80 02            [24] 1892 	sjmp	00150$
      0008CC                       1893 00149$:
      0008CC C3               [12] 1894 	clr	c
      0008CD 13               [12] 1895 	rrc	a
      0008CE                       1896 00150$:
      0008CE D5 F0 FB         [24] 1897 	djnz	b,00149$
      0008D1 20 E0 2E         [24] 1898 	jb	acc.0,00104$
                                   1899 ;	src/main.c:430: su8PrevSW = au8SW;
      0008D4 90 00 96         [24] 1900 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      0008D7 EF               [12] 1901 	mov	a,r7
      0008D8 F0               [24] 1902 	movx	@dptr,a
                                   1903 ;	src/main.c:431: *apu8SwNum |= 1<<i;
      0008D9 8B 82            [24] 1904 	mov	dpl,r3
      0008DB 8C 83            [24] 1905 	mov	dph,r4
      0008DD 8D F0            [24] 1906 	mov	b,r5
      0008DF 12 3D 2C         [24] 1907 	lcall	__gptrget
      0008E2 F9               [12] 1908 	mov	r1,a
      0008E3 8A 00            [24] 1909 	mov	ar0,r2
      0008E5 88 F0            [24] 1910 	mov	b,r0
      0008E7 05 F0            [12] 1911 	inc	b
      0008E9 74 01            [12] 1912 	mov	a,#0x01
      0008EB 80 02            [24] 1913 	sjmp	00154$
      0008ED                       1914 00152$:
      0008ED 25 E0            [12] 1915 	add	a,acc
      0008EF                       1916 00154$:
      0008EF D5 F0 FB         [24] 1917 	djnz	b,00152$
      0008F2 F8               [12] 1918 	mov	r0,a
      0008F3 E9               [12] 1919 	mov	a,r1
      0008F4 42 00            [12] 1920 	orl	ar0,a
      0008F6 8B 82            [24] 1921 	mov	dpl,r3
      0008F8 8C 83            [24] 1922 	mov	dph,r4
      0008FA 8D F0            [24] 1923 	mov	b,r5
      0008FC E8               [12] 1924 	mov	a,r0
      0008FD 12 34 06         [24] 1925 	lcall	__gptrput
                                   1926 ;	src/main.c:432: u8Result = SW_OFF;
      000900 7E 00            [12] 1927 	mov	r6,#0x00
      000902                       1928 00104$:
                                   1929 ;	src/main.c:435: if (((su8PrevSW>>i)&1) == SW_OFF 
      000902 90 00 96         [24] 1930 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      000905 E0               [24] 1931 	movx	a,@dptr
      000906 8A F0            [24] 1932 	mov	b,r2
      000908 05 F0            [12] 1933 	inc	b
      00090A 80 02            [24] 1934 	sjmp	00156$
      00090C                       1935 00155$:
      00090C C3               [12] 1936 	clr	c
      00090D 13               [12] 1937 	rrc	a
      00090E                       1938 00156$:
      00090E D5 F0 FB         [24] 1939 	djnz	b,00155$
      000911 20 E0 46         [24] 1940 	jb	acc.0,00111$
                                   1941 ;	src/main.c:436: && ((au8SW>>i)&1) == SW_ON ) {
      000914 8A F0            [24] 1942 	mov	b,r2
      000916 05 F0            [12] 1943 	inc	b
      000918 EF               [12] 1944 	mov	a,r7
      000919 80 02            [24] 1945 	sjmp	00159$
      00091B                       1946 00158$:
      00091B C3               [12] 1947 	clr	c
      00091C 13               [12] 1948 	rrc	a
      00091D                       1949 00159$:
      00091D D5 F0 FB         [24] 1950 	djnz	b,00158$
      000920 F8               [12] 1951 	mov	r0,a
      000921 53 00 01         [24] 1952 	anl	ar0,#0x01
      000924 79 00            [12] 1953 	mov	r1,#0x00
      000926 B8 01 31         [24] 1954 	cjne	r0,#0x01,00111$
      000929 B9 00 2E         [24] 1955 	cjne	r1,#0x00,00111$
                                   1956 ;	src/main.c:439: su8PrevSW = au8SW;
      00092C 90 00 96         [24] 1957 	mov	dptr,#_state_switches_su8PrevSW_65536_76
      00092F EF               [12] 1958 	mov	a,r7
      000930 F0               [24] 1959 	movx	@dptr,a
                                   1960 ;	src/main.c:440: *apu8SwNum |= 1<<i;
      000931 8B 82            [24] 1961 	mov	dpl,r3
      000933 8C 83            [24] 1962 	mov	dph,r4
      000935 8D F0            [24] 1963 	mov	b,r5
      000937 12 3D 2C         [24] 1964 	lcall	__gptrget
      00093A F9               [12] 1965 	mov	r1,a
      00093B 8A 00            [24] 1966 	mov	ar0,r2
      00093D 88 F0            [24] 1967 	mov	b,r0
      00093F 05 F0            [12] 1968 	inc	b
      000941 74 01            [12] 1969 	mov	a,#0x01
      000943 80 02            [24] 1970 	sjmp	00164$
      000945                       1971 00162$:
      000945 25 E0            [12] 1972 	add	a,acc
      000947                       1973 00164$:
      000947 D5 F0 FB         [24] 1974 	djnz	b,00162$
      00094A F8               [12] 1975 	mov	r0,a
      00094B E9               [12] 1976 	mov	a,r1
      00094C 42 00            [12] 1977 	orl	ar0,a
      00094E 8B 82            [24] 1978 	mov	dpl,r3
      000950 8C 83            [24] 1979 	mov	dph,r4
      000952 8D F0            [24] 1980 	mov	b,r5
      000954 E8               [12] 1981 	mov	a,r0
      000955 12 34 06         [24] 1982 	lcall	__gptrput
                                   1983 ;	src/main.c:441: u8Result = SW_ON;
      000958 7E 01            [12] 1984 	mov	r6,#0x01
      00095A                       1985 00111$:
                                   1986 ;	src/main.c:426: for (i=0;i<5;i++) {
      00095A 0A               [12] 1987 	inc	r2
      00095B BA 05 00         [24] 1988 	cjne	r2,#0x05,00165$
      00095E                       1989 00165$:
      00095E 50 03            [24] 1990 	jnc	00166$
      000960 02 08 AA         [24] 1991 	ljmp	00110$
      000963                       1992 00166$:
                                   1993 ;	src/main.c:448: return u8Result;
      000963 8E 82            [24] 1994 	mov	dpl,r6
                                   1995 ;	src/main.c:449: }
      000965 22               [24] 1996 	ret
                                   1997 ;------------------------------------------------------------
                                   1998 ;Allocation info for local variables in function 'printoutbuf'
                                   1999 ;------------------------------------------------------------
                                   2000 ;apcBuf                    Allocated with name '_printoutbuf_PARM_2'
                                   2001 ;aucBufIdx                 Allocated to registers r7 
                                   2002 ;i                         Allocated with name '_printoutbuf_i_65536_83'
                                   2003 ;------------------------------------------------------------
                                   2004 ;	src/main.c:453: void printoutbuf(uint8 aucBufIdx, char * apcBuf)
                                   2005 ;	-----------------------------------------
                                   2006 ;	 function printoutbuf
                                   2007 ;	-----------------------------------------
      000966                       2008 _printoutbuf:
      000966 AF 82            [24] 2009 	mov	r7,dpl
                                   2010 ;	src/main.c:456: for (i=0;i<aucBufIdx;i++) {
      000968 AC 25            [24] 2011 	mov	r4,_printoutbuf_PARM_2
      00096A AD 26            [24] 2012 	mov	r5,(_printoutbuf_PARM_2 + 1)
      00096C AE 27            [24] 2013 	mov	r6,(_printoutbuf_PARM_2 + 2)
      00096E 7B 00            [12] 2014 	mov	r3,#0x00
      000970                       2015 00103$:
      000970 C3               [12] 2016 	clr	c
      000971 EB               [12] 2017 	mov	a,r3
      000972 9F               [12] 2018 	subb	a,r7
      000973 50 3F            [24] 2019 	jnc	00101$
                                   2020 ;	src/main.c:457: printf_fast_f("%c", *apcBuf++);
      000975 8C 82            [24] 2021 	mov	dpl,r4
      000977 8D 83            [24] 2022 	mov	dph,r5
      000979 8E F0            [24] 2023 	mov	b,r6
      00097B 12 3D 2C         [24] 2024 	lcall	__gptrget
      00097E FA               [12] 2025 	mov	r2,a
      00097F A3               [24] 2026 	inc	dptr
      000980 AC 82            [24] 2027 	mov	r4,dpl
      000982 AD 83            [24] 2028 	mov	r5,dph
      000984 8A 01            [24] 2029 	mov	ar1,r2
      000986 7A 00            [12] 2030 	mov	r2,#0x00
      000988 C0 07            [24] 2031 	push	ar7
      00098A C0 06            [24] 2032 	push	ar6
      00098C C0 05            [24] 2033 	push	ar5
      00098E C0 04            [24] 2034 	push	ar4
      000990 C0 03            [24] 2035 	push	ar3
      000992 C0 01            [24] 2036 	push	ar1
      000994 C0 02            [24] 2037 	push	ar2
      000996 74 79            [12] 2038 	mov	a,#___str_6
      000998 C0 E0            [24] 2039 	push	acc
      00099A 74 3D            [12] 2040 	mov	a,#(___str_6 >> 8)
      00099C C0 E0            [24] 2041 	push	acc
      00099E 12 2E DD         [24] 2042 	lcall	_printf_fast_f
      0009A1 E5 81            [12] 2043 	mov	a,sp
      0009A3 24 FC            [12] 2044 	add	a,#0xfc
      0009A5 F5 81            [12] 2045 	mov	sp,a
      0009A7 D0 03            [24] 2046 	pop	ar3
      0009A9 D0 04            [24] 2047 	pop	ar4
      0009AB D0 05            [24] 2048 	pop	ar5
      0009AD D0 06            [24] 2049 	pop	ar6
      0009AF D0 07            [24] 2050 	pop	ar7
                                   2051 ;	src/main.c:456: for (i=0;i<aucBufIdx;i++) {
      0009B1 0B               [12] 2052 	inc	r3
      0009B2 80 BC            [24] 2053 	sjmp	00103$
      0009B4                       2054 00101$:
                                   2055 ;	src/main.c:459: printf_fast_f("\r\n");
      0009B4 74 76            [12] 2056 	mov	a,#___str_5
      0009B6 C0 E0            [24] 2057 	push	acc
      0009B8 74 3D            [12] 2058 	mov	a,#(___str_5 >> 8)
      0009BA C0 E0            [24] 2059 	push	acc
      0009BC 12 2E DD         [24] 2060 	lcall	_printf_fast_f
      0009BF 15 81            [12] 2061 	dec	sp
      0009C1 15 81            [12] 2062 	dec	sp
                                   2063 ;	src/main.c:460: }
      0009C3 22               [24] 2064 	ret
                                   2065 ;------------------------------------------------------------
                                   2066 ;Allocation info for local variables in function 'print_help'
                                   2067 ;------------------------------------------------------------
                                   2068 ;	src/main.c:463: void print_help()
                                   2069 ;	-----------------------------------------
                                   2070 ;	 function print_help
                                   2071 ;	-----------------------------------------
      0009C4                       2072 _print_help:
                                   2073 ;	src/main.c:465: printf_fast_f("t: timer\r\n");
      0009C4 74 1A            [12] 2074 	mov	a,#___str_23
      0009C6 C0 E0            [24] 2075 	push	acc
      0009C8 74 3F            [12] 2076 	mov	a,#(___str_23 >> 8)
      0009CA C0 E0            [24] 2077 	push	acc
      0009CC 12 2E DD         [24] 2078 	lcall	_printf_fast_f
      0009CF 15 81            [12] 2079 	dec	sp
      0009D1 15 81            [12] 2080 	dec	sp
                                   2081 ;	src/main.c:466: printf_fast_f("0: LineFi EN0,1,2 off\r\n");
      0009D3 74 25            [12] 2082 	mov	a,#___str_24
      0009D5 C0 E0            [24] 2083 	push	acc
      0009D7 74 3F            [12] 2084 	mov	a,#(___str_24 >> 8)
      0009D9 C0 E0            [24] 2085 	push	acc
      0009DB 12 2E DD         [24] 2086 	lcall	_printf_fast_f
      0009DE 15 81            [12] 2087 	dec	sp
      0009E0 15 81            [12] 2088 	dec	sp
                                   2089 ;	src/main.c:467: printf_fast_f("1: LineFi EN0 = 1\r\n");
      0009E2 74 3D            [12] 2090 	mov	a,#___str_25
      0009E4 C0 E0            [24] 2091 	push	acc
      0009E6 74 3F            [12] 2092 	mov	a,#(___str_25 >> 8)
      0009E8 C0 E0            [24] 2093 	push	acc
      0009EA 12 2E DD         [24] 2094 	lcall	_printf_fast_f
      0009ED 15 81            [12] 2095 	dec	sp
      0009EF 15 81            [12] 2096 	dec	sp
                                   2097 ;	src/main.c:468: printf_fast_f("2:\r\n");
      0009F1 74 51            [12] 2098 	mov	a,#___str_26
      0009F3 C0 E0            [24] 2099 	push	acc
      0009F5 74 3F            [12] 2100 	mov	a,#(___str_26 >> 8)
      0009F7 C0 E0            [24] 2101 	push	acc
      0009F9 12 2E DD         [24] 2102 	lcall	_printf_fast_f
      0009FC 15 81            [12] 2103 	dec	sp
      0009FE 15 81            [12] 2104 	dec	sp
                                   2105 ;	src/main.c:469: printf_fast_f("3:\r\n");
      000A00 74 56            [12] 2106 	mov	a,#___str_27
      000A02 C0 E0            [24] 2107 	push	acc
      000A04 74 3F            [12] 2108 	mov	a,#(___str_27 >> 8)
      000A06 C0 E0            [24] 2109 	push	acc
      000A08 12 2E DD         [24] 2110 	lcall	_printf_fast_f
      000A0B 15 81            [12] 2111 	dec	sp
      000A0D 15 81            [12] 2112 	dec	sp
                                   2113 ;	src/main.c:470: printf_fast_f("4:\r\n");
      000A0F 74 5B            [12] 2114 	mov	a,#___str_28
      000A11 C0 E0            [24] 2115 	push	acc
      000A13 74 3F            [12] 2116 	mov	a,#(___str_28 >> 8)
      000A15 C0 E0            [24] 2117 	push	acc
      000A17 12 2E DD         [24] 2118 	lcall	_printf_fast_f
      000A1A 15 81            [12] 2119 	dec	sp
      000A1C 15 81            [12] 2120 	dec	sp
                                   2121 ;	src/main.c:471: printf_fast_f("5:\r\n");
      000A1E 74 60            [12] 2122 	mov	a,#___str_29
      000A20 C0 E0            [24] 2123 	push	acc
      000A22 74 3F            [12] 2124 	mov	a,#(___str_29 >> 8)
      000A24 C0 E0            [24] 2125 	push	acc
      000A26 12 2E DD         [24] 2126 	lcall	_printf_fast_f
      000A29 15 81            [12] 2127 	dec	sp
      000A2B 15 81            [12] 2128 	dec	sp
                                   2129 ;	src/main.c:472: printf_fast_f("6:\r\n");
      000A2D 74 65            [12] 2130 	mov	a,#___str_30
      000A2F C0 E0            [24] 2131 	push	acc
      000A31 74 3F            [12] 2132 	mov	a,#(___str_30 >> 8)
      000A33 C0 E0            [24] 2133 	push	acc
      000A35 12 2E DD         [24] 2134 	lcall	_printf_fast_f
      000A38 15 81            [12] 2135 	dec	sp
      000A3A 15 81            [12] 2136 	dec	sp
                                   2137 ;	src/main.c:473: printf_fast_f("7:\r\n");
      000A3C 74 6A            [12] 2138 	mov	a,#___str_31
      000A3E C0 E0            [24] 2139 	push	acc
      000A40 74 3F            [12] 2140 	mov	a,#(___str_31 >> 8)
      000A42 C0 E0            [24] 2141 	push	acc
      000A44 12 2E DD         [24] 2142 	lcall	_printf_fast_f
      000A47 15 81            [12] 2143 	dec	sp
      000A49 15 81            [12] 2144 	dec	sp
                                   2145 ;	src/main.c:474: printf_fast_f("h: Addr--\r\n");
      000A4B 74 6F            [12] 2146 	mov	a,#___str_32
      000A4D C0 E0            [24] 2147 	push	acc
      000A4F 74 3F            [12] 2148 	mov	a,#(___str_32 >> 8)
      000A51 C0 E0            [24] 2149 	push	acc
      000A53 12 2E DD         [24] 2150 	lcall	_printf_fast_f
      000A56 15 81            [12] 2151 	dec	sp
      000A58 15 81            [12] 2152 	dec	sp
                                   2153 ;	src/main.c:475: printf_fast_f("j: Cmd--\r\n");
      000A5A 74 7B            [12] 2154 	mov	a,#___str_33
      000A5C C0 E0            [24] 2155 	push	acc
      000A5E 74 3F            [12] 2156 	mov	a,#(___str_33 >> 8)
      000A60 C0 E0            [24] 2157 	push	acc
      000A62 12 2E DD         [24] 2158 	lcall	_printf_fast_f
      000A65 15 81            [12] 2159 	dec	sp
      000A67 15 81            [12] 2160 	dec	sp
                                   2161 ;	src/main.c:476: printf_fast_f("k: Cmd++\r\n");
      000A69 74 86            [12] 2162 	mov	a,#___str_34
      000A6B C0 E0            [24] 2163 	push	acc
      000A6D 74 3F            [12] 2164 	mov	a,#(___str_34 >> 8)
      000A6F C0 E0            [24] 2165 	push	acc
      000A71 12 2E DD         [24] 2166 	lcall	_printf_fast_f
      000A74 15 81            [12] 2167 	dec	sp
      000A76 15 81            [12] 2168 	dec	sp
                                   2169 ;	src/main.c:477: printf_fast_f("l: Addr++\r\n");
      000A78 74 91            [12] 2170 	mov	a,#___str_35
      000A7A C0 E0            [24] 2171 	push	acc
      000A7C 74 3F            [12] 2172 	mov	a,#(___str_35 >> 8)
      000A7E C0 E0            [24] 2173 	push	acc
      000A80 12 2E DD         [24] 2174 	lcall	_printf_fast_f
      000A83 15 81            [12] 2175 	dec	sp
      000A85 15 81            [12] 2176 	dec	sp
                                   2177 ;	src/main.c:478: printf_fast_f("s: sending\r\n");
      000A87 74 9D            [12] 2178 	mov	a,#___str_36
      000A89 C0 E0            [24] 2179 	push	acc
      000A8B 74 3F            [12] 2180 	mov	a,#(___str_36 >> 8)
      000A8D C0 E0            [24] 2181 	push	acc
      000A8F 12 2E DD         [24] 2182 	lcall	_printf_fast_f
      000A92 15 81            [12] 2183 	dec	sp
      000A94 15 81            [12] 2184 	dec	sp
                                   2185 ;	src/main.c:479: }
      000A96 22               [24] 2186 	ret
                                   2187 ;------------------------------------------------------------
                                   2188 ;Allocation info for local variables in function 'act_by_one_key'
                                   2189 ;------------------------------------------------------------
                                   2190 ;apu8LineFiCmd             Allocated with name '_act_by_one_key_PARM_2'
                                   2191 ;apu8LineFiAddr            Allocated with name '_act_by_one_key_PARM_3'
                                   2192 ;au8RxUART                 Allocated to registers r7 
                                   2193 ;sloc0                     Allocated with name '_act_by_one_key_sloc0_1_0'
                                   2194 ;u8Data                    Allocated with name '_act_by_one_key_u8Data_65536_88'
                                   2195 ;------------------------------------------------------------
                                   2196 ;	src/main.c:481: void act_by_one_key(uint8 au8RxUART, uint8 * apu8LineFiCmd, uint8 * apu8LineFiAddr)
                                   2197 ;	-----------------------------------------
                                   2198 ;	 function act_by_one_key
                                   2199 ;	-----------------------------------------
      000A97                       2200 _act_by_one_key:
      000A97 AF 82            [24] 2201 	mov	r7,dpl
                                   2202 ;	src/main.c:484: switch(au8RxUART) {
      000A99 BF 2B 03         [24] 2203 	cjne	r7,#0x2b,00256$
      000A9C 02 10 44         [24] 2204 	ljmp	00129$
      000A9F                       2205 00256$:
      000A9F BF 2D 03         [24] 2206 	cjne	r7,#0x2d,00257$
      000AA2 02 10 69         [24] 2207 	ljmp	00130$
      000AA5                       2208 00257$:
      000AA5 BF 30 03         [24] 2209 	cjne	r7,#0x30,00258$
      000AA8 02 0B 4C         [24] 2210 	ljmp	00102$
      000AAB                       2211 00258$:
      000AAB BF 31 03         [24] 2212 	cjne	r7,#0x31,00259$
      000AAE 02 0B 65         [24] 2213 	ljmp	00103$
      000AB1                       2214 00259$:
      000AB1 BF 32 03         [24] 2215 	cjne	r7,#0x32,00260$
      000AB4 02 0B 7A         [24] 2216 	ljmp	00104$
      000AB7                       2217 00260$:
      000AB7 BF 33 03         [24] 2218 	cjne	r7,#0x33,00261$
      000ABA 02 0B 8F         [24] 2219 	ljmp	00105$
      000ABD                       2220 00261$:
      000ABD BF 34 03         [24] 2221 	cjne	r7,#0x34,00262$
      000AC0 02 0B A4         [24] 2222 	ljmp	00106$
      000AC3                       2223 00262$:
      000AC3 BF 35 03         [24] 2224 	cjne	r7,#0x35,00263$
      000AC6 02 0B C6         [24] 2225 	ljmp	00107$
      000AC9                       2226 00263$:
      000AC9 BF 36 03         [24] 2227 	cjne	r7,#0x36,00264$
      000ACC 02 0B FC         [24] 2228 	ljmp	00110$
      000ACF                       2229 00264$:
      000ACF BF 37 03         [24] 2230 	cjne	r7,#0x37,00265$
      000AD2 02 0C 2A         [24] 2231 	ljmp	00111$
      000AD5                       2232 00265$:
      000AD5 BF 48 03         [24] 2233 	cjne	r7,#0x48,00266$
      000AD8 02 09 C4         [24] 2234 	ljmp	_print_help
      000ADB                       2235 00266$:
      000ADB BF 52 03         [24] 2236 	cjne	r7,#0x52,00267$
      000ADE 02 10 9F         [24] 2237 	ljmp	00135$
      000AE1                       2238 00267$:
      000AE1 BF 53 03         [24] 2239 	cjne	r7,#0x53,00268$
      000AE4 02 10 1A         [24] 2240 	ljmp	00128$
      000AE7                       2241 00268$:
      000AE7 BF 61 03         [24] 2242 	cjne	r7,#0x61,00269$
      000AEA 02 10 8D         [24] 2243 	ljmp	00131$
      000AED                       2244 00269$:
      000AED BF 62 03         [24] 2245 	cjne	r7,#0x62,00270$
      000AF0 02 10 93         [24] 2246 	ljmp	00132$
      000AF3                       2247 00270$:
      000AF3 BF 63 03         [24] 2248 	cjne	r7,#0x63,00271$
      000AF6 02 10 99         [24] 2249 	ljmp	00133$
      000AF9                       2250 00271$:
      000AF9 BF 68 03         [24] 2251 	cjne	r7,#0x68,00272$
      000AFC 02 0C 58         [24] 2252 	ljmp	00112$
      000AFF                       2253 00272$:
      000AFF BF 6A 03         [24] 2254 	cjne	r7,#0x6a,00273$
      000B02 02 0C E4         [24] 2255 	ljmp	00116$
      000B05                       2256 00273$:
      000B05 BF 6B 03         [24] 2257 	cjne	r7,#0x6b,00274$
      000B08 02 0D 17         [24] 2258 	ljmp	00117$
      000B0B                       2259 00274$:
      000B0B BF 6C 03         [24] 2260 	cjne	r7,#0x6c,00275$
      000B0E 02 0D 4A         [24] 2261 	ljmp	00118$
      000B11                       2262 00275$:
      000B11 BF 72 03         [24] 2263 	cjne	r7,#0x72,00276$
      000B14 02 10 E8         [24] 2264 	ljmp	00136$
      000B17                       2265 00276$:
      000B17 BF 73 03         [24] 2266 	cjne	r7,#0x73,00277$
      000B1A 02 0D D6         [24] 2267 	ljmp	00122$
      000B1D                       2268 00277$:
      000B1D BF 74 02         [24] 2269 	cjne	r7,#0x74,00278$
      000B20 80 07            [24] 2270 	sjmp	00101$
      000B22                       2271 00278$:
      000B22 BF 75 03         [24] 2272 	cjne	r7,#0x75,00279$
      000B25 02 0F A3         [24] 2273 	ljmp	00127$
      000B28                       2274 00279$:
      000B28 22               [24] 2275 	ret
                                   2276 ;	src/main.c:485: case 't' : // 1msec 카운터 확인, 5초에 40,000
      000B29                       2277 00101$:
                                   2278 ;	src/main.c:486: printf_fast_f("%u\n\r", gu16TimeCnt);
      000B29 90 00 58         [24] 2279 	mov	dptr,#_gu16TimeCnt
      000B2C E0               [24] 2280 	movx	a,@dptr
      000B2D C0 E0            [24] 2281 	push	acc
      000B2F A3               [24] 2282 	inc	dptr
      000B30 E0               [24] 2283 	movx	a,@dptr
      000B31 C0 E0            [24] 2284 	push	acc
      000B33 74 AA            [12] 2285 	mov	a,#___str_37
      000B35 C0 E0            [24] 2286 	push	acc
      000B37 74 3F            [12] 2287 	mov	a,#(___str_37 >> 8)
      000B39 C0 E0            [24] 2288 	push	acc
      000B3B 12 2E DD         [24] 2289 	lcall	_printf_fast_f
      000B3E E5 81            [12] 2290 	mov	a,sp
      000B40 24 FC            [12] 2291 	add	a,#0xfc
      000B42 F5 81            [12] 2292 	mov	sp,a
                                   2293 ;	src/main.c:487: gu16TimeCnt = 0;
      000B44 90 00 58         [24] 2294 	mov	dptr,#_gu16TimeCnt
      000B47 E4               [12] 2295 	clr	a
      000B48 F0               [24] 2296 	movx	@dptr,a
      000B49 A3               [24] 2297 	inc	dptr
      000B4A F0               [24] 2298 	movx	@dptr,a
                                   2299 ;	src/main.c:488: break;
      000B4B 22               [24] 2300 	ret
                                   2301 ;	src/main.c:489: case '0' :
      000B4C                       2302 00102$:
                                   2303 ;	src/main.c:490: gu8UART = 0;
      000B4C 75 11 00         [24] 2304 	mov	_gu8UART,#0x00
                                   2305 ;	src/main.c:491: LINEFI_EN0 = 0;
                                   2306 ;	assignBit
      000B4F C2 90            [12] 2307 	clr	_P10
                                   2308 ;	src/main.c:492: LINEFI_EN1 = 0;
                                   2309 ;	assignBit
      000B51 C2 91            [12] 2310 	clr	_P11
                                   2311 ;	src/main.c:493: LINEFI_EN2 = 0;
                                   2312 ;	assignBit
      000B53 C2 92            [12] 2313 	clr	_P12
                                   2314 ;	src/main.c:494: printf_fast_f("LINEFI_EN0=0\n\r");
      000B55 74 AF            [12] 2315 	mov	a,#___str_38
      000B57 C0 E0            [24] 2316 	push	acc
      000B59 74 3F            [12] 2317 	mov	a,#(___str_38 >> 8)
      000B5B C0 E0            [24] 2318 	push	acc
      000B5D 12 2E DD         [24] 2319 	lcall	_printf_fast_f
      000B60 15 81            [12] 2320 	dec	sp
      000B62 15 81            [12] 2321 	dec	sp
                                   2322 ;	src/main.c:495: break;
      000B64 22               [24] 2323 	ret
                                   2324 ;	src/main.c:496: case '1' :
      000B65                       2325 00103$:
                                   2326 ;	src/main.c:497: gu8UART = 0;
      000B65 75 11 00         [24] 2327 	mov	_gu8UART,#0x00
                                   2328 ;	src/main.c:498: LINEFI_EN0 = 1;
                                   2329 ;	assignBit
      000B68 D2 90            [12] 2330 	setb	_P10
                                   2331 ;	src/main.c:499: printf_fast_f("LINEFI_EN0=1\n\r");
      000B6A 74 BE            [12] 2332 	mov	a,#___str_39
      000B6C C0 E0            [24] 2333 	push	acc
      000B6E 74 3F            [12] 2334 	mov	a,#(___str_39 >> 8)
      000B70 C0 E0            [24] 2335 	push	acc
      000B72 12 2E DD         [24] 2336 	lcall	_printf_fast_f
      000B75 15 81            [12] 2337 	dec	sp
      000B77 15 81            [12] 2338 	dec	sp
                                   2339 ;	src/main.c:500: break;
      000B79 22               [24] 2340 	ret
                                   2341 ;	src/main.c:501: case '2' :
      000B7A                       2342 00104$:
                                   2343 ;	src/main.c:502: gu8UART = 0;
      000B7A 75 11 00         [24] 2344 	mov	_gu8UART,#0x00
                                   2345 ;	src/main.c:503: LINEFI_TX = 0;
                                   2346 ;	assignBit
      000B7D C2 96            [12] 2347 	clr	_P16
                                   2348 ;	src/main.c:504: printf_fast_f("LINEFI_TX=0\n\r");
      000B7F 74 CD            [12] 2349 	mov	a,#___str_40
      000B81 C0 E0            [24] 2350 	push	acc
      000B83 74 3F            [12] 2351 	mov	a,#(___str_40 >> 8)
      000B85 C0 E0            [24] 2352 	push	acc
      000B87 12 2E DD         [24] 2353 	lcall	_printf_fast_f
      000B8A 15 81            [12] 2354 	dec	sp
      000B8C 15 81            [12] 2355 	dec	sp
                                   2356 ;	src/main.c:505: break;
      000B8E 22               [24] 2357 	ret
                                   2358 ;	src/main.c:506: case '3' :
      000B8F                       2359 00105$:
                                   2360 ;	src/main.c:507: gu8UART = 0;
      000B8F 75 11 00         [24] 2361 	mov	_gu8UART,#0x00
                                   2362 ;	src/main.c:508: LINEFI_TX = 1;
                                   2363 ;	assignBit
      000B92 D2 96            [12] 2364 	setb	_P16
                                   2365 ;	src/main.c:509: printf_fast_f("LINEFI_TX=1\n\r");
      000B94 74 DB            [12] 2366 	mov	a,#___str_41
      000B96 C0 E0            [24] 2367 	push	acc
      000B98 74 3F            [12] 2368 	mov	a,#(___str_41 >> 8)
      000B9A C0 E0            [24] 2369 	push	acc
      000B9C 12 2E DD         [24] 2370 	lcall	_printf_fast_f
      000B9F 15 81            [12] 2371 	dec	sp
      000BA1 15 81            [12] 2372 	dec	sp
                                   2373 ;	src/main.c:510: break;
      000BA3 22               [24] 2374 	ret
                                   2375 ;	src/main.c:511: case '4' :
      000BA4                       2376 00106$:
                                   2377 ;	src/main.c:512: gu8UART = 0;
      000BA4 75 11 00         [24] 2378 	mov	_gu8UART,#0x00
                                   2379 ;	src/main.c:513: TOGGLE(LINEFI_TX);
      000BA7 B2 96            [12] 2380 	cpl	_P16
                                   2381 ;	src/main.c:514: printf_fast_f("LINEFI_TX=%d\n\r", LINEFI_TX);
      000BA9 A2 96            [12] 2382 	mov	c,_P16
      000BAB E4               [12] 2383 	clr	a
      000BAC 33               [12] 2384 	rlc	a
      000BAD FE               [12] 2385 	mov	r6,a
      000BAE 7F 00            [12] 2386 	mov	r7,#0x00
      000BB0 C0 06            [24] 2387 	push	ar6
      000BB2 C0 07            [24] 2388 	push	ar7
      000BB4 74 E9            [12] 2389 	mov	a,#___str_42
      000BB6 C0 E0            [24] 2390 	push	acc
      000BB8 74 3F            [12] 2391 	mov	a,#(___str_42 >> 8)
      000BBA C0 E0            [24] 2392 	push	acc
      000BBC 12 2E DD         [24] 2393 	lcall	_printf_fast_f
      000BBF E5 81            [12] 2394 	mov	a,sp
      000BC1 24 FC            [12] 2395 	add	a,#0xfc
      000BC3 F5 81            [12] 2396 	mov	sp,a
                                   2397 ;	src/main.c:515: break;
      000BC5 22               [24] 2398 	ret
                                   2399 ;	src/main.c:516: case '5' :
      000BC6                       2400 00107$:
                                   2401 ;	src/main.c:517: gu8UART = 0;
      000BC6 75 11 00         [24] 2402 	mov	_gu8UART,#0x00
                                   2403 ;	src/main.c:518: if (LINEFI_EN0 == 0) {
      000BC9 20 90 02         [24] 2404 	jb	_P10,00109$
                                   2405 ;	src/main.c:519: LINEFI_TX = 1;
                                   2406 ;	assignBit
      000BCC D2 96            [12] 2407 	setb	_P16
      000BCE                       2408 00109$:
                                   2409 ;	src/main.c:521: TOGGLE(LINEFI_EN0);
      000BCE B2 90            [12] 2410 	cpl	_P10
                                   2411 ;	src/main.c:522: printf_fast_f("LINEFI_EN0=");
      000BD0 74 F8            [12] 2412 	mov	a,#___str_43
      000BD2 C0 E0            [24] 2413 	push	acc
      000BD4 74 3F            [12] 2414 	mov	a,#(___str_43 >> 8)
      000BD6 C0 E0            [24] 2415 	push	acc
      000BD8 12 2E DD         [24] 2416 	lcall	_printf_fast_f
      000BDB 15 81            [12] 2417 	dec	sp
      000BDD 15 81            [12] 2418 	dec	sp
                                   2419 ;	src/main.c:523: printf_fast_f("%d\n\r", LINEFI_EN0);
      000BDF A2 90            [12] 2420 	mov	c,_P10
      000BE1 E4               [12] 2421 	clr	a
      000BE2 33               [12] 2422 	rlc	a
      000BE3 FE               [12] 2423 	mov	r6,a
      000BE4 7F 00            [12] 2424 	mov	r7,#0x00
      000BE6 C0 06            [24] 2425 	push	ar6
      000BE8 C0 07            [24] 2426 	push	ar7
      000BEA 74 04            [12] 2427 	mov	a,#___str_44
      000BEC C0 E0            [24] 2428 	push	acc
      000BEE 74 40            [12] 2429 	mov	a,#(___str_44 >> 8)
      000BF0 C0 E0            [24] 2430 	push	acc
      000BF2 12 2E DD         [24] 2431 	lcall	_printf_fast_f
      000BF5 E5 81            [12] 2432 	mov	a,sp
      000BF7 24 FC            [12] 2433 	add	a,#0xfc
      000BF9 F5 81            [12] 2434 	mov	sp,a
                                   2435 ;	src/main.c:524: break;
      000BFB 22               [24] 2436 	ret
                                   2437 ;	src/main.c:525: case '6' :
      000BFC                       2438 00110$:
                                   2439 ;	src/main.c:526: TOGGLE(LINEFI_EN1);
      000BFC B2 91            [12] 2440 	cpl	_P11
                                   2441 ;	src/main.c:527: printf_fast_f("LINEFI_EN1=");
      000BFE 74 09            [12] 2442 	mov	a,#___str_45
      000C00 C0 E0            [24] 2443 	push	acc
      000C02 74 40            [12] 2444 	mov	a,#(___str_45 >> 8)
      000C04 C0 E0            [24] 2445 	push	acc
      000C06 12 2E DD         [24] 2446 	lcall	_printf_fast_f
      000C09 15 81            [12] 2447 	dec	sp
      000C0B 15 81            [12] 2448 	dec	sp
                                   2449 ;	src/main.c:528: printf_fast_f("%d\n\r", LINEFI_EN1);
      000C0D A2 91            [12] 2450 	mov	c,_P11
      000C0F E4               [12] 2451 	clr	a
      000C10 33               [12] 2452 	rlc	a
      000C11 FE               [12] 2453 	mov	r6,a
      000C12 7F 00            [12] 2454 	mov	r7,#0x00
      000C14 C0 06            [24] 2455 	push	ar6
      000C16 C0 07            [24] 2456 	push	ar7
      000C18 74 04            [12] 2457 	mov	a,#___str_44
      000C1A C0 E0            [24] 2458 	push	acc
      000C1C 74 40            [12] 2459 	mov	a,#(___str_44 >> 8)
      000C1E C0 E0            [24] 2460 	push	acc
      000C20 12 2E DD         [24] 2461 	lcall	_printf_fast_f
      000C23 E5 81            [12] 2462 	mov	a,sp
      000C25 24 FC            [12] 2463 	add	a,#0xfc
      000C27 F5 81            [12] 2464 	mov	sp,a
                                   2465 ;	src/main.c:529: break;
      000C29 22               [24] 2466 	ret
                                   2467 ;	src/main.c:530: case '7' :
      000C2A                       2468 00111$:
                                   2469 ;	src/main.c:531: TOGGLE(LINEFI_EN2);
      000C2A B2 92            [12] 2470 	cpl	_P12
                                   2471 ;	src/main.c:532: printf_fast_f("LINEFI_EN2=");
      000C2C 74 15            [12] 2472 	mov	a,#___str_46
      000C2E C0 E0            [24] 2473 	push	acc
      000C30 74 40            [12] 2474 	mov	a,#(___str_46 >> 8)
      000C32 C0 E0            [24] 2475 	push	acc
      000C34 12 2E DD         [24] 2476 	lcall	_printf_fast_f
      000C37 15 81            [12] 2477 	dec	sp
      000C39 15 81            [12] 2478 	dec	sp
                                   2479 ;	src/main.c:533: printf_fast_f("%d\n\r", LINEFI_EN2);
      000C3B A2 92            [12] 2480 	mov	c,_P12
      000C3D E4               [12] 2481 	clr	a
      000C3E 33               [12] 2482 	rlc	a
      000C3F FE               [12] 2483 	mov	r6,a
      000C40 7F 00            [12] 2484 	mov	r7,#0x00
      000C42 C0 06            [24] 2485 	push	ar6
      000C44 C0 07            [24] 2486 	push	ar7
      000C46 74 04            [12] 2487 	mov	a,#___str_44
      000C48 C0 E0            [24] 2488 	push	acc
      000C4A 74 40            [12] 2489 	mov	a,#(___str_44 >> 8)
      000C4C C0 E0            [24] 2490 	push	acc
      000C4E 12 2E DD         [24] 2491 	lcall	_printf_fast_f
      000C51 E5 81            [12] 2492 	mov	a,sp
      000C53 24 FC            [12] 2493 	add	a,#0xfc
      000C55 F5 81            [12] 2494 	mov	sp,a
                                   2495 ;	src/main.c:534: break;
      000C57 22               [24] 2496 	ret
                                   2497 ;	src/main.c:538: case 'h' : // <<
      000C58                       2498 00112$:
                                   2499 ;	src/main.c:539: (*apu8LineFiAddr)--;
      000C58 AD 2B            [24] 2500 	mov	r5,_act_by_one_key_PARM_3
      000C5A AE 2C            [24] 2501 	mov	r6,(_act_by_one_key_PARM_3 + 1)
      000C5C AF 2D            [24] 2502 	mov	r7,(_act_by_one_key_PARM_3 + 2)
      000C5E 8D 82            [24] 2503 	mov	dpl,r5
      000C60 8E 83            [24] 2504 	mov	dph,r6
      000C62 8F F0            [24] 2505 	mov	b,r7
      000C64 12 3D 2C         [24] 2506 	lcall	__gptrget
      000C67 FC               [12] 2507 	mov	r4,a
      000C68 1C               [12] 2508 	dec	r4
      000C69 8D 82            [24] 2509 	mov	dpl,r5
      000C6B 8E 83            [24] 2510 	mov	dph,r6
      000C6D 8F F0            [24] 2511 	mov	b,r7
      000C6F EC               [12] 2512 	mov	a,r4
      000C70 12 34 06         [24] 2513 	lcall	__gptrput
                                   2514 ;	src/main.c:540: if (*apu8LineFiCmd == 1) {
      000C73 AA 28            [24] 2515 	mov	r2,_act_by_one_key_PARM_2
      000C75 AB 29            [24] 2516 	mov	r3,(_act_by_one_key_PARM_2 + 1)
      000C77 AC 2A            [24] 2517 	mov	r4,(_act_by_one_key_PARM_2 + 2)
      000C79 8A 82            [24] 2518 	mov	dpl,r2
      000C7B 8B 83            [24] 2519 	mov	dph,r3
      000C7D 8C F0            [24] 2520 	mov	b,r4
      000C7F 12 3D 2C         [24] 2521 	lcall	__gptrget
      000C82 FA               [12] 2522 	mov	r2,a
      000C83 BA 01 3C         [24] 2523 	cjne	r2,#0x01,00114$
                                   2524 ;	src/main.c:541: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
      000C86 8D 82            [24] 2525 	mov	dpl,r5
      000C88 8E 83            [24] 2526 	mov	dph,r6
      000C8A 8F F0            [24] 2527 	mov	b,r7
      000C8C 12 3D 2C         [24] 2528 	lcall	__gptrget
      000C8F 75 F0 04         [24] 2529 	mov	b,#0x04
      000C92 A4               [48] 2530 	mul	ab
      000C93 24 5E            [12] 2531 	add	a,#_gpu32UartSpeed
      000C95 F5 82            [12] 2532 	mov	dpl,a
      000C97 74 00            [12] 2533 	mov	a,#(_gpu32UartSpeed >> 8)
      000C99 35 F0            [12] 2534 	addc	a,b
      000C9B F5 83            [12] 2535 	mov	dph,a
      000C9D E0               [24] 2536 	movx	a,@dptr
      000C9E F9               [12] 2537 	mov	r1,a
      000C9F A3               [24] 2538 	inc	dptr
      000CA0 E0               [24] 2539 	movx	a,@dptr
      000CA1 FA               [12] 2540 	mov	r2,a
      000CA2 A3               [24] 2541 	inc	dptr
      000CA3 E0               [24] 2542 	movx	a,@dptr
      000CA4 FB               [12] 2543 	mov	r3,a
      000CA5 A3               [24] 2544 	inc	dptr
      000CA6 E0               [24] 2545 	movx	a,@dptr
      000CA7 FC               [12] 2546 	mov	r4,a
      000CA8 C0 01            [24] 2547 	push	ar1
      000CAA C0 02            [24] 2548 	push	ar2
      000CAC C0 03            [24] 2549 	push	ar3
      000CAE C0 04            [24] 2550 	push	ar4
      000CB0 74 21            [12] 2551 	mov	a,#___str_47
      000CB2 C0 E0            [24] 2552 	push	acc
      000CB4 74 40            [12] 2553 	mov	a,#(___str_47 >> 8)
      000CB6 C0 E0            [24] 2554 	push	acc
      000CB8 12 2E DD         [24] 2555 	lcall	_printf_fast_f
      000CBB E5 81            [12] 2556 	mov	a,sp
      000CBD 24 FA            [12] 2557 	add	a,#0xfa
      000CBF F5 81            [12] 2558 	mov	sp,a
      000CC1 22               [24] 2559 	ret
      000CC2                       2560 00114$:
                                   2561 ;	src/main.c:544: printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
      000CC2 8D 82            [24] 2562 	mov	dpl,r5
      000CC4 8E 83            [24] 2563 	mov	dph,r6
      000CC6 8F F0            [24] 2564 	mov	b,r7
      000CC8 12 3D 2C         [24] 2565 	lcall	__gptrget
      000CCB FD               [12] 2566 	mov	r5,a
      000CCC 7F 00            [12] 2567 	mov	r7,#0x00
      000CCE C0 05            [24] 2568 	push	ar5
      000CD0 C0 07            [24] 2569 	push	ar7
      000CD2 74 34            [12] 2570 	mov	a,#___str_48
      000CD4 C0 E0            [24] 2571 	push	acc
      000CD6 74 40            [12] 2572 	mov	a,#(___str_48 >> 8)
      000CD8 C0 E0            [24] 2573 	push	acc
      000CDA 12 2E DD         [24] 2574 	lcall	_printf_fast_f
      000CDD E5 81            [12] 2575 	mov	a,sp
      000CDF 24 FC            [12] 2576 	add	a,#0xfc
      000CE1 F5 81            [12] 2577 	mov	sp,a
                                   2578 ;	src/main.c:546: break;
      000CE3 22               [24] 2579 	ret
                                   2580 ;	src/main.c:547: case 'j' : //  down
      000CE4                       2581 00116$:
                                   2582 ;	src/main.c:548: (*apu8LineFiCmd)--;
      000CE4 AD 28            [24] 2583 	mov	r5,_act_by_one_key_PARM_2
      000CE6 AE 29            [24] 2584 	mov	r6,(_act_by_one_key_PARM_2 + 1)
      000CE8 AF 2A            [24] 2585 	mov	r7,(_act_by_one_key_PARM_2 + 2)
      000CEA 8D 82            [24] 2586 	mov	dpl,r5
      000CEC 8E 83            [24] 2587 	mov	dph,r6
      000CEE 8F F0            [24] 2588 	mov	b,r7
      000CF0 12 3D 2C         [24] 2589 	lcall	__gptrget
      000CF3 FC               [12] 2590 	mov	r4,a
      000CF4 1C               [12] 2591 	dec	r4
      000CF5 8D 82            [24] 2592 	mov	dpl,r5
      000CF7 8E 83            [24] 2593 	mov	dph,r6
      000CF9 8F F0            [24] 2594 	mov	b,r7
      000CFB EC               [12] 2595 	mov	a,r4
      000CFC 12 34 06         [24] 2596 	lcall	__gptrput
                                   2597 ;	src/main.c:549: printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
      000CFF 7F 00            [12] 2598 	mov	r7,#0x00
      000D01 C0 04            [24] 2599 	push	ar4
      000D03 C0 07            [24] 2600 	push	ar7
      000D05 74 42            [12] 2601 	mov	a,#___str_49
      000D07 C0 E0            [24] 2602 	push	acc
      000D09 74 40            [12] 2603 	mov	a,#(___str_49 >> 8)
      000D0B C0 E0            [24] 2604 	push	acc
      000D0D 12 2E DD         [24] 2605 	lcall	_printf_fast_f
      000D10 E5 81            [12] 2606 	mov	a,sp
      000D12 24 FC            [12] 2607 	add	a,#0xfc
      000D14 F5 81            [12] 2608 	mov	sp,a
                                   2609 ;	src/main.c:550: break;
      000D16 22               [24] 2610 	ret
                                   2611 ;	src/main.c:551: case 'k' : // up
      000D17                       2612 00117$:
                                   2613 ;	src/main.c:552: (*apu8LineFiCmd)++;
      000D17 AD 28            [24] 2614 	mov	r5,_act_by_one_key_PARM_2
      000D19 AE 29            [24] 2615 	mov	r6,(_act_by_one_key_PARM_2 + 1)
      000D1B AF 2A            [24] 2616 	mov	r7,(_act_by_one_key_PARM_2 + 2)
      000D1D 8D 82            [24] 2617 	mov	dpl,r5
      000D1F 8E 83            [24] 2618 	mov	dph,r6
      000D21 8F F0            [24] 2619 	mov	b,r7
      000D23 12 3D 2C         [24] 2620 	lcall	__gptrget
      000D26 FC               [12] 2621 	mov	r4,a
      000D27 0C               [12] 2622 	inc	r4
      000D28 8D 82            [24] 2623 	mov	dpl,r5
      000D2A 8E 83            [24] 2624 	mov	dph,r6
      000D2C 8F F0            [24] 2625 	mov	b,r7
      000D2E EC               [12] 2626 	mov	a,r4
      000D2F 12 34 06         [24] 2627 	lcall	__gptrput
                                   2628 ;	src/main.c:553: printf_fast_f("command: %d\n\r", *apu8LineFiCmd);
      000D32 7F 00            [12] 2629 	mov	r7,#0x00
      000D34 C0 04            [24] 2630 	push	ar4
      000D36 C0 07            [24] 2631 	push	ar7
      000D38 74 42            [12] 2632 	mov	a,#___str_49
      000D3A C0 E0            [24] 2633 	push	acc
      000D3C 74 40            [12] 2634 	mov	a,#(___str_49 >> 8)
      000D3E C0 E0            [24] 2635 	push	acc
      000D40 12 2E DD         [24] 2636 	lcall	_printf_fast_f
      000D43 E5 81            [12] 2637 	mov	a,sp
      000D45 24 FC            [12] 2638 	add	a,#0xfc
      000D47 F5 81            [12] 2639 	mov	sp,a
                                   2640 ;	src/main.c:554: break;
      000D49 22               [24] 2641 	ret
                                   2642 ;	src/main.c:555: case 'l' : // >>
      000D4A                       2643 00118$:
                                   2644 ;	src/main.c:556: (*apu8LineFiAddr)++;
      000D4A AD 2B            [24] 2645 	mov	r5,_act_by_one_key_PARM_3
      000D4C AE 2C            [24] 2646 	mov	r6,(_act_by_one_key_PARM_3 + 1)
      000D4E AF 2D            [24] 2647 	mov	r7,(_act_by_one_key_PARM_3 + 2)
      000D50 8D 82            [24] 2648 	mov	dpl,r5
      000D52 8E 83            [24] 2649 	mov	dph,r6
      000D54 8F F0            [24] 2650 	mov	b,r7
      000D56 12 3D 2C         [24] 2651 	lcall	__gptrget
      000D59 FC               [12] 2652 	mov	r4,a
      000D5A 0C               [12] 2653 	inc	r4
      000D5B 8D 82            [24] 2654 	mov	dpl,r5
      000D5D 8E 83            [24] 2655 	mov	dph,r6
      000D5F 8F F0            [24] 2656 	mov	b,r7
      000D61 EC               [12] 2657 	mov	a,r4
      000D62 12 34 06         [24] 2658 	lcall	__gptrput
                                   2659 ;	src/main.c:557: if (*apu8LineFiCmd == 1) {
      000D65 AA 28            [24] 2660 	mov	r2,_act_by_one_key_PARM_2
      000D67 AB 29            [24] 2661 	mov	r3,(_act_by_one_key_PARM_2 + 1)
      000D69 AC 2A            [24] 2662 	mov	r4,(_act_by_one_key_PARM_2 + 2)
      000D6B 8A 82            [24] 2663 	mov	dpl,r2
      000D6D 8B 83            [24] 2664 	mov	dph,r3
      000D6F 8C F0            [24] 2665 	mov	b,r4
      000D71 12 3D 2C         [24] 2666 	lcall	__gptrget
      000D74 FA               [12] 2667 	mov	r2,a
      000D75 BA 01 3C         [24] 2668 	cjne	r2,#0x01,00120$
                                   2669 ;	src/main.c:558: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
      000D78 8D 82            [24] 2670 	mov	dpl,r5
      000D7A 8E 83            [24] 2671 	mov	dph,r6
      000D7C 8F F0            [24] 2672 	mov	b,r7
      000D7E 12 3D 2C         [24] 2673 	lcall	__gptrget
      000D81 75 F0 04         [24] 2674 	mov	b,#0x04
      000D84 A4               [48] 2675 	mul	ab
      000D85 24 5E            [12] 2676 	add	a,#_gpu32UartSpeed
      000D87 F5 82            [12] 2677 	mov	dpl,a
      000D89 74 00            [12] 2678 	mov	a,#(_gpu32UartSpeed >> 8)
      000D8B 35 F0            [12] 2679 	addc	a,b
      000D8D F5 83            [12] 2680 	mov	dph,a
      000D8F E0               [24] 2681 	movx	a,@dptr
      000D90 F9               [12] 2682 	mov	r1,a
      000D91 A3               [24] 2683 	inc	dptr
      000D92 E0               [24] 2684 	movx	a,@dptr
      000D93 FA               [12] 2685 	mov	r2,a
      000D94 A3               [24] 2686 	inc	dptr
      000D95 E0               [24] 2687 	movx	a,@dptr
      000D96 FB               [12] 2688 	mov	r3,a
      000D97 A3               [24] 2689 	inc	dptr
      000D98 E0               [24] 2690 	movx	a,@dptr
      000D99 FC               [12] 2691 	mov	r4,a
      000D9A C0 01            [24] 2692 	push	ar1
      000D9C C0 02            [24] 2693 	push	ar2
      000D9E C0 03            [24] 2694 	push	ar3
      000DA0 C0 04            [24] 2695 	push	ar4
      000DA2 74 21            [12] 2696 	mov	a,#___str_47
      000DA4 C0 E0            [24] 2697 	push	acc
      000DA6 74 40            [12] 2698 	mov	a,#(___str_47 >> 8)
      000DA8 C0 E0            [24] 2699 	push	acc
      000DAA 12 2E DD         [24] 2700 	lcall	_printf_fast_f
      000DAD E5 81            [12] 2701 	mov	a,sp
      000DAF 24 FA            [12] 2702 	add	a,#0xfa
      000DB1 F5 81            [12] 2703 	mov	sp,a
      000DB3 22               [24] 2704 	ret
      000DB4                       2705 00120$:
                                   2706 ;	src/main.c:561: printf_fast_f("address: %d\n\r", *apu8LineFiAddr);
      000DB4 8D 82            [24] 2707 	mov	dpl,r5
      000DB6 8E 83            [24] 2708 	mov	dph,r6
      000DB8 8F F0            [24] 2709 	mov	b,r7
      000DBA 12 3D 2C         [24] 2710 	lcall	__gptrget
      000DBD FD               [12] 2711 	mov	r5,a
      000DBE 7F 00            [12] 2712 	mov	r7,#0x00
      000DC0 C0 05            [24] 2713 	push	ar5
      000DC2 C0 07            [24] 2714 	push	ar7
      000DC4 74 34            [12] 2715 	mov	a,#___str_48
      000DC6 C0 E0            [24] 2716 	push	acc
      000DC8 74 40            [12] 2717 	mov	a,#(___str_48 >> 8)
      000DCA C0 E0            [24] 2718 	push	acc
      000DCC 12 2E DD         [24] 2719 	lcall	_printf_fast_f
      000DCF E5 81            [12] 2720 	mov	a,sp
      000DD1 24 FC            [12] 2721 	add	a,#0xfc
      000DD3 F5 81            [12] 2722 	mov	sp,a
                                   2723 ;	src/main.c:563: break;
      000DD5 22               [24] 2724 	ret
                                   2725 ;	src/main.c:564: case 's' :
      000DD6                       2726 00122$:
                                   2727 ;	src/main.c:565: switch (*apu8LineFiCmd) {
      000DD6 AD 28            [24] 2728 	mov	r5,_act_by_one_key_PARM_2
      000DD8 AE 29            [24] 2729 	mov	r6,(_act_by_one_key_PARM_2 + 1)
      000DDA AF 2A            [24] 2730 	mov	r7,(_act_by_one_key_PARM_2 + 2)
      000DDC 8D 82            [24] 2731 	mov	dpl,r5
      000DDE 8E 83            [24] 2732 	mov	dph,r6
      000DE0 8F F0            [24] 2733 	mov	b,r7
      000DE2 12 3D 2C         [24] 2734 	lcall	__gptrget
      000DE5 FC               [12] 2735 	mov	r4,a
      000DE6 60 09            [24] 2736 	jz	00123$
      000DE8 BC 01 03         [24] 2737 	cjne	r4,#0x01,00286$
      000DEB 02 0E 84         [24] 2738 	ljmp	00124$
      000DEE                       2739 00286$:
      000DEE 02 0F 31         [24] 2740 	ljmp	00125$
                                   2741 ;	src/main.c:566: case 0 : // address setting
      000DF1                       2742 00123$:
                                   2743 ;	src/main.c:567: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
      000DF1 85 2B 2E         [24] 2744 	mov	_act_by_one_key_sloc0_1_0,_act_by_one_key_PARM_3
      000DF4 85 2C 2F         [24] 2745 	mov	(_act_by_one_key_sloc0_1_0 + 1),(_act_by_one_key_PARM_3 + 1)
      000DF7 85 2D 30         [24] 2746 	mov	(_act_by_one_key_sloc0_1_0 + 2),(_act_by_one_key_PARM_3 + 2)
      000DFA 85 2E 82         [24] 2747 	mov	dpl,_act_by_one_key_sloc0_1_0
      000DFD 85 2F 83         [24] 2748 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000E00 85 30 F0         [24] 2749 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000E03 12 3D 2C         [24] 2750 	lcall	__gptrget
      000E06 C4               [12] 2751 	swap	a
      000E07 54 F0            [12] 2752 	anl	a,#0xf0
      000E09 F8               [12] 2753 	mov	r0,a
      000E0A 53 00 F0         [24] 2754 	anl	ar0,#0xf0
      000E0D 74 0F            [12] 2755 	mov	a,#0x0f
      000E0F 5C               [12] 2756 	anl	a,r4
      000E10 48               [12] 2757 	orl	a,r0
      000E11 F5 82            [12] 2758 	mov	dpl,a
      000E13 C0 07            [24] 2759 	push	ar7
      000E15 C0 06            [24] 2760 	push	ar6
      000E17 C0 05            [24] 2761 	push	ar5
      000E19 12 21 D2         [24] 2762 	lcall	_send_octet_to_linefi
      000E1C D0 05            [24] 2763 	pop	ar5
      000E1E D0 06            [24] 2764 	pop	ar6
      000E20 D0 07            [24] 2765 	pop	ar7
                                   2766 ;	src/main.c:568: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
      000E22 85 2E 82         [24] 2767 	mov	dpl,_act_by_one_key_sloc0_1_0
      000E25 85 2F 83         [24] 2768 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000E28 85 30 F0         [24] 2769 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000E2B 12 3D 2C         [24] 2770 	lcall	__gptrget
      000E2E F8               [12] 2771 	mov	r0,a
      000E2F E4               [12] 2772 	clr	a
      000E30 C8               [12] 2773 	xch	a,r0
      000E31 C4               [12] 2774 	swap	a
      000E32 C8               [12] 2775 	xch	a,r0
      000E33 68               [12] 2776 	xrl	a,r0
      000E34 C8               [12] 2777 	xch	a,r0
      000E35 54 F0            [12] 2778 	anl	a,#0xf0
      000E37 C8               [12] 2779 	xch	a,r0
      000E38 68               [12] 2780 	xrl	a,r0
      000E39 FB               [12] 2781 	mov	r3,a
      000E3A 8D 82            [24] 2782 	mov	dpl,r5
      000E3C 8E 83            [24] 2783 	mov	dph,r6
      000E3E 8F F0            [24] 2784 	mov	b,r7
      000E40 12 3D 2C         [24] 2785 	lcall	__gptrget
      000E43 7A 00            [12] 2786 	mov	r2,#0x00
      000E45 42 00            [12] 2787 	orl	ar0,a
      000E47 EA               [12] 2788 	mov	a,r2
      000E48 42 03            [12] 2789 	orl	ar3,a
      000E4A C0 00            [24] 2790 	push	ar0
      000E4C C0 03            [24] 2791 	push	ar3
      000E4E 74 50            [12] 2792 	mov	a,#___str_50
      000E50 C0 E0            [24] 2793 	push	acc
      000E52 74 40            [12] 2794 	mov	a,#(___str_50 >> 8)
      000E54 C0 E0            [24] 2795 	push	acc
      000E56 12 2E DD         [24] 2796 	lcall	_printf_fast_f
      000E59 E5 81            [12] 2797 	mov	a,sp
      000E5B 24 FC            [12] 2798 	add	a,#0xfc
      000E5D F5 81            [12] 2799 	mov	sp,a
                                   2800 ;	src/main.c:569: printf_fast_f("address: 0x%d:\n\r", *apu8LineFiAddr);
      000E5F 85 2E 82         [24] 2801 	mov	dpl,_act_by_one_key_sloc0_1_0
      000E62 85 2F 83         [24] 2802 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000E65 85 30 F0         [24] 2803 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000E68 12 3D 2C         [24] 2804 	lcall	__gptrget
      000E6B FB               [12] 2805 	mov	r3,a
      000E6C 7A 00            [12] 2806 	mov	r2,#0x00
      000E6E C0 03            [24] 2807 	push	ar3
      000E70 C0 02            [24] 2808 	push	ar2
      000E72 74 68            [12] 2809 	mov	a,#___str_51
      000E74 C0 E0            [24] 2810 	push	acc
      000E76 74 40            [12] 2811 	mov	a,#(___str_51 >> 8)
      000E78 C0 E0            [24] 2812 	push	acc
      000E7A 12 2E DD         [24] 2813 	lcall	_printf_fast_f
      000E7D E5 81            [12] 2814 	mov	a,sp
      000E7F 24 FC            [12] 2815 	add	a,#0xfc
      000E81 F5 81            [12] 2816 	mov	sp,a
                                   2817 ;	src/main.c:570: break;
      000E83 22               [24] 2818 	ret
                                   2819 ;	src/main.c:571: case 1 : // uart speed setting
      000E84                       2820 00124$:
                                   2821 ;	src/main.c:572: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
      000E84 85 2B 2E         [24] 2822 	mov	_act_by_one_key_sloc0_1_0,_act_by_one_key_PARM_3
      000E87 85 2C 2F         [24] 2823 	mov	(_act_by_one_key_sloc0_1_0 + 1),(_act_by_one_key_PARM_3 + 1)
      000E8A 85 2D 30         [24] 2824 	mov	(_act_by_one_key_sloc0_1_0 + 2),(_act_by_one_key_PARM_3 + 2)
      000E8D 85 2E 82         [24] 2825 	mov	dpl,_act_by_one_key_sloc0_1_0
      000E90 85 2F 83         [24] 2826 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000E93 85 30 F0         [24] 2827 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000E96 12 3D 2C         [24] 2828 	lcall	__gptrget
      000E99 C4               [12] 2829 	swap	a
      000E9A 54 F0            [12] 2830 	anl	a,#0xf0
      000E9C F8               [12] 2831 	mov	r0,a
      000E9D 53 00 F0         [24] 2832 	anl	ar0,#0xf0
      000EA0 74 0F            [12] 2833 	mov	a,#0x0f
      000EA2 5C               [12] 2834 	anl	a,r4
      000EA3 48               [12] 2835 	orl	a,r0
      000EA4 F5 82            [12] 2836 	mov	dpl,a
      000EA6 C0 07            [24] 2837 	push	ar7
      000EA8 C0 06            [24] 2838 	push	ar6
      000EAA C0 05            [24] 2839 	push	ar5
      000EAC 12 21 D2         [24] 2840 	lcall	_send_octet_to_linefi
      000EAF D0 05            [24] 2841 	pop	ar5
      000EB1 D0 06            [24] 2842 	pop	ar6
      000EB3 D0 07            [24] 2843 	pop	ar7
                                   2844 ;	src/main.c:573: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
      000EB5 85 2E 82         [24] 2845 	mov	dpl,_act_by_one_key_sloc0_1_0
      000EB8 85 2F 83         [24] 2846 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000EBB 85 30 F0         [24] 2847 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000EBE 12 3D 2C         [24] 2848 	lcall	__gptrget
      000EC1 F8               [12] 2849 	mov	r0,a
      000EC2 E4               [12] 2850 	clr	a
      000EC3 C8               [12] 2851 	xch	a,r0
      000EC4 C4               [12] 2852 	swap	a
      000EC5 C8               [12] 2853 	xch	a,r0
      000EC6 68               [12] 2854 	xrl	a,r0
      000EC7 C8               [12] 2855 	xch	a,r0
      000EC8 54 F0            [12] 2856 	anl	a,#0xf0
      000ECA C8               [12] 2857 	xch	a,r0
      000ECB 68               [12] 2858 	xrl	a,r0
      000ECC FB               [12] 2859 	mov	r3,a
      000ECD 8D 82            [24] 2860 	mov	dpl,r5
      000ECF 8E 83            [24] 2861 	mov	dph,r6
      000ED1 8F F0            [24] 2862 	mov	b,r7
      000ED3 12 3D 2C         [24] 2863 	lcall	__gptrget
      000ED6 7A 00            [12] 2864 	mov	r2,#0x00
      000ED8 42 00            [12] 2865 	orl	ar0,a
      000EDA EA               [12] 2866 	mov	a,r2
      000EDB 42 03            [12] 2867 	orl	ar3,a
      000EDD C0 00            [24] 2868 	push	ar0
      000EDF C0 03            [24] 2869 	push	ar3
      000EE1 74 50            [12] 2870 	mov	a,#___str_50
      000EE3 C0 E0            [24] 2871 	push	acc
      000EE5 74 40            [12] 2872 	mov	a,#(___str_50 >> 8)
      000EE7 C0 E0            [24] 2873 	push	acc
      000EE9 12 2E DD         [24] 2874 	lcall	_printf_fast_f
      000EEC E5 81            [12] 2875 	mov	a,sp
      000EEE 24 FC            [12] 2876 	add	a,#0xfc
      000EF0 F5 81            [12] 2877 	mov	sp,a
                                   2878 ;	src/main.c:574: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
      000EF2 85 2E 82         [24] 2879 	mov	dpl,_act_by_one_key_sloc0_1_0
      000EF5 85 2F 83         [24] 2880 	mov	dph,(_act_by_one_key_sloc0_1_0 + 1)
      000EF8 85 30 F0         [24] 2881 	mov	b,(_act_by_one_key_sloc0_1_0 + 2)
      000EFB 12 3D 2C         [24] 2882 	lcall	__gptrget
      000EFE 75 F0 04         [24] 2883 	mov	b,#0x04
      000F01 A4               [48] 2884 	mul	ab
      000F02 24 5E            [12] 2885 	add	a,#_gpu32UartSpeed
      000F04 F5 82            [12] 2886 	mov	dpl,a
      000F06 74 00            [12] 2887 	mov	a,#(_gpu32UartSpeed >> 8)
      000F08 35 F0            [12] 2888 	addc	a,b
      000F0A F5 83            [12] 2889 	mov	dph,a
      000F0C E0               [24] 2890 	movx	a,@dptr
      000F0D F8               [12] 2891 	mov	r0,a
      000F0E A3               [24] 2892 	inc	dptr
      000F0F E0               [24] 2893 	movx	a,@dptr
      000F10 F9               [12] 2894 	mov	r1,a
      000F11 A3               [24] 2895 	inc	dptr
      000F12 E0               [24] 2896 	movx	a,@dptr
      000F13 FA               [12] 2897 	mov	r2,a
      000F14 A3               [24] 2898 	inc	dptr
      000F15 E0               [24] 2899 	movx	a,@dptr
      000F16 FB               [12] 2900 	mov	r3,a
      000F17 C0 00            [24] 2901 	push	ar0
      000F19 C0 01            [24] 2902 	push	ar1
      000F1B C0 02            [24] 2903 	push	ar2
      000F1D C0 03            [24] 2904 	push	ar3
      000F1F 74 21            [12] 2905 	mov	a,#___str_47
      000F21 C0 E0            [24] 2906 	push	acc
      000F23 74 40            [12] 2907 	mov	a,#(___str_47 >> 8)
      000F25 C0 E0            [24] 2908 	push	acc
      000F27 12 2E DD         [24] 2909 	lcall	_printf_fast_f
      000F2A E5 81            [12] 2910 	mov	a,sp
      000F2C 24 FA            [12] 2911 	add	a,#0xfa
      000F2E F5 81            [12] 2912 	mov	sp,a
                                   2913 ;	src/main.c:575: break;
      000F30 22               [24] 2914 	ret
                                   2915 ;	src/main.c:576: default :
      000F31                       2916 00125$:
                                   2917 ;	src/main.c:577: send_octet_to_linefi((((*apu8LineFiAddr)<<4)&0xF0) | (*apu8LineFiCmd)&0x0F);
      000F31 A9 2B            [24] 2918 	mov	r1,_act_by_one_key_PARM_3
      000F33 AA 2C            [24] 2919 	mov	r2,(_act_by_one_key_PARM_3 + 1)
      000F35 AB 2D            [24] 2920 	mov	r3,(_act_by_one_key_PARM_3 + 2)
      000F37 89 82            [24] 2921 	mov	dpl,r1
      000F39 8A 83            [24] 2922 	mov	dph,r2
      000F3B 8B F0            [24] 2923 	mov	b,r3
      000F3D 12 3D 2C         [24] 2924 	lcall	__gptrget
      000F40 C4               [12] 2925 	swap	a
      000F41 54 F0            [12] 2926 	anl	a,#0xf0
      000F43 F8               [12] 2927 	mov	r0,a
      000F44 53 00 F0         [24] 2928 	anl	ar0,#0xf0
      000F47 74 0F            [12] 2929 	mov	a,#0x0f
      000F49 5C               [12] 2930 	anl	a,r4
      000F4A 48               [12] 2931 	orl	a,r0
      000F4B F5 82            [12] 2932 	mov	dpl,a
      000F4D C0 07            [24] 2933 	push	ar7
      000F4F C0 06            [24] 2934 	push	ar6
      000F51 C0 05            [24] 2935 	push	ar5
      000F53 C0 03            [24] 2936 	push	ar3
      000F55 C0 02            [24] 2937 	push	ar2
      000F57 C0 01            [24] 2938 	push	ar1
      000F59 12 21 D2         [24] 2939 	lcall	_send_octet_to_linefi
      000F5C D0 01            [24] 2940 	pop	ar1
      000F5E D0 02            [24] 2941 	pop	ar2
      000F60 D0 03            [24] 2942 	pop	ar3
      000F62 D0 05            [24] 2943 	pop	ar5
      000F64 D0 06            [24] 2944 	pop	ar6
      000F66 D0 07            [24] 2945 	pop	ar7
                                   2946 ;	src/main.c:578: printf_fast_f("LineFi Sending: 0x%x:\n\r", ((*apu8LineFiAddr)<<4) | *apu8LineFiCmd);
      000F68 89 82            [24] 2947 	mov	dpl,r1
      000F6A 8A 83            [24] 2948 	mov	dph,r2
      000F6C 8B F0            [24] 2949 	mov	b,r3
      000F6E 12 3D 2C         [24] 2950 	lcall	__gptrget
      000F71 F9               [12] 2951 	mov	r1,a
      000F72 E4               [12] 2952 	clr	a
      000F73 C9               [12] 2953 	xch	a,r1
      000F74 C4               [12] 2954 	swap	a
      000F75 C9               [12] 2955 	xch	a,r1
      000F76 69               [12] 2956 	xrl	a,r1
      000F77 C9               [12] 2957 	xch	a,r1
      000F78 54 F0            [12] 2958 	anl	a,#0xf0
      000F7A C9               [12] 2959 	xch	a,r1
      000F7B 69               [12] 2960 	xrl	a,r1
      000F7C FC               [12] 2961 	mov	r4,a
      000F7D 8D 82            [24] 2962 	mov	dpl,r5
      000F7F 8E 83            [24] 2963 	mov	dph,r6
      000F81 8F F0            [24] 2964 	mov	b,r7
      000F83 12 3D 2C         [24] 2965 	lcall	__gptrget
      000F86 7F 00            [12] 2966 	mov	r7,#0x00
      000F88 42 01            [12] 2967 	orl	ar1,a
      000F8A EF               [12] 2968 	mov	a,r7
      000F8B 42 04            [12] 2969 	orl	ar4,a
      000F8D C0 01            [24] 2970 	push	ar1
      000F8F C0 04            [24] 2971 	push	ar4
      000F91 74 50            [12] 2972 	mov	a,#___str_50
      000F93 C0 E0            [24] 2973 	push	acc
      000F95 74 40            [12] 2974 	mov	a,#(___str_50 >> 8)
      000F97 C0 E0            [24] 2975 	push	acc
      000F99 12 2E DD         [24] 2976 	lcall	_printf_fast_f
      000F9C E5 81            [12] 2977 	mov	a,sp
      000F9E 24 FC            [12] 2978 	add	a,#0xfc
      000FA0 F5 81            [12] 2979 	mov	sp,a
                                   2980 ;	src/main.c:581: break;
      000FA2 22               [24] 2981 	ret
                                   2982 ;	src/main.c:582: case 'u' :
      000FA3                       2983 00127$:
                                   2984 ;	src/main.c:583: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[*apu8LineFiAddr]);
      000FA3 AD 2B            [24] 2985 	mov	r5,_act_by_one_key_PARM_3
      000FA5 AE 2C            [24] 2986 	mov	r6,(_act_by_one_key_PARM_3 + 1)
      000FA7 AF 2D            [24] 2987 	mov	r7,(_act_by_one_key_PARM_3 + 2)
      000FA9 8D 82            [24] 2988 	mov	dpl,r5
      000FAB 8E 83            [24] 2989 	mov	dph,r6
      000FAD 8F F0            [24] 2990 	mov	b,r7
      000FAF 12 3D 2C         [24] 2991 	lcall	__gptrget
      000FB2 75 F0 04         [24] 2992 	mov	b,#0x04
      000FB5 A4               [48] 2993 	mul	ab
      000FB6 24 5E            [12] 2994 	add	a,#_gpu32UartSpeed
      000FB8 F5 82            [12] 2995 	mov	dpl,a
      000FBA 74 00            [12] 2996 	mov	a,#(_gpu32UartSpeed >> 8)
      000FBC 35 F0            [12] 2997 	addc	a,b
      000FBE F5 83            [12] 2998 	mov	dph,a
      000FC0 E0               [24] 2999 	movx	a,@dptr
      000FC1 F9               [12] 3000 	mov	r1,a
      000FC2 A3               [24] 3001 	inc	dptr
      000FC3 E0               [24] 3002 	movx	a,@dptr
      000FC4 FA               [12] 3003 	mov	r2,a
      000FC5 A3               [24] 3004 	inc	dptr
      000FC6 E0               [24] 3005 	movx	a,@dptr
      000FC7 FB               [12] 3006 	mov	r3,a
      000FC8 A3               [24] 3007 	inc	dptr
      000FC9 E0               [24] 3008 	movx	a,@dptr
      000FCA FC               [12] 3009 	mov	r4,a
      000FCB C0 07            [24] 3010 	push	ar7
      000FCD C0 06            [24] 3011 	push	ar6
      000FCF C0 05            [24] 3012 	push	ar5
      000FD1 C0 01            [24] 3013 	push	ar1
      000FD3 C0 02            [24] 3014 	push	ar2
      000FD5 C0 03            [24] 3015 	push	ar3
      000FD7 C0 04            [24] 3016 	push	ar4
      000FD9 74 21            [12] 3017 	mov	a,#___str_47
      000FDB C0 E0            [24] 3018 	push	acc
      000FDD 74 40            [12] 3019 	mov	a,#(___str_47 >> 8)
      000FDF C0 E0            [24] 3020 	push	acc
      000FE1 12 2E DD         [24] 3021 	lcall	_printf_fast_f
      000FE4 E5 81            [12] 3022 	mov	a,sp
      000FE6 24 FA            [12] 3023 	add	a,#0xfa
      000FE8 F5 81            [12] 3024 	mov	sp,a
      000FEA D0 05            [24] 3025 	pop	ar5
      000FEC D0 06            [24] 3026 	pop	ar6
      000FEE D0 07            [24] 3027 	pop	ar7
                                   3028 ;	src/main.c:584: InitialUART1_Timer3(gpu32UartSpeed[*apu8LineFiAddr]);
      000FF0 8D 82            [24] 3029 	mov	dpl,r5
      000FF2 8E 83            [24] 3030 	mov	dph,r6
      000FF4 8F F0            [24] 3031 	mov	b,r7
      000FF6 12 3D 2C         [24] 3032 	lcall	__gptrget
      000FF9 75 F0 04         [24] 3033 	mov	b,#0x04
      000FFC A4               [48] 3034 	mul	ab
      000FFD 24 5E            [12] 3035 	add	a,#_gpu32UartSpeed
      000FFF F5 82            [12] 3036 	mov	dpl,a
      001001 74 00            [12] 3037 	mov	a,#(_gpu32UartSpeed >> 8)
      001003 35 F0            [12] 3038 	addc	a,b
      001005 F5 83            [12] 3039 	mov	dph,a
      001007 E0               [24] 3040 	movx	a,@dptr
      001008 FC               [12] 3041 	mov	r4,a
      001009 A3               [24] 3042 	inc	dptr
      00100A E0               [24] 3043 	movx	a,@dptr
      00100B FD               [12] 3044 	mov	r5,a
      00100C A3               [24] 3045 	inc	dptr
      00100D E0               [24] 3046 	movx	a,@dptr
      00100E FE               [12] 3047 	mov	r6,a
      00100F A3               [24] 3048 	inc	dptr
      001010 E0               [24] 3049 	movx	a,@dptr
      001011 8C 82            [24] 3050 	mov	dpl,r4
      001013 8D 83            [24] 3051 	mov	dph,r5
      001015 8E F0            [24] 3052 	mov	b,r6
                                   3053 ;	src/main.c:585: break;
      001017 02 29 DA         [24] 3054 	ljmp	_InitialUART1_Timer3
                                   3055 ;	src/main.c:587: case 'S' :
      00101A                       3056 00128$:
                                   3057 ;	src/main.c:588: send_octet_to_linefi(u8Data);
      00101A 90 00 97         [24] 3058 	mov	dptr,#_act_by_one_key_u8Data_65536_88
      00101D E0               [24] 3059 	movx	a,@dptr
      00101E F5 82            [12] 3060 	mov	dpl,a
      001020 12 21 D2         [24] 3061 	lcall	_send_octet_to_linefi
                                   3062 ;	src/main.c:589: printf_fast_f("LineFi Sending: %d(0x%x)\n\r", u8Data, u8Data);
      001023 90 00 97         [24] 3063 	mov	dptr,#_act_by_one_key_u8Data_65536_88
      001026 E0               [24] 3064 	movx	a,@dptr
      001027 FF               [12] 3065 	mov	r7,a
      001028 7E 00            [12] 3066 	mov	r6,#0x00
      00102A C0 07            [24] 3067 	push	ar7
      00102C C0 06            [24] 3068 	push	ar6
      00102E C0 07            [24] 3069 	push	ar7
      001030 C0 06            [24] 3070 	push	ar6
      001032 74 79            [12] 3071 	mov	a,#___str_52
      001034 C0 E0            [24] 3072 	push	acc
      001036 74 40            [12] 3073 	mov	a,#(___str_52 >> 8)
      001038 C0 E0            [24] 3074 	push	acc
      00103A 12 2E DD         [24] 3075 	lcall	_printf_fast_f
      00103D E5 81            [12] 3076 	mov	a,sp
      00103F 24 FA            [12] 3077 	add	a,#0xfa
      001041 F5 81            [12] 3078 	mov	sp,a
                                   3079 ;	src/main.c:590: break;
      001043 22               [24] 3080 	ret
                                   3081 ;	src/main.c:591: case '+' :
      001044                       3082 00129$:
                                   3083 ;	src/main.c:592: u8Data++;
      001044 90 00 97         [24] 3084 	mov	dptr,#_act_by_one_key_u8Data_65536_88
      001047 E0               [24] 3085 	movx	a,@dptr
      001048 24 01            [12] 3086 	add	a,#0x01
      00104A F0               [24] 3087 	movx	@dptr,a
                                   3088 ;	src/main.c:593: printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
      00104B E0               [24] 3089 	movx	a,@dptr
      00104C FF               [12] 3090 	mov	r7,a
      00104D 7E 00            [12] 3091 	mov	r6,#0x00
      00104F C0 07            [24] 3092 	push	ar7
      001051 C0 06            [24] 3093 	push	ar6
      001053 C0 07            [24] 3094 	push	ar7
      001055 C0 06            [24] 3095 	push	ar6
      001057 74 94            [12] 3096 	mov	a,#___str_53
      001059 C0 E0            [24] 3097 	push	acc
      00105B 74 40            [12] 3098 	mov	a,#(___str_53 >> 8)
      00105D C0 E0            [24] 3099 	push	acc
      00105F 12 2E DD         [24] 3100 	lcall	_printf_fast_f
      001062 E5 81            [12] 3101 	mov	a,sp
      001064 24 FA            [12] 3102 	add	a,#0xfa
      001066 F5 81            [12] 3103 	mov	sp,a
                                   3104 ;	src/main.c:594: break;
      001068 22               [24] 3105 	ret
                                   3106 ;	src/main.c:595: case '-' :
      001069                       3107 00130$:
                                   3108 ;	src/main.c:596: u8Data--;
      001069 90 00 97         [24] 3109 	mov	dptr,#_act_by_one_key_u8Data_65536_88
      00106C E0               [24] 3110 	movx	a,@dptr
      00106D 14               [12] 3111 	dec	a
      00106E F0               [24] 3112 	movx	@dptr,a
                                   3113 ;	src/main.c:597: printf_fast_f("send data %d(0x%x)\n\r", u8Data, u8Data);
      00106F E0               [24] 3114 	movx	a,@dptr
      001070 FF               [12] 3115 	mov	r7,a
      001071 7E 00            [12] 3116 	mov	r6,#0x00
      001073 C0 07            [24] 3117 	push	ar7
      001075 C0 06            [24] 3118 	push	ar6
      001077 C0 07            [24] 3119 	push	ar7
      001079 C0 06            [24] 3120 	push	ar6
      00107B 74 94            [12] 3121 	mov	a,#___str_53
      00107D C0 E0            [24] 3122 	push	acc
      00107F 74 40            [12] 3123 	mov	a,#(___str_53 >> 8)
      001081 C0 E0            [24] 3124 	push	acc
      001083 12 2E DD         [24] 3125 	lcall	_printf_fast_f
      001086 E5 81            [12] 3126 	mov	a,sp
      001088 24 FA            [12] 3127 	add	a,#0xfa
      00108A F5 81            [12] 3128 	mov	sp,a
                                   3129 ;	src/main.c:598: break;
      00108C 22               [24] 3130 	ret
                                   3131 ;	src/main.c:600: case 'a' :
      00108D                       3132 00131$:
                                   3133 ;	src/main.c:601: send_octet_to_linefi(0x11);
      00108D 75 82 11         [24] 3134 	mov	dpl,#0x11
                                   3135 ;	src/main.c:602: break;
      001090 02 21 D2         [24] 3136 	ljmp	_send_octet_to_linefi
                                   3137 ;	src/main.c:603: case 'b' :
      001093                       3138 00132$:
                                   3139 ;	src/main.c:604: send_octet_to_linefi(0x12);
      001093 75 82 12         [24] 3140 	mov	dpl,#0x12
                                   3141 ;	src/main.c:605: break;
      001096 02 21 D2         [24] 3142 	ljmp	_send_octet_to_linefi
                                   3143 ;	src/main.c:606: case 'c' :
      001099                       3144 00133$:
                                   3145 ;	src/main.c:607: send_octet_to_linefi(0x13);
      001099 75 82 13         [24] 3146 	mov	dpl,#0x13
                                   3147 ;	src/main.c:608: break;
                                   3148 ;	src/main.c:609: case 'H' :
                                   3149 ;	src/main.c:610: print_help();
                                   3150 ;	src/main.c:611: break;
      00109C 02 21 D2         [24] 3151 	ljmp	_send_octet_to_linefi
                                   3152 ;	src/main.c:612: case 'R' :
      00109F                       3153 00135$:
                                   3154 ;	src/main.c:613: send_octet_to_linefi(((*apu8LineFiAddr)<<4)|1);
      00109F AD 2B            [24] 3155 	mov	r5,_act_by_one_key_PARM_3
      0010A1 AE 2C            [24] 3156 	mov	r6,(_act_by_one_key_PARM_3 + 1)
      0010A3 AF 2D            [24] 3157 	mov	r7,(_act_by_one_key_PARM_3 + 2)
      0010A5 8D 82            [24] 3158 	mov	dpl,r5
      0010A7 8E 83            [24] 3159 	mov	dph,r6
      0010A9 8F F0            [24] 3160 	mov	b,r7
      0010AB 12 3D 2C         [24] 3161 	lcall	__gptrget
      0010AE C4               [12] 3162 	swap	a
      0010AF 54 F0            [12] 3163 	anl	a,#0xf0
      0010B1 FC               [12] 3164 	mov	r4,a
      0010B2 74 01            [12] 3165 	mov	a,#0x01
      0010B4 4C               [12] 3166 	orl	a,r4
      0010B5 F5 82            [12] 3167 	mov	dpl,a
      0010B7 C0 07            [24] 3168 	push	ar7
      0010B9 C0 06            [24] 3169 	push	ar6
      0010BB C0 05            [24] 3170 	push	ar5
      0010BD 12 21 D2         [24] 3171 	lcall	_send_octet_to_linefi
      0010C0 D0 05            [24] 3172 	pop	ar5
      0010C2 D0 06            [24] 3173 	pop	ar6
      0010C4 D0 07            [24] 3174 	pop	ar7
                                   3175 ;	src/main.c:614: printf_fast_f("Rotate!!:%d \n\r", *apu8LineFiAddr);
      0010C6 8D 82            [24] 3176 	mov	dpl,r5
      0010C8 8E 83            [24] 3177 	mov	dph,r6
      0010CA 8F F0            [24] 3178 	mov	b,r7
      0010CC 12 3D 2C         [24] 3179 	lcall	__gptrget
      0010CF FD               [12] 3180 	mov	r5,a
      0010D0 7F 00            [12] 3181 	mov	r7,#0x00
      0010D2 C0 05            [24] 3182 	push	ar5
      0010D4 C0 07            [24] 3183 	push	ar7
      0010D6 74 A9            [12] 3184 	mov	a,#___str_54
      0010D8 C0 E0            [24] 3185 	push	acc
      0010DA 74 40            [12] 3186 	mov	a,#(___str_54 >> 8)
      0010DC C0 E0            [24] 3187 	push	acc
      0010DE 12 2E DD         [24] 3188 	lcall	_printf_fast_f
      0010E1 E5 81            [12] 3189 	mov	a,sp
      0010E3 24 FC            [12] 3190 	add	a,#0xfc
      0010E5 F5 81            [12] 3191 	mov	sp,a
                                   3192 ;	src/main.c:615: break;
                                   3193 ;	src/main.c:616: case 'r' :
      0010E7 22               [24] 3194 	ret
      0010E8                       3195 00136$:
                                   3196 ;	src/main.c:617: send_octet_to_linefi(((*apu8LineFiAddr)<<4)|0);
      0010E8 AD 2B            [24] 3197 	mov	r5,_act_by_one_key_PARM_3
      0010EA AE 2C            [24] 3198 	mov	r6,(_act_by_one_key_PARM_3 + 1)
      0010EC AF 2D            [24] 3199 	mov	r7,(_act_by_one_key_PARM_3 + 2)
      0010EE 8D 82            [24] 3200 	mov	dpl,r5
      0010F0 8E 83            [24] 3201 	mov	dph,r6
      0010F2 8F F0            [24] 3202 	mov	b,r7
      0010F4 12 3D 2C         [24] 3203 	lcall	__gptrget
      0010F7 C4               [12] 3204 	swap	a
      0010F8 54 F0            [12] 3205 	anl	a,#0xf0
      0010FA F5 82            [12] 3206 	mov	dpl,a
      0010FC C0 07            [24] 3207 	push	ar7
      0010FE C0 06            [24] 3208 	push	ar6
      001100 C0 05            [24] 3209 	push	ar5
      001102 12 21 D2         [24] 3210 	lcall	_send_octet_to_linefi
      001105 D0 05            [24] 3211 	pop	ar5
      001107 D0 06            [24] 3212 	pop	ar6
      001109 D0 07            [24] 3213 	pop	ar7
                                   3214 ;	src/main.c:618: printf_fast_f("Stop    :%d \n\r", *apu8LineFiAddr);
      00110B 8D 82            [24] 3215 	mov	dpl,r5
      00110D 8E 83            [24] 3216 	mov	dph,r6
      00110F 8F F0            [24] 3217 	mov	b,r7
      001111 12 3D 2C         [24] 3218 	lcall	__gptrget
      001114 FD               [12] 3219 	mov	r5,a
      001115 7F 00            [12] 3220 	mov	r7,#0x00
      001117 C0 05            [24] 3221 	push	ar5
      001119 C0 07            [24] 3222 	push	ar7
      00111B 74 B8            [12] 3223 	mov	a,#___str_55
      00111D C0 E0            [24] 3224 	push	acc
      00111F 74 40            [12] 3225 	mov	a,#(___str_55 >> 8)
      001121 C0 E0            [24] 3226 	push	acc
      001123 12 2E DD         [24] 3227 	lcall	_printf_fast_f
      001126 E5 81            [12] 3228 	mov	a,sp
      001128 24 FC            [12] 3229 	add	a,#0xfc
      00112A F5 81            [12] 3230 	mov	sp,a
                                   3231 ;	src/main.c:620: } //switch(au8RxUART)
                                   3232 ;	src/main.c:621: }
      00112C 22               [24] 3233 	ret
                                   3234 ;------------------------------------------------------------
                                   3235 ;Allocation info for local variables in function 'start_aloha'
                                   3236 ;------------------------------------------------------------
                                   3237 ;apcStr                    Allocated to registers r5 r6 r7 
                                   3238 ;------------------------------------------------------------
                                   3239 ;	src/main.c:637: void start_aloha(linefi_packet_t * apcStr) 
                                   3240 ;	-----------------------------------------
                                   3241 ;	 function start_aloha
                                   3242 ;	-----------------------------------------
      00112D                       3243 _start_aloha:
      00112D AD 82            [24] 3244 	mov	r5,dpl
      00112F AE 83            [24] 3245 	mov	r6,dph
      001131 AF F0            [24] 3246 	mov	r7,b
                                   3247 ;	src/main.c:639: apcStr->u8Type = 100;
      001133 74 01            [12] 3248 	mov	a,#0x01
      001135 2D               [12] 3249 	add	a,r5
      001136 FA               [12] 3250 	mov	r2,a
      001137 E4               [12] 3251 	clr	a
      001138 3E               [12] 3252 	addc	a,r6
      001139 FB               [12] 3253 	mov	r3,a
      00113A 8F 04            [24] 3254 	mov	ar4,r7
      00113C 8A 82            [24] 3255 	mov	dpl,r2
      00113E 8B 83            [24] 3256 	mov	dph,r3
      001140 8C F0            [24] 3257 	mov	b,r4
      001142 74 64            [12] 3258 	mov	a,#0x64
      001144 12 34 06         [24] 3259 	lcall	__gptrput
                                   3260 ;	src/main.c:640: add_crc_linefi_packet_packet(apcStr);
      001147 8D 82            [24] 3261 	mov	dpl,r5
      001149 8E 83            [24] 3262 	mov	dph,r6
      00114B 8F F0            [24] 3263 	mov	b,r7
      00114D C0 07            [24] 3264 	push	ar7
      00114F C0 06            [24] 3265 	push	ar6
      001151 C0 05            [24] 3266 	push	ar5
      001153 12 21 75         [24] 3267 	lcall	_add_crc_linefi_packet_packet
      001156 D0 05            [24] 3268 	pop	ar5
      001158 D0 06            [24] 3269 	pop	ar6
      00115A D0 07            [24] 3270 	pop	ar7
                                   3271 ;	src/main.c:641: send_linefi_packet(apcStr);
      00115C 8D 82            [24] 3272 	mov	dpl,r5
      00115E 8E 83            [24] 3273 	mov	dph,r6
      001160 8F F0            [24] 3274 	mov	b,r7
                                   3275 ;	src/main.c:642: }
      001162 02 21 D5         [24] 3276 	ljmp	_send_linefi_packet
                                   3277 ;------------------------------------------------------------
                                   3278 ;Allocation info for local variables in function 'send_ACK'
                                   3279 ;------------------------------------------------------------
                                   3280 ;send_apcStr               Allocated with name '_send_ACK_PARM_2'
                                   3281 ;received_apcStr           Allocated to registers r5 r6 r7 
                                   3282 ;slave_addr                Allocated with name '_send_ACK_slave_addr_65536_99'
                                   3283 ;------------------------------------------------------------
                                   3284 ;	src/main.c:643: void send_ACK(linefi_packet_t * received_apcStr, linefi_packet_t * send_apcStr)
                                   3285 ;	-----------------------------------------
                                   3286 ;	 function send_ACK
                                   3287 ;	-----------------------------------------
      001165                       3288 _send_ACK:
      001165 AD 82            [24] 3289 	mov	r5,dpl
      001167 AE 83            [24] 3290 	mov	r6,dph
      001169 AF F0            [24] 3291 	mov	r7,b
                                   3292 ;	src/main.c:645: UINT8 __xdata slave_addr = received_apcStr->u8Addr;
      00116B 74 02            [12] 3293 	mov	a,#0x02
      00116D 2D               [12] 3294 	add	a,r5
      00116E FA               [12] 3295 	mov	r2,a
      00116F E4               [12] 3296 	clr	a
      001170 3E               [12] 3297 	addc	a,r6
      001171 FB               [12] 3298 	mov	r3,a
      001172 8F 04            [24] 3299 	mov	ar4,r7
      001174 8A 82            [24] 3300 	mov	dpl,r2
      001176 8B 83            [24] 3301 	mov	dph,r3
      001178 8C F0            [24] 3302 	mov	b,r4
      00117A 12 3D 2C         [24] 3303 	lcall	__gptrget
      00117D FA               [12] 3304 	mov	r2,a
                                   3305 ;	src/main.c:646: send_apcStr->u8Ver = received_apcStr->u8Ver;
      00117E A9 31            [24] 3306 	mov	r1,_send_ACK_PARM_2
      001180 AB 32            [24] 3307 	mov	r3,(_send_ACK_PARM_2 + 1)
      001182 AC 33            [24] 3308 	mov	r4,(_send_ACK_PARM_2 + 2)
      001184 8D 82            [24] 3309 	mov	dpl,r5
      001186 8E 83            [24] 3310 	mov	dph,r6
      001188 8F F0            [24] 3311 	mov	b,r7
      00118A 12 3D 2C         [24] 3312 	lcall	__gptrget
      00118D 89 82            [24] 3313 	mov	dpl,r1
      00118F 8B 83            [24] 3314 	mov	dph,r3
      001191 8C F0            [24] 3315 	mov	b,r4
      001193 12 34 06         [24] 3316 	lcall	__gptrput
                                   3317 ;	src/main.c:647: send_apcStr->u8Addr = slave_addr;
      001196 74 02            [12] 3318 	mov	a,#0x02
      001198 29               [12] 3319 	add	a,r1
      001199 FD               [12] 3320 	mov	r5,a
      00119A E4               [12] 3321 	clr	a
      00119B 3B               [12] 3322 	addc	a,r3
      00119C FE               [12] 3323 	mov	r6,a
      00119D 8C 07            [24] 3324 	mov	ar7,r4
      00119F 8D 82            [24] 3325 	mov	dpl,r5
      0011A1 8E 83            [24] 3326 	mov	dph,r6
      0011A3 8F F0            [24] 3327 	mov	b,r7
      0011A5 EA               [12] 3328 	mov	a,r2
      0011A6 12 34 06         [24] 3329 	lcall	__gptrput
                                   3330 ;	src/main.c:648: add_crc_linefi_packet_packet(send_apcStr);
      0011A9 89 82            [24] 3331 	mov	dpl,r1
      0011AB 8B 83            [24] 3332 	mov	dph,r3
      0011AD 8C F0            [24] 3333 	mov	b,r4
      0011AF 12 21 75         [24] 3334 	lcall	_add_crc_linefi_packet_packet
                                   3335 ;	src/main.c:649: send_linefi_packet(send_apcStr);
      0011B2 85 31 82         [24] 3336 	mov	dpl,_send_ACK_PARM_2
      0011B5 85 32 83         [24] 3337 	mov	dph,(_send_ACK_PARM_2 + 1)
      0011B8 85 33 F0         [24] 3338 	mov	b,(_send_ACK_PARM_2 + 2)
                                   3339 ;	src/main.c:650: }
      0011BB 02 21 D5         [24] 3340 	ljmp	_send_linefi_packet
                                   3341 ;------------------------------------------------------------
                                   3342 ;Allocation info for local variables in function 'make_linefi_payload'
                                   3343 ;------------------------------------------------------------
                                   3344 ;au8ULTMode                Allocated with name '_make_linefi_payload_PARM_2'
                                   3345 ;au8ULTData                Allocated with name '_make_linefi_payload_PARM_3'
                                   3346 ;apu8Data                  Allocated with name '_make_linefi_payload_PARM_4'
                                   3347 ;au32LineFiUpSpeed         Allocated with name '_make_linefi_payload_au32LineFiUpSpeed_65536_100'
                                   3348 ;sloc0                     Allocated with name '_make_linefi_payload_sloc0_1_0'
                                   3349 ;------------------------------------------------------------
                                   3350 ;	src/main.c:652: void make_linefi_payload(UINT32 au32LineFiUpSpeed, UINT8 au8ULTMode, UINT8 au8ULTData, UINT8 *apu8Data)
                                   3351 ;	-----------------------------------------
                                   3352 ;	 function make_linefi_payload
                                   3353 ;	-----------------------------------------
      0011BE                       3354 _make_linefi_payload:
      0011BE 85 82 39         [24] 3355 	mov	_make_linefi_payload_au32LineFiUpSpeed_65536_100,dpl
      0011C1 85 83 3A         [24] 3356 	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1),dph
      0011C4 85 F0 3B         [24] 3357 	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2),b
      0011C7 F5 3C            [12] 3358 	mov	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 3),a
                                   3359 ;	src/main.c:654: apu8Data[0] = (au32LineFiUpSpeed>>16);
      0011C9 A9 36            [24] 3360 	mov	r1,_make_linefi_payload_PARM_4
      0011CB AA 37            [24] 3361 	mov	r2,(_make_linefi_payload_PARM_4 + 1)
      0011CD AB 38            [24] 3362 	mov	r3,(_make_linefi_payload_PARM_4 + 2)
      0011CF A8 3B            [24] 3363 	mov	r0,(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2)
      0011D1 89 82            [24] 3364 	mov	dpl,r1
      0011D3 8A 83            [24] 3365 	mov	dph,r2
      0011D5 8B F0            [24] 3366 	mov	b,r3
      0011D7 E8               [12] 3367 	mov	a,r0
      0011D8 12 34 06         [24] 3368 	lcall	__gptrput
                                   3369 ;	src/main.c:655: apu8Data[1] = (au32LineFiUpSpeed>>8);
      0011DB 74 01            [12] 3370 	mov	a,#0x01
      0011DD 29               [12] 3371 	add	a,r1
      0011DE FD               [12] 3372 	mov	r5,a
      0011DF E4               [12] 3373 	clr	a
      0011E0 3A               [12] 3374 	addc	a,r2
      0011E1 FE               [12] 3375 	mov	r6,a
      0011E2 8B 07            [24] 3376 	mov	ar7,r3
      0011E4 AC 3A            [24] 3377 	mov	r4,(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1)
      0011E6 8D 82            [24] 3378 	mov	dpl,r5
      0011E8 8E 83            [24] 3379 	mov	dph,r6
      0011EA 8F F0            [24] 3380 	mov	b,r7
      0011EC EC               [12] 3381 	mov	a,r4
      0011ED 12 34 06         [24] 3382 	lcall	__gptrput
                                   3383 ;	src/main.c:656: apu8Data[2] = (au32LineFiUpSpeed>>0);
      0011F0 74 02            [12] 3384 	mov	a,#0x02
      0011F2 29               [12] 3385 	add	a,r1
      0011F3 F5 3D            [12] 3386 	mov	_make_linefi_payload_sloc0_1_0,a
      0011F5 E4               [12] 3387 	clr	a
      0011F6 3A               [12] 3388 	addc	a,r2
      0011F7 F5 3E            [12] 3389 	mov	(_make_linefi_payload_sloc0_1_0 + 1),a
      0011F9 8B 3F            [24] 3390 	mov	(_make_linefi_payload_sloc0_1_0 + 2),r3
      0011FB AF 39            [24] 3391 	mov	r7,_make_linefi_payload_au32LineFiUpSpeed_65536_100
      0011FD 85 3D 82         [24] 3392 	mov	dpl,_make_linefi_payload_sloc0_1_0
      001200 85 3E 83         [24] 3393 	mov	dph,(_make_linefi_payload_sloc0_1_0 + 1)
      001203 85 3F F0         [24] 3394 	mov	b,(_make_linefi_payload_sloc0_1_0 + 2)
      001206 EF               [12] 3395 	mov	a,r7
      001207 12 34 06         [24] 3396 	lcall	__gptrput
                                   3397 ;	src/main.c:660: apu8Data[2]);
      00120A 7E 00            [12] 3398 	mov	r6,#0x00
                                   3399 ;	src/main.c:659: apu8Data[1],
      00120C 8C 3D            [24] 3400 	mov	_make_linefi_payload_sloc0_1_0,r4
                                   3401 ;	1-genFromRTrack replaced	mov	(_make_linefi_payload_sloc0_1_0 + 1),#0x00
      00120E 8E 3E            [24] 3402 	mov	(_make_linefi_payload_sloc0_1_0 + 1),r6
                                   3403 ;	src/main.c:658: apu8Data[0],
      001210 7D 00            [12] 3404 	mov	r5,#0x00
                                   3405 ;	src/main.c:657: printf_fast_f("%lu(%x, %x, %x)\r\n", au32LineFiUpSpeed,
      001212 C0 03            [24] 3406 	push	ar3
      001214 C0 02            [24] 3407 	push	ar2
      001216 C0 01            [24] 3408 	push	ar1
      001218 C0 07            [24] 3409 	push	ar7
      00121A C0 06            [24] 3410 	push	ar6
      00121C C0 3D            [24] 3411 	push	_make_linefi_payload_sloc0_1_0
      00121E C0 3E            [24] 3412 	push	(_make_linefi_payload_sloc0_1_0 + 1)
      001220 C0 00            [24] 3413 	push	ar0
      001222 C0 05            [24] 3414 	push	ar5
      001224 C0 39            [24] 3415 	push	_make_linefi_payload_au32LineFiUpSpeed_65536_100
      001226 C0 3A            [24] 3416 	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 1)
      001228 C0 3B            [24] 3417 	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 2)
      00122A C0 3C            [24] 3418 	push	(_make_linefi_payload_au32LineFiUpSpeed_65536_100 + 3)
      00122C 74 C7            [12] 3419 	mov	a,#___str_56
      00122E C0 E0            [24] 3420 	push	acc
      001230 74 40            [12] 3421 	mov	a,#(___str_56 >> 8)
      001232 C0 E0            [24] 3422 	push	acc
      001234 12 2E DD         [24] 3423 	lcall	_printf_fast_f
      001237 E5 81            [12] 3424 	mov	a,sp
      001239 24 F4            [12] 3425 	add	a,#0xf4
      00123B F5 81            [12] 3426 	mov	sp,a
      00123D D0 01            [24] 3427 	pop	ar1
      00123F D0 02            [24] 3428 	pop	ar2
      001241 D0 03            [24] 3429 	pop	ar3
                                   3430 ;	src/main.c:661: apu8Data[3] = au8ULTMode;
      001243 74 03            [12] 3431 	mov	a,#0x03
      001245 29               [12] 3432 	add	a,r1
      001246 FD               [12] 3433 	mov	r5,a
      001247 E4               [12] 3434 	clr	a
      001248 3A               [12] 3435 	addc	a,r2
      001249 FE               [12] 3436 	mov	r6,a
      00124A 8B 07            [24] 3437 	mov	ar7,r3
      00124C 8D 82            [24] 3438 	mov	dpl,r5
      00124E 8E 83            [24] 3439 	mov	dph,r6
      001250 8F F0            [24] 3440 	mov	b,r7
      001252 E5 34            [12] 3441 	mov	a,_make_linefi_payload_PARM_2
      001254 12 34 06         [24] 3442 	lcall	__gptrput
                                   3443 ;	src/main.c:662: apu8Data[4] = au8ULTData;
      001257 74 04            [12] 3444 	mov	a,#0x04
      001259 29               [12] 3445 	add	a,r1
      00125A F9               [12] 3446 	mov	r1,a
      00125B E4               [12] 3447 	clr	a
      00125C 3A               [12] 3448 	addc	a,r2
      00125D FA               [12] 3449 	mov	r2,a
      00125E 89 82            [24] 3450 	mov	dpl,r1
      001260 8A 83            [24] 3451 	mov	dph,r2
      001262 8B F0            [24] 3452 	mov	b,r3
      001264 E5 35            [12] 3453 	mov	a,_make_linefi_payload_PARM_3
                                   3454 ;	src/main.c:663: }
      001266 02 34 06         [24] 3455 	ljmp	__gptrput
                                   3456 ;------------------------------------------------------------
                                   3457 ;Allocation info for local variables in function 'main'
                                   3458 ;------------------------------------------------------------
                                   3459 ;u8RxBufIdx                Allocated to registers 
                                   3460 ;u8Count2                  Allocated to registers 
                                   3461 ;u8RxPktCnt                Allocated to registers 
                                   3462 ;u8PreambleCnt             Allocated to registers 
                                   3463 ;i                         Allocated to registers r6 
                                   3464 ;u8RxUART                  Allocated with name '_main_u8RxUART_65536_103'
                                   3465 ;u8RxUART1                 Allocated with name '_main_u8RxUART1_65536_103'
                                   3466 ;u16Cnt                    Allocated with name '_main_u16Cnt_65536_103'
                                   3467 ;u8OutputState             Allocated with name '_main_u8OutputState_65536_103'
                                   3468 ;u8StateRxCSC              Allocated with name '_main_u8StateRxCSC_65536_103'
                                   3469 ;u8LineFiAddr              Allocated with name '_main_u8LineFiAddr_65536_103'
                                   3470 ;u8LineFiSpeed             Allocated with name '_main_u8LineFiSpeed_65536_103'
                                   3471 ;u8LineFiCmd               Allocated with name '_main_u8LineFiCmd_65536_103'
                                   3472 ;u8PwrOnFirstFlag          Allocated with name '_main_u8PwrOnFirstFlag_65536_103'
                                   3473 ;u8SwNum                   Allocated with name '_main_u8SwNum_65536_103'
                                   3474 ;u8StatePeriodicSend       Allocated with name '_main_u8StatePeriodicSend_65536_103'
                                   3475 ;u8PSCmd                   Allocated with name '_main_u8PSCmd_65536_103'
                                   3476 ;u8StateUart0InputMode     Allocated with name '_main_u8StateUart0InputMode_65536_103'
                                   3477 ;pcBuf                     Allocated with name '_main_pcBuf_65536_103'
                                   3478 ;pu8Data                   Allocated with name '_main_pu8Data_65536_103'
                                   3479 ;u8DataIdx                 Allocated with name '_main_u8DataIdx_65536_103'
                                   3480 ;ucBufIdx                  Allocated with name '_main_ucBufIdx_65536_103'
                                   3481 ;pstLineFiPkt              Allocated with name '_main_pstLineFiPkt_65536_103'
                                   3482 ;stLineFiPkt_test          Allocated with name '_main_stLineFiPkt_test_65536_103'
                                   3483 ;stLineFiPkt               Allocated with name '_main_stLineFiPkt_65536_103'
                                   3484 ;------------------------------------------------------------
                                   3485 ;	src/main.c:687: void main (void)
                                   3486 ;	-----------------------------------------
                                   3487 ;	 function main
                                   3488 ;	-----------------------------------------
      001269                       3489 _main:
                                   3490 ;	src/main.c:694: UINT8 __xdata u8LineFiAddr = 1;
      001269 90 00 9A         [24] 3491 	mov	dptr,#_main_u8LineFiAddr_65536_103
      00126C 74 01            [12] 3492 	mov	a,#0x01
      00126E F0               [24] 3493 	movx	@dptr,a
                                   3494 ;	src/main.c:695: UINT8 __xdata u8LineFiSpeed = 5;
      00126F 90 00 9B         [24] 3495 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001272 74 05            [12] 3496 	mov	a,#0x05
      001274 F0               [24] 3497 	movx	@dptr,a
                                   3498 ;	src/main.c:696: UINT8 __xdata u8LineFiCmd = 1;
      001275 90 00 9C         [24] 3499 	mov	dptr,#_main_u8LineFiCmd_65536_103
      001278 74 01            [12] 3500 	mov	a,#0x01
      00127A F0               [24] 3501 	movx	@dptr,a
                                   3502 ;	src/main.c:697: UINT8 __xdata u8PwrOnFirstFlag = 1;
      00127B 90 00 9D         [24] 3503 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      00127E F0               [24] 3504 	movx	@dptr,a
                                   3505 ;	src/main.c:700: UINT8 __xdata u8StatePeriodicSend = STATE_PS_INIT;
      00127F 90 00 9F         [24] 3506 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001282 E4               [12] 3507 	clr	a
      001283 F0               [24] 3508 	movx	@dptr,a
                                   3509 ;	src/main.c:701: UINT8 __xdata u8PSCmd = STATE_PS_INIT;
      001284 90 00 A0         [24] 3510 	mov	dptr,#_main_u8PSCmd_65536_103
      001287 F0               [24] 3511 	movx	@dptr,a
                                   3512 ;	src/main.c:704: uart0_input_mode_t __xdata u8StateUart0InputMode = UART0_INPUT_MODE8;
      001288 90 00 A1         [24] 3513 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      00128B 74 08            [12] 3514 	mov	a,#0x08
      00128D F0               [24] 3515 	movx	@dptr,a
                                   3516 ;	src/main.c:708: unsigned char __xdata pu8Data[MAX_DATA] = {0,0,0,0,0,0,0,0,0,0};
      00128E 90 00 D4         [24] 3517 	mov	dptr,#_main_pu8Data_65536_103
      001291 E4               [12] 3518 	clr	a
      001292 F0               [24] 3519 	movx	@dptr,a
      001293 90 00 D5         [24] 3520 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0001)
      001296 F0               [24] 3521 	movx	@dptr,a
      001297 90 00 D6         [24] 3522 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0002)
      00129A F0               [24] 3523 	movx	@dptr,a
      00129B 90 00 D7         [24] 3524 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0003)
      00129E F0               [24] 3525 	movx	@dptr,a
      00129F 90 00 D8         [24] 3526 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0004)
      0012A2 F0               [24] 3527 	movx	@dptr,a
      0012A3 90 00 D9         [24] 3528 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0005)
      0012A6 F0               [24] 3529 	movx	@dptr,a
      0012A7 90 00 DA         [24] 3530 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0006)
      0012AA F0               [24] 3531 	movx	@dptr,a
      0012AB 90 00 DB         [24] 3532 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0007)
      0012AE F0               [24] 3533 	movx	@dptr,a
      0012AF 90 00 DC         [24] 3534 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0008)
      0012B2 F0               [24] 3535 	movx	@dptr,a
      0012B3 90 00 DD         [24] 3536 	mov	dptr,#(_main_pu8Data_65536_103 + 0x0009)
      0012B6 F0               [24] 3537 	movx	@dptr,a
                                   3538 ;	src/main.c:709: unsigned char __xdata u8DataIdx = 0;
      0012B7 90 00 DE         [24] 3539 	mov	dptr,#_main_u8DataIdx_65536_103
      0012BA F0               [24] 3540 	movx	@dptr,a
                                   3541 ;	src/main.c:710: uint8  __xdata ucBufIdx = 0;
      0012BB 90 00 DF         [24] 3542 	mov	dptr,#_main_ucBufIdx_65536_103
      0012BE F0               [24] 3543 	movx	@dptr,a
                                   3544 ;	src/main.c:712: linefi_packet_t __xdata pstLineFiPkt[] = {
      0012BF 90 00 E0         [24] 3545 	mov	dptr,#_main_pstLineFiPkt_65536_103
      0012C2 04               [12] 3546 	inc	a
      0012C3 F0               [24] 3547 	movx	@dptr,a
      0012C4 90 00 E1         [24] 3548 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0001)
      0012C7 04               [12] 3549 	inc	a
      0012C8 F0               [24] 3550 	movx	@dptr,a
      0012C9 90 00 E2         [24] 3551 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0002)
      0012CC 14               [12] 3552 	dec	a
      0012CD F0               [24] 3553 	movx	@dptr,a
      0012CE 90 00 E3         [24] 3554 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0003)
      0012D1 74 0A            [12] 3555 	mov	a,#0x0a
      0012D3 F0               [24] 3556 	movx	@dptr,a
      0012D4 90 00 E4         [24] 3557 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0004)
      0012D7 03               [12] 3558 	rr	a
      0012D8 F0               [24] 3559 	movx	@dptr,a
      0012D9 90 00 E5         [24] 3560 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0005)
      0012DC 74 1C            [12] 3561 	mov	a,#_gpu8Data
      0012DE F0               [24] 3562 	movx	@dptr,a
      0012DF 74 00            [12] 3563 	mov	a,#(_gpu8Data >> 8)
      0012E1 A3               [24] 3564 	inc	dptr
      0012E2 F0               [24] 3565 	movx	@dptr,a
      0012E3 E4               [12] 3566 	clr	a
      0012E4 A3               [24] 3567 	inc	dptr
      0012E5 F0               [24] 3568 	movx	@dptr,a
      0012E6 90 00 E8         [24] 3569 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0008)
      0012E9 04               [12] 3570 	inc	a
      0012EA F0               [24] 3571 	movx	@dptr,a
      0012EB 90 00 E9         [24] 3572 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0009)
      0012EE 04               [12] 3573 	inc	a
      0012EF F0               [24] 3574 	movx	@dptr,a
      0012F0 90 00 EA         [24] 3575 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000a)
      0012F3 F0               [24] 3576 	movx	@dptr,a
      0012F4 90 00 EB         [24] 3577 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000b)
      0012F7 74 0A            [12] 3578 	mov	a,#0x0a
      0012F9 F0               [24] 3579 	movx	@dptr,a
      0012FA 90 00 EC         [24] 3580 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000c)
      0012FD 03               [12] 3581 	rr	a
      0012FE F0               [24] 3582 	movx	@dptr,a
      0012FF 90 00 ED         [24] 3583 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x000d)
      001302 74 1C            [12] 3584 	mov	a,#_gpu8Data
      001304 F0               [24] 3585 	movx	@dptr,a
      001305 74 00            [12] 3586 	mov	a,#(_gpu8Data >> 8)
      001307 A3               [24] 3587 	inc	dptr
      001308 F0               [24] 3588 	movx	@dptr,a
      001309 E4               [12] 3589 	clr	a
      00130A A3               [24] 3590 	inc	dptr
      00130B F0               [24] 3591 	movx	@dptr,a
      00130C 90 00 F0         [24] 3592 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0010)
      00130F 04               [12] 3593 	inc	a
      001310 F0               [24] 3594 	movx	@dptr,a
      001311 90 00 F1         [24] 3595 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0011)
      001314 04               [12] 3596 	inc	a
      001315 F0               [24] 3597 	movx	@dptr,a
      001316 90 00 F2         [24] 3598 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0012)
      001319 04               [12] 3599 	inc	a
      00131A F0               [24] 3600 	movx	@dptr,a
      00131B 90 00 F3         [24] 3601 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0013)
      00131E 74 0A            [12] 3602 	mov	a,#0x0a
      001320 F0               [24] 3603 	movx	@dptr,a
      001321 90 00 F4         [24] 3604 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0014)
      001324 03               [12] 3605 	rr	a
      001325 F0               [24] 3606 	movx	@dptr,a
      001326 90 00 F5         [24] 3607 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0015)
      001329 74 1C            [12] 3608 	mov	a,#_gpu8Data
      00132B F0               [24] 3609 	movx	@dptr,a
      00132C 74 00            [12] 3610 	mov	a,#(_gpu8Data >> 8)
      00132E A3               [24] 3611 	inc	dptr
      00132F F0               [24] 3612 	movx	@dptr,a
      001330 E4               [12] 3613 	clr	a
      001331 A3               [24] 3614 	inc	dptr
      001332 F0               [24] 3615 	movx	@dptr,a
      001333 90 00 F8         [24] 3616 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0018)
      001336 04               [12] 3617 	inc	a
      001337 F0               [24] 3618 	movx	@dptr,a
      001338 90 00 F9         [24] 3619 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0019)
      00133B 04               [12] 3620 	inc	a
      00133C F0               [24] 3621 	movx	@dptr,a
      00133D 90 00 FA         [24] 3622 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001a)
      001340 23               [12] 3623 	rl	a
      001341 F0               [24] 3624 	movx	@dptr,a
      001342 90 00 FB         [24] 3625 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001b)
      001345 74 0A            [12] 3626 	mov	a,#0x0a
      001347 F0               [24] 3627 	movx	@dptr,a
      001348 90 00 FC         [24] 3628 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001c)
      00134B 03               [12] 3629 	rr	a
      00134C F0               [24] 3630 	movx	@dptr,a
      00134D 90 00 FD         [24] 3631 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x001d)
      001350 74 1C            [12] 3632 	mov	a,#_gpu8Data
      001352 F0               [24] 3633 	movx	@dptr,a
      001353 74 00            [12] 3634 	mov	a,#(_gpu8Data >> 8)
      001355 A3               [24] 3635 	inc	dptr
      001356 F0               [24] 3636 	movx	@dptr,a
      001357 E4               [12] 3637 	clr	a
      001358 A3               [24] 3638 	inc	dptr
      001359 F0               [24] 3639 	movx	@dptr,a
      00135A 90 01 00         [24] 3640 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0020)
      00135D 04               [12] 3641 	inc	a
      00135E F0               [24] 3642 	movx	@dptr,a
      00135F 90 01 01         [24] 3643 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0021)
      001362 04               [12] 3644 	inc	a
      001363 F0               [24] 3645 	movx	@dptr,a
      001364 90 01 02         [24] 3646 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0022)
      001367 74 05            [12] 3647 	mov	a,#0x05
      001369 F0               [24] 3648 	movx	@dptr,a
      00136A 90 01 03         [24] 3649 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0023)
      00136D 23               [12] 3650 	rl	a
      00136E F0               [24] 3651 	movx	@dptr,a
      00136F 90 01 04         [24] 3652 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0024)
      001372 03               [12] 3653 	rr	a
      001373 F0               [24] 3654 	movx	@dptr,a
      001374 90 01 05         [24] 3655 	mov	dptr,#(_main_pstLineFiPkt_65536_103 + 0x0025)
      001377 74 1C            [12] 3656 	mov	a,#_gpu8Data
      001379 F0               [24] 3657 	movx	@dptr,a
      00137A 74 00            [12] 3658 	mov	a,#(_gpu8Data >> 8)
      00137C A3               [24] 3659 	inc	dptr
      00137D F0               [24] 3660 	movx	@dptr,a
      00137E E4               [12] 3661 	clr	a
      00137F A3               [24] 3662 	inc	dptr
      001380 F0               [24] 3663 	movx	@dptr,a
                                   3664 ;	src/main.c:720: linefi_packet_t __xdata stLineFiPkt_test = { // For sending periodic packet
      001381 90 01 08         [24] 3665 	mov	dptr,#_main_stLineFiPkt_test_65536_103
      001384 04               [12] 3666 	inc	a
      001385 F0               [24] 3667 	movx	@dptr,a
      001386 90 01 09         [24] 3668 	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0001)
      001389 74 07            [12] 3669 	mov	a,#0x07
      00138B F0               [24] 3670 	movx	@dptr,a
      00138C 90 01 0A         [24] 3671 	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0002)
      00138F 74 01            [12] 3672 	mov	a,#0x01
      001391 F0               [24] 3673 	movx	@dptr,a
      001392 90 01 0B         [24] 3674 	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0003)
      001395 C4               [12] 3675 	swap	a
      001396 F0               [24] 3676 	movx	@dptr,a
      001397 90 01 0C         [24] 3677 	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0004)
      00139A 74 FF            [12] 3678 	mov	a,#0xff
      00139C F0               [24] 3679 	movx	@dptr,a
      00139D 90 01 0D         [24] 3680 	mov	dptr,#(_main_stLineFiPkt_test_65536_103 + 0x0005)
      0013A0 74 30            [12] 3681 	mov	a,#_gpu8Data2
      0013A2 F0               [24] 3682 	movx	@dptr,a
      0013A3 74 00            [12] 3683 	mov	a,#(_gpu8Data2 >> 8)
      0013A5 A3               [24] 3684 	inc	dptr
      0013A6 F0               [24] 3685 	movx	@dptr,a
      0013A7 E4               [12] 3686 	clr	a
      0013A8 A3               [24] 3687 	inc	dptr
      0013A9 F0               [24] 3688 	movx	@dptr,a
                                   3689 ;	src/main.c:728: linefi_packet_t __xdata stLineFiPkt = {
      0013AA 90 01 10         [24] 3690 	mov	dptr,#_main_stLineFiPkt_65536_103
      0013AD 04               [12] 3691 	inc	a
      0013AE F0               [24] 3692 	movx	@dptr,a
      0013AF 90 01 11         [24] 3693 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
      0013B2 74 64            [12] 3694 	mov	a,#0x64
      0013B4 F0               [24] 3695 	movx	@dptr,a
      0013B5 90 01 12         [24] 3696 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0002)
      0013B8 74 01            [12] 3697 	mov	a,#0x01
      0013BA F0               [24] 3698 	movx	@dptr,a
      0013BB 90 01 13         [24] 3699 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0003)
      0013BE C4               [12] 3700 	swap	a
      0013BF F0               [24] 3701 	movx	@dptr,a
      0013C0 90 01 14         [24] 3702 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0004)
      0013C3 74 05            [12] 3703 	mov	a,#0x05
      0013C5 F0               [24] 3704 	movx	@dptr,a
      0013C6 90 01 15         [24] 3705 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
      0013C9 74 1C            [12] 3706 	mov	a,#_gpu8Data
      0013CB F0               [24] 3707 	movx	@dptr,a
      0013CC 74 00            [12] 3708 	mov	a,#(_gpu8Data >> 8)
      0013CE A3               [24] 3709 	inc	dptr
      0013CF F0               [24] 3710 	movx	@dptr,a
      0013D0 E4               [12] 3711 	clr	a
      0013D1 A3               [24] 3712 	inc	dptr
      0013D2 F0               [24] 3713 	movx	@dptr,a
                                   3714 ;	src/main.c:737: gpio_setup();
      0013D3 12 08 24         [24] 3715 	lcall	_gpio_setup
                                   3716 ;	src/main.c:738: uart_setup();
      0013D6 12 2A 3F         [24] 3717 	lcall	_uart_setup
                                   3718 ;	src/main.c:740: MODIFY_HIRC_166();
      0013D9 12 06 AA         [24] 3719 	lcall	_MODIFY_HIRC_166
                                   3720 ;	src/main.c:742: clr_T0M;// 16/12 MHz
      0013DC 53 8E F7         [24] 3721 	anl	_CKCON,#0xf7
                                   3722 ;	src/main.c:745: set_ET0;                                    //enable Timer0 interrupt
                                   3723 ;	assignBit
      0013DF D2 A9            [12] 3724 	setb	_ET0
                                   3725 ;	src/main.c:746: set_TR0;                                    //Timer0 run
                                   3726 ;	assignBit
      0013E1 D2 8C            [12] 3727 	setb	_TR0
                                   3728 ;	src/main.c:748: gu8UART = 0;
      0013E3 75 11 00         [24] 3729 	mov	_gu8UART,#0x00
                                   3730 ;	src/main.c:749: printf_fast_f("This is UART0\n\r");
      0013E6 74 D9            [12] 3731 	mov	a,#___str_57
      0013E8 C0 E0            [24] 3732 	push	acc
      0013EA 74 40            [12] 3733 	mov	a,#(___str_57 >> 8)
      0013EC C0 E0            [24] 3734 	push	acc
      0013EE 12 2E DD         [24] 3735 	lcall	_printf_fast_f
      0013F1 15 81            [12] 3736 	dec	sp
      0013F3 15 81            [12] 3737 	dec	sp
                                   3738 ;	src/main.c:750: printf_fast_f("LineFi Master\n\r");
      0013F5 74 E9            [12] 3739 	mov	a,#___str_58
      0013F7 C0 E0            [24] 3740 	push	acc
      0013F9 74 40            [12] 3741 	mov	a,#(___str_58 >> 8)
      0013FB C0 E0            [24] 3742 	push	acc
      0013FD 12 2E DD         [24] 3743 	lcall	_printf_fast_f
      001400 15 81            [12] 3744 	dec	sp
      001402 15 81            [12] 3745 	dec	sp
                                   3746 ;	src/main.c:751: gu8UART = 1;
      001404 75 11 01         [24] 3747 	mov	_gu8UART,#0x01
                                   3748 ;	src/main.c:752: printf_fast_f("This is UART1\n\r");
      001407 74 F9            [12] 3749 	mov	a,#___str_59
      001409 C0 E0            [24] 3750 	push	acc
      00140B 74 40            [12] 3751 	mov	a,#(___str_59 >> 8)
      00140D C0 E0            [24] 3752 	push	acc
      00140F 12 2E DD         [24] 3753 	lcall	_printf_fast_f
      001412 15 81            [12] 3754 	dec	sp
      001414 15 81            [12] 3755 	dec	sp
                                   3756 ;	src/main.c:759: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      001416 7E 30            [12] 3757 	mov	r6,#0x30
      001418 7F 75            [12] 3758 	mov	r7,#0x75
      00141A                       3759 00255$:
                                   3760 ;	src/main.c:760: nop; nop; nop; nop; nop;
      00141A 00               [12] 3761 	NOP
      00141B 00               [12] 3762 	NOP
      00141C 00               [12] 3763 	NOP
      00141D 00               [12] 3764 	NOP
      00141E 00               [12] 3765 	NOP
      00141F 1E               [12] 3766 	dec	r6
      001420 BE FF 01         [24] 3767 	cjne	r6,#0xff,00599$
      001423 1F               [12] 3768 	dec	r7
      001424                       3769 00599$:
                                   3770 ;	src/main.c:759: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      001424 EE               [12] 3771 	mov	a,r6
      001425 4F               [12] 3772 	orl	a,r7
      001426 70 F2            [24] 3773 	jnz	00255$
                                   3774 ;	src/main.c:762: LINEFI_TX = 1;
                                   3775 ;	assignBit
      001428 D2 96            [12] 3776 	setb	_P16
                                   3777 ;	src/main.c:763: gu8UART = 0;
      00142A 75 11 00         [24] 3778 	mov	_gu8UART,#0x00
                                   3779 ;	src/main.c:770: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      00142D 7E 30            [12] 3780 	mov	r6,#0x30
      00142F 7F 75            [12] 3781 	mov	r7,#0x75
      001431                       3782 00258$:
                                   3783 ;	src/main.c:771: nop; nop; nop; nop; nop;
      001431 00               [12] 3784 	NOP
      001432 00               [12] 3785 	NOP
      001433 00               [12] 3786 	NOP
      001434 00               [12] 3787 	NOP
      001435 00               [12] 3788 	NOP
      001436 1E               [12] 3789 	dec	r6
      001437 BE FF 01         [24] 3790 	cjne	r6,#0xff,00601$
      00143A 1F               [12] 3791 	dec	r7
      00143B                       3792 00601$:
                                   3793 ;	src/main.c:770: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      00143B EE               [12] 3794 	mov	a,r6
      00143C 4F               [12] 3795 	orl	a,r7
      00143D 70 F2            [24] 3796 	jnz	00258$
                                   3797 ;	src/main.c:774: InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
      00143F 90 00 72         [24] 3798 	mov	dptr,#(_gpu32UartSpeed + 0x0014)
      001442 E0               [24] 3799 	movx	a,@dptr
      001443 FC               [12] 3800 	mov	r4,a
      001444 A3               [24] 3801 	inc	dptr
      001445 E0               [24] 3802 	movx	a,@dptr
      001446 FD               [12] 3803 	mov	r5,a
      001447 A3               [24] 3804 	inc	dptr
      001448 E0               [24] 3805 	movx	a,@dptr
      001449 FE               [12] 3806 	mov	r6,a
      00144A A3               [24] 3807 	inc	dptr
      00144B E0               [24] 3808 	movx	a,@dptr
      00144C 8C 82            [24] 3809 	mov	dpl,r4
      00144E 8D 83            [24] 3810 	mov	dph,r5
      001450 8E F0            [24] 3811 	mov	b,r6
      001452 12 29 DA         [24] 3812 	lcall	_InitialUART1_Timer3
                                   3813 ;	src/main.c:776: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      001455 7E 30            [12] 3814 	mov	r6,#0x30
      001457 7F 75            [12] 3815 	mov	r7,#0x75
      001459                       3816 00261$:
                                   3817 ;	src/main.c:777: nop; nop; nop; nop; nop;
      001459 00               [12] 3818 	NOP
      00145A 00               [12] 3819 	NOP
      00145B 00               [12] 3820 	NOP
      00145C 00               [12] 3821 	NOP
      00145D 00               [12] 3822 	NOP
      00145E 1E               [12] 3823 	dec	r6
      00145F BE FF 01         [24] 3824 	cjne	r6,#0xff,00603$
      001462 1F               [12] 3825 	dec	r7
      001463                       3826 00603$:
                                   3827 ;	src/main.c:776: for (u16Cnt = 0 ; u16Cnt < 30000; u16Cnt++) {
      001463 EE               [12] 3828 	mov	a,r6
      001464 4F               [12] 3829 	orl	a,r7
      001465 70 F2            [24] 3830 	jnz	00261$
                                   3831 ;	src/main.c:779: LINEFI_TX = 1;
                                   3832 ;	assignBit
      001467 D2 96            [12] 3833 	setb	_P16
                                   3834 ;	src/main.c:781: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
      001469 90 00 19         [24] 3835 	mov	dptr,#(_gcUartInputMode + 0x0018)
      00146C E0               [24] 3836 	movx	a,@dptr
      00146D FD               [12] 3837 	mov	r5,a
      00146E A3               [24] 3838 	inc	dptr
      00146F E0               [24] 3839 	movx	a,@dptr
      001470 FE               [12] 3840 	mov	r6,a
      001471 A3               [24] 3841 	inc	dptr
      001472 E0               [24] 3842 	movx	a,@dptr
      001473 FF               [12] 3843 	mov	r7,a
      001474 C0 05            [24] 3844 	push	ar5
      001476 C0 06            [24] 3845 	push	ar6
      001478 C0 07            [24] 3846 	push	ar7
      00147A 74 09            [12] 3847 	mov	a,#___str_60
      00147C C0 E0            [24] 3848 	push	acc
      00147E 74 41            [12] 3849 	mov	a,#(___str_60 >> 8)
      001480 C0 E0            [24] 3850 	push	acc
      001482 74 80            [12] 3851 	mov	a,#0x80
      001484 C0 E0            [24] 3852 	push	acc
      001486 12 34 49         [24] 3853 	lcall	_printf
      001489 E5 81            [12] 3854 	mov	a,sp
      00148B 24 FA            [12] 3855 	add	a,#0xfa
      00148D F5 81            [12] 3856 	mov	sp,a
                                   3857 ;	src/main.c:782: LINEFI_EN0 = 1;
                                   3858 ;	assignBit
      00148F D2 90            [12] 3859 	setb	_P10
                                   3860 ;	src/main.c:783: LINEFI_EN1 = 0;
                                   3861 ;	assignBit
      001491 C2 91            [12] 3862 	clr	_P11
                                   3863 ;	src/main.c:784: LINEFI_EN2 = 0;
                                   3864 ;	assignBit
      001493 C2 92            [12] 3865 	clr	_P12
                                   3866 ;	src/main.c:786: while(1) {
      001495                       3867 00251$:
                                   3868 ;	src/main.c:790: if (getchar_uart0(&u8RxUART)) { // 유아트 입력이 있을 때
      001495 90 00 98         [24] 3869 	mov	dptr,#_main_u8RxUART_65536_103
      001498 75 F0 00         [24] 3870 	mov	b,#0x00
      00149B 12 2B 3A         [24] 3871 	lcall	_getchar_uart0
      00149E E5 82            [12] 3872 	mov	a,dpl
      0014A0 70 03            [24] 3873 	jnz	00605$
      0014A2 02 1A B0         [24] 3874 	ljmp	00199$
      0014A5                       3875 00605$:
                                   3876 ;	src/main.c:792: switch(u8RxUART) {
      0014A5 90 00 98         [24] 3877 	mov	dptr,#_main_u8RxUART_65536_103
      0014A8 E0               [24] 3878 	movx	a,@dptr
      0014A9 FF               [12] 3879 	mov	r7,a
      0014AA BF 1B 02         [24] 3880 	cjne	r7,#0x1b,00606$
      0014AD 80 0D            [24] 3881 	sjmp	00104$
      0014AF                       3882 00606$:
      0014AF BF 1C 02         [24] 3883 	cjne	r7,#0x1c,00607$
      0014B2 80 51            [24] 3884 	sjmp	00108$
      0014B4                       3885 00607$:
      0014B4 BF 1D 02         [24] 3886 	cjne	r7,#0x1d,00608$
      0014B7 80 4C            [24] 3887 	sjmp	00108$
      0014B9                       3888 00608$:
      0014B9 02 15 4E         [24] 3889 	ljmp	00111$
                                   3890 ;	src/main.c:793: case KEY_ESC :
      0014BC                       3891 00104$:
                                   3892 ;	src/main.c:794: u8StateUart0InputMode++;
      0014BC 90 00 A1         [24] 3893 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      0014BF E0               [24] 3894 	movx	a,@dptr
      0014C0 24 01            [12] 3895 	add	a,#0x01
      0014C2 F0               [24] 3896 	movx	@dptr,a
                                   3897 ;	src/main.c:795: if (u8StateUart0InputMode == MAX_STATE_UART0_INPUT) {
      0014C3 E0               [24] 3898 	movx	a,@dptr
      0014C4 FE               [12] 3899 	mov	r6,a
      0014C5 BE 09 05         [24] 3900 	cjne	r6,#0x09,00106$
                                   3901 ;	src/main.c:796: u8StateUart0InputMode = 0;
      0014C8 90 00 A1         [24] 3902 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      0014CB E4               [12] 3903 	clr	a
      0014CC F0               [24] 3904 	movx	@dptr,a
      0014CD                       3905 00106$:
                                   3906 ;	src/main.c:798: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
      0014CD 90 00 A1         [24] 3907 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      0014D0 E0               [24] 3908 	movx	a,@dptr
      0014D1 75 F0 03         [24] 3909 	mov	b,#0x03
      0014D4 A4               [48] 3910 	mul	ab
      0014D5 24 01            [12] 3911 	add	a,#_gcUartInputMode
      0014D7 F5 82            [12] 3912 	mov	dpl,a
      0014D9 74 00            [12] 3913 	mov	a,#(_gcUartInputMode >> 8)
      0014DB 35 F0            [12] 3914 	addc	a,b
      0014DD F5 83            [12] 3915 	mov	dph,a
      0014DF E0               [24] 3916 	movx	a,@dptr
      0014E0 FC               [12] 3917 	mov	r4,a
      0014E1 A3               [24] 3918 	inc	dptr
      0014E2 E0               [24] 3919 	movx	a,@dptr
      0014E3 FD               [12] 3920 	mov	r5,a
      0014E4 A3               [24] 3921 	inc	dptr
      0014E5 E0               [24] 3922 	movx	a,@dptr
      0014E6 FE               [12] 3923 	mov	r6,a
      0014E7 C0 04            [24] 3924 	push	ar4
      0014E9 C0 05            [24] 3925 	push	ar5
      0014EB C0 06            [24] 3926 	push	ar6
      0014ED 74 09            [12] 3927 	mov	a,#___str_60
      0014EF C0 E0            [24] 3928 	push	acc
      0014F1 74 41            [12] 3929 	mov	a,#(___str_60 >> 8)
      0014F3 C0 E0            [24] 3930 	push	acc
      0014F5 74 80            [12] 3931 	mov	a,#0x80
      0014F7 C0 E0            [24] 3932 	push	acc
      0014F9 12 34 49         [24] 3933 	lcall	_printf
      0014FC E5 81            [12] 3934 	mov	a,sp
      0014FE 24 FA            [12] 3935 	add	a,#0xfa
      001500 F5 81            [12] 3936 	mov	sp,a
                                   3937 ;	src/main.c:799: break;
      001502 02 1A F4         [24] 3938 	ljmp	00200$
                                   3939 ;	src/main.c:801: case KEY_29 :
      001505                       3940 00108$:
                                   3941 ;	src/main.c:802: u8StateUart0InputMode--;
      001505 90 00 A1         [24] 3942 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      001508 E0               [24] 3943 	movx	a,@dptr
      001509 14               [12] 3944 	dec	a
      00150A F0               [24] 3945 	movx	@dptr,a
                                   3946 ;	src/main.c:803: if (u8StateUart0InputMode == 255) {
      00150B E0               [24] 3947 	movx	a,@dptr
      00150C FE               [12] 3948 	mov	r6,a
      00150D BE FF 06         [24] 3949 	cjne	r6,#0xff,00110$
                                   3950 ;	src/main.c:804: u8StateUart0InputMode = MAX_STATE_UART0_INPUT-1;
      001510 90 00 A1         [24] 3951 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      001513 74 08            [12] 3952 	mov	a,#0x08
      001515 F0               [24] 3953 	movx	@dptr,a
      001516                       3954 00110$:
                                   3955 ;	src/main.c:806: printf("%s\r\n", gcUartInputMode[u8StateUart0InputMode]);
      001516 90 00 A1         [24] 3956 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      001519 E0               [24] 3957 	movx	a,@dptr
      00151A 75 F0 03         [24] 3958 	mov	b,#0x03
      00151D A4               [48] 3959 	mul	ab
      00151E 24 01            [12] 3960 	add	a,#_gcUartInputMode
      001520 F5 82            [12] 3961 	mov	dpl,a
      001522 74 00            [12] 3962 	mov	a,#(_gcUartInputMode >> 8)
      001524 35 F0            [12] 3963 	addc	a,b
      001526 F5 83            [12] 3964 	mov	dph,a
      001528 E0               [24] 3965 	movx	a,@dptr
      001529 FC               [12] 3966 	mov	r4,a
      00152A A3               [24] 3967 	inc	dptr
      00152B E0               [24] 3968 	movx	a,@dptr
      00152C FD               [12] 3969 	mov	r5,a
      00152D A3               [24] 3970 	inc	dptr
      00152E E0               [24] 3971 	movx	a,@dptr
      00152F FE               [12] 3972 	mov	r6,a
      001530 C0 04            [24] 3973 	push	ar4
      001532 C0 05            [24] 3974 	push	ar5
      001534 C0 06            [24] 3975 	push	ar6
      001536 74 09            [12] 3976 	mov	a,#___str_60
      001538 C0 E0            [24] 3977 	push	acc
      00153A 74 41            [12] 3978 	mov	a,#(___str_60 >> 8)
      00153C C0 E0            [24] 3979 	push	acc
      00153E 74 80            [12] 3980 	mov	a,#0x80
      001540 C0 E0            [24] 3981 	push	acc
      001542 12 34 49         [24] 3982 	lcall	_printf
      001545 E5 81            [12] 3983 	mov	a,sp
      001547 24 FA            [12] 3984 	add	a,#0xfa
      001549 F5 81            [12] 3985 	mov	sp,a
                                   3986 ;	src/main.c:807: break;
      00154B 02 1A F4         [24] 3987 	ljmp	00200$
                                   3988 ;	src/main.c:809: default :
      00154E                       3989 00111$:
                                   3990 ;	src/main.c:810: switch(u8StateUart0InputMode) {
      00154E 90 00 A1         [24] 3991 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      001551 E0               [24] 3992 	movx	a,@dptr
      001552 FE               [12] 3993 	mov  r6,a
      001553 24 F7            [12] 3994 	add	a,#0xff - 0x08
      001555 50 03            [24] 3995 	jnc	00613$
      001557 02 1A F4         [24] 3996 	ljmp	00200$
      00155A                       3997 00613$:
      00155A EE               [12] 3998 	mov	a,r6
      00155B 24 0A            [12] 3999 	add	a,#(00614$-3-.)
      00155D 83               [24] 4000 	movc	a,@a+pc
      00155E F5 82            [12] 4001 	mov	dpl,a
      001560 EE               [12] 4002 	mov	a,r6
      001561 24 0D            [12] 4003 	add	a,#(00615$-3-.)
      001563 83               [24] 4004 	movc	a,@a+pc
      001564 F5 83            [12] 4005 	mov	dph,a
      001566 E4               [12] 4006 	clr	a
      001567 73               [24] 4007 	jmp	@a+dptr
      001568                       4008 00614$:
      001568 7A                    4009 	.db	00112$
      001569 94                    4010 	.db	00113$
      00156A B1                    4011 	.db	00114$
      00156B AC                    4012 	.db	00135$
      00156C 8F                    4013 	.db	00151$
      00156D C8                    4014 	.db	00155$
      00156E 59                    4015 	.db	00176$
      00156F 75                    4016 	.db	00177$
      001570 F4                    4017 	.db	00200$
      001571                       4018 00615$:
      001571 15                    4019 	.db	00112$>>8
      001572 15                    4020 	.db	00113$>>8
      001573 15                    4021 	.db	00114$>>8
      001574 16                    4022 	.db	00135$>>8
      001575 17                    4023 	.db	00151$>>8
      001576 17                    4024 	.db	00155$>>8
      001577 1A                    4025 	.db	00176$>>8
      001578 1A                    4026 	.db	00177$>>8
      001579 1A                    4027 	.db	00200$>>8
                                   4028 ;	src/main.c:811: case UART0_INPUT_MODE0 :
      00157A                       4029 00112$:
                                   4030 ;	src/main.c:812: act_by_one_key(u8RxUART, &u8LineFiCmd, &u8LineFiAddr);
      00157A 75 28 9C         [24] 4031 	mov	_act_by_one_key_PARM_2,#_main_u8LineFiCmd_65536_103
      00157D 75 29 00         [24] 4032 	mov	(_act_by_one_key_PARM_2 + 1),#(_main_u8LineFiCmd_65536_103 >> 8)
      001580 75 2A 00         [24] 4033 	mov	(_act_by_one_key_PARM_2 + 2),#0x00
      001583 75 2B 9A         [24] 4034 	mov	_act_by_one_key_PARM_3,#_main_u8LineFiAddr_65536_103
      001586 75 2C 00         [24] 4035 	mov	(_act_by_one_key_PARM_3 + 1),#(_main_u8LineFiAddr_65536_103 >> 8)
      001589 75 2D 00         [24] 4036 	mov	(_act_by_one_key_PARM_3 + 2),#0x00
      00158C 8F 82            [24] 4037 	mov	dpl,r7
      00158E 12 0A 97         [24] 4038 	lcall	_act_by_one_key
                                   4039 ;	src/main.c:813: break;
      001591 02 1A F4         [24] 4040 	ljmp	00200$
                                   4041 ;	src/main.c:814: case UART0_INPUT_MODE1 :
      001594                       4042 00113$:
                                   4043 ;	src/main.c:815: gu16TimeCnt = 0;
      001594 90 00 58         [24] 4044 	mov	dptr,#_gu16TimeCnt
      001597 E4               [12] 4045 	clr	a
      001598 F0               [24] 4046 	movx	@dptr,a
      001599 A3               [24] 4047 	inc	dptr
      00159A F0               [24] 4048 	movx	@dptr,a
                                   4049 ;	src/main.c:816: pcBuf[ucBufIdx++] = u8RxUART;
      00159B 90 00 DF         [24] 4050 	mov	dptr,#_main_ucBufIdx_65536_103
      00159E E0               [24] 4051 	movx	a,@dptr
      00159F FE               [12] 4052 	mov	r6,a
      0015A0 04               [12] 4053 	inc	a
      0015A1 F0               [24] 4054 	movx	@dptr,a
      0015A2 EE               [12] 4055 	mov	a,r6
      0015A3 24 A2            [12] 4056 	add	a,#_main_pcBuf_65536_103
      0015A5 F5 82            [12] 4057 	mov	dpl,a
      0015A7 E4               [12] 4058 	clr	a
      0015A8 34 00            [12] 4059 	addc	a,#(_main_pcBuf_65536_103 >> 8)
      0015AA F5 83            [12] 4060 	mov	dph,a
      0015AC EF               [12] 4061 	mov	a,r7
      0015AD F0               [24] 4062 	movx	@dptr,a
                                   4063 ;	src/main.c:818: break;
      0015AE 02 1A F4         [24] 4064 	ljmp	00200$
                                   4065 ;	src/main.c:819: case UART0_INPUT_MODE2 : // mimic 5keys on board
      0015B1                       4066 00114$:
                                   4067 ;	src/main.c:820: switch(u8RxUART) {
      0015B1 BF 66 02         [24] 4068 	cjne	r7,#0x66,00616$
      0015B4 80 18            [24] 4069 	sjmp	00115$
      0015B6                       4070 00616$:
      0015B6 BF 67 02         [24] 4071 	cjne	r7,#0x67,00617$
      0015B9 80 28            [24] 4072 	sjmp	00118$
      0015BB                       4073 00617$:
      0015BB BF 68 02         [24] 4074 	cjne	r7,#0x68,00618$
      0015BE 80 38            [24] 4075 	sjmp	00121$
      0015C0                       4076 00618$:
      0015C0 BF 6A 02         [24] 4077 	cjne	r7,#0x6a,00619$
      0015C3 80 4B            [24] 4078 	sjmp	00122$
      0015C5                       4079 00619$:
      0015C5 BF 6B 03         [24] 4080 	cjne	r7,#0x6b,00620$
      0015C8 02 16 40         [24] 4081 	ljmp	00125$
      0015CB                       4082 00620$:
      0015CB 02 16 6E         [24] 4083 	ljmp	00128$
                                   4084 ;	src/main.c:821: case 'f' : // down SW1
      0015CE                       4085 00115$:
                                   4086 ;	src/main.c:822: u8LineFiAddr--;
      0015CE 90 00 9A         [24] 4087 	mov	dptr,#_main_u8LineFiAddr_65536_103
      0015D1 E0               [24] 4088 	movx	a,@dptr
      0015D2 14               [12] 4089 	dec	a
      0015D3 F0               [24] 4090 	movx	@dptr,a
                                   4091 ;	src/main.c:823: if (u8LineFiAddr == 0) {
      0015D4 E0               [24] 4092 	movx	a,@dptr
      0015D5 60 03            [24] 4093 	jz	00621$
      0015D7 02 16 6E         [24] 4094 	ljmp	00128$
      0015DA                       4095 00621$:
                                   4096 ;	src/main.c:824: u8LineFiAddr = 1;
      0015DA 90 00 9A         [24] 4097 	mov	dptr,#_main_u8LineFiAddr_65536_103
      0015DD 74 01            [12] 4098 	mov	a,#0x01
      0015DF F0               [24] 4099 	movx	@dptr,a
                                   4100 ;	src/main.c:826: break;
      0015E0 02 16 6E         [24] 4101 	ljmp	00128$
                                   4102 ;	src/main.c:827: case 'g' : // right SW2
      0015E3                       4103 00118$:
                                   4104 ;	src/main.c:828: u8LineFiCmd--;
      0015E3 90 00 9C         [24] 4105 	mov	dptr,#_main_u8LineFiCmd_65536_103
      0015E6 E0               [24] 4106 	movx	a,@dptr
      0015E7 14               [12] 4107 	dec	a
      0015E8 F0               [24] 4108 	movx	@dptr,a
                                   4109 ;	src/main.c:829: if (u8LineFiCmd == 0) {
      0015E9 E0               [24] 4110 	movx	a,@dptr
      0015EA 60 03            [24] 4111 	jz	00622$
      0015EC 02 16 6E         [24] 4112 	ljmp	00128$
      0015EF                       4113 00622$:
                                   4114 ;	src/main.c:830: u8LineFiCmd = 1;
      0015EF 90 00 9C         [24] 4115 	mov	dptr,#_main_u8LineFiCmd_65536_103
      0015F2 74 01            [12] 4116 	mov	a,#0x01
      0015F4 F0               [24] 4117 	movx	@dptr,a
                                   4118 ;	src/main.c:832: break;
      0015F5 02 16 6E         [24] 4119 	ljmp	00128$
                                   4120 ;	src/main.c:833: case 'h' : // center SW3
      0015F8                       4121 00121$:
                                   4122 ;	src/main.c:834: stLineFiPkt.pu8Data = pu8Data;
      0015F8 90 01 15         [24] 4123 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
      0015FB 74 D4            [12] 4124 	mov	a,#_main_pu8Data_65536_103
      0015FD F0               [24] 4125 	movx	@dptr,a
      0015FE 74 00            [12] 4126 	mov	a,#(_main_pu8Data_65536_103 >> 8)
      001600 A3               [24] 4127 	inc	dptr
      001601 F0               [24] 4128 	movx	@dptr,a
      001602 E4               [12] 4129 	clr	a
      001603 A3               [24] 4130 	inc	dptr
      001604 F0               [24] 4131 	movx	@dptr,a
                                   4132 ;	src/main.c:835: send_linefi_packet(&stLineFiPkt);
      001605 90 01 10         [24] 4133 	mov	dptr,#_main_stLineFiPkt_65536_103
      001608 75 F0 00         [24] 4134 	mov	b,#0x00
      00160B 12 21 D5         [24] 4135 	lcall	_send_linefi_packet
                                   4136 ;	src/main.c:836: break;
                                   4137 ;	src/main.c:838: case 'j' : //  left SW4
      00160E 80 5E            [24] 4138 	sjmp	00128$
      001610                       4139 00122$:
                                   4140 ;	src/main.c:839: u8LineFiCmd++;
      001610 90 00 9C         [24] 4141 	mov	dptr,#_main_u8LineFiCmd_65536_103
      001613 E0               [24] 4142 	movx	a,@dptr
      001614 24 01            [12] 4143 	add	a,#0x01
      001616 F0               [24] 4144 	movx	@dptr,a
                                   4145 ;	src/main.c:840: if (u8LineFiCmd == 101) {
      001617 E0               [24] 4146 	movx	a,@dptr
      001618 FE               [12] 4147 	mov	r6,a
      001619 BE 65 06         [24] 4148 	cjne	r6,#0x65,00124$
                                   4149 ;	src/main.c:841: u8LineFiCmd = 100;
      00161C 90 00 9C         [24] 4150 	mov	dptr,#_main_u8LineFiCmd_65536_103
      00161F 74 64            [12] 4151 	mov	a,#0x64
      001621 F0               [24] 4152 	movx	@dptr,a
      001622                       4153 00124$:
                                   4154 ;	src/main.c:843: printf_fast_f("command: %d\n\r", u8LineFiCmd);
      001622 90 00 9C         [24] 4155 	mov	dptr,#_main_u8LineFiCmd_65536_103
      001625 E0               [24] 4156 	movx	a,@dptr
      001626 FE               [12] 4157 	mov	r6,a
      001627 7D 00            [12] 4158 	mov	r5,#0x00
      001629 C0 06            [24] 4159 	push	ar6
      00162B C0 05            [24] 4160 	push	ar5
      00162D 74 42            [12] 4161 	mov	a,#___str_49
      00162F C0 E0            [24] 4162 	push	acc
      001631 74 40            [12] 4163 	mov	a,#(___str_49 >> 8)
      001633 C0 E0            [24] 4164 	push	acc
      001635 12 2E DD         [24] 4165 	lcall	_printf_fast_f
      001638 E5 81            [12] 4166 	mov	a,sp
      00163A 24 FC            [12] 4167 	add	a,#0xfc
      00163C F5 81            [12] 4168 	mov	sp,a
                                   4169 ;	src/main.c:844: break;
                                   4170 ;	src/main.c:845: case 'k' : // up SW5
      00163E 80 2E            [24] 4171 	sjmp	00128$
      001640                       4172 00125$:
                                   4173 ;	src/main.c:846: u8LineFiAddr++;
      001640 90 00 9A         [24] 4174 	mov	dptr,#_main_u8LineFiAddr_65536_103
      001643 E0               [24] 4175 	movx	a,@dptr
      001644 24 01            [12] 4176 	add	a,#0x01
      001646 F0               [24] 4177 	movx	@dptr,a
                                   4178 ;	src/main.c:847: if (u8LineFiAddr == 16) {
      001647 E0               [24] 4179 	movx	a,@dptr
      001648 FE               [12] 4180 	mov	r6,a
      001649 BE 10 06         [24] 4181 	cjne	r6,#0x10,00127$
                                   4182 ;	src/main.c:848: u8LineFiAddr = 15;
      00164C 90 00 9A         [24] 4183 	mov	dptr,#_main_u8LineFiAddr_65536_103
      00164F 74 0F            [12] 4184 	mov	a,#0x0f
      001651 F0               [24] 4185 	movx	@dptr,a
      001652                       4186 00127$:
                                   4187 ;	src/main.c:850: printf_fast_f("address: %d\n\r", u8LineFiAddr);
      001652 90 00 9A         [24] 4188 	mov	dptr,#_main_u8LineFiAddr_65536_103
      001655 E0               [24] 4189 	movx	a,@dptr
      001656 FE               [12] 4190 	mov	r6,a
      001657 7D 00            [12] 4191 	mov	r5,#0x00
      001659 C0 06            [24] 4192 	push	ar6
      00165B C0 05            [24] 4193 	push	ar5
      00165D 74 34            [12] 4194 	mov	a,#___str_48
      00165F C0 E0            [24] 4195 	push	acc
      001661 74 40            [12] 4196 	mov	a,#(___str_48 >> 8)
      001663 C0 E0            [24] 4197 	push	acc
      001665 12 2E DD         [24] 4198 	lcall	_printf_fast_f
      001668 E5 81            [12] 4199 	mov	a,sp
      00166A 24 FC            [12] 4200 	add	a,#0xfc
      00166C F5 81            [12] 4201 	mov	sp,a
                                   4202 ;	src/main.c:852: }
      00166E                       4203 00128$:
                                   4204 ;	src/main.c:854: switch(u8RxUART) {
      00166E 90 00 98         [24] 4205 	mov	dptr,#_main_u8RxUART_65536_103
      001671 E0               [24] 4206 	movx	a,@dptr
      001672 FE               [12] 4207 	mov	r6,a
      001673 BE 66 02         [24] 4208 	cjne	r6,#0x66,00627$
      001676 80 18            [24] 4209 	sjmp	00132$
      001678                       4210 00627$:
      001678 BE 67 02         [24] 4211 	cjne	r6,#0x67,00628$
      00167B 80 13            [24] 4212 	sjmp	00132$
      00167D                       4213 00628$:
      00167D BE 68 03         [24] 4214 	cjne	r6,#0x68,00629$
      001680 02 1A F4         [24] 4215 	ljmp	00200$
      001683                       4216 00629$:
      001683 BE 6A 02         [24] 4217 	cjne	r6,#0x6a,00630$
      001686 80 08            [24] 4218 	sjmp	00132$
      001688                       4219 00630$:
      001688 BE 6B 02         [24] 4220 	cjne	r6,#0x6b,00631$
      00168B 80 03            [24] 4221 	sjmp	00632$
      00168D                       4222 00631$:
      00168D 02 1A F4         [24] 4223 	ljmp	00200$
      001690                       4224 00632$:
                                   4225 ;	src/main.c:858: case 'k' : // up SW5
      001690                       4226 00132$:
                                   4227 ;	src/main.c:859: stLineFiPkt.u8Addr = u8LineFiAddr;
      001690 90 00 9A         [24] 4228 	mov	dptr,#_main_u8LineFiAddr_65536_103
      001693 E0               [24] 4229 	movx	a,@dptr
      001694 90 01 12         [24] 4230 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0002)
      001697 F0               [24] 4231 	movx	@dptr,a
                                   4232 ;	src/main.c:860: stLineFiPkt.u8Type = u8LineFiCmd;
      001698 90 00 9C         [24] 4233 	mov	dptr,#_main_u8LineFiCmd_65536_103
      00169B E0               [24] 4234 	movx	a,@dptr
      00169C 90 01 11         [24] 4235 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
      00169F F0               [24] 4236 	movx	@dptr,a
                                   4237 ;	src/main.c:861: print_linefipacket(&stLineFiPkt);
      0016A0 90 01 10         [24] 4238 	mov	dptr,#_main_stLineFiPkt_65536_103
      0016A3 75 F0 00         [24] 4239 	mov	b,#0x00
      0016A6 12 24 D5         [24] 4240 	lcall	_print_linefipacket
                                   4241 ;	src/main.c:862: break;
      0016A9 02 1A F4         [24] 4242 	ljmp	00200$
                                   4243 ;	src/main.c:869: case UART0_INPUT_MODE3 : // slave gpio pin setting
      0016AC                       4244 00135$:
                                   4245 ;	src/main.c:870: switch(u8RxUART) {
      0016AC BF 68 02         [24] 4246 	cjne	r7,#0x68,00633$
      0016AF 80 0F            [24] 4247 	sjmp	00136$
      0016B1                       4248 00633$:
      0016B1 BF 6A 02         [24] 4249 	cjne	r7,#0x6a,00634$
      0016B4 80 1C            [24] 4250 	sjmp	00139$
      0016B6                       4251 00634$:
      0016B6 BF 6B 02         [24] 4252 	cjne	r7,#0x6b,00635$
      0016B9 80 31            [24] 4253 	sjmp	00140$
      0016BB                       4254 00635$:
                                   4255 ;	src/main.c:871: case 'h' : // left
      0016BB BF 6C 5A         [24] 4256 	cjne	r7,#0x6c,00144$
      0016BE 80 46            [24] 4257 	sjmp	00141$
      0016C0                       4258 00136$:
                                   4259 ;	src/main.c:872: u8DataIdx--;
      0016C0 90 00 DE         [24] 4260 	mov	dptr,#_main_u8DataIdx_65536_103
      0016C3 E0               [24] 4261 	movx	a,@dptr
      0016C4 14               [12] 4262 	dec	a
      0016C5 F0               [24] 4263 	movx	@dptr,a
                                   4264 ;	src/main.c:873: if (u8DataIdx == 255) {
      0016C6 E0               [24] 4265 	movx	a,@dptr
      0016C7 FE               [12] 4266 	mov	r6,a
      0016C8 BE FF 4D         [24] 4267 	cjne	r6,#0xff,00144$
                                   4268 ;	src/main.c:874: u8DataIdx = 0;
      0016CB 90 00 DE         [24] 4269 	mov	dptr,#_main_u8DataIdx_65536_103
      0016CE E4               [12] 4270 	clr	a
      0016CF F0               [24] 4271 	movx	@dptr,a
                                   4272 ;	src/main.c:876: break;
                                   4273 ;	src/main.c:877: case 'j' : // down 
      0016D0 80 46            [24] 4274 	sjmp	00144$
      0016D2                       4275 00139$:
                                   4276 ;	src/main.c:878: pu8Data[u8DataIdx]--;
      0016D2 90 00 DE         [24] 4277 	mov	dptr,#_main_u8DataIdx_65536_103
      0016D5 E0               [24] 4278 	movx	a,@dptr
      0016D6 24 D4            [12] 4279 	add	a,#_main_pu8Data_65536_103
      0016D8 FE               [12] 4280 	mov	r6,a
      0016D9 E4               [12] 4281 	clr	a
      0016DA 34 00            [12] 4282 	addc	a,#(_main_pu8Data_65536_103 >> 8)
      0016DC FD               [12] 4283 	mov	r5,a
      0016DD 8E 82            [24] 4284 	mov	dpl,r6
      0016DF 8D 83            [24] 4285 	mov	dph,r5
      0016E1 E0               [24] 4286 	movx	a,@dptr
      0016E2 FC               [12] 4287 	mov	r4,a
      0016E3 1C               [12] 4288 	dec	r4
      0016E4 8E 82            [24] 4289 	mov	dpl,r6
      0016E6 8D 83            [24] 4290 	mov	dph,r5
      0016E8 EC               [12] 4291 	mov	a,r4
      0016E9 F0               [24] 4292 	movx	@dptr,a
                                   4293 ;	src/main.c:879: break;
                                   4294 ;	src/main.c:880: case 'k' : // up 
      0016EA 80 2C            [24] 4295 	sjmp	00144$
      0016EC                       4296 00140$:
                                   4297 ;	src/main.c:881: pu8Data[u8DataIdx]++;
      0016EC 90 00 DE         [24] 4298 	mov	dptr,#_main_u8DataIdx_65536_103
      0016EF E0               [24] 4299 	movx	a,@dptr
      0016F0 24 D4            [12] 4300 	add	a,#_main_pu8Data_65536_103
      0016F2 FE               [12] 4301 	mov	r6,a
      0016F3 E4               [12] 4302 	clr	a
      0016F4 34 00            [12] 4303 	addc	a,#(_main_pu8Data_65536_103 >> 8)
      0016F6 FD               [12] 4304 	mov	r5,a
      0016F7 8E 82            [24] 4305 	mov	dpl,r6
      0016F9 8D 83            [24] 4306 	mov	dph,r5
      0016FB E0               [24] 4307 	movx	a,@dptr
      0016FC FC               [12] 4308 	mov	r4,a
      0016FD 0C               [12] 4309 	inc	r4
      0016FE 8E 82            [24] 4310 	mov	dpl,r6
      001700 8D 83            [24] 4311 	mov	dph,r5
      001702 EC               [12] 4312 	mov	a,r4
      001703 F0               [24] 4313 	movx	@dptr,a
                                   4314 ;	src/main.c:882: break;
                                   4315 ;	src/main.c:883: case 'l' : // right 
      001704 80 12            [24] 4316 	sjmp	00144$
      001706                       4317 00141$:
                                   4318 ;	src/main.c:884: u8DataIdx++;
      001706 90 00 DE         [24] 4319 	mov	dptr,#_main_u8DataIdx_65536_103
      001709 E0               [24] 4320 	movx	a,@dptr
      00170A 24 01            [12] 4321 	add	a,#0x01
      00170C F0               [24] 4322 	movx	@dptr,a
                                   4323 ;	src/main.c:885: if (u8DataIdx == MAX_DATA) {
      00170D E0               [24] 4324 	movx	a,@dptr
      00170E FE               [12] 4325 	mov	r6,a
      00170F BE 0A 06         [24] 4326 	cjne	r6,#0x0a,00144$
                                   4327 ;	src/main.c:886: u8DataIdx--;;
      001712 EE               [12] 4328 	mov	a,r6
      001713 14               [12] 4329 	dec	a
      001714 90 00 DE         [24] 4330 	mov	dptr,#_main_u8DataIdx_65536_103
      001717 F0               [24] 4331 	movx	@dptr,a
                                   4332 ;	src/main.c:889: }
      001718                       4333 00144$:
                                   4334 ;	src/main.c:890: switch(u8RxUART) {
      001718 90 00 98         [24] 4335 	mov	dptr,#_main_u8RxUART_65536_103
      00171B E0               [24] 4336 	movx	a,@dptr
      00171C FE               [12] 4337 	mov	r6,a
      00171D BE 68 02         [24] 4338 	cjne	r6,#0x68,00641$
      001720 80 0D            [24] 4339 	sjmp	00146$
      001722                       4340 00641$:
      001722 BE 6A 02         [24] 4341 	cjne	r6,#0x6a,00642$
      001725 80 26            [24] 4342 	sjmp	00301$
      001727                       4343 00642$:
      001727 BE 6B 02         [24] 4344 	cjne	r6,#0x6b,00643$
      00172A 80 21            [24] 4345 	sjmp	00301$
      00172C                       4346 00643$:
      00172C BE 6C 60         [24] 4347 	cjne	r6,#0x6c,00151$
                                   4348 ;	src/main.c:892: case 'l' : // right
      00172F                       4349 00146$:
                                   4350 ;	src/main.c:893: printf_fast_f("DataIdx:%d\r\n", u8DataIdx);
      00172F 90 00 DE         [24] 4351 	mov	dptr,#_main_u8DataIdx_65536_103
      001732 E0               [24] 4352 	movx	a,@dptr
      001733 FE               [12] 4353 	mov	r6,a
      001734 7D 00            [12] 4354 	mov	r5,#0x00
      001736 C0 06            [24] 4355 	push	ar6
      001738 C0 05            [24] 4356 	push	ar5
      00173A 74 0E            [12] 4357 	mov	a,#___str_61
      00173C C0 E0            [24] 4358 	push	acc
      00173E 74 41            [12] 4359 	mov	a,#(___str_61 >> 8)
      001740 C0 E0            [24] 4360 	push	acc
      001742 12 2E DD         [24] 4361 	lcall	_printf_fast_f
      001745 E5 81            [12] 4362 	mov	a,sp
      001747 24 FC            [12] 4363 	add	a,#0xfc
      001749 F5 81            [12] 4364 	mov	sp,a
                                   4365 ;	src/main.c:894: break;
                                   4366 ;	src/main.c:899: for (i=0;i<MAX_DATA;i++) {
      00174B 80 42            [24] 4367 	sjmp	00151$
      00174D                       4368 00301$:
      00174D 7E 00            [12] 4369 	mov	r6,#0x00
      00174F                       4370 00262$:
                                   4371 ;	src/main.c:900: printf("0x%x ", pu8Data[i]);
      00174F EE               [12] 4372 	mov	a,r6
      001750 24 D4            [12] 4373 	add	a,#_main_pu8Data_65536_103
      001752 F5 82            [12] 4374 	mov	dpl,a
      001754 E4               [12] 4375 	clr	a
      001755 34 00            [12] 4376 	addc	a,#(_main_pu8Data_65536_103 >> 8)
      001757 F5 83            [12] 4377 	mov	dph,a
      001759 E0               [24] 4378 	movx	a,@dptr
      00175A FD               [12] 4379 	mov	r5,a
      00175B 7C 00            [12] 4380 	mov	r4,#0x00
      00175D C0 06            [24] 4381 	push	ar6
      00175F C0 05            [24] 4382 	push	ar5
      001761 C0 04            [24] 4383 	push	ar4
      001763 74 1B            [12] 4384 	mov	a,#___str_62
      001765 C0 E0            [24] 4385 	push	acc
      001767 74 41            [12] 4386 	mov	a,#(___str_62 >> 8)
      001769 C0 E0            [24] 4387 	push	acc
      00176B 74 80            [12] 4388 	mov	a,#0x80
      00176D C0 E0            [24] 4389 	push	acc
      00176F 12 34 49         [24] 4390 	lcall	_printf
      001772 E5 81            [12] 4391 	mov	a,sp
      001774 24 FB            [12] 4392 	add	a,#0xfb
      001776 F5 81            [12] 4393 	mov	sp,a
      001778 D0 06            [24] 4394 	pop	ar6
                                   4395 ;	src/main.c:899: for (i=0;i<MAX_DATA;i++) {
      00177A 0E               [12] 4396 	inc	r6
      00177B BE 0A 00         [24] 4397 	cjne	r6,#0x0a,00646$
      00177E                       4398 00646$:
      00177E 40 CF            [24] 4399 	jc	00262$
                                   4400 ;	src/main.c:902: printf_fast_f("\r\n");
      001780 74 76            [12] 4401 	mov	a,#___str_5
      001782 C0 E0            [24] 4402 	push	acc
      001784 74 3D            [12] 4403 	mov	a,#(___str_5 >> 8)
      001786 C0 E0            [24] 4404 	push	acc
      001788 12 2E DD         [24] 4405 	lcall	_printf_fast_f
      00178B 15 81            [12] 4406 	dec	sp
      00178D 15 81            [12] 4407 	dec	sp
                                   4408 ;	src/main.c:906: case UART0_INPUT_MODE4 : // 주기적으로 하향 패킷 생성 스테이트머신 제어용 CLI
      00178F                       4409 00151$:
                                   4410 ;	src/main.c:907: switch(u8RxUART) {
      00178F 90 00 98         [24] 4411 	mov	dptr,#_main_u8RxUART_65536_103
      001792 E0               [24] 4412 	movx	a,@dptr
      001793 FE               [12] 4413 	mov	r6,a
      001794 BE 65 02         [24] 4414 	cjne	r6,#0x65,00648$
      001797 80 1A            [24] 4415 	sjmp	00153$
      001799                       4416 00648$:
      001799 BE 73 2C         [24] 4417 	cjne	r6,#0x73,00155$
                                   4418 ;	src/main.c:909: printf_fast_f("START periodic packet generating..\r\n");
      00179C 74 21            [12] 4419 	mov	a,#___str_63
      00179E C0 E0            [24] 4420 	push	acc
      0017A0 74 41            [12] 4421 	mov	a,#(___str_63 >> 8)
      0017A2 C0 E0            [24] 4422 	push	acc
      0017A4 12 2E DD         [24] 4423 	lcall	_printf_fast_f
      0017A7 15 81            [12] 4424 	dec	sp
      0017A9 15 81            [12] 4425 	dec	sp
                                   4426 ;	src/main.c:910: u8PSCmd = CMD_PS_START;
      0017AB 90 00 A0         [24] 4427 	mov	dptr,#_main_u8PSCmd_65536_103
      0017AE 74 04            [12] 4428 	mov	a,#0x04
      0017B0 F0               [24] 4429 	movx	@dptr,a
                                   4430 ;	src/main.c:911: break;
                                   4431 ;	src/main.c:912: case 'e' : // 종료
      0017B1 80 15            [24] 4432 	sjmp	00155$
      0017B3                       4433 00153$:
                                   4434 ;	src/main.c:913: printf_fast_f("STOP  periodic packet generating..\r\n");
      0017B3 74 46            [12] 4435 	mov	a,#___str_64
      0017B5 C0 E0            [24] 4436 	push	acc
      0017B7 74 41            [12] 4437 	mov	a,#(___str_64 >> 8)
      0017B9 C0 E0            [24] 4438 	push	acc
      0017BB 12 2E DD         [24] 4439 	lcall	_printf_fast_f
      0017BE 15 81            [12] 4440 	dec	sp
      0017C0 15 81            [12] 4441 	dec	sp
                                   4442 ;	src/main.c:914: u8PSCmd = CMD_PS_END;
      0017C2 90 00 A0         [24] 4443 	mov	dptr,#_main_u8PSCmd_65536_103
      0017C5 74 05            [12] 4444 	mov	a,#0x05
      0017C7 F0               [24] 4445 	movx	@dptr,a
                                   4446 ;	src/main.c:918: case UART0_INPUT_MODE5 : // 상향 시험용
      0017C8                       4447 00155$:
                                   4448 ;	src/main.c:919: switch(u8RxUART) {
      0017C8 90 00 98         [24] 4449 	mov	dptr,#_main_u8RxUART_65536_103
      0017CB E0               [24] 4450 	movx	a,@dptr
      0017CC FE               [12] 4451 	mov	r6,a
      0017CD BE 30 02         [24] 4452 	cjne	r6,#0x30,00651$
      0017D0 80 2C            [24] 4453 	sjmp	00156$
      0017D2                       4454 00651$:
      0017D2 BE 31 02         [24] 4455 	cjne	r6,#0x31,00652$
      0017D5 80 60            [24] 4456 	sjmp	00157$
      0017D7                       4457 00652$:
      0017D7 BE 32 03         [24] 4458 	cjne	r6,#0x32,00653$
      0017DA 02 18 70         [24] 4459 	ljmp	00158$
      0017DD                       4460 00653$:
      0017DD BE 33 03         [24] 4461 	cjne	r6,#0x33,00654$
      0017E0 02 18 A9         [24] 4462 	ljmp	00159$
      0017E3                       4463 00654$:
      0017E3 BE 34 03         [24] 4464 	cjne	r6,#0x34,00655$
      0017E6 02 18 E2         [24] 4465 	ljmp	00160$
      0017E9                       4466 00655$:
      0017E9 BE 35 03         [24] 4467 	cjne	r6,#0x35,00656$
      0017EC 02 19 1B         [24] 4468 	ljmp	00161$
      0017EF                       4469 00656$:
      0017EF BE 6A 03         [24] 4470 	cjne	r6,#0x6a,00657$
      0017F2 02 19 9C         [24] 4471 	ljmp	00165$
      0017F5                       4472 00657$:
      0017F5 BE 6B 03         [24] 4473 	cjne	r6,#0x6b,00658$
      0017F8 02 19 54         [24] 4474 	ljmp	00162$
      0017FB                       4475 00658$:
      0017FB 02 19 E0         [24] 4476 	ljmp	00168$
                                   4477 ;	src/main.c:920: case '0' : // 
      0017FE                       4478 00156$:
                                   4479 ;	src/main.c:921: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_INIT, 0, pu8Data);
      0017FE 90 00 9B         [24] 4480 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001801 E0               [24] 4481 	movx	a,@dptr
      001802 75 F0 04         [24] 4482 	mov	b,#0x04
      001805 A4               [48] 4483 	mul	ab
      001806 24 5E            [12] 4484 	add	a,#_gpu32UartSpeed
      001808 F5 82            [12] 4485 	mov	dpl,a
      00180A 74 00            [12] 4486 	mov	a,#(_gpu32UartSpeed >> 8)
      00180C 35 F0            [12] 4487 	addc	a,b
      00180E F5 83            [12] 4488 	mov	dph,a
      001810 E0               [24] 4489 	movx	a,@dptr
      001811 FB               [12] 4490 	mov	r3,a
      001812 A3               [24] 4491 	inc	dptr
      001813 E0               [24] 4492 	movx	a,@dptr
      001814 FC               [12] 4493 	mov	r4,a
      001815 A3               [24] 4494 	inc	dptr
      001816 E0               [24] 4495 	movx	a,@dptr
      001817 FD               [12] 4496 	mov	r5,a
      001818 A3               [24] 4497 	inc	dptr
      001819 E0               [24] 4498 	movx	a,@dptr
      00181A FE               [12] 4499 	mov	r6,a
      00181B 75 36 D4         [24] 4500 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      00181E 75 37 00         [24] 4501 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      001821 75 38 00         [24] 4502 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      001824 75 34 00         [24] 4503 	mov	_make_linefi_payload_PARM_2,#0x00
      001827 75 35 00         [24] 4504 	mov	_make_linefi_payload_PARM_3,#0x00
      00182A 8B 82            [24] 4505 	mov	dpl,r3
      00182C 8C 83            [24] 4506 	mov	dph,r4
      00182E 8D F0            [24] 4507 	mov	b,r5
      001830 EE               [12] 4508 	mov	a,r6
      001831 12 11 BE         [24] 4509 	lcall	_make_linefi_payload
                                   4510 ;	src/main.c:922: break;
      001834 02 19 E0         [24] 4511 	ljmp	00168$
                                   4512 ;	src/main.c:923: case '1' : // 
      001837                       4513 00157$:
                                   4514 ;	src/main.c:924: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_PREAMBLE, 0, pu8Data);
      001837 90 00 9B         [24] 4515 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      00183A E0               [24] 4516 	movx	a,@dptr
      00183B 75 F0 04         [24] 4517 	mov	b,#0x04
      00183E A4               [48] 4518 	mul	ab
      00183F 24 5E            [12] 4519 	add	a,#_gpu32UartSpeed
      001841 F5 82            [12] 4520 	mov	dpl,a
      001843 74 00            [12] 4521 	mov	a,#(_gpu32UartSpeed >> 8)
      001845 35 F0            [12] 4522 	addc	a,b
      001847 F5 83            [12] 4523 	mov	dph,a
      001849 E0               [24] 4524 	movx	a,@dptr
      00184A FB               [12] 4525 	mov	r3,a
      00184B A3               [24] 4526 	inc	dptr
      00184C E0               [24] 4527 	movx	a,@dptr
      00184D FC               [12] 4528 	mov	r4,a
      00184E A3               [24] 4529 	inc	dptr
      00184F E0               [24] 4530 	movx	a,@dptr
      001850 FD               [12] 4531 	mov	r5,a
      001851 A3               [24] 4532 	inc	dptr
      001852 E0               [24] 4533 	movx	a,@dptr
      001853 FE               [12] 4534 	mov	r6,a
      001854 75 36 D4         [24] 4535 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      001857 75 37 00         [24] 4536 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      00185A 75 38 00         [24] 4537 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      00185D 75 34 01         [24] 4538 	mov	_make_linefi_payload_PARM_2,#0x01
      001860 75 35 00         [24] 4539 	mov	_make_linefi_payload_PARM_3,#0x00
      001863 8B 82            [24] 4540 	mov	dpl,r3
      001865 8C 83            [24] 4541 	mov	dph,r4
      001867 8D F0            [24] 4542 	mov	b,r5
      001869 EE               [12] 4543 	mov	a,r6
      00186A 12 11 BE         [24] 4544 	lcall	_make_linefi_payload
                                   4545 ;	src/main.c:925: break;
      00186D 02 19 E0         [24] 4546 	ljmp	00168$
                                   4547 ;	src/main.c:926: case '2' : // 
      001870                       4548 00158$:
                                   4549 ;	src/main.c:927: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_DATA, 0, pu8Data);
      001870 90 00 9B         [24] 4550 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001873 E0               [24] 4551 	movx	a,@dptr
      001874 75 F0 04         [24] 4552 	mov	b,#0x04
      001877 A4               [48] 4553 	mul	ab
      001878 24 5E            [12] 4554 	add	a,#_gpu32UartSpeed
      00187A F5 82            [12] 4555 	mov	dpl,a
      00187C 74 00            [12] 4556 	mov	a,#(_gpu32UartSpeed >> 8)
      00187E 35 F0            [12] 4557 	addc	a,b
      001880 F5 83            [12] 4558 	mov	dph,a
      001882 E0               [24] 4559 	movx	a,@dptr
      001883 FB               [12] 4560 	mov	r3,a
      001884 A3               [24] 4561 	inc	dptr
      001885 E0               [24] 4562 	movx	a,@dptr
      001886 FC               [12] 4563 	mov	r4,a
      001887 A3               [24] 4564 	inc	dptr
      001888 E0               [24] 4565 	movx	a,@dptr
      001889 FD               [12] 4566 	mov	r5,a
      00188A A3               [24] 4567 	inc	dptr
      00188B E0               [24] 4568 	movx	a,@dptr
      00188C FE               [12] 4569 	mov	r6,a
      00188D 75 36 D4         [24] 4570 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      001890 75 37 00         [24] 4571 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      001893 75 38 00         [24] 4572 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      001896 75 34 02         [24] 4573 	mov	_make_linefi_payload_PARM_2,#0x02
      001899 75 35 00         [24] 4574 	mov	_make_linefi_payload_PARM_3,#0x00
      00189C 8B 82            [24] 4575 	mov	dpl,r3
      00189E 8C 83            [24] 4576 	mov	dph,r4
      0018A0 8D F0            [24] 4577 	mov	b,r5
      0018A2 EE               [12] 4578 	mov	a,r6
      0018A3 12 11 BE         [24] 4579 	lcall	_make_linefi_payload
                                   4580 ;	src/main.c:928: break;
      0018A6 02 19 E0         [24] 4581 	ljmp	00168$
                                   4582 ;	src/main.c:929: case '3' : // 
      0018A9                       4583 00159$:
                                   4584 ;	src/main.c:930: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_DATA, 0xff, pu8Data);
      0018A9 90 00 9B         [24] 4585 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      0018AC E0               [24] 4586 	movx	a,@dptr
      0018AD 75 F0 04         [24] 4587 	mov	b,#0x04
      0018B0 A4               [48] 4588 	mul	ab
      0018B1 24 5E            [12] 4589 	add	a,#_gpu32UartSpeed
      0018B3 F5 82            [12] 4590 	mov	dpl,a
      0018B5 74 00            [12] 4591 	mov	a,#(_gpu32UartSpeed >> 8)
      0018B7 35 F0            [12] 4592 	addc	a,b
      0018B9 F5 83            [12] 4593 	mov	dph,a
      0018BB E0               [24] 4594 	movx	a,@dptr
      0018BC FB               [12] 4595 	mov	r3,a
      0018BD A3               [24] 4596 	inc	dptr
      0018BE E0               [24] 4597 	movx	a,@dptr
      0018BF FC               [12] 4598 	mov	r4,a
      0018C0 A3               [24] 4599 	inc	dptr
      0018C1 E0               [24] 4600 	movx	a,@dptr
      0018C2 FD               [12] 4601 	mov	r5,a
      0018C3 A3               [24] 4602 	inc	dptr
      0018C4 E0               [24] 4603 	movx	a,@dptr
      0018C5 FE               [12] 4604 	mov	r6,a
      0018C6 75 36 D4         [24] 4605 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      0018C9 75 37 00         [24] 4606 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      0018CC 75 38 00         [24] 4607 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      0018CF 75 34 02         [24] 4608 	mov	_make_linefi_payload_PARM_2,#0x02
      0018D2 75 35 FF         [24] 4609 	mov	_make_linefi_payload_PARM_3,#0xff
      0018D5 8B 82            [24] 4610 	mov	dpl,r3
      0018D7 8C 83            [24] 4611 	mov	dph,r4
      0018D9 8D F0            [24] 4612 	mov	b,r5
      0018DB EE               [12] 4613 	mov	a,r6
      0018DC 12 11 BE         [24] 4614 	lcall	_make_linefi_payload
                                   4615 ;	src/main.c:931: break;
      0018DF 02 19 E0         [24] 4616 	ljmp	00168$
                                   4617 ;	src/main.c:932: case '4' : // 
      0018E2                       4618 00160$:
                                   4619 ;	src/main.c:933: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_NO_MANCHESTER, 0x0, pu8Data);
      0018E2 90 00 9B         [24] 4620 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      0018E5 E0               [24] 4621 	movx	a,@dptr
      0018E6 75 F0 04         [24] 4622 	mov	b,#0x04
      0018E9 A4               [48] 4623 	mul	ab
      0018EA 24 5E            [12] 4624 	add	a,#_gpu32UartSpeed
      0018EC F5 82            [12] 4625 	mov	dpl,a
      0018EE 74 00            [12] 4626 	mov	a,#(_gpu32UartSpeed >> 8)
      0018F0 35 F0            [12] 4627 	addc	a,b
      0018F2 F5 83            [12] 4628 	mov	dph,a
      0018F4 E0               [24] 4629 	movx	a,@dptr
      0018F5 FB               [12] 4630 	mov	r3,a
      0018F6 A3               [24] 4631 	inc	dptr
      0018F7 E0               [24] 4632 	movx	a,@dptr
      0018F8 FC               [12] 4633 	mov	r4,a
      0018F9 A3               [24] 4634 	inc	dptr
      0018FA E0               [24] 4635 	movx	a,@dptr
      0018FB FD               [12] 4636 	mov	r5,a
      0018FC A3               [24] 4637 	inc	dptr
      0018FD E0               [24] 4638 	movx	a,@dptr
      0018FE FE               [12] 4639 	mov	r6,a
      0018FF 75 36 D4         [24] 4640 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      001902 75 37 00         [24] 4641 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      001905 75 38 00         [24] 4642 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      001908 75 34 03         [24] 4643 	mov	_make_linefi_payload_PARM_2,#0x03
      00190B 75 35 00         [24] 4644 	mov	_make_linefi_payload_PARM_3,#0x00
      00190E 8B 82            [24] 4645 	mov	dpl,r3
      001910 8C 83            [24] 4646 	mov	dph,r4
      001912 8D F0            [24] 4647 	mov	b,r5
      001914 EE               [12] 4648 	mov	a,r6
      001915 12 11 BE         [24] 4649 	lcall	_make_linefi_payload
                                   4650 ;	src/main.c:934: break;
      001918 02 19 E0         [24] 4651 	ljmp	00168$
                                   4652 ;	src/main.c:935: case '5' : // 
      00191B                       4653 00161$:
                                   4654 ;	src/main.c:936: make_linefi_payload(gpu32UartSpeed[u8LineFiSpeed], ULTMODE_NO_MANCHESTER, 0xff, pu8Data);
      00191B 90 00 9B         [24] 4655 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      00191E E0               [24] 4656 	movx	a,@dptr
      00191F 75 F0 04         [24] 4657 	mov	b,#0x04
      001922 A4               [48] 4658 	mul	ab
      001923 24 5E            [12] 4659 	add	a,#_gpu32UartSpeed
      001925 F5 82            [12] 4660 	mov	dpl,a
      001927 74 00            [12] 4661 	mov	a,#(_gpu32UartSpeed >> 8)
      001929 35 F0            [12] 4662 	addc	a,b
      00192B F5 83            [12] 4663 	mov	dph,a
      00192D E0               [24] 4664 	movx	a,@dptr
      00192E FB               [12] 4665 	mov	r3,a
      00192F A3               [24] 4666 	inc	dptr
      001930 E0               [24] 4667 	movx	a,@dptr
      001931 FC               [12] 4668 	mov	r4,a
      001932 A3               [24] 4669 	inc	dptr
      001933 E0               [24] 4670 	movx	a,@dptr
      001934 FD               [12] 4671 	mov	r5,a
      001935 A3               [24] 4672 	inc	dptr
      001936 E0               [24] 4673 	movx	a,@dptr
      001937 FE               [12] 4674 	mov	r6,a
      001938 75 36 D4         [24] 4675 	mov	_make_linefi_payload_PARM_4,#_main_pu8Data_65536_103
      00193B 75 37 00         [24] 4676 	mov	(_make_linefi_payload_PARM_4 + 1),#(_main_pu8Data_65536_103 >> 8)
      00193E 75 38 00         [24] 4677 	mov	(_make_linefi_payload_PARM_4 + 2),#0x00
      001941 75 34 03         [24] 4678 	mov	_make_linefi_payload_PARM_2,#0x03
      001944 75 35 FF         [24] 4679 	mov	_make_linefi_payload_PARM_3,#0xff
      001947 8B 82            [24] 4680 	mov	dpl,r3
      001949 8C 83            [24] 4681 	mov	dph,r4
      00194B 8D F0            [24] 4682 	mov	b,r5
      00194D EE               [12] 4683 	mov	a,r6
      00194E 12 11 BE         [24] 4684 	lcall	_make_linefi_payload
                                   4685 ;	src/main.c:937: break;
      001951 02 19 E0         [24] 4686 	ljmp	00168$
                                   4687 ;	src/main.c:939: case 'k' : // speed up
      001954                       4688 00162$:
                                   4689 ;	src/main.c:940: if (u8LineFiSpeed  < 13) {
      001954 90 00 9B         [24] 4690 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001957 E0               [24] 4691 	movx	a,@dptr
      001958 FE               [12] 4692 	mov	r6,a
      001959 BE 0D 00         [24] 4693 	cjne	r6,#0x0d,00659$
      00195C                       4694 00659$:
      00195C 50 06            [24] 4695 	jnc	00164$
                                   4696 ;	src/main.c:941: u8LineFiSpeed++;
      00195E 90 00 9B         [24] 4697 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001961 EE               [12] 4698 	mov	a,r6
      001962 04               [12] 4699 	inc	a
      001963 F0               [24] 4700 	movx	@dptr,a
      001964                       4701 00164$:
                                   4702 ;	src/main.c:943: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);
      001964 90 00 9B         [24] 4703 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001967 E0               [24] 4704 	movx	a,@dptr
      001968 75 F0 04         [24] 4705 	mov	b,#0x04
      00196B A4               [48] 4706 	mul	ab
      00196C 24 5E            [12] 4707 	add	a,#_gpu32UartSpeed
      00196E F5 82            [12] 4708 	mov	dpl,a
      001970 74 00            [12] 4709 	mov	a,#(_gpu32UartSpeed >> 8)
      001972 35 F0            [12] 4710 	addc	a,b
      001974 F5 83            [12] 4711 	mov	dph,a
      001976 E0               [24] 4712 	movx	a,@dptr
      001977 FB               [12] 4713 	mov	r3,a
      001978 A3               [24] 4714 	inc	dptr
      001979 E0               [24] 4715 	movx	a,@dptr
      00197A FC               [12] 4716 	mov	r4,a
      00197B A3               [24] 4717 	inc	dptr
      00197C E0               [24] 4718 	movx	a,@dptr
      00197D FD               [12] 4719 	mov	r5,a
      00197E A3               [24] 4720 	inc	dptr
      00197F E0               [24] 4721 	movx	a,@dptr
      001980 FE               [12] 4722 	mov	r6,a
      001981 C0 03            [24] 4723 	push	ar3
      001983 C0 04            [24] 4724 	push	ar4
      001985 C0 05            [24] 4725 	push	ar5
      001987 C0 06            [24] 4726 	push	ar6
      001989 74 21            [12] 4727 	mov	a,#___str_47
      00198B C0 E0            [24] 4728 	push	acc
      00198D 74 40            [12] 4729 	mov	a,#(___str_47 >> 8)
      00198F C0 E0            [24] 4730 	push	acc
      001991 12 2E DD         [24] 4731 	lcall	_printf_fast_f
      001994 E5 81            [12] 4732 	mov	a,sp
      001996 24 FA            [12] 4733 	add	a,#0xfa
      001998 F5 81            [12] 4734 	mov	sp,a
                                   4735 ;	src/main.c:944: break;
                                   4736 ;	src/main.c:945: case 'j' : // speed down
      00199A 80 44            [24] 4737 	sjmp	00168$
      00199C                       4738 00165$:
                                   4739 ;	src/main.c:946: if (u8LineFiSpeed  != 0) {
      00199C 90 00 9B         [24] 4740 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      00199F E0               [24] 4741 	movx	a,@dptr
      0019A0 FE               [12] 4742 	mov	r6,a
      0019A1 E0               [24] 4743 	movx	a,@dptr
      0019A2 60 06            [24] 4744 	jz	00167$
                                   4745 ;	src/main.c:947: u8LineFiSpeed--;
      0019A4 EE               [12] 4746 	mov	a,r6
      0019A5 14               [12] 4747 	dec	a
      0019A6 90 00 9B         [24] 4748 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      0019A9 F0               [24] 4749 	movx	@dptr,a
      0019AA                       4750 00167$:
                                   4751 ;	src/main.c:949: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[u8LineFiSpeed]);
      0019AA 90 00 9B         [24] 4752 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      0019AD E0               [24] 4753 	movx	a,@dptr
      0019AE 75 F0 04         [24] 4754 	mov	b,#0x04
      0019B1 A4               [48] 4755 	mul	ab
      0019B2 24 5E            [12] 4756 	add	a,#_gpu32UartSpeed
      0019B4 F5 82            [12] 4757 	mov	dpl,a
      0019B6 74 00            [12] 4758 	mov	a,#(_gpu32UartSpeed >> 8)
      0019B8 35 F0            [12] 4759 	addc	a,b
      0019BA F5 83            [12] 4760 	mov	dph,a
      0019BC E0               [24] 4761 	movx	a,@dptr
      0019BD FB               [12] 4762 	mov	r3,a
      0019BE A3               [24] 4763 	inc	dptr
      0019BF E0               [24] 4764 	movx	a,@dptr
      0019C0 FC               [12] 4765 	mov	r4,a
      0019C1 A3               [24] 4766 	inc	dptr
      0019C2 E0               [24] 4767 	movx	a,@dptr
      0019C3 FD               [12] 4768 	mov	r5,a
      0019C4 A3               [24] 4769 	inc	dptr
      0019C5 E0               [24] 4770 	movx	a,@dptr
      0019C6 FE               [12] 4771 	mov	r6,a
      0019C7 C0 03            [24] 4772 	push	ar3
      0019C9 C0 04            [24] 4773 	push	ar4
      0019CB C0 05            [24] 4774 	push	ar5
      0019CD C0 06            [24] 4775 	push	ar6
      0019CF 74 21            [12] 4776 	mov	a,#___str_47
      0019D1 C0 E0            [24] 4777 	push	acc
      0019D3 74 40            [12] 4778 	mov	a,#(___str_47 >> 8)
      0019D5 C0 E0            [24] 4779 	push	acc
      0019D7 12 2E DD         [24] 4780 	lcall	_printf_fast_f
      0019DA E5 81            [12] 4781 	mov	a,sp
      0019DC 24 FA            [12] 4782 	add	a,#0xfa
      0019DE F5 81            [12] 4783 	mov	sp,a
                                   4784 ;	src/main.c:951: }
      0019E0                       4785 00168$:
                                   4786 ;	src/main.c:952: switch(u8RxUART) {
      0019E0 90 00 98         [24] 4787 	mov	dptr,#_main_u8RxUART_65536_103
      0019E3 E0               [24] 4788 	movx	a,@dptr
      0019E4 FE               [12] 4789 	mov	r6,a
      0019E5 BE 30 02         [24] 4790 	cjne	r6,#0x30,00662$
      0019E8 80 1C            [24] 4791 	sjmp	00174$
      0019EA                       4792 00662$:
      0019EA BE 31 02         [24] 4793 	cjne	r6,#0x31,00663$
      0019ED 80 17            [24] 4794 	sjmp	00174$
      0019EF                       4795 00663$:
      0019EF BE 32 02         [24] 4796 	cjne	r6,#0x32,00664$
      0019F2 80 12            [24] 4797 	sjmp	00174$
      0019F4                       4798 00664$:
      0019F4 BE 33 02         [24] 4799 	cjne	r6,#0x33,00665$
      0019F7 80 0D            [24] 4800 	sjmp	00174$
      0019F9                       4801 00665$:
      0019F9 BE 34 02         [24] 4802 	cjne	r6,#0x34,00666$
      0019FC 80 08            [24] 4803 	sjmp	00174$
      0019FE                       4804 00666$:
      0019FE BE 35 02         [24] 4805 	cjne	r6,#0x35,00667$
      001A01 80 03            [24] 4806 	sjmp	00668$
      001A03                       4807 00667$:
      001A03 02 1A F4         [24] 4808 	ljmp	00200$
      001A06                       4809 00668$:
                                   4810 ;	src/main.c:958: case '5' : // 
      001A06                       4811 00174$:
                                   4812 ;	src/main.c:959: stLineFiPkt.u8Type = Type_UpLinkTest;
      001A06 90 01 11         [24] 4813 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0001)
      001A09 74 07            [12] 4814 	mov	a,#0x07
      001A0B F0               [24] 4815 	movx	@dptr,a
                                   4816 ;	src/main.c:960: stLineFiPkt.u8Size = 10;
      001A0C 90 01 13         [24] 4817 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0003)
      001A0F 74 0A            [12] 4818 	mov	a,#0x0a
      001A11 F0               [24] 4819 	movx	@dptr,a
                                   4820 ;	src/main.c:961: stLineFiPkt.pu8Data = pu8Data;
      001A12 90 01 15         [24] 4821 	mov	dptr,#(_main_stLineFiPkt_65536_103 + 0x0005)
      001A15 74 D4            [12] 4822 	mov	a,#_main_pu8Data_65536_103
      001A17 F0               [24] 4823 	movx	@dptr,a
      001A18 74 00            [12] 4824 	mov	a,#(_main_pu8Data_65536_103 >> 8)
      001A1A A3               [24] 4825 	inc	dptr
      001A1B F0               [24] 4826 	movx	@dptr,a
      001A1C E4               [12] 4827 	clr	a
      001A1D A3               [24] 4828 	inc	dptr
      001A1E F0               [24] 4829 	movx	@dptr,a
                                   4830 ;	src/main.c:963: send_linefi_packet(&stLineFiPkt);
      001A1F 90 01 10         [24] 4831 	mov	dptr,#_main_stLineFiPkt_65536_103
      001A22 75 F0 00         [24] 4832 	mov	b,#0x00
      001A25 12 21 D5         [24] 4833 	lcall	_send_linefi_packet
                                   4834 ;	src/main.c:964: print_linefipacket(&stLineFiPkt);
      001A28 90 01 10         [24] 4835 	mov	dptr,#_main_stLineFiPkt_65536_103
      001A2B 75 F0 00         [24] 4836 	mov	b,#0x00
      001A2E 12 24 D5         [24] 4837 	lcall	_print_linefipacket
                                   4838 ;	src/main.c:965: InitialUART1_Timer3(gpu32UartSpeed[u8LineFiSpeed]);
      001A31 90 00 9B         [24] 4839 	mov	dptr,#_main_u8LineFiSpeed_65536_103
      001A34 E0               [24] 4840 	movx	a,@dptr
      001A35 75 F0 04         [24] 4841 	mov	b,#0x04
      001A38 A4               [48] 4842 	mul	ab
      001A39 24 5E            [12] 4843 	add	a,#_gpu32UartSpeed
      001A3B F5 82            [12] 4844 	mov	dpl,a
      001A3D 74 00            [12] 4845 	mov	a,#(_gpu32UartSpeed >> 8)
      001A3F 35 F0            [12] 4846 	addc	a,b
      001A41 F5 83            [12] 4847 	mov	dph,a
      001A43 E0               [24] 4848 	movx	a,@dptr
      001A44 FB               [12] 4849 	mov	r3,a
      001A45 A3               [24] 4850 	inc	dptr
      001A46 E0               [24] 4851 	movx	a,@dptr
      001A47 FC               [12] 4852 	mov	r4,a
      001A48 A3               [24] 4853 	inc	dptr
      001A49 E0               [24] 4854 	movx	a,@dptr
      001A4A FD               [12] 4855 	mov	r5,a
      001A4B A3               [24] 4856 	inc	dptr
      001A4C E0               [24] 4857 	movx	a,@dptr
      001A4D 8B 82            [24] 4858 	mov	dpl,r3
      001A4F 8C 83            [24] 4859 	mov	dph,r4
      001A51 8D F0            [24] 4860 	mov	b,r5
      001A53 12 29 DA         [24] 4861 	lcall	_InitialUART1_Timer3
                                   4862 ;	src/main.c:969: break;
      001A56 02 1A F4         [24] 4863 	ljmp	00200$
                                   4864 ;	src/main.c:970: case UART0_INPUT_MODE6 : // 루프백 확인
      001A59                       4865 00176$:
                                   4866 ;	src/main.c:971: printf_fast_f("%c", u8RxUART);
      001A59 8F 05            [24] 4867 	mov	ar5,r7
      001A5B 7E 00            [12] 4868 	mov	r6,#0x00
      001A5D C0 05            [24] 4869 	push	ar5
      001A5F C0 06            [24] 4870 	push	ar6
      001A61 74 79            [12] 4871 	mov	a,#___str_6
      001A63 C0 E0            [24] 4872 	push	acc
      001A65 74 3D            [12] 4873 	mov	a,#(___str_6 >> 8)
      001A67 C0 E0            [24] 4874 	push	acc
      001A69 12 2E DD         [24] 4875 	lcall	_printf_fast_f
      001A6C E5 81            [12] 4876 	mov	a,sp
      001A6E 24 FC            [12] 4877 	add	a,#0xfc
      001A70 F5 81            [12] 4878 	mov	sp,a
                                   4879 ;	src/main.c:972: break;
      001A72 02 1A F4         [24] 4880 	ljmp	00200$
                                   4881 ;	src/main.c:973: case UART0_INPUT_MODE7 : // uart0 --> uart1 통과
      001A75                       4882 00177$:
                                   4883 ;	src/main.c:974: if ((u8RxUART>>4) == 0) {
      001A75 EF               [12] 4884 	mov	a,r7
      001A76 C4               [12] 4885 	swap	a
      001A77 54 0F            [12] 4886 	anl	a,#0x0f
      001A79 70 1F            [24] 4887 	jnz	00184$
                                   4888 ;	src/main.c:975: switch(u8RxUART) {
      001A7B EF               [12] 4889 	mov	a,r7
      001A7C FE               [12] 4890 	mov	r6,a
      001A7D 24 FC            [12] 4891 	add	a,#0xff - 0x03
      001A7F 50 03            [24] 4892 	jnc	00670$
      001A81 02 1A F4         [24] 4893 	ljmp	00200$
      001A84                       4894 00670$:
      001A84 EE               [12] 4895 	mov	a,r6
      001A85 2E               [12] 4896 	add	a,r6
                                   4897 ;	src/main.c:976: case 0 :
      001A86 90 1A 8A         [24] 4898 	mov	dptr,#00671$
      001A89 73               [24] 4899 	jmp	@a+dptr
      001A8A                       4900 00671$:
      001A8A 80 06            [24] 4901 	sjmp	00178$
      001A8C 80 08            [24] 4902 	sjmp	00179$
      001A8E 80 64            [24] 4903 	sjmp	00200$
      001A90 80 62            [24] 4904 	sjmp	00200$
      001A92                       4905 00178$:
                                   4906 ;	src/main.c:977: LINEFI_EN0 = 0;
                                   4907 ;	assignBit
      001A92 C2 90            [12] 4908 	clr	_P10
                                   4909 ;	src/main.c:978: break;
                                   4910 ;	src/main.c:979: case 1 :
      001A94 80 5E            [24] 4911 	sjmp	00200$
      001A96                       4912 00179$:
                                   4913 ;	src/main.c:980: LINEFI_EN0 = 1;
                                   4914 ;	assignBit
      001A96 D2 90            [12] 4915 	setb	_P10
                                   4916 ;	src/main.c:982: break;
                                   4917 ;	src/main.c:987: }
      001A98 80 5A            [24] 4918 	sjmp	00200$
      001A9A                       4919 00184$:
                                   4920 ;	src/main.c:990: send_octet_to_linefi(u8RxUART);
      001A9A 8F 82            [24] 4921 	mov	dpl,r7
      001A9C 12 21 D2         [24] 4922 	lcall	_send_octet_to_linefi
                                   4923 ;	src/main.c:991: printf_fast_f("OK");
      001A9F 74 6B            [12] 4924 	mov	a,#___str_65
      001AA1 C0 E0            [24] 4925 	push	acc
      001AA3 74 41            [12] 4926 	mov	a,#(___str_65 >> 8)
      001AA5 C0 E0            [24] 4927 	push	acc
      001AA7 12 2E DD         [24] 4928 	lcall	_printf_fast_f
      001AAA 15 81            [12] 4929 	dec	sp
      001AAC 15 81            [12] 4930 	dec	sp
                                   4931 ;	src/main.c:993: break;
                                   4932 ;	src/main.c:998: } //switch(u8RxUART)
      001AAE 80 44            [24] 4933 	sjmp	00200$
      001AB0                       4934 00199$:
                                   4935 ;	src/main.c:1002: switch(u8StateUart0InputMode) {
      001AB0 90 00 A1         [24] 4936 	mov	dptr,#_main_u8StateUart0InputMode_65536_103
      001AB3 E0               [24] 4937 	movx	a,@dptr
      001AB4 FF               [12] 4938 	mov  r7,a
      001AB5 24 FB            [12] 4939 	add	a,#0xff - 0x04
      001AB7 40 3B            [24] 4940 	jc	00200$
      001AB9 EF               [12] 4941 	mov	a,r7
      001ABA 2F               [12] 4942 	add	a,r7
                                   4943 ;	src/main.c:1005: case UART0_INPUT_MODE1 :
      001ABB 90 1A BF         [24] 4944 	mov	dptr,#00673$
      001ABE 73               [24] 4945 	jmp	@a+dptr
      001ABF                       4946 00673$:
      001ABF 80 33            [24] 4947 	sjmp	00200$
      001AC1 80 06            [24] 4948 	sjmp	00190$
      001AC3 80 2F            [24] 4949 	sjmp	00200$
      001AC5 80 2D            [24] 4950 	sjmp	00200$
      001AC7 80 2B            [24] 4951 	sjmp	00200$
      001AC9                       4952 00190$:
                                   4953 ;	src/main.c:1006: if (gu16TimeCnt > 10 && ucBufIdx != 0) {
      001AC9 90 00 58         [24] 4954 	mov	dptr,#_gu16TimeCnt
      001ACC E0               [24] 4955 	movx	a,@dptr
      001ACD FE               [12] 4956 	mov	r6,a
      001ACE A3               [24] 4957 	inc	dptr
      001ACF E0               [24] 4958 	movx	a,@dptr
      001AD0 FF               [12] 4959 	mov	r7,a
      001AD1 C3               [12] 4960 	clr	c
      001AD2 74 0A            [12] 4961 	mov	a,#0x0a
      001AD4 9E               [12] 4962 	subb	a,r6
      001AD5 E4               [12] 4963 	clr	a
      001AD6 9F               [12] 4964 	subb	a,r7
      001AD7 50 1B            [24] 4965 	jnc	00200$
      001AD9 90 00 DF         [24] 4966 	mov	dptr,#_main_ucBufIdx_65536_103
      001ADC E0               [24] 4967 	movx	a,@dptr
      001ADD FF               [12] 4968 	mov	r7,a
      001ADE E0               [24] 4969 	movx	a,@dptr
      001ADF 60 13            [24] 4970 	jz	00200$
                                   4971 ;	src/main.c:1007: printoutbuf(ucBufIdx, pcBuf);
      001AE1 75 25 A2         [24] 4972 	mov	_printoutbuf_PARM_2,#_main_pcBuf_65536_103
      001AE4 75 26 00         [24] 4973 	mov	(_printoutbuf_PARM_2 + 1),#(_main_pcBuf_65536_103 >> 8)
      001AE7 75 27 00         [24] 4974 	mov	(_printoutbuf_PARM_2 + 2),#0x00
      001AEA 8F 82            [24] 4975 	mov	dpl,r7
      001AEC 12 09 66         [24] 4976 	lcall	_printoutbuf
                                   4977 ;	src/main.c:1008: ucBufIdx = 0;
      001AEF 90 00 DF         [24] 4978 	mov	dptr,#_main_ucBufIdx_65536_103
      001AF2 E4               [12] 4979 	clr	a
      001AF3 F0               [24] 4980 	movx	@dptr,a
                                   4981 ;	src/main.c:1017: } //switch(u8StateUart0InputMode)
      001AF4                       4982 00200$:
                                   4983 ;	src/main.c:1025: if (u8PwrOnFirstFlag) { // 전원 켜진 후, 한 번만 동작
      001AF4 90 00 9D         [24] 4984 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001AF7 E0               [24] 4985 	movx	a,@dptr
      001AF8 FF               [12] 4986 	mov	r7,a
      001AF9 70 03            [24] 4987 	jnz	00676$
      001AFB 02 1B F9         [24] 4988 	ljmp	00212$
      001AFE                       4989 00676$:
                                   4990 ;	src/main.c:1026: switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3)| (SW_C<<4), &u8SwNum)) {
      001AFE A2 95            [12] 4991 	mov	c,_P15
      001B00 E4               [12] 4992 	clr	a
      001B01 33               [12] 4993 	rlc	a
      001B02 FE               [12] 4994 	mov	r6,a
      001B03 A2 B0            [12] 4995 	mov	c,_P30
      001B05 E4               [12] 4996 	clr	a
      001B06 33               [12] 4997 	rlc	a
      001B07 25 E0            [12] 4998 	add	a,acc
      001B09 42 06            [12] 4999 	orl	ar6,a
      001B0B A2 80            [12] 5000 	mov	c,_P00
      001B0D E4               [12] 5001 	clr	a
      001B0E 33               [12] 5002 	rlc	a
      001B0F 25 E0            [12] 5003 	add	a,acc
      001B11 25 E0            [12] 5004 	add	a,acc
      001B13 42 06            [12] 5005 	orl	ar6,a
      001B15 A2 93            [12] 5006 	mov	c,_P13
      001B17 E4               [12] 5007 	clr	a
      001B18 33               [12] 5008 	rlc	a
      001B19 C4               [12] 5009 	swap	a
      001B1A 03               [12] 5010 	rr	a
      001B1B 54 F8            [12] 5011 	anl	a,#0xf8
      001B1D 42 06            [12] 5012 	orl	ar6,a
      001B1F A2 97            [12] 5013 	mov	c,_P17
      001B21 E4               [12] 5014 	clr	a
      001B22 33               [12] 5015 	rlc	a
      001B23 C4               [12] 5016 	swap	a
      001B24 54 F0            [12] 5017 	anl	a,#0xf0
      001B26 4E               [12] 5018 	orl	a,r6
      001B27 F5 82            [12] 5019 	mov	dpl,a
      001B29 75 1A 9E         [24] 5020 	mov	_state_switches_PARM_2,#_main_u8SwNum_65536_103
      001B2C 75 1B 00         [24] 5021 	mov	(_state_switches_PARM_2 + 1),#(_main_u8SwNum_65536_103 >> 8)
      001B2F 75 1C 00         [24] 5022 	mov	(_state_switches_PARM_2 + 2),#0x00
      001B32 C0 07            [24] 5023 	push	ar7
      001B34 12 08 79         [24] 5024 	lcall	_state_switches
      001B37 AE 82            [24] 5025 	mov	r6,dpl
      001B39 D0 07            [24] 5026 	pop	ar7
      001B3B BE 01 02         [24] 5027 	cjne	r6,#0x01,00677$
      001B3E 80 03            [24] 5028 	sjmp	00678$
      001B40                       5029 00677$:
      001B40 02 1C 30         [24] 5030 	ljmp	00213$
      001B43                       5031 00678$:
                                   5032 ;	src/main.c:1028: switch(u8PwrOnFirstFlag) {
      001B43 EF               [12] 5033 	mov	a,r7
      001B44 FE               [12] 5034 	mov	r6,a
      001B45 24 FA            [12] 5035 	add	a,#0xff - 0x05
      001B47 50 03            [24] 5036 	jnc	00679$
      001B49 02 1C 30         [24] 5037 	ljmp	00213$
      001B4C                       5038 00679$:
      001B4C EE               [12] 5039 	mov	a,r6
      001B4D 2E               [12] 5040 	add	a,r6
      001B4E 2E               [12] 5041 	add	a,r6
      001B4F 90 1B 53         [24] 5042 	mov	dptr,#00680$
      001B52 73               [24] 5043 	jmp	@a+dptr
      001B53                       5044 00680$:
      001B53 02 1C 30         [24] 5045 	ljmp	00213$
      001B56 02 1B 65         [24] 5046 	ljmp	00202$
      001B59 02 1B 76         [24] 5047 	ljmp	00203$
      001B5C 02 1B E1         [24] 5048 	ljmp	00204$
      001B5F 02 1B E9         [24] 5049 	ljmp	00205$
      001B62 02 1B F1         [24] 5050 	ljmp	00206$
                                   5051 ;	src/main.c:1029: case 1 :
      001B65                       5052 00202$:
                                   5053 ;	src/main.c:1030: LINEFI_TX = 1;
                                   5054 ;	assignBit
      001B65 D2 96            [12] 5055 	setb	_P16
                                   5056 ;	src/main.c:1031: LINEFI_EN0 = 0;
                                   5057 ;	assignBit
      001B67 C2 90            [12] 5058 	clr	_P10
                                   5059 ;	src/main.c:1032: LINEFI_EN1 = 1;
                                   5060 ;	assignBit
      001B69 D2 91            [12] 5061 	setb	_P11
                                   5062 ;	src/main.c:1033: LINEFI_EN2 = 0;
                                   5063 ;	assignBit
      001B6B C2 92            [12] 5064 	clr	_P12
                                   5065 ;	src/main.c:1034: u8PwrOnFirstFlag++;
      001B6D 90 00 9D         [24] 5066 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001B70 EF               [12] 5067 	mov	a,r7
      001B71 04               [12] 5068 	inc	a
      001B72 F0               [24] 5069 	movx	@dptr,a
                                   5070 ;	src/main.c:1035: break;
      001B73 02 1C 30         [24] 5071 	ljmp	00213$
                                   5072 ;	src/main.c:1036: case 2 :
      001B76                       5073 00203$:
                                   5074 ;	src/main.c:1037: InitialUART1_Timer3(gpu32UartSpeed[0]);
      001B76 90 00 5E         [24] 5075 	mov	dptr,#_gpu32UartSpeed
      001B79 E0               [24] 5076 	movx	a,@dptr
      001B7A FB               [12] 5077 	mov	r3,a
      001B7B A3               [24] 5078 	inc	dptr
      001B7C E0               [24] 5079 	movx	a,@dptr
      001B7D FC               [12] 5080 	mov	r4,a
      001B7E A3               [24] 5081 	inc	dptr
      001B7F E0               [24] 5082 	movx	a,@dptr
      001B80 FD               [12] 5083 	mov	r5,a
      001B81 A3               [24] 5084 	inc	dptr
      001B82 E0               [24] 5085 	movx	a,@dptr
      001B83 8B 82            [24] 5086 	mov	dpl,r3
      001B85 8C 83            [24] 5087 	mov	dph,r4
      001B87 8D F0            [24] 5088 	mov	b,r5
      001B89 12 29 DA         [24] 5089 	lcall	_InitialUART1_Timer3
                                   5090 ;	src/main.c:1038: send_octet_to_linefi(((LINEFI_DEFAULT_RATE_IDX<<4)&0xF0) | (1)&0x0F);
      001B8C 75 82 51         [24] 5091 	mov	dpl,#0x51
      001B8F 12 21 D2         [24] 5092 	lcall	_send_octet_to_linefi
                                   5093 ;	src/main.c:1039: printf_fast_f("uart speed: %lu:\n\r", gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
      001B92 90 00 72         [24] 5094 	mov	dptr,#(_gpu32UartSpeed + 0x0014)
      001B95 E0               [24] 5095 	movx	a,@dptr
      001B96 FB               [12] 5096 	mov	r3,a
      001B97 A3               [24] 5097 	inc	dptr
      001B98 E0               [24] 5098 	movx	a,@dptr
      001B99 FC               [12] 5099 	mov	r4,a
      001B9A A3               [24] 5100 	inc	dptr
      001B9B E0               [24] 5101 	movx	a,@dptr
      001B9C FD               [12] 5102 	mov	r5,a
      001B9D A3               [24] 5103 	inc	dptr
      001B9E E0               [24] 5104 	movx	a,@dptr
      001B9F FE               [12] 5105 	mov	r6,a
      001BA0 C0 03            [24] 5106 	push	ar3
      001BA2 C0 04            [24] 5107 	push	ar4
      001BA4 C0 05            [24] 5108 	push	ar5
      001BA6 C0 06            [24] 5109 	push	ar6
      001BA8 74 21            [12] 5110 	mov	a,#___str_47
      001BAA C0 E0            [24] 5111 	push	acc
      001BAC 74 40            [12] 5112 	mov	a,#(___str_47 >> 8)
      001BAE C0 E0            [24] 5113 	push	acc
      001BB0 12 2E DD         [24] 5114 	lcall	_printf_fast_f
      001BB3 E5 81            [12] 5115 	mov	a,sp
      001BB5 24 FA            [12] 5116 	add	a,#0xfa
      001BB7 F5 81            [12] 5117 	mov	sp,a
                                   5118 ;	src/main.c:1040: InitialUART1_Timer3(gpu32UartSpeed[LINEFI_DEFAULT_RATE_IDX]);
      001BB9 90 00 72         [24] 5119 	mov	dptr,#(_gpu32UartSpeed + 0x0014)
      001BBC E0               [24] 5120 	movx	a,@dptr
      001BBD FB               [12] 5121 	mov	r3,a
      001BBE A3               [24] 5122 	inc	dptr
      001BBF E0               [24] 5123 	movx	a,@dptr
      001BC0 FC               [12] 5124 	mov	r4,a
      001BC1 A3               [24] 5125 	inc	dptr
      001BC2 E0               [24] 5126 	movx	a,@dptr
      001BC3 FD               [12] 5127 	mov	r5,a
      001BC4 A3               [24] 5128 	inc	dptr
      001BC5 E0               [24] 5129 	movx	a,@dptr
      001BC6 8B 82            [24] 5130 	mov	dpl,r3
      001BC8 8C 83            [24] 5131 	mov	dph,r4
      001BCA 8D F0            [24] 5132 	mov	b,r5
      001BCC 12 29 DA         [24] 5133 	lcall	_InitialUART1_Timer3
                                   5134 ;	src/main.c:1042: u8LineFiCmd = 2;
      001BCF 90 00 9C         [24] 5135 	mov	dptr,#_main_u8LineFiCmd_65536_103
      001BD2 74 02            [12] 5136 	mov	a,#0x02
      001BD4 F0               [24] 5137 	movx	@dptr,a
                                   5138 ;	src/main.c:1043: u8LineFiAddr = 1;
      001BD5 90 00 9A         [24] 5139 	mov	dptr,#_main_u8LineFiAddr_65536_103
      001BD8 14               [12] 5140 	dec	a
      001BD9 F0               [24] 5141 	movx	@dptr,a
                                   5142 ;	src/main.c:1044: u8PwrOnFirstFlag = 0;
      001BDA 90 00 9D         [24] 5143 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001BDD E4               [12] 5144 	clr	a
      001BDE F0               [24] 5145 	movx	@dptr,a
                                   5146 ;	src/main.c:1045: break;
                                   5147 ;	src/main.c:1046: case 3 :
      001BDF 80 4F            [24] 5148 	sjmp	00213$
      001BE1                       5149 00204$:
                                   5150 ;	src/main.c:1047: u8PwrOnFirstFlag++;
      001BE1 90 00 9D         [24] 5151 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001BE4 EF               [12] 5152 	mov	a,r7
      001BE5 04               [12] 5153 	inc	a
      001BE6 F0               [24] 5154 	movx	@dptr,a
                                   5155 ;	src/main.c:1048: break;
                                   5156 ;	src/main.c:1049: case 4 :
      001BE7 80 47            [24] 5157 	sjmp	00213$
      001BE9                       5158 00205$:
                                   5159 ;	src/main.c:1050: u8PwrOnFirstFlag++;
      001BE9 90 00 9D         [24] 5160 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001BEC EF               [12] 5161 	mov	a,r7
      001BED 04               [12] 5162 	inc	a
      001BEE F0               [24] 5163 	movx	@dptr,a
                                   5164 ;	src/main.c:1051: break;
                                   5165 ;	src/main.c:1052: case 5 :
      001BEF 80 3F            [24] 5166 	sjmp	00213$
      001BF1                       5167 00206$:
                                   5168 ;	src/main.c:1053: u8PwrOnFirstFlag++;
      001BF1 90 00 9D         [24] 5169 	mov	dptr,#_main_u8PwrOnFirstFlag_65536_103
      001BF4 EF               [12] 5170 	mov	a,r7
      001BF5 04               [12] 5171 	inc	a
      001BF6 F0               [24] 5172 	movx	@dptr,a
                                   5173 ;	src/main.c:1085: } //switch (state_switches((SW1<<0)| (SW2<<1)| (SW3<<2)| (SW4<<3) | (SW5<<4), &u8SwNum))
      001BF7 80 37            [24] 5174 	sjmp	00213$
      001BF9                       5175 00212$:
                                   5176 ;	src/main.c:1088: switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum)) {
      001BF9 A2 95            [12] 5177 	mov	c,_P15
      001BFB E4               [12] 5178 	clr	a
      001BFC 33               [12] 5179 	rlc	a
      001BFD FF               [12] 5180 	mov	r7,a
      001BFE A2 B0            [12] 5181 	mov	c,_P30
      001C00 E4               [12] 5182 	clr	a
      001C01 33               [12] 5183 	rlc	a
      001C02 25 E0            [12] 5184 	add	a,acc
      001C04 42 07            [12] 5185 	orl	ar7,a
      001C06 A2 80            [12] 5186 	mov	c,_P00
      001C08 E4               [12] 5187 	clr	a
      001C09 33               [12] 5188 	rlc	a
      001C0A 25 E0            [12] 5189 	add	a,acc
      001C0C 25 E0            [12] 5190 	add	a,acc
      001C0E 42 07            [12] 5191 	orl	ar7,a
      001C10 A2 93            [12] 5192 	mov	c,_P13
      001C12 E4               [12] 5193 	clr	a
      001C13 33               [12] 5194 	rlc	a
      001C14 C4               [12] 5195 	swap	a
      001C15 03               [12] 5196 	rr	a
      001C16 54 F8            [12] 5197 	anl	a,#0xf8
      001C18 42 07            [12] 5198 	orl	ar7,a
      001C1A A2 97            [12] 5199 	mov	c,_P17
      001C1C E4               [12] 5200 	clr	a
      001C1D 33               [12] 5201 	rlc	a
      001C1E C4               [12] 5202 	swap	a
      001C1F 54 F0            [12] 5203 	anl	a,#0xf0
      001C21 4F               [12] 5204 	orl	a,r7
      001C22 F5 82            [12] 5205 	mov	dpl,a
      001C24 75 1A 9E         [24] 5206 	mov	_state_switches_PARM_2,#_main_u8SwNum_65536_103
      001C27 75 1B 00         [24] 5207 	mov	(_state_switches_PARM_2 + 1),#(_main_u8SwNum_65536_103 >> 8)
      001C2A 75 1C 00         [24] 5208 	mov	(_state_switches_PARM_2 + 2),#0x00
      001C2D 12 08 79         [24] 5209 	lcall	_state_switches
                                   5210 ;	src/main.c:1272: } //switch (state_switches((SW_U<<0)| (SW_R<<1)| (SW_L<<2)| (SW_D<<3) | (SW_C<<4), &u8SwNum))
      001C30                       5211 00213$:
                                   5212 ;	src/main.c:1297: switch(u8StatePeriodicSend) {
      001C30 90 00 9F         [24] 5213 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001C33 E0               [24] 5214 	movx	a,@dptr
      001C34 FF               [12] 5215 	mov	r7,a
      001C35 60 0D            [24] 5216 	jz	00214$
      001C37 BF 01 02         [24] 5217 	cjne	r7,#0x01,00682$
      001C3A 80 3D            [24] 5218 	sjmp	00217$
      001C3C                       5219 00682$:
      001C3C BF 03 02         [24] 5220 	cjne	r7,#0x03,00683$
      001C3F 80 62            [24] 5221 	sjmp	00220$
      001C41                       5222 00683$:
      001C41 02 14 95         [24] 5223 	ljmp	00251$
                                   5224 ;	src/main.c:1298: case STATE_PS_INIT : // 초기 시스템 시작
      001C44                       5225 00214$:
                                   5226 ;	src/main.c:1299: if (u8PSCmd == CMD_PS_START) {
      001C44 90 00 A0         [24] 5227 	mov	dptr,#_main_u8PSCmd_65536_103
      001C47 E0               [24] 5228 	movx	a,@dptr
      001C48 FF               [12] 5229 	mov	r7,a
      001C49 BF 04 02         [24] 5230 	cjne	r7,#0x04,00684$
      001C4C 80 03            [24] 5231 	sjmp	00685$
      001C4E                       5232 00684$:
      001C4E 02 14 95         [24] 5233 	ljmp	00251$
      001C51                       5234 00685$:
                                   5235 ;	src/main.c:1300: u8StatePeriodicSend = STATE_PS_WAITING;
      001C51 90 00 9F         [24] 5236 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001C54 74 03            [12] 5237 	mov	a,#0x03
      001C56 F0               [24] 5238 	movx	@dptr,a
                                   5239 ;	src/main.c:1301: gu16TimeCntMilliSec = 0;
      001C57 90 00 5A         [24] 5240 	mov	dptr,#_gu16TimeCntMilliSec
      001C5A E4               [12] 5241 	clr	a
      001C5B F0               [24] 5242 	movx	@dptr,a
      001C5C A3               [24] 5243 	inc	dptr
      001C5D F0               [24] 5244 	movx	@dptr,a
                                   5245 ;	src/main.c:1302: start_aloha(&stLineFiPkt);
      001C5E 90 01 10         [24] 5246 	mov	dptr,#_main_stLineFiPkt_65536_103
      001C61 75 F0 00         [24] 5247 	mov	b,#0x00
      001C64 12 11 2D         [24] 5248 	lcall	_start_aloha
                                   5249 ;	src/main.c:1303: printf_fast_f("starting ALOHA...\r\n");
      001C67 74 6E            [12] 5250 	mov	a,#___str_66
      001C69 C0 E0            [24] 5251 	push	acc
      001C6B 74 41            [12] 5252 	mov	a,#(___str_66 >> 8)
      001C6D C0 E0            [24] 5253 	push	acc
      001C6F 12 2E DD         [24] 5254 	lcall	_printf_fast_f
      001C72 15 81            [12] 5255 	dec	sp
      001C74 15 81            [12] 5256 	dec	sp
                                   5257 ;	src/main.c:1305: break;
      001C76 02 14 95         [24] 5258 	ljmp	00251$
                                   5259 ;	src/main.c:1306: case STATE_PS_SENDING : // ACK 보내기
      001C79                       5260 00217$:
                                   5261 ;	src/main.c:1308: u8StatePeriodicSend = STATE_PS_WAITING;				
      001C79 90 00 9F         [24] 5262 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001C7C 74 03            [12] 5263 	mov	a,#0x03
      001C7E F0               [24] 5264 	movx	@dptr,a
                                   5265 ;	src/main.c:1309: if (u8PSCmd == CMD_PS_END) {
      001C7F 90 00 A0         [24] 5266 	mov	dptr,#_main_u8PSCmd_65536_103
      001C82 E0               [24] 5267 	movx	a,@dptr
      001C83 FF               [12] 5268 	mov	r7,a
      001C84 BF 05 02         [24] 5269 	cjne	r7,#0x05,00686$
      001C87 80 03            [24] 5270 	sjmp	00687$
      001C89                       5271 00686$:
      001C89 02 14 95         [24] 5272 	ljmp	00251$
      001C8C                       5273 00687$:
                                   5274 ;	src/main.c:1310: u8StatePeriodicSend = STATE_PS_INIT;
      001C8C 90 00 9F         [24] 5275 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001C8F E4               [12] 5276 	clr	a
      001C90 F0               [24] 5277 	movx	@dptr,a
                                   5278 ;	src/main.c:1311: printf_fast_f("stopping ALOHA...");
      001C91 74 82            [12] 5279 	mov	a,#___str_67
      001C93 C0 E0            [24] 5280 	push	acc
      001C95 74 41            [12] 5281 	mov	a,#(___str_67 >> 8)
      001C97 C0 E0            [24] 5282 	push	acc
      001C99 12 2E DD         [24] 5283 	lcall	_printf_fast_f
      001C9C 15 81            [12] 5284 	dec	sp
      001C9E 15 81            [12] 5285 	dec	sp
                                   5286 ;	src/main.c:1313: break;
      001CA0 02 14 95         [24] 5287 	ljmp	00251$
                                   5288 ;	src/main.c:1314: case STATE_PS_WAITING : // 데이터 수신 대기 				
      001CA3                       5289 00220$:
                                   5290 ;	src/main.c:1315: if (getchar_uart1(&u8RxUART1)) { // 라인파이 상향 수신
      001CA3 90 00 99         [24] 5291 	mov	dptr,#_main_u8RxUART1_65536_103
      001CA6 75 F0 00         [24] 5292 	mov	b,#0x00
      001CA9 12 2C B3         [24] 5293 	lcall	_getchar_uart1
      001CAC E5 82            [12] 5294 	mov	a,dpl
      001CAE 70 03            [24] 5295 	jnz	00688$
      001CB0 02 1E 4E         [24] 5296 	ljmp	00246$
      001CB3                       5297 00688$:
                                   5298 ;	src/main.c:1316: switch(gu8LineFiUpRxState4) {
      001CB3 90 00 5D         [24] 5299 	mov	dptr,#_gu8LineFiUpRxState4
      001CB6 E0               [24] 5300 	movx	a,@dptr
      001CB7 FF               [12] 5301 	mov	r7,a
      001CB8 BF 06 02         [24] 5302 	cjne	r7,#0x06,00689$
      001CBB 80 13            [24] 5303 	sjmp	00221$
      001CBD                       5304 00689$:
      001CBD BF 07 02         [24] 5305 	cjne	r7,#0x07,00690$
      001CC0 80 2D            [24] 5306 	sjmp	00224$
      001CC2                       5307 00690$:
      001CC2 BF 08 02         [24] 5308 	cjne	r7,#0x08,00691$
      001CC5 80 49            [24] 5309 	sjmp	00228$
      001CC7                       5310 00691$:
      001CC7 BF 09 03         [24] 5311 	cjne	r7,#0x09,00692$
      001CCA 02 1D 83         [24] 5312 	ljmp	00237$
      001CCD                       5313 00692$:
      001CCD 02 1E 4E         [24] 5314 	ljmp	00246$
                                   5315 ;	src/main.c:1317: case LFURxState_INIT4 :
      001CD0                       5316 00221$:
                                   5317 ;	src/main.c:1318: if (u8RxUART1 == 0x00) {
      001CD0 90 00 99         [24] 5318 	mov	dptr,#_main_u8RxUART1_65536_103
      001CD3 E0               [24] 5319 	movx	a,@dptr
      001CD4 60 03            [24] 5320 	jz	00693$
      001CD6 02 1E 4E         [24] 5321 	ljmp	00246$
      001CD9                       5322 00693$:
                                   5323 ;	src/main.c:1320: gu16TimeCntMilliSec = 0;
      001CD9 90 00 5A         [24] 5324 	mov	dptr,#_gu16TimeCntMilliSec
      001CDC E4               [12] 5325 	clr	a
      001CDD F0               [24] 5326 	movx	@dptr,a
      001CDE A3               [24] 5327 	inc	dptr
      001CDF F0               [24] 5328 	movx	@dptr,a
                                   5329 ;	src/main.c:1321: gu8LineFiUpRxState4 = LFURxState_PPAMBLE4;
      001CE0 90 00 5D         [24] 5330 	mov	dptr,#_gu8LineFiUpRxState4
      001CE3 74 07            [12] 5331 	mov	a,#0x07
      001CE5 F0               [24] 5332 	movx	@dptr,a
                                   5333 ;	src/main.c:1322: gu8PPambleCnt = 1;
      001CE6 90 00 56         [24] 5334 	mov	dptr,#_gu8PPambleCnt
      001CE9 74 01            [12] 5335 	mov	a,#0x01
      001CEB F0               [24] 5336 	movx	@dptr,a
                                   5337 ;	src/main.c:1324: break;
      001CEC 02 1E 4E         [24] 5338 	ljmp	00246$
                                   5339 ;	src/main.c:1325: case LFURxState_PPAMBLE4 : // 프리프리앰블 상태..
      001CEF                       5340 00224$:
                                   5341 ;	src/main.c:1326: if (u8RxUART1 == 0xF0) {
      001CEF 90 00 99         [24] 5342 	mov	dptr,#_main_u8RxUART1_65536_103
      001CF2 E0               [24] 5343 	movx	a,@dptr
      001CF3 FF               [12] 5344 	mov	r7,a
      001CF4 BF F0 0F         [24] 5345 	cjne	r7,#0xf0,00226$
                                   5346 ;	src/main.c:1328: gu8LineFiUpRxState4 = LFURxState_PREAMBLE4;
      001CF7 90 00 5D         [24] 5347 	mov	dptr,#_gu8LineFiUpRxState4
      001CFA 74 08            [12] 5348 	mov	a,#0x08
      001CFC F0               [24] 5349 	movx	@dptr,a
                                   5350 ;	src/main.c:1329: gu8PreambleCnt = 1;
      001CFD 90 00 57         [24] 5351 	mov	dptr,#_gu8PreambleCnt
      001D00 74 01            [12] 5352 	mov	a,#0x01
      001D02 F0               [24] 5353 	movx	@dptr,a
      001D03 02 1E 4E         [24] 5354 	ljmp	00246$
      001D06                       5355 00226$:
                                   5356 ;	src/main.c:1332: gu8PPambleCnt++;
      001D06 90 00 56         [24] 5357 	mov	dptr,#_gu8PPambleCnt
      001D09 E0               [24] 5358 	movx	a,@dptr
      001D0A 24 01            [12] 5359 	add	a,#0x01
      001D0C F0               [24] 5360 	movx	@dptr,a
                                   5361 ;	src/main.c:1334: break;
      001D0D 02 1E 4E         [24] 5362 	ljmp	00246$
                                   5363 ;	src/main.c:1335: case LFURxState_PREAMBLE4 : //프리앰블 받은 상태												
      001D10                       5364 00228$:
                                   5365 ;	src/main.c:1336: if (u8RxUART1 == 0xF0) {
      001D10 90 00 99         [24] 5366 	mov	dptr,#_main_u8RxUART1_65536_103
      001D13 E0               [24] 5367 	movx	a,@dptr
      001D14 FF               [12] 5368 	mov	r7,a
      001D15 BF F0 10         [24] 5369 	cjne	r7,#0xf0,00233$
                                   5370 ;	src/main.c:1339: gu8PreambleCnt ++;
      001D18 90 00 57         [24] 5371 	mov	dptr,#_gu8PreambleCnt
      001D1B E0               [24] 5372 	movx	a,@dptr
      001D1C 24 01            [12] 5373 	add	a,#0x01
      001D1E F0               [24] 5374 	movx	@dptr,a
                                   5375 ;	src/main.c:1340: gu16TimeCntMilliSec = 0;
      001D1F 90 00 5A         [24] 5376 	mov	dptr,#_gu16TimeCntMilliSec
      001D22 E4               [12] 5377 	clr	a
      001D23 F0               [24] 5378 	movx	@dptr,a
      001D24 A3               [24] 5379 	inc	dptr
      001D25 F0               [24] 5380 	movx	@dptr,a
      001D26 80 28            [24] 5381 	sjmp	00234$
      001D28                       5382 00233$:
                                   5383 ;	src/main.c:1342: else if (gu8PreambleCnt == 3) { // 프리앰블이 정확히 5개일때,
      001D28 90 00 57         [24] 5384 	mov	dptr,#_gu8PreambleCnt
      001D2B E0               [24] 5385 	movx	a,@dptr
      001D2C FE               [12] 5386 	mov	r6,a
      001D2D BE 03 1A         [24] 5387 	cjne	r6,#0x03,00230$
                                   5388 ;	src/main.c:1343: gu8LineFiUpRxState4 = LFURxState_RX4;
      001D30 90 00 5D         [24] 5389 	mov	dptr,#_gu8LineFiUpRxState4
      001D33 74 09            [12] 5390 	mov	a,#0x09
      001D35 F0               [24] 5391 	movx	@dptr,a
                                   5392 ;	src/main.c:1345: gpu8RxBuf[gu8RxBufCnt++] = u8RxUART1;
      001D36 90 00 54         [24] 5393 	mov	dptr,#_gu8RxBufCnt
      001D39 74 01            [12] 5394 	mov	a,#0x01
      001D3B F0               [24] 5395 	movx	@dptr,a
      001D3C 90 00 44         [24] 5396 	mov	dptr,#_gpu8RxBuf
      001D3F EF               [12] 5397 	mov	a,r7
      001D40 F0               [24] 5398 	movx	@dptr,a
                                   5399 ;	src/main.c:1346: gu16TimeCntMilliSec = 0;
      001D41 90 00 5A         [24] 5400 	mov	dptr,#_gu16TimeCntMilliSec
      001D44 E4               [12] 5401 	clr	a
      001D45 F0               [24] 5402 	movx	@dptr,a
      001D46 A3               [24] 5403 	inc	dptr
      001D47 F0               [24] 5404 	movx	@dptr,a
      001D48 80 06            [24] 5405 	sjmp	00234$
      001D4A                       5406 00230$:
                                   5407 ;	src/main.c:1349: gu8LineFiUpRxState4 = LFURxState_RX4;
      001D4A 90 00 5D         [24] 5408 	mov	dptr,#_gu8LineFiUpRxState4
      001D4D 74 09            [12] 5409 	mov	a,#0x09
      001D4F F0               [24] 5410 	movx	@dptr,a
      001D50                       5411 00234$:
                                   5412 ;	src/main.c:1352: if (gu16TimeCntMilliSec > 1000) { // 잘못된 프리앰블
      001D50 90 00 5A         [24] 5413 	mov	dptr,#_gu16TimeCntMilliSec
      001D53 E0               [24] 5414 	movx	a,@dptr
      001D54 FE               [12] 5415 	mov	r6,a
      001D55 A3               [24] 5416 	inc	dptr
      001D56 E0               [24] 5417 	movx	a,@dptr
      001D57 FF               [12] 5418 	mov	r7,a
      001D58 C3               [12] 5419 	clr	c
      001D59 74 E8            [12] 5420 	mov	a,#0xe8
      001D5B 9E               [12] 5421 	subb	a,r6
      001D5C 74 03            [12] 5422 	mov	a,#0x03
      001D5E 9F               [12] 5423 	subb	a,r7
      001D5F 40 03            [24] 5424 	jc	00700$
      001D61 02 1E 4E         [24] 5425 	ljmp	00246$
      001D64                       5426 00700$:
                                   5427 ;	src/main.c:1353: printf_fast_f("1000 ");
      001D64 74 94            [12] 5428 	mov	a,#___str_68
      001D66 C0 E0            [24] 5429 	push	acc
      001D68 74 41            [12] 5430 	mov	a,#(___str_68 >> 8)
      001D6A C0 E0            [24] 5431 	push	acc
      001D6C 12 2E DD         [24] 5432 	lcall	_printf_fast_f
      001D6F 15 81            [12] 5433 	dec	sp
      001D71 15 81            [12] 5434 	dec	sp
                                   5435 ;	src/main.c:1354: gu8LineFiUpRxState4 = LFURxState_INIT4;
      001D73 90 00 5D         [24] 5436 	mov	dptr,#_gu8LineFiUpRxState4
      001D76 74 06            [12] 5437 	mov	a,#0x06
      001D78 F0               [24] 5438 	movx	@dptr,a
                                   5439 ;	src/main.c:1355: gu16TimeCntMilliSec = 0;
      001D79 90 00 5A         [24] 5440 	mov	dptr,#_gu16TimeCntMilliSec
      001D7C E4               [12] 5441 	clr	a
      001D7D F0               [24] 5442 	movx	@dptr,a
      001D7E A3               [24] 5443 	inc	dptr
      001D7F F0               [24] 5444 	movx	@dptr,a
                                   5445 ;	src/main.c:1357: break;
      001D80 02 1E 4E         [24] 5446 	ljmp	00246$
                                   5447 ;	src/main.c:1358: case LFURxState_RX4 :
      001D83                       5448 00237$:
                                   5449 ;	src/main.c:1359: gpu8RxBuf[gu8RxBufCnt++] = u8RxUART1;
      001D83 90 00 54         [24] 5450 	mov	dptr,#_gu8RxBufCnt
      001D86 E0               [24] 5451 	movx	a,@dptr
      001D87 FF               [12] 5452 	mov	r7,a
      001D88 04               [12] 5453 	inc	a
      001D89 F0               [24] 5454 	movx	@dptr,a
      001D8A EF               [12] 5455 	mov	a,r7
      001D8B 24 44            [12] 5456 	add	a,#_gpu8RxBuf
      001D8D FF               [12] 5457 	mov	r7,a
      001D8E E4               [12] 5458 	clr	a
      001D8F 34 00            [12] 5459 	addc	a,#(_gpu8RxBuf >> 8)
      001D91 FE               [12] 5460 	mov	r6,a
      001D92 90 00 99         [24] 5461 	mov	dptr,#_main_u8RxUART1_65536_103
      001D95 E0               [24] 5462 	movx	a,@dptr
      001D96 FD               [12] 5463 	mov	r5,a
      001D97 8F 82            [24] 5464 	mov	dpl,r7
      001D99 8E 83            [24] 5465 	mov	dph,r6
      001D9B F0               [24] 5466 	movx	@dptr,a
                                   5467 ;	src/main.c:1361: if (gu8RxBufCnt == 11) {
      001D9C 90 00 54         [24] 5468 	mov	dptr,#_gu8RxBufCnt
      001D9F E0               [24] 5469 	movx	a,@dptr
      001DA0 FF               [12] 5470 	mov	r7,a
      001DA1 BF 0B 02         [24] 5471 	cjne	r7,#0x0b,00701$
      001DA4 80 03            [24] 5472 	sjmp	00702$
      001DA6                       5473 00701$:
      001DA6 02 1E 2C         [24] 5474 	ljmp	00241$
      001DA9                       5475 00702$:
                                   5476 ;	src/main.c:1364: if (gpu8RxBuf[2] < 10) {
      001DA9 90 00 46         [24] 5477 	mov	dptr,#(_gpu8RxBuf + 0x0002)
      001DAC E0               [24] 5478 	movx	a,@dptr
      001DAD FE               [12] 5479 	mov	r6,a
      001DAE BE 0A 00         [24] 5480 	cjne	r6,#0x0a,00703$
      001DB1                       5481 00703$:
      001DB1 50 59            [24] 5482 	jnc	00239$
                                   5483 ;	src/main.c:1366: cp_buf2linefipacket(gu8RxBufCnt, gpu8RxBuf, &stLineFiPkt);									
      001DB3 75 42 44         [24] 5484 	mov	_cp_buf2linefipacket_PARM_2,#_gpu8RxBuf
      001DB6 75 43 00         [24] 5485 	mov	(_cp_buf2linefipacket_PARM_2 + 1),#(_gpu8RxBuf >> 8)
      001DB9 75 44 00         [24] 5486 	mov	(_cp_buf2linefipacket_PARM_2 + 2),#0x00
      001DBC 75 45 10         [24] 5487 	mov	_cp_buf2linefipacket_PARM_3,#_main_stLineFiPkt_65536_103
      001DBF 75 46 01         [24] 5488 	mov	(_cp_buf2linefipacket_PARM_3 + 1),#(_main_stLineFiPkt_65536_103 >> 8)
      001DC2 75 47 00         [24] 5489 	mov	(_cp_buf2linefipacket_PARM_3 + 2),#0x00
      001DC5 8F 82            [24] 5490 	mov	dpl,r7
      001DC7 12 23 43         [24] 5491 	lcall	_cp_buf2linefipacket
                                   5492 ;	src/main.c:1370: printf_fast_f("Slave_ADDR: %d, UL_Packet_num: %d\r\n",gpu8RxBuf[2], gpu8RxBuf[0]);
      001DCA 90 00 44         [24] 5493 	mov	dptr,#_gpu8RxBuf
      001DCD E0               [24] 5494 	movx	a,@dptr
      001DCE FF               [12] 5495 	mov	r7,a
      001DCF 7E 00            [12] 5496 	mov	r6,#0x00
      001DD1 90 00 46         [24] 5497 	mov	dptr,#(_gpu8RxBuf + 0x0002)
      001DD4 E0               [24] 5498 	movx	a,@dptr
      001DD5 FD               [12] 5499 	mov	r5,a
      001DD6 7C 00            [12] 5500 	mov	r4,#0x00
      001DD8 C0 07            [24] 5501 	push	ar7
      001DDA C0 06            [24] 5502 	push	ar6
      001DDC C0 05            [24] 5503 	push	ar5
      001DDE C0 04            [24] 5504 	push	ar4
      001DE0 74 9A            [12] 5505 	mov	a,#___str_69
      001DE2 C0 E0            [24] 5506 	push	acc
      001DE4 74 41            [12] 5507 	mov	a,#(___str_69 >> 8)
      001DE6 C0 E0            [24] 5508 	push	acc
      001DE8 12 2E DD         [24] 5509 	lcall	_printf_fast_f
      001DEB E5 81            [12] 5510 	mov	a,sp
      001DED 24 FA            [12] 5511 	add	a,#0xfa
      001DEF F5 81            [12] 5512 	mov	sp,a
                                   5513 ;	src/main.c:1371: print_linefipacket(&stLineFiPkt);
      001DF1 90 01 10         [24] 5514 	mov	dptr,#_main_stLineFiPkt_65536_103
      001DF4 75 F0 00         [24] 5515 	mov	b,#0x00
      001DF7 12 24 D5         [24] 5516 	lcall	_print_linefipacket
                                   5517 ;	src/main.c:1372: send_ACK(&stLineFiPkt, &stLineFiPkt_test);
      001DFA 75 31 08         [24] 5518 	mov	_send_ACK_PARM_2,#_main_stLineFiPkt_test_65536_103
      001DFD 75 32 01         [24] 5519 	mov	(_send_ACK_PARM_2 + 1),#(_main_stLineFiPkt_test_65536_103 >> 8)
      001E00 75 33 00         [24] 5520 	mov	(_send_ACK_PARM_2 + 2),#0x00
      001E03 90 01 10         [24] 5521 	mov	dptr,#_main_stLineFiPkt_65536_103
      001E06 75 F0 00         [24] 5522 	mov	b,#0x00
      001E09 12 11 65         [24] 5523 	lcall	_send_ACK
      001E0C                       5524 00239$:
                                   5525 ;	src/main.c:1375: printf_fast_f("\r\n\r\n");
      001E0C 74 BE            [12] 5526 	mov	a,#___str_70
      001E0E C0 E0            [24] 5527 	push	acc
      001E10 74 41            [12] 5528 	mov	a,#(___str_70 >> 8)
      001E12 C0 E0            [24] 5529 	push	acc
      001E14 12 2E DD         [24] 5530 	lcall	_printf_fast_f
      001E17 15 81            [12] 5531 	dec	sp
      001E19 15 81            [12] 5532 	dec	sp
                                   5533 ;	src/main.c:1376: gu8RxBufCnt = 0;
      001E1B 90 00 54         [24] 5534 	mov	dptr,#_gu8RxBufCnt
      001E1E E4               [12] 5535 	clr	a
      001E1F F0               [24] 5536 	movx	@dptr,a
                                   5537 ;	src/main.c:1377: gu8LineFiUpRxState4 = LFURxState_INIT4;
      001E20 90 00 5D         [24] 5538 	mov	dptr,#_gu8LineFiUpRxState4
      001E23 74 06            [12] 5539 	mov	a,#0x06
      001E25 F0               [24] 5540 	movx	@dptr,a
                                   5541 ;	src/main.c:1378: u8StatePeriodicSend = STATE_PS_SENDING;
      001E26 90 00 9F         [24] 5542 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001E29 74 01            [12] 5543 	mov	a,#0x01
      001E2B F0               [24] 5544 	movx	@dptr,a
      001E2C                       5545 00241$:
                                   5546 ;	src/main.c:1380: if (gu16TimeCntMilliSec > 3000) { 
      001E2C 90 00 5A         [24] 5547 	mov	dptr,#_gu16TimeCntMilliSec
      001E2F E0               [24] 5548 	movx	a,@dptr
      001E30 FE               [12] 5549 	mov	r6,a
      001E31 A3               [24] 5550 	inc	dptr
      001E32 E0               [24] 5551 	movx	a,@dptr
      001E33 FF               [12] 5552 	mov	r7,a
      001E34 C3               [12] 5553 	clr	c
      001E35 74 B8            [12] 5554 	mov	a,#0xb8
      001E37 9E               [12] 5555 	subb	a,r6
      001E38 74 0B            [12] 5556 	mov	a,#0x0b
      001E3A 9F               [12] 5557 	subb	a,r7
      001E3B 50 11            [24] 5558 	jnc	00246$
                                   5559 ;	src/main.c:1381: gu8LineFiUpRxState4 = LFURxState_INIT4;
      001E3D 90 00 5D         [24] 5560 	mov	dptr,#_gu8LineFiUpRxState4
      001E40 74 06            [12] 5561 	mov	a,#0x06
      001E42 F0               [24] 5562 	movx	@dptr,a
                                   5563 ;	src/main.c:1382: gu16TimeCntMilliSec = 0;
      001E43 90 00 5A         [24] 5564 	mov	dptr,#_gu16TimeCntMilliSec
      001E46 E4               [12] 5565 	clr	a
      001E47 F0               [24] 5566 	movx	@dptr,a
      001E48 A3               [24] 5567 	inc	dptr
      001E49 F0               [24] 5568 	movx	@dptr,a
                                   5569 ;	src/main.c:1383: gu8RxBufCnt = 0;
      001E4A 90 00 54         [24] 5570 	mov	dptr,#_gu8RxBufCnt
      001E4D F0               [24] 5571 	movx	@dptr,a
                                   5572 ;	src/main.c:1388: }
      001E4E                       5573 00246$:
                                   5574 ;	src/main.c:1391: if (u8PSCmd == CMD_PS_END) {
      001E4E 90 00 A0         [24] 5575 	mov	dptr,#_main_u8PSCmd_65536_103
      001E51 E0               [24] 5576 	movx	a,@dptr
      001E52 FF               [12] 5577 	mov	r7,a
      001E53 BF 05 02         [24] 5578 	cjne	r7,#0x05,00706$
      001E56 80 03            [24] 5579 	sjmp	00707$
      001E58                       5580 00706$:
      001E58 02 14 95         [24] 5581 	ljmp	00251$
      001E5B                       5582 00707$:
                                   5583 ;	src/main.c:1392: gu8RxBufCnt = 0;
      001E5B 90 00 54         [24] 5584 	mov	dptr,#_gu8RxBufCnt
      001E5E E4               [12] 5585 	clr	a
      001E5F F0               [24] 5586 	movx	@dptr,a
                                   5587 ;	src/main.c:1393: u8StatePeriodicSend = STATE_PS_INIT;
      001E60 90 00 9F         [24] 5588 	mov	dptr,#_main_u8StatePeriodicSend_65536_103
      001E63 F0               [24] 5589 	movx	@dptr,a
                                   5590 ;	src/main.c:1394: gu8LineFiUpRxState4 = LFURxState_INIT4;  // 프리앰블 상태 초기화
      001E64 90 00 5D         [24] 5591 	mov	dptr,#_gu8LineFiUpRxState4
      001E67 74 06            [12] 5592 	mov	a,#0x06
      001E69 F0               [24] 5593 	movx	@dptr,a
                                   5594 ;	src/main.c:1395: printf_fast_f("stopping...\r\n");
      001E6A 74 C3            [12] 5595 	mov	a,#___str_71
      001E6C C0 E0            [24] 5596 	push	acc
      001E6E 74 41            [12] 5597 	mov	a,#(___str_71 >> 8)
      001E70 C0 E0            [24] 5598 	push	acc
      001E72 12 2E DD         [24] 5599 	lcall	_printf_fast_f
      001E75 15 81            [12] 5600 	dec	sp
      001E77 15 81            [12] 5601 	dec	sp
                                   5602 ;	src/main.c:1399: }
                                   5603 ;	src/main.c:1507: }
      001E79 02 14 95         [24] 5604 	ljmp	00251$
                                   5605 	.area CSEG    (CODE)
                                   5606 	.area CONST   (CODE)
                                   5607 	.area CONST   (CODE)
      003D48                       5608 ___str_0:
      003D48 0A                    5609 	.db 0x0a
      003D49 0D                    5610 	.db 0x0d
      003D4A 00                    5611 	.db 0x00
                                   5612 	.area CSEG    (CODE)
                                   5613 	.area CONST   (CODE)
      003D4B                       5614 ___str_1:
      003D4B 73 65 6C 66 20        5615 	.ascii "self "
      003D50 00                    5616 	.db 0x00
                                   5617 	.area CSEG    (CODE)
                                   5618 	.area CONST   (CODE)
      003D51                       5619 ___str_2:
      003D51 63 72 6F 73 73        5620 	.ascii "cross"
      003D56 00                    5621 	.db 0x00
                                   5622 	.area CSEG    (CODE)
                                   5623 	.area CONST   (CODE)
      003D57                       5624 ___str_3:
      003D57 62 6F 74 68 20        5625 	.ascii "both "
      003D5C 00                    5626 	.db 0x00
                                   5627 	.area CSEG    (CODE)
                                   5628 	.area CONST   (CODE)
      003D5D                       5629 ___str_4:
      003D5D 20 6F 75 74 70 75 74  5630 	.ascii " output:This is UART%d"
             3A 54 68 69 73 20 69
             73 20 55 41 52 54 25
             64
      003D73 0A                    5631 	.db 0x0a
      003D74 0D                    5632 	.db 0x0d
      003D75 00                    5633 	.db 0x00
                                   5634 	.area CSEG    (CODE)
                                   5635 	.area CONST   (CODE)
      003D76                       5636 ___str_5:
      003D76 0D                    5637 	.db 0x0d
      003D77 0A                    5638 	.db 0x0a
      003D78 00                    5639 	.db 0x00
                                   5640 	.area CSEG    (CODE)
                                   5641 	.area CONST   (CODE)
      003D79                       5642 ___str_6:
      003D79 25 63                 5643 	.ascii "%c"
      003D7B 00                    5644 	.db 0x00
                                   5645 	.area CSEG    (CODE)
                                   5646 	.area CONST   (CODE)
      003D7C                       5647 ___str_7:
      003D7C 0D                    5648 	.db 0x0d
      003D7D 0A                    5649 	.db 0x0a
      003D7E 69 6E 70 75 74 3A 54  5650 	.ascii "input:This is UART%d"
             68 69 73 20 69 73 20
             55 41 52 54 25 64
      003D92 00                    5651 	.db 0x00
                                   5652 	.area CSEG    (CODE)
                                   5653 	.area CONST   (CODE)
      003D93                       5654 ___str_8:
      003D93 49 64 6C 65 20 70 72  5655 	.ascii "Idle preamble on/off"
             65 61 6D 62 6C 65 20
             6F 6E 2F 6F 66 66
      003DA7 0D                    5656 	.db 0x0d
      003DA8 0A                    5657 	.db 0x0a
      003DA9 00                    5658 	.db 0x00
                                   5659 	.area CSEG    (CODE)
                                   5660 	.area CONST   (CODE)
      003DAA                       5661 ___str_9:
      003DAA 4C 69 6E 65 46 69 20  5662 	.ascii "LineFi Power Off"
             50 6F 77 65 72 20 4F
             66 66
      003DBA 0D                    5663 	.db 0x0d
      003DBB 0A                    5664 	.db 0x0a
      003DBC 00                    5665 	.db 0x00
                                   5666 	.area CSEG    (CODE)
                                   5667 	.area CONST   (CODE)
      003DBD                       5668 ___str_10:
      003DBD 4C 69 6E 65 46 69 20  5669 	.ascii "LineFi Power On"
             50 6F 77 65 72 20 4F
             6E
      003DCC 0D                    5670 	.db 0x0d
      003DCD 0A                    5671 	.db 0x0a
      003DCE 00                    5672 	.db 0x00
                                   5673 	.area CSEG    (CODE)
                                   5674 	.area CONST   (CODE)
      003DCF                       5675 ___str_11:
      003DCF 4C 69 6E 65 46 69 20  5676 	.ascii "LineFi Uart Tx Low"
             55 61 72 74 20 54 78
             20 4C 6F 77
      003DE1 0D                    5677 	.db 0x0d
      003DE2 0A                    5678 	.db 0x0a
      003DE3 00                    5679 	.db 0x00
                                   5680 	.area CSEG    (CODE)
                                   5681 	.area CONST   (CODE)
      003DE4                       5682 ___str_12:
      003DE4 4C 69 6E 65 46 69 20  5683 	.ascii "LineFi Uart Tx High"
             55 61 72 74 20 54 78
             20 48 69 67 68
      003DF7 0D                    5684 	.db 0x0d
      003DF8 0A                    5685 	.db 0x0a
      003DF9 00                    5686 	.db 0x00
                                   5687 	.area CSEG    (CODE)
                                   5688 	.area CONST   (CODE)
      003DFA                       5689 ___str_13:
      003DFA 4C 69 6E 65 46 69 20  5690 	.ascii "LineFi CSC rx FSM Off"
             43 53 43 20 72 78 20
             46 53 4D 20 4F 66 66
      003E0F 0D                    5691 	.db 0x0d
      003E10 0A                    5692 	.db 0x0a
      003E11 00                    5693 	.db 0x00
                                   5694 	.area CSEG    (CODE)
                                   5695 	.area CONST   (CODE)
      003E12                       5696 ___str_14:
      003E12 4C 69 6E 65 46 69 20  5697 	.ascii "LineFi CSC rx FSM ON"
             43 53 43 20 72 78 20
             46 53 4D 20 4F 4E
      003E26 0D                    5698 	.db 0x0d
      003E27 0A                    5699 	.db 0x0a
      003E28 00                    5700 	.db 0x00
                                   5701 	.area CSEG    (CODE)
                                   5702 	.area CONST   (CODE)
      003E29                       5703 ___str_15:
      003E29 56 65 72 73 69 6F 6E  5704 	.ascii "Version 1.4 on 20231026"
             20 31 2E 34 20 6F 6E
             20 32 30 32 33 31 30
             32 36
      003E40 0D                    5705 	.db 0x0d
      003E41 0A                    5706 	.db 0x0a
      003E42 00                    5707 	.db 0x00
                                   5708 	.area CSEG    (CODE)
                                   5709 	.area CONST   (CODE)
      003E43                       5710 ___str_16:
      003E43 31 3A 20 64 6F 77 6E  5711 	.ascii "1: downlink packet 1"
             6C 69 6E 6B 20 70 61
             63 6B 65 74 20 31
      003E57 0D                    5712 	.db 0x0d
      003E58 0A                    5713 	.db 0x0a
      003E59 00                    5714 	.db 0x00
                                   5715 	.area CSEG    (CODE)
                                   5716 	.area CONST   (CODE)
      003E5A                       5717 ___str_17:
      003E5A 32 3A 20 64 6F 77 6E  5718 	.ascii "2: downlink packet 2"
             6C 69 6E 6B 20 70 61
             63 6B 65 74 20 32
      003E6E 0D                    5719 	.db 0x0d
      003E6F 0A                    5720 	.db 0x0a
      003E70 00                    5721 	.db 0x00
                                   5722 	.area CSEG    (CODE)
                                   5723 	.area CONST   (CODE)
      003E71                       5724 ___str_18:
      003E71 33 3A 20 75 70 6C 69  5725 	.ascii "3: uplink idle preamble on/off"
             6E 6B 20 69 64 6C 65
             20 70 72 65 61 6D 62
             6C 65 20 6F 6E 2F 6F
             66 66
      003E8F 0D                    5726 	.db 0x0d
      003E90 0A                    5727 	.db 0x0a
      003E91 00                    5728 	.db 0x00
                                   5729 	.area CSEG    (CODE)
                                   5730 	.area CONST   (CODE)
      003E92                       5731 ___str_19:
      003E92 70 2F 50 3A 20 4C 69  5732 	.ascii "p/P: LineFi Power off/on"
             6E 65 46 69 20 50 6F
             77 65 72 20 6F 66 66
             2F 6F 6E
      003EAA 0D                    5733 	.db 0x0d
      003EAB 0A                    5734 	.db 0x0a
      003EAC 00                    5735 	.db 0x00
                                   5736 	.area CSEG    (CODE)
                                   5737 	.area CONST   (CODE)
      003EAD                       5738 ___str_20:
      003EAD 74 2F 54 3A 20 4C 69  5739 	.ascii "t/T: LineFi Uart Tx Low/High"
             6E 65 46 69 20 55 61
             72 74 20 54 78 20 4C
             6F 77 2F 48 69 67 68
      003EC9 0D                    5740 	.db 0x0d
      003ECA 0A                    5741 	.db 0x0a
      003ECB 00                    5742 	.db 0x00
                                   5743 	.area CSEG    (CODE)
                                   5744 	.area CONST   (CODE)
      003ECC                       5745 ___str_21:
      003ECC 73 2F 53 3A 20 4C 69  5746 	.ascii "s/S: LineFie CSC Rx FSM off/on"
             6E 65 46 69 65 20 43
             53 43 20 52 78 20 46
             53 4D 20 6F 66 66 2F
             6F 6E
      003EEA 0D                    5747 	.db 0x0d
      003EEB 0A                    5748 	.db 0x0a
      003EEC 00                    5749 	.db 0x00
                                   5750 	.area CSEG    (CODE)
                                   5751 	.area CONST   (CODE)
      003EED                       5752 ___str_22:
      003EED 74 65 73 74 20 70 72  5753 	.ascii "test procedure: p -> P -> T -> S -> 1 or 2"
             6F 63 65 64 75 72 65
             3A 20 70 20 2D 3E 20
             50 20 2D 3E 20 54 20
             2D 3E 20 53 20 2D 3E
             20 31 20 6F 72 20 32
      003F17 0D                    5754 	.db 0x0d
      003F18 0A                    5755 	.db 0x0a
      003F19 00                    5756 	.db 0x00
                                   5757 	.area CSEG    (CODE)
                                   5758 	.area CONST   (CODE)
      003F1A                       5759 ___str_23:
      003F1A 74 3A 20 74 69 6D 65  5760 	.ascii "t: timer"
             72
      003F22 0D                    5761 	.db 0x0d
      003F23 0A                    5762 	.db 0x0a
      003F24 00                    5763 	.db 0x00
                                   5764 	.area CSEG    (CODE)
                                   5765 	.area CONST   (CODE)
      003F25                       5766 ___str_24:
      003F25 30 3A 20 4C 69 6E 65  5767 	.ascii "0: LineFi EN0,1,2 off"
             46 69 20 45 4E 30 2C
             31 2C 32 20 6F 66 66
      003F3A 0D                    5768 	.db 0x0d
      003F3B 0A                    5769 	.db 0x0a
      003F3C 00                    5770 	.db 0x00
                                   5771 	.area CSEG    (CODE)
                                   5772 	.area CONST   (CODE)
      003F3D                       5773 ___str_25:
      003F3D 31 3A 20 4C 69 6E 65  5774 	.ascii "1: LineFi EN0 = 1"
             46 69 20 45 4E 30 20
             3D 20 31
      003F4E 0D                    5775 	.db 0x0d
      003F4F 0A                    5776 	.db 0x0a
      003F50 00                    5777 	.db 0x00
                                   5778 	.area CSEG    (CODE)
                                   5779 	.area CONST   (CODE)
      003F51                       5780 ___str_26:
      003F51 32 3A                 5781 	.ascii "2:"
      003F53 0D                    5782 	.db 0x0d
      003F54 0A                    5783 	.db 0x0a
      003F55 00                    5784 	.db 0x00
                                   5785 	.area CSEG    (CODE)
                                   5786 	.area CONST   (CODE)
      003F56                       5787 ___str_27:
      003F56 33 3A                 5788 	.ascii "3:"
      003F58 0D                    5789 	.db 0x0d
      003F59 0A                    5790 	.db 0x0a
      003F5A 00                    5791 	.db 0x00
                                   5792 	.area CSEG    (CODE)
                                   5793 	.area CONST   (CODE)
      003F5B                       5794 ___str_28:
      003F5B 34 3A                 5795 	.ascii "4:"
      003F5D 0D                    5796 	.db 0x0d
      003F5E 0A                    5797 	.db 0x0a
      003F5F 00                    5798 	.db 0x00
                                   5799 	.area CSEG    (CODE)
                                   5800 	.area CONST   (CODE)
      003F60                       5801 ___str_29:
      003F60 35 3A                 5802 	.ascii "5:"
      003F62 0D                    5803 	.db 0x0d
      003F63 0A                    5804 	.db 0x0a
      003F64 00                    5805 	.db 0x00
                                   5806 	.area CSEG    (CODE)
                                   5807 	.area CONST   (CODE)
      003F65                       5808 ___str_30:
      003F65 36 3A                 5809 	.ascii "6:"
      003F67 0D                    5810 	.db 0x0d
      003F68 0A                    5811 	.db 0x0a
      003F69 00                    5812 	.db 0x00
                                   5813 	.area CSEG    (CODE)
                                   5814 	.area CONST   (CODE)
      003F6A                       5815 ___str_31:
      003F6A 37 3A                 5816 	.ascii "7:"
      003F6C 0D                    5817 	.db 0x0d
      003F6D 0A                    5818 	.db 0x0a
      003F6E 00                    5819 	.db 0x00
                                   5820 	.area CSEG    (CODE)
                                   5821 	.area CONST   (CODE)
      003F6F                       5822 ___str_32:
      003F6F 68 3A 20 41 64 64 72  5823 	.ascii "h: Addr--"
             2D 2D
      003F78 0D                    5824 	.db 0x0d
      003F79 0A                    5825 	.db 0x0a
      003F7A 00                    5826 	.db 0x00
                                   5827 	.area CSEG    (CODE)
                                   5828 	.area CONST   (CODE)
      003F7B                       5829 ___str_33:
      003F7B 6A 3A 20 43 6D 64 2D  5830 	.ascii "j: Cmd--"
             2D
      003F83 0D                    5831 	.db 0x0d
      003F84 0A                    5832 	.db 0x0a
      003F85 00                    5833 	.db 0x00
                                   5834 	.area CSEG    (CODE)
                                   5835 	.area CONST   (CODE)
      003F86                       5836 ___str_34:
      003F86 6B 3A 20 43 6D 64 2B  5837 	.ascii "k: Cmd++"
             2B
      003F8E 0D                    5838 	.db 0x0d
      003F8F 0A                    5839 	.db 0x0a
      003F90 00                    5840 	.db 0x00
                                   5841 	.area CSEG    (CODE)
                                   5842 	.area CONST   (CODE)
      003F91                       5843 ___str_35:
      003F91 6C 3A 20 41 64 64 72  5844 	.ascii "l: Addr++"
             2B 2B
      003F9A 0D                    5845 	.db 0x0d
      003F9B 0A                    5846 	.db 0x0a
      003F9C 00                    5847 	.db 0x00
                                   5848 	.area CSEG    (CODE)
                                   5849 	.area CONST   (CODE)
      003F9D                       5850 ___str_36:
      003F9D 73 3A 20 73 65 6E 64  5851 	.ascii "s: sending"
             69 6E 67
      003FA7 0D                    5852 	.db 0x0d
      003FA8 0A                    5853 	.db 0x0a
      003FA9 00                    5854 	.db 0x00
                                   5855 	.area CSEG    (CODE)
                                   5856 	.area CONST   (CODE)
      003FAA                       5857 ___str_37:
      003FAA 25 75                 5858 	.ascii "%u"
      003FAC 0A                    5859 	.db 0x0a
      003FAD 0D                    5860 	.db 0x0d
      003FAE 00                    5861 	.db 0x00
                                   5862 	.area CSEG    (CODE)
                                   5863 	.area CONST   (CODE)
      003FAF                       5864 ___str_38:
      003FAF 4C 49 4E 45 46 49 5F  5865 	.ascii "LINEFI_EN0=0"
             45 4E 30 3D 30
      003FBB 0A                    5866 	.db 0x0a
      003FBC 0D                    5867 	.db 0x0d
      003FBD 00                    5868 	.db 0x00
                                   5869 	.area CSEG    (CODE)
                                   5870 	.area CONST   (CODE)
      003FBE                       5871 ___str_39:
      003FBE 4C 49 4E 45 46 49 5F  5872 	.ascii "LINEFI_EN0=1"
             45 4E 30 3D 31
      003FCA 0A                    5873 	.db 0x0a
      003FCB 0D                    5874 	.db 0x0d
      003FCC 00                    5875 	.db 0x00
                                   5876 	.area CSEG    (CODE)
                                   5877 	.area CONST   (CODE)
      003FCD                       5878 ___str_40:
      003FCD 4C 49 4E 45 46 49 5F  5879 	.ascii "LINEFI_TX=0"
             54 58 3D 30
      003FD8 0A                    5880 	.db 0x0a
      003FD9 0D                    5881 	.db 0x0d
      003FDA 00                    5882 	.db 0x00
                                   5883 	.area CSEG    (CODE)
                                   5884 	.area CONST   (CODE)
      003FDB                       5885 ___str_41:
      003FDB 4C 49 4E 45 46 49 5F  5886 	.ascii "LINEFI_TX=1"
             54 58 3D 31
      003FE6 0A                    5887 	.db 0x0a
      003FE7 0D                    5888 	.db 0x0d
      003FE8 00                    5889 	.db 0x00
                                   5890 	.area CSEG    (CODE)
                                   5891 	.area CONST   (CODE)
      003FE9                       5892 ___str_42:
      003FE9 4C 49 4E 45 46 49 5F  5893 	.ascii "LINEFI_TX=%d"
             54 58 3D 25 64
      003FF5 0A                    5894 	.db 0x0a
      003FF6 0D                    5895 	.db 0x0d
      003FF7 00                    5896 	.db 0x00
                                   5897 	.area CSEG    (CODE)
                                   5898 	.area CONST   (CODE)
      003FF8                       5899 ___str_43:
      003FF8 4C 49 4E 45 46 49 5F  5900 	.ascii "LINEFI_EN0="
             45 4E 30 3D
      004003 00                    5901 	.db 0x00
                                   5902 	.area CSEG    (CODE)
                                   5903 	.area CONST   (CODE)
      004004                       5904 ___str_44:
      004004 25 64                 5905 	.ascii "%d"
      004006 0A                    5906 	.db 0x0a
      004007 0D                    5907 	.db 0x0d
      004008 00                    5908 	.db 0x00
                                   5909 	.area CSEG    (CODE)
                                   5910 	.area CONST   (CODE)
      004009                       5911 ___str_45:
      004009 4C 49 4E 45 46 49 5F  5912 	.ascii "LINEFI_EN1="
             45 4E 31 3D
      004014 00                    5913 	.db 0x00
                                   5914 	.area CSEG    (CODE)
                                   5915 	.area CONST   (CODE)
      004015                       5916 ___str_46:
      004015 4C 49 4E 45 46 49 5F  5917 	.ascii "LINEFI_EN2="
             45 4E 32 3D
      004020 00                    5918 	.db 0x00
                                   5919 	.area CSEG    (CODE)
                                   5920 	.area CONST   (CODE)
      004021                       5921 ___str_47:
      004021 75 61 72 74 20 73 70  5922 	.ascii "uart speed: %lu:"
             65 65 64 3A 20 25 6C
             75 3A
      004031 0A                    5923 	.db 0x0a
      004032 0D                    5924 	.db 0x0d
      004033 00                    5925 	.db 0x00
                                   5926 	.area CSEG    (CODE)
                                   5927 	.area CONST   (CODE)
      004034                       5928 ___str_48:
      004034 61 64 64 72 65 73 73  5929 	.ascii "address: %d"
             3A 20 25 64
      00403F 0A                    5930 	.db 0x0a
      004040 0D                    5931 	.db 0x0d
      004041 00                    5932 	.db 0x00
                                   5933 	.area CSEG    (CODE)
                                   5934 	.area CONST   (CODE)
      004042                       5935 ___str_49:
      004042 63 6F 6D 6D 61 6E 64  5936 	.ascii "command: %d"
             3A 20 25 64
      00404D 0A                    5937 	.db 0x0a
      00404E 0D                    5938 	.db 0x0d
      00404F 00                    5939 	.db 0x00
                                   5940 	.area CSEG    (CODE)
                                   5941 	.area CONST   (CODE)
      004050                       5942 ___str_50:
      004050 4C 69 6E 65 46 69 20  5943 	.ascii "LineFi Sending: 0x%x:"
             53 65 6E 64 69 6E 67
             3A 20 30 78 25 78 3A
      004065 0A                    5944 	.db 0x0a
      004066 0D                    5945 	.db 0x0d
      004067 00                    5946 	.db 0x00
                                   5947 	.area CSEG    (CODE)
                                   5948 	.area CONST   (CODE)
      004068                       5949 ___str_51:
      004068 61 64 64 72 65 73 73  5950 	.ascii "address: 0x%d:"
             3A 20 30 78 25 64 3A
      004076 0A                    5951 	.db 0x0a
      004077 0D                    5952 	.db 0x0d
      004078 00                    5953 	.db 0x00
                                   5954 	.area CSEG    (CODE)
                                   5955 	.area CONST   (CODE)
      004079                       5956 ___str_52:
      004079 4C 69 6E 65 46 69 20  5957 	.ascii "LineFi Sending: %d(0x%x)"
             53 65 6E 64 69 6E 67
             3A 20 25 64 28 30 78
             25 78 29
      004091 0A                    5958 	.db 0x0a
      004092 0D                    5959 	.db 0x0d
      004093 00                    5960 	.db 0x00
                                   5961 	.area CSEG    (CODE)
                                   5962 	.area CONST   (CODE)
      004094                       5963 ___str_53:
      004094 73 65 6E 64 20 64 61  5964 	.ascii "send data %d(0x%x)"
             74 61 20 25 64 28 30
             78 25 78 29
      0040A6 0A                    5965 	.db 0x0a
      0040A7 0D                    5966 	.db 0x0d
      0040A8 00                    5967 	.db 0x00
                                   5968 	.area CSEG    (CODE)
                                   5969 	.area CONST   (CODE)
      0040A9                       5970 ___str_54:
      0040A9 52 6F 74 61 74 65 21  5971 	.ascii "Rotate!!:%d "
             21 3A 25 64 20
      0040B5 0A                    5972 	.db 0x0a
      0040B6 0D                    5973 	.db 0x0d
      0040B7 00                    5974 	.db 0x00
                                   5975 	.area CSEG    (CODE)
                                   5976 	.area CONST   (CODE)
      0040B8                       5977 ___str_55:
      0040B8 53 74 6F 70 20 20 20  5978 	.ascii "Stop    :%d "
             20 3A 25 64 20
      0040C4 0A                    5979 	.db 0x0a
      0040C5 0D                    5980 	.db 0x0d
      0040C6 00                    5981 	.db 0x00
                                   5982 	.area CSEG    (CODE)
                                   5983 	.area CONST   (CODE)
      0040C7                       5984 ___str_56:
      0040C7 25 6C 75 28 25 78 2C  5985 	.ascii "%lu(%x, %x, %x)"
             20 25 78 2C 20 25 78
             29
      0040D6 0D                    5986 	.db 0x0d
      0040D7 0A                    5987 	.db 0x0a
      0040D8 00                    5988 	.db 0x00
                                   5989 	.area CSEG    (CODE)
                                   5990 	.area CONST   (CODE)
      0040D9                       5991 ___str_57:
      0040D9 54 68 69 73 20 69 73  5992 	.ascii "This is UART0"
             20 55 41 52 54 30
      0040E6 0A                    5993 	.db 0x0a
      0040E7 0D                    5994 	.db 0x0d
      0040E8 00                    5995 	.db 0x00
                                   5996 	.area CSEG    (CODE)
                                   5997 	.area CONST   (CODE)
      0040E9                       5998 ___str_58:
      0040E9 4C 69 6E 65 46 69 20  5999 	.ascii "LineFi Master"
             4D 61 73 74 65 72
      0040F6 0A                    6000 	.db 0x0a
      0040F7 0D                    6001 	.db 0x0d
      0040F8 00                    6002 	.db 0x00
                                   6003 	.area CSEG    (CODE)
                                   6004 	.area CONST   (CODE)
      0040F9                       6005 ___str_59:
      0040F9 54 68 69 73 20 69 73  6006 	.ascii "This is UART1"
             20 55 41 52 54 31
      004106 0A                    6007 	.db 0x0a
      004107 0D                    6008 	.db 0x0d
      004108 00                    6009 	.db 0x00
                                   6010 	.area CSEG    (CODE)
                                   6011 	.area CONST   (CODE)
      004109                       6012 ___str_60:
      004109 25 73                 6013 	.ascii "%s"
      00410B 0D                    6014 	.db 0x0d
      00410C 0A                    6015 	.db 0x0a
      00410D 00                    6016 	.db 0x00
                                   6017 	.area CSEG    (CODE)
                                   6018 	.area CONST   (CODE)
      00410E                       6019 ___str_61:
      00410E 44 61 74 61 49 64 78  6020 	.ascii "DataIdx:%d"
             3A 25 64
      004118 0D                    6021 	.db 0x0d
      004119 0A                    6022 	.db 0x0a
      00411A 00                    6023 	.db 0x00
                                   6024 	.area CSEG    (CODE)
                                   6025 	.area CONST   (CODE)
      00411B                       6026 ___str_62:
      00411B 30 78 25 78 20        6027 	.ascii "0x%x "
      004120 00                    6028 	.db 0x00
                                   6029 	.area CSEG    (CODE)
                                   6030 	.area CONST   (CODE)
      004121                       6031 ___str_63:
      004121 53 54 41 52 54 20 70  6032 	.ascii "START periodic packet generating.."
             65 72 69 6F 64 69 63
             20 70 61 63 6B 65 74
             20 67 65 6E 65 72 61
             74 69 6E 67 2E 2E
      004143 0D                    6033 	.db 0x0d
      004144 0A                    6034 	.db 0x0a
      004145 00                    6035 	.db 0x00
                                   6036 	.area CSEG    (CODE)
                                   6037 	.area CONST   (CODE)
      004146                       6038 ___str_64:
      004146 53 54 4F 50 20 20 70  6039 	.ascii "STOP  periodic packet generating.."
             65 72 69 6F 64 69 63
             20 70 61 63 6B 65 74
             20 67 65 6E 65 72 61
             74 69 6E 67 2E 2E
      004168 0D                    6040 	.db 0x0d
      004169 0A                    6041 	.db 0x0a
      00416A 00                    6042 	.db 0x00
                                   6043 	.area CSEG    (CODE)
                                   6044 	.area CONST   (CODE)
      00416B                       6045 ___str_65:
      00416B 4F 4B                 6046 	.ascii "OK"
      00416D 00                    6047 	.db 0x00
                                   6048 	.area CSEG    (CODE)
                                   6049 	.area CONST   (CODE)
      00416E                       6050 ___str_66:
      00416E 73 74 61 72 74 69 6E  6051 	.ascii "starting ALOHA..."
             67 20 41 4C 4F 48 41
             2E 2E 2E
      00417F 0D                    6052 	.db 0x0d
      004180 0A                    6053 	.db 0x0a
      004181 00                    6054 	.db 0x00
                                   6055 	.area CSEG    (CODE)
                                   6056 	.area CONST   (CODE)
      004182                       6057 ___str_67:
      004182 73 74 6F 70 70 69 6E  6058 	.ascii "stopping ALOHA..."
             67 20 41 4C 4F 48 41
             2E 2E 2E
      004193 00                    6059 	.db 0x00
                                   6060 	.area CSEG    (CODE)
                                   6061 	.area CONST   (CODE)
      004194                       6062 ___str_68:
      004194 31 30 30 30 20        6063 	.ascii "1000 "
      004199 00                    6064 	.db 0x00
                                   6065 	.area CSEG    (CODE)
                                   6066 	.area CONST   (CODE)
      00419A                       6067 ___str_69:
      00419A 53 6C 61 76 65 5F 41  6068 	.ascii "Slave_ADDR: %d, UL_Packet_num: %d"
             44 44 52 3A 20 25 64
             2C 20 55 4C 5F 50 61
             63 6B 65 74 5F 6E 75
             6D 3A 20 25 64
      0041BB 0D                    6069 	.db 0x0d
      0041BC 0A                    6070 	.db 0x0a
      0041BD 00                    6071 	.db 0x00
                                   6072 	.area CSEG    (CODE)
                                   6073 	.area CONST   (CODE)
      0041BE                       6074 ___str_70:
      0041BE 0D                    6075 	.db 0x0d
      0041BF 0A                    6076 	.db 0x0a
      0041C0 0D                    6077 	.db 0x0d
      0041C1 0A                    6078 	.db 0x0a
      0041C2 00                    6079 	.db 0x00
                                   6080 	.area CSEG    (CODE)
                                   6081 	.area CONST   (CODE)
      0041C3                       6082 ___str_71:
      0041C3 73 74 6F 70 70 69 6E  6083 	.ascii "stopping..."
             67 2E 2E 2E
      0041CE 0D                    6084 	.db 0x0d
      0041CF 0A                    6085 	.db 0x0a
      0041D0 00                    6086 	.db 0x00
                                   6087 	.area CSEG    (CODE)
                                   6088 	.area CONST   (CODE)
      0041D1                       6089 ___str_72:
      0041D1 55 41 52 54 30 5F 49  6090 	.ascii "UART0_INPUT_MODE0:one key control"
             4E 50 55 54 5F 4D 4F
             44 45 30 3A 6F 6E 65
             20 6B 65 79 20 63 6F
             6E 74 72 6F 6C
      0041F2 00                    6091 	.db 0x00
                                   6092 	.area CSEG    (CODE)
                                   6093 	.area CONST   (CODE)
      0041F3                       6094 ___str_73:
      0041F3 55 41 52 54 30 5F 49  6095 	.ascii "UART0_INPUT_MODE1:string input"
             4E 50 55 54 5F 4D 4F
             44 45 31 3A 73 74 72
             69 6E 67 20 69 6E 70
             75 74
      004211 00                    6096 	.db 0x00
                                   6097 	.area CSEG    (CODE)
                                   6098 	.area CONST   (CODE)
      004212                       6099 ___str_74:
      004212 55 41 52 54 30 5F 49  6100 	.ascii "UART0_INPUT_MODE2:mimic 5keys on board"
             4E 50 55 54 5F 4D 4F
             44 45 32 3A 6D 69 6D
             69 63 20 35 6B 65 79
             73 20 6F 6E 20 62 6F
             61 72 64
      004238 00                    6101 	.db 0x00
                                   6102 	.area CSEG    (CODE)
                                   6103 	.area CONST   (CODE)
      004239                       6104 ___str_75:
      004239 55 41 52 54 30 5F 49  6105 	.ascii "UART0_INPUT_MODE3:data setting"
             4E 50 55 54 5F 4D 4F
             44 45 33 3A 64 61 74
             61 20 73 65 74 74 69
             6E 67
      004257 00                    6106 	.db 0x00
                                   6107 	.area CSEG    (CODE)
                                   6108 	.area CONST   (CODE)
      004258                       6109 ___str_76:
      004258 55 41 52 54 30 5F 49  6110 	.ascii "UART0_INPUT_MODE4:periodic function"
             4E 50 55 54 5F 4D 4F
             44 45 34 3A 70 65 72
             69 6F 64 69 63 20 66
             75 6E 63 74 69 6F 6E
      00427B 00                    6111 	.db 0x00
                                   6112 	.area CSEG    (CODE)
                                   6113 	.area CONST   (CODE)
      00427C                       6114 ___str_77:
      00427C 55 41 52 54 30 5F 49  6115 	.ascii "UART0_INPUT_MODE5:uplink test"
             4E 50 55 54 5F 4D 4F
             44 45 35 3A 75 70 6C
             69 6E 6B 20 74 65 73
             74
      004299 00                    6116 	.db 0x00
                                   6117 	.area CSEG    (CODE)
                                   6118 	.area CONST   (CODE)
      00429A                       6119 ___str_78:
      00429A 55 41 52 54 30 5F 49  6120 	.ascii "UART0_INPUT_MODE6:loopback test"
             4E 50 55 54 5F 4D 4F
             44 45 36 3A 6C 6F 6F
             70 62 61 63 6B 20 74
             65 73 74
      0042B9 00                    6121 	.db 0x00
                                   6122 	.area CSEG    (CODE)
                                   6123 	.area CONST   (CODE)
      0042BA                       6124 ___str_79:
      0042BA 55 41 52 54 30 5F 49  6125 	.ascii "UART0_INPUT_MODE7:pass through"
             4E 50 55 54 5F 4D 4F
             44 45 37 3A 70 61 73
             73 20 74 68 72 6F 75
             67 68
      0042D8 00                    6126 	.db 0x00
                                   6127 	.area CSEG    (CODE)
                                   6128 	.area CONST   (CODE)
      0042D9                       6129 ___str_80:
      0042D9 55 41 52 54 30 5F 49  6130 	.ascii "UART0_INPUT_MODE8: uplink rx"
             4E 50 55 54 5F 4D 4F
             44 45 38 3A 20 75 70
             6C 69 6E 6B 20 72 78
      0042F5 00                    6131 	.db 0x00
                                   6132 	.area CSEG    (CODE)
                                   6133 	.area CABS    (ABS,CODE)
