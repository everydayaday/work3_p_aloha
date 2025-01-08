                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getstr_uart1_PARM_2
                                     12 	.globl _getstr_uart0_PARM_2
                                     13 	.globl _Uart1Tx_ISR
                                     14 	.globl _Uart0Tx_ISR
                                     15 	.globl _InitialUART1_Timer3
                                     16 	.globl _InitialUART0_Timer1
                                     17 	.globl _MOSI
                                     18 	.globl _P00
                                     19 	.globl _MISO
                                     20 	.globl _P01
                                     21 	.globl _RXD_1
                                     22 	.globl _P02
                                     23 	.globl _P03
                                     24 	.globl _STADC
                                     25 	.globl _P04
                                     26 	.globl _P05
                                     27 	.globl _TXD
                                     28 	.globl _P06
                                     29 	.globl _RXD
                                     30 	.globl _P07
                                     31 	.globl _IT0
                                     32 	.globl _IE0
                                     33 	.globl _IT1
                                     34 	.globl _IE1
                                     35 	.globl _TR0
                                     36 	.globl _TF0
                                     37 	.globl _TR1
                                     38 	.globl _TF1
                                     39 	.globl _P10
                                     40 	.globl _P11
                                     41 	.globl _P12
                                     42 	.globl _SCL
                                     43 	.globl _P13
                                     44 	.globl _SDA
                                     45 	.globl _P14
                                     46 	.globl _P15
                                     47 	.globl _TXD_1
                                     48 	.globl _P16
                                     49 	.globl _P17
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _FE
                                     58 	.globl _SM0
                                     59 	.globl _P20
                                     60 	.globl _EX0
                                     61 	.globl _ET0
                                     62 	.globl _EX1
                                     63 	.globl _ET1
                                     64 	.globl _ES
                                     65 	.globl _EBOD
                                     66 	.globl _EADC
                                     67 	.globl _EA
                                     68 	.globl _P30
                                     69 	.globl _PX0
                                     70 	.globl _PT0
                                     71 	.globl _PX1
                                     72 	.globl _PT1
                                     73 	.globl _PS
                                     74 	.globl _PBOD
                                     75 	.globl _PADC
                                     76 	.globl _I2CPX
                                     77 	.globl _AA
                                     78 	.globl _SI
                                     79 	.globl _STO
                                     80 	.globl _STA
                                     81 	.globl _I2CEN
                                     82 	.globl _CM_RL2
                                     83 	.globl _TR2
                                     84 	.globl _TF2
                                     85 	.globl _P
                                     86 	.globl _OV
                                     87 	.globl _RS0
                                     88 	.globl _RS1
                                     89 	.globl _F0
                                     90 	.globl _AC
                                     91 	.globl _CY
                                     92 	.globl _CLRPWM
                                     93 	.globl _PWMF
                                     94 	.globl _LOAD
                                     95 	.globl _PWMRUN
                                     96 	.globl _ADCHS0
                                     97 	.globl _ADCHS1
                                     98 	.globl _ADCHS2
                                     99 	.globl _ADCHS3
                                    100 	.globl _ETGSEL0
                                    101 	.globl _ETGSEL1
                                    102 	.globl _ADCS
                                    103 	.globl _ADCF
                                    104 	.globl _RI_1
                                    105 	.globl _TI_1
                                    106 	.globl _RB8_1
                                    107 	.globl _TB8_1
                                    108 	.globl _REN_1
                                    109 	.globl _SM2_1
                                    110 	.globl _SM1_1
                                    111 	.globl _FE_1
                                    112 	.globl _SM0_1
                                    113 	.globl _EIPH1
                                    114 	.globl _EIP1
                                    115 	.globl _PMD
                                    116 	.globl _PMEN
                                    117 	.globl _PDTCNT
                                    118 	.globl _PDTEN
                                    119 	.globl _SCON_1
                                    120 	.globl _EIPH
                                    121 	.globl _AINDIDS
                                    122 	.globl _SPDR
                                    123 	.globl _SPSR
                                    124 	.globl _SPCR2
                                    125 	.globl _SPCR
                                    126 	.globl _CAPCON4
                                    127 	.globl _CAPCON3
                                    128 	.globl _B
                                    129 	.globl _EIP
                                    130 	.globl _C2H
                                    131 	.globl _C2L
                                    132 	.globl _PIF
                                    133 	.globl _PIPEN
                                    134 	.globl _PINEN
                                    135 	.globl _PICON
                                    136 	.globl _ADCCON0
                                    137 	.globl _C1H
                                    138 	.globl _C1L
                                    139 	.globl _C0H
                                    140 	.globl _C0L
                                    141 	.globl _ADCDLY
                                    142 	.globl _ADCCON2
                                    143 	.globl _ADCCON1
                                    144 	.globl _ACC
                                    145 	.globl _PWMCON1
                                    146 	.globl _PIOCON0
                                    147 	.globl _PWM3L
                                    148 	.globl _PWM2L
                                    149 	.globl _PWM1L
                                    150 	.globl _PWM0L
                                    151 	.globl _PWMPL
                                    152 	.globl _PWMCON0
                                    153 	.globl _FBD
                                    154 	.globl _PNP
                                    155 	.globl _PWM3H
                                    156 	.globl _PWM2H
                                    157 	.globl _PWM1H
                                    158 	.globl _PWM0H
                                    159 	.globl _PWMPH
                                    160 	.globl _PSW
                                    161 	.globl _ADCMPH
                                    162 	.globl _ADCMPL
                                    163 	.globl _PWM5L
                                    164 	.globl _TH2
                                    165 	.globl _PWM4L
                                    166 	.globl _TL2
                                    167 	.globl _RCMP2H
                                    168 	.globl _RCMP2L
                                    169 	.globl _T2MOD
                                    170 	.globl _T2CON
                                    171 	.globl _TA
                                    172 	.globl _PIOCON1
                                    173 	.globl _RH3
                                    174 	.globl _PWM5H
                                    175 	.globl _RL3
                                    176 	.globl _PWM4H
                                    177 	.globl _T3CON
                                    178 	.globl _ADCRH
                                    179 	.globl _ADCRL
                                    180 	.globl _I2ADDR
                                    181 	.globl _I2CON
                                    182 	.globl _I2TOC
                                    183 	.globl _I2CLK
                                    184 	.globl _I2STAT
                                    185 	.globl _I2DAT
                                    186 	.globl _SADDR_1
                                    187 	.globl _SADEN_1
                                    188 	.globl _SADEN
                                    189 	.globl _IP
                                    190 	.globl _PWMINTC
                                    191 	.globl _IPH
                                    192 	.globl _P2S
                                    193 	.globl _P1SR
                                    194 	.globl _P1M2
                                    195 	.globl _P1S
                                    196 	.globl _P1M1
                                    197 	.globl _P0SR
                                    198 	.globl _P0M2
                                    199 	.globl _P0S
                                    200 	.globl _P0M1
                                    201 	.globl _P3
                                    202 	.globl _IAPCN
                                    203 	.globl _IAPFD
                                    204 	.globl _P3SR
                                    205 	.globl _P3M2
                                    206 	.globl _P3S
                                    207 	.globl _P3M1
                                    208 	.globl _BODCON1
                                    209 	.globl _WDCON
                                    210 	.globl _SADDR
                                    211 	.globl _IE
                                    212 	.globl _IAPAH
                                    213 	.globl _IAPAL
                                    214 	.globl _IAPUEN
                                    215 	.globl _IAPTRG
                                    216 	.globl _BODCON0
                                    217 	.globl _AUXR1
                                    218 	.globl _P2
                                    219 	.globl _CHPCON
                                    220 	.globl _EIE1
                                    221 	.globl _EIE
                                    222 	.globl _SBUF_1
                                    223 	.globl _SBUF
                                    224 	.globl _SCON
                                    225 	.globl _CKEN
                                    226 	.globl _CKSWT
                                    227 	.globl _CKDIV
                                    228 	.globl _CAPCON2
                                    229 	.globl _CAPCON1
                                    230 	.globl _CAPCON0
                                    231 	.globl _SFRS
                                    232 	.globl _P1
                                    233 	.globl _WKCON
                                    234 	.globl _CKCON
                                    235 	.globl _TH1
                                    236 	.globl _TH0
                                    237 	.globl _TL1
                                    238 	.globl _TL0
                                    239 	.globl _TMOD
                                    240 	.globl _TCON
                                    241 	.globl _PCON
                                    242 	.globl _RWK
                                    243 	.globl _RCTRIM1
                                    244 	.globl _RCTRIM0
                                    245 	.globl _DPH
                                    246 	.globl _DPL
                                    247 	.globl _SP
                                    248 	.globl _P0
                                    249 	.globl _gu8Uart1TCnt
                                    250 	.globl _gu8Uart1RCnt
                                    251 	.globl _gu8Uart0TCnt
                                    252 	.globl _gu8Uart0RCnt
                                    253 	.globl _gu8Tx1WIdx
                                    254 	.globl _gu8Tx1RIdx
                                    255 	.globl _gu8Tx1Size
                                    256 	.globl _gu8Rx1WIdx
                                    257 	.globl _gu8Rx1RIdx
                                    258 	.globl _gu8Rx1Size
                                    259 	.globl _gu8Tx0WIdx
                                    260 	.globl _gu8Tx0RIdx
                                    261 	.globl _gu8Tx0Size
                                    262 	.globl _gu8Rx0WIdx
                                    263 	.globl _gu8Rx0RIdx
                                    264 	.globl _gu8Rx0Size
                                    265 	.globl _pu8UartTx1Buf
                                    266 	.globl _pu8UartRx1Buf
                                    267 	.globl _pu8UartTx0Buf
                                    268 	.globl _pu8UartRx0Buf
                                    269 	.globl _gpcMC22B
                                    270 	.globl _gpc2B2MC
                                    271 	.globl _gu8BECnt
                                    272 	.globl _gu8BNECnt
                                    273 	.globl _gu8BFCnt
                                    274 	.globl _gu8BNFCnt
                                    275 	.globl _gu8UART
                                    276 	.globl _InitialUART0_Timer1
                                    277 	.globl _InitialUART0_Timer3
                                    278 	.globl _InitialUART1_Timer3
                                    279 	.globl _set_linefi_uplink_speed
                                    280 	.globl _putchar
                                    281 	.globl _uart_setup
                                    282 	.globl _SerialPort0_ISR
                                    283 	.globl _chkchar_uart0
                                    284 	.globl _getchar_uart0
                                    285 	.globl _getstr_uart0
                                    286 	.globl _SerialPort1_ISR
                                    287 	.globl _chkchar_uart1
                                    288 	.globl _getchar_uart1
                                    289 	.globl _getstr_uart1
                                    290 	.globl _putchar_uart0
                                    291 	.globl _putchar_uart1
                                    292 	.globl _preamble
                                    293 	.globl _putchar_manchester
                                    294 	.globl _chk_manchester
                                    295 	.globl _conv_manchester2nibble
                                    296 ;--------------------------------------------------------
                                    297 ; special function registers
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0	=	0x0080
                           000081   302 _SP	=	0x0081
                           000082   303 _DPL	=	0x0082
                           000083   304 _DPH	=	0x0083
                           000084   305 _RCTRIM0	=	0x0084
                           000085   306 _RCTRIM1	=	0x0085
                           000086   307 _RWK	=	0x0086
                           000087   308 _PCON	=	0x0087
                           000088   309 _TCON	=	0x0088
                           000089   310 _TMOD	=	0x0089
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008E   315 _CKCON	=	0x008e
                           00008F   316 _WKCON	=	0x008f
                           000090   317 _P1	=	0x0090
                           000091   318 _SFRS	=	0x0091
                           000092   319 _CAPCON0	=	0x0092
                           000093   320 _CAPCON1	=	0x0093
                           000094   321 _CAPCON2	=	0x0094
                           000095   322 _CKDIV	=	0x0095
                           000096   323 _CKSWT	=	0x0096
                           000097   324 _CKEN	=	0x0097
                           000098   325 _SCON	=	0x0098
                           000099   326 _SBUF	=	0x0099
                           00009A   327 _SBUF_1	=	0x009a
                           00009B   328 _EIE	=	0x009b
                           00009C   329 _EIE1	=	0x009c
                           00009F   330 _CHPCON	=	0x009f
                           0000A0   331 _P2	=	0x00a0
                           0000A2   332 _AUXR1	=	0x00a2
                           0000A3   333 _BODCON0	=	0x00a3
                           0000A4   334 _IAPTRG	=	0x00a4
                           0000A5   335 _IAPUEN	=	0x00a5
                           0000A6   336 _IAPAL	=	0x00a6
                           0000A7   337 _IAPAH	=	0x00a7
                           0000A8   338 _IE	=	0x00a8
                           0000A9   339 _SADDR	=	0x00a9
                           0000AA   340 _WDCON	=	0x00aa
                           0000AB   341 _BODCON1	=	0x00ab
                           0000AC   342 _P3M1	=	0x00ac
                           0000AC   343 _P3S	=	0x00ac
                           0000AD   344 _P3M2	=	0x00ad
                           0000AD   345 _P3SR	=	0x00ad
                           0000AE   346 _IAPFD	=	0x00ae
                           0000AF   347 _IAPCN	=	0x00af
                           0000B0   348 _P3	=	0x00b0
                           0000B1   349 _P0M1	=	0x00b1
                           0000B1   350 _P0S	=	0x00b1
                           0000B2   351 _P0M2	=	0x00b2
                           0000B2   352 _P0SR	=	0x00b2
                           0000B3   353 _P1M1	=	0x00b3
                           0000B3   354 _P1S	=	0x00b3
                           0000B4   355 _P1M2	=	0x00b4
                           0000B4   356 _P1SR	=	0x00b4
                           0000B5   357 _P2S	=	0x00b5
                           0000B7   358 _IPH	=	0x00b7
                           0000B7   359 _PWMINTC	=	0x00b7
                           0000B8   360 _IP	=	0x00b8
                           0000B9   361 _SADEN	=	0x00b9
                           0000BA   362 _SADEN_1	=	0x00ba
                           0000BB   363 _SADDR_1	=	0x00bb
                           0000BC   364 _I2DAT	=	0x00bc
                           0000BD   365 _I2STAT	=	0x00bd
                           0000BE   366 _I2CLK	=	0x00be
                           0000BF   367 _I2TOC	=	0x00bf
                           0000C0   368 _I2CON	=	0x00c0
                           0000C1   369 _I2ADDR	=	0x00c1
                           0000C2   370 _ADCRL	=	0x00c2
                           0000C3   371 _ADCRH	=	0x00c3
                           0000C4   372 _T3CON	=	0x00c4
                           0000C4   373 _PWM4H	=	0x00c4
                           0000C5   374 _RL3	=	0x00c5
                           0000C5   375 _PWM5H	=	0x00c5
                           0000C6   376 _RH3	=	0x00c6
                           0000C6   377 _PIOCON1	=	0x00c6
                           0000C7   378 _TA	=	0x00c7
                           0000C8   379 _T2CON	=	0x00c8
                           0000C9   380 _T2MOD	=	0x00c9
                           0000CA   381 _RCMP2L	=	0x00ca
                           0000CB   382 _RCMP2H	=	0x00cb
                           0000CC   383 _TL2	=	0x00cc
                           0000CC   384 _PWM4L	=	0x00cc
                           0000CD   385 _TH2	=	0x00cd
                           0000CD   386 _PWM5L	=	0x00cd
                           0000CE   387 _ADCMPL	=	0x00ce
                           0000CF   388 _ADCMPH	=	0x00cf
                           0000D0   389 _PSW	=	0x00d0
                           0000D1   390 _PWMPH	=	0x00d1
                           0000D2   391 _PWM0H	=	0x00d2
                           0000D3   392 _PWM1H	=	0x00d3
                           0000D4   393 _PWM2H	=	0x00d4
                           0000D5   394 _PWM3H	=	0x00d5
                           0000D6   395 _PNP	=	0x00d6
                           0000D7   396 _FBD	=	0x00d7
                           0000D8   397 _PWMCON0	=	0x00d8
                           0000D9   398 _PWMPL	=	0x00d9
                           0000DA   399 _PWM0L	=	0x00da
                           0000DB   400 _PWM1L	=	0x00db
                           0000DC   401 _PWM2L	=	0x00dc
                           0000DD   402 _PWM3L	=	0x00dd
                           0000DE   403 _PIOCON0	=	0x00de
                           0000DF   404 _PWMCON1	=	0x00df
                           0000E0   405 _ACC	=	0x00e0
                           0000E1   406 _ADCCON1	=	0x00e1
                           0000E2   407 _ADCCON2	=	0x00e2
                           0000E3   408 _ADCDLY	=	0x00e3
                           0000E4   409 _C0L	=	0x00e4
                           0000E5   410 _C0H	=	0x00e5
                           0000E6   411 _C1L	=	0x00e6
                           0000E7   412 _C1H	=	0x00e7
                           0000E8   413 _ADCCON0	=	0x00e8
                           0000E9   414 _PICON	=	0x00e9
                           0000EA   415 _PINEN	=	0x00ea
                           0000EB   416 _PIPEN	=	0x00eb
                           0000EC   417 _PIF	=	0x00ec
                           0000ED   418 _C2L	=	0x00ed
                           0000EE   419 _C2H	=	0x00ee
                           0000EF   420 _EIP	=	0x00ef
                           0000F0   421 _B	=	0x00f0
                           0000F1   422 _CAPCON3	=	0x00f1
                           0000F2   423 _CAPCON4	=	0x00f2
                           0000F3   424 _SPCR	=	0x00f3
                           0000F3   425 _SPCR2	=	0x00f3
                           0000F4   426 _SPSR	=	0x00f4
                           0000F5   427 _SPDR	=	0x00f5
                           0000F6   428 _AINDIDS	=	0x00f6
                           0000F7   429 _EIPH	=	0x00f7
                           0000F8   430 _SCON_1	=	0x00f8
                           0000F9   431 _PDTEN	=	0x00f9
                           0000FA   432 _PDTCNT	=	0x00fa
                           0000FB   433 _PMEN	=	0x00fb
                           0000FC   434 _PMD	=	0x00fc
                           0000FE   435 _EIP1	=	0x00fe
                           0000FF   436 _EIPH1	=	0x00ff
                                    437 ;--------------------------------------------------------
                                    438 ; special function bits
                                    439 ;--------------------------------------------------------
                                    440 	.area RSEG    (ABS,DATA)
      000000                        441 	.org 0x0000
                           0000FF   442 _SM0_1	=	0x00ff
                           0000FF   443 _FE_1	=	0x00ff
                           0000FE   444 _SM1_1	=	0x00fe
                           0000FD   445 _SM2_1	=	0x00fd
                           0000FC   446 _REN_1	=	0x00fc
                           0000FB   447 _TB8_1	=	0x00fb
                           0000FA   448 _RB8_1	=	0x00fa
                           0000F9   449 _TI_1	=	0x00f9
                           0000F8   450 _RI_1	=	0x00f8
                           0000EF   451 _ADCF	=	0x00ef
                           0000EE   452 _ADCS	=	0x00ee
                           0000ED   453 _ETGSEL1	=	0x00ed
                           0000EC   454 _ETGSEL0	=	0x00ec
                           0000EB   455 _ADCHS3	=	0x00eb
                           0000EA   456 _ADCHS2	=	0x00ea
                           0000E9   457 _ADCHS1	=	0x00e9
                           0000E8   458 _ADCHS0	=	0x00e8
                           0000DF   459 _PWMRUN	=	0x00df
                           0000DE   460 _LOAD	=	0x00de
                           0000DD   461 _PWMF	=	0x00dd
                           0000DC   462 _CLRPWM	=	0x00dc
                           0000D7   463 _CY	=	0x00d7
                           0000D6   464 _AC	=	0x00d6
                           0000D5   465 _F0	=	0x00d5
                           0000D4   466 _RS1	=	0x00d4
                           0000D3   467 _RS0	=	0x00d3
                           0000D2   468 _OV	=	0x00d2
                           0000D0   469 _P	=	0x00d0
                           0000CF   470 _TF2	=	0x00cf
                           0000CA   471 _TR2	=	0x00ca
                           0000C8   472 _CM_RL2	=	0x00c8
                           0000C6   473 _I2CEN	=	0x00c6
                           0000C5   474 _STA	=	0x00c5
                           0000C4   475 _STO	=	0x00c4
                           0000C3   476 _SI	=	0x00c3
                           0000C2   477 _AA	=	0x00c2
                           0000C0   478 _I2CPX	=	0x00c0
                           0000BE   479 _PADC	=	0x00be
                           0000BD   480 _PBOD	=	0x00bd
                           0000BC   481 _PS	=	0x00bc
                           0000BB   482 _PT1	=	0x00bb
                           0000BA   483 _PX1	=	0x00ba
                           0000B9   484 _PT0	=	0x00b9
                           0000B8   485 _PX0	=	0x00b8
                           0000B0   486 _P30	=	0x00b0
                           0000AF   487 _EA	=	0x00af
                           0000AE   488 _EADC	=	0x00ae
                           0000AD   489 _EBOD	=	0x00ad
                           0000AC   490 _ES	=	0x00ac
                           0000AB   491 _ET1	=	0x00ab
                           0000AA   492 _EX1	=	0x00aa
                           0000A9   493 _ET0	=	0x00a9
                           0000A8   494 _EX0	=	0x00a8
                           0000A0   495 _P20	=	0x00a0
                           00009F   496 _SM0	=	0x009f
                           00009F   497 _FE	=	0x009f
                           00009E   498 _SM1	=	0x009e
                           00009D   499 _SM2	=	0x009d
                           00009C   500 _REN	=	0x009c
                           00009B   501 _TB8	=	0x009b
                           00009A   502 _RB8	=	0x009a
                           000099   503 _TI	=	0x0099
                           000098   504 _RI	=	0x0098
                           000097   505 _P17	=	0x0097
                           000096   506 _P16	=	0x0096
                           000096   507 _TXD_1	=	0x0096
                           000095   508 _P15	=	0x0095
                           000094   509 _P14	=	0x0094
                           000094   510 _SDA	=	0x0094
                           000093   511 _P13	=	0x0093
                           000093   512 _SCL	=	0x0093
                           000092   513 _P12	=	0x0092
                           000091   514 _P11	=	0x0091
                           000090   515 _P10	=	0x0090
                           00008F   516 _TF1	=	0x008f
                           00008E   517 _TR1	=	0x008e
                           00008D   518 _TF0	=	0x008d
                           00008C   519 _TR0	=	0x008c
                           00008B   520 _IE1	=	0x008b
                           00008A   521 _IT1	=	0x008a
                           000089   522 _IE0	=	0x0089
                           000088   523 _IT0	=	0x0088
                           000087   524 _P07	=	0x0087
                           000087   525 _RXD	=	0x0087
                           000086   526 _P06	=	0x0086
                           000086   527 _TXD	=	0x0086
                           000085   528 _P05	=	0x0085
                           000084   529 _P04	=	0x0084
                           000084   530 _STADC	=	0x0084
                           000083   531 _P03	=	0x0083
                           000082   532 _P02	=	0x0082
                           000082   533 _RXD_1	=	0x0082
                           000081   534 _P01	=	0x0081
                           000081   535 _MISO	=	0x0081
                           000080   536 _P00	=	0x0080
                           000080   537 _MOSI	=	0x0080
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable register banks
                                    540 ;--------------------------------------------------------
                                    541 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        542 	.ds 8
                                    543 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        544 	.ds 8
                                    545 ;--------------------------------------------------------
                                    546 ; overlayable bit register bank
                                    547 ;--------------------------------------------------------
                                    548 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        549 bits:
      000021                        550 	.ds 1
                           008000   551 	b0 = bits[0]
                           008100   552 	b1 = bits[1]
                           008200   553 	b2 = bits[2]
                           008300   554 	b3 = bits[3]
                           008400   555 	b4 = bits[4]
                           008500   556 	b5 = bits[5]
                           008600   557 	b6 = bits[6]
                           008700   558 	b7 = bits[7]
                                    559 ;--------------------------------------------------------
                                    560 ; internal ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area DSEG    (DATA)
      000011                        563 _gu8UART::
      000011                        564 	.ds 1
                                    565 ;--------------------------------------------------------
                                    566 ; overlayable items in internal ram 
                                    567 ;--------------------------------------------------------
                                    568 	.area	OSEG    (OVR,DATA)
                                    569 	.area	OSEG    (OVR,DATA)
                                    570 	.area	OSEG    (OVR,DATA)
      00001A                        571 _getstr_uart0_PARM_2:
      00001A                        572 	.ds 3
                                    573 	.area	OSEG    (OVR,DATA)
                                    574 	.area	OSEG    (OVR,DATA)
                                    575 	.area	OSEG    (OVR,DATA)
      00001A                        576 _getstr_uart1_PARM_2:
      00001A                        577 	.ds 3
                                    578 	.area	OSEG    (OVR,DATA)
                                    579 	.area	OSEG    (OVR,DATA)
                                    580 	.area	OSEG    (OVR,DATA)
                                    581 	.area	OSEG    (OVR,DATA)
                                    582 ;--------------------------------------------------------
                                    583 ; indirectly addressable internal ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area ISEG    (DATA)
                                    586 ;--------------------------------------------------------
                                    587 ; absolute internal ram data
                                    588 ;--------------------------------------------------------
                                    589 	.area IABS    (ABS,DATA)
                                    590 	.area IABS    (ABS,DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; bit data
                                    593 ;--------------------------------------------------------
                                    594 	.area BSEG    (BIT)
                                    595 ;--------------------------------------------------------
                                    596 ; paged external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area PSEG    (PAG,XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; external ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XSEG    (XDATA)
      00016C                        603 _gu8BNFCnt::
      00016C                        604 	.ds 1
      00016D                        605 _gu8BFCnt::
      00016D                        606 	.ds 1
      00016E                        607 _gu8BNECnt::
      00016E                        608 	.ds 1
      00016F                        609 _gu8BECnt::
      00016F                        610 	.ds 1
      000170                        611 _gpc2B2MC::
      000170                        612 	.ds 4
      000174                        613 _gpcMC22B::
      000174                        614 	.ds 16
      000184                        615 _pu8UartRx0Buf::
      000184                        616 	.ds 16
      000194                        617 _pu8UartTx0Buf::
      000194                        618 	.ds 16
      0001A4                        619 _pu8UartRx1Buf::
      0001A4                        620 	.ds 16
      0001B4                        621 _pu8UartTx1Buf::
      0001B4                        622 	.ds 16
      0001C4                        623 _gu8Rx0Size::
      0001C4                        624 	.ds 1
      0001C5                        625 _gu8Rx0RIdx::
      0001C5                        626 	.ds 1
      0001C6                        627 _gu8Rx0WIdx::
      0001C6                        628 	.ds 1
      0001C7                        629 _gu8Tx0Size::
      0001C7                        630 	.ds 1
      0001C8                        631 _gu8Tx0RIdx::
      0001C8                        632 	.ds 1
      0001C9                        633 _gu8Tx0WIdx::
      0001C9                        634 	.ds 1
      0001CA                        635 _gu8Rx1Size::
      0001CA                        636 	.ds 1
      0001CB                        637 _gu8Rx1RIdx::
      0001CB                        638 	.ds 1
      0001CC                        639 _gu8Rx1WIdx::
      0001CC                        640 	.ds 1
      0001CD                        641 _gu8Tx1Size::
      0001CD                        642 	.ds 1
      0001CE                        643 _gu8Tx1RIdx::
      0001CE                        644 	.ds 1
      0001CF                        645 _gu8Tx1WIdx::
      0001CF                        646 	.ds 1
      0001D0                        647 _gu8Uart0RCnt::
      0001D0                        648 	.ds 1
      0001D1                        649 _gu8Uart0TCnt::
      0001D1                        650 	.ds 1
      0001D2                        651 _gu8Uart1RCnt::
      0001D2                        652 	.ds 1
      0001D3                        653 _gu8Uart1TCnt::
      0001D3                        654 	.ds 1
                                    655 ;--------------------------------------------------------
                                    656 ; absolute external ram data
                                    657 ;--------------------------------------------------------
                                    658 	.area XABS    (ABS,XDATA)
                                    659 ;--------------------------------------------------------
                                    660 ; external initialized ram data
                                    661 ;--------------------------------------------------------
                                    662 	.area HOME    (CODE)
                                    663 	.area GSINIT0 (CODE)
                                    664 	.area GSINIT1 (CODE)
                                    665 	.area GSINIT2 (CODE)
                                    666 	.area GSINIT3 (CODE)
                                    667 	.area GSINIT4 (CODE)
                                    668 	.area GSINIT5 (CODE)
                                    669 	.area GSINIT  (CODE)
                                    670 	.area GSFINAL (CODE)
                                    671 	.area CSEG    (CODE)
                                    672 ;--------------------------------------------------------
                                    673 ; global & static initialisations
                                    674 ;--------------------------------------------------------
                                    675 	.area HOME    (CODE)
                                    676 	.area GSINIT  (CODE)
                                    677 	.area GSFINAL (CODE)
                                    678 	.area GSINIT  (CODE)
                                    679 ;	../lib_master/uart.c:12: UINT8 __xdata gu8BNFCnt = 0;
      000436 90 01 6C         [24]  680 	mov	dptr,#_gu8BNFCnt
      000439 E4               [12]  681 	clr	a
      00043A F0               [24]  682 	movx	@dptr,a
                                    683 ;	../lib_master/uart.c:13: UINT8 __xdata gu8BFCnt = 0;
      00043B 90 01 6D         [24]  684 	mov	dptr,#_gu8BFCnt
      00043E F0               [24]  685 	movx	@dptr,a
                                    686 ;	../lib_master/uart.c:14: UINT8 __xdata gu8BNECnt = 0;
      00043F 90 01 6E         [24]  687 	mov	dptr,#_gu8BNECnt
      000442 F0               [24]  688 	movx	@dptr,a
                                    689 ;	../lib_master/uart.c:15: UINT8 __xdata gu8BECnt = 0;
      000443 90 01 6F         [24]  690 	mov	dptr,#_gu8BECnt
      000446 F0               [24]  691 	movx	@dptr,a
                                    692 ;	../lib_master/uart.c:17: const char __xdata  gpc2B2MC[] = {// 2Bits to Manchester Code
      000447 90 01 70         [24]  693 	mov	dptr,#_gpc2B2MC
      00044A 74 0A            [12]  694 	mov	a,#0x0a
      00044C F0               [24]  695 	movx	@dptr,a
      00044D 90 01 71         [24]  696 	mov	dptr,#(_gpc2B2MC + 0x0001)
      000450 14               [12]  697 	dec	a
      000451 F0               [24]  698 	movx	@dptr,a
      000452 90 01 72         [24]  699 	mov	dptr,#(_gpc2B2MC + 0x0002)
      000455 74 06            [12]  700 	mov	a,#0x06
      000457 F0               [24]  701 	movx	@dptr,a
      000458 90 01 73         [24]  702 	mov	dptr,#(_gpc2B2MC + 0x0003)
      00045B 14               [12]  703 	dec	a
      00045C F0               [24]  704 	movx	@dptr,a
                                    705 ;	../lib_master/uart.c:24: const char __xdata  gpcMC22B[16] = {// manchester code to 2Bits
      00045D 90 01 74         [24]  706 	mov	dptr,#_gpcMC22B
      000460 74 0F            [12]  707 	mov	a,#0x0f
      000462 F0               [24]  708 	movx	@dptr,a
      000463 90 01 75         [24]  709 	mov	dptr,#(_gpcMC22B + 0x0001)
      000466 F0               [24]  710 	movx	@dptr,a
      000467 90 01 76         [24]  711 	mov	dptr,#(_gpcMC22B + 0x0002)
      00046A F0               [24]  712 	movx	@dptr,a
      00046B 90 01 77         [24]  713 	mov	dptr,#(_gpcMC22B + 0x0003)
      00046E F0               [24]  714 	movx	@dptr,a
      00046F 90 01 78         [24]  715 	mov	dptr,#(_gpcMC22B + 0x0004)
      000472 F0               [24]  716 	movx	@dptr,a
      000473 90 01 79         [24]  717 	mov	dptr,#(_gpcMC22B + 0x0005)
      000476 74 03            [12]  718 	mov	a,#0x03
      000478 F0               [24]  719 	movx	@dptr,a
      000479 90 01 7A         [24]  720 	mov	dptr,#(_gpcMC22B + 0x0006)
      00047C 14               [12]  721 	dec	a
      00047D F0               [24]  722 	movx	@dptr,a
      00047E 90 01 7B         [24]  723 	mov	dptr,#(_gpcMC22B + 0x0007)
      000481 74 0F            [12]  724 	mov	a,#0x0f
      000483 F0               [24]  725 	movx	@dptr,a
      000484 90 01 7C         [24]  726 	mov	dptr,#(_gpcMC22B + 0x0008)
      000487 F0               [24]  727 	movx	@dptr,a
      000488 90 01 7D         [24]  728 	mov	dptr,#(_gpcMC22B + 0x0009)
      00048B 74 01            [12]  729 	mov	a,#0x01
      00048D F0               [24]  730 	movx	@dptr,a
      00048E 90 01 7E         [24]  731 	mov	dptr,#(_gpcMC22B + 0x000a)
      000491 E4               [12]  732 	clr	a
      000492 F0               [24]  733 	movx	@dptr,a
      000493 90 01 7F         [24]  734 	mov	dptr,#(_gpcMC22B + 0x000b)
      000496 74 0F            [12]  735 	mov	a,#0x0f
      000498 F0               [24]  736 	movx	@dptr,a
      000499 90 01 80         [24]  737 	mov	dptr,#(_gpcMC22B + 0x000c)
      00049C F0               [24]  738 	movx	@dptr,a
      00049D 90 01 81         [24]  739 	mov	dptr,#(_gpcMC22B + 0x000d)
      0004A0 F0               [24]  740 	movx	@dptr,a
      0004A1 90 01 82         [24]  741 	mov	dptr,#(_gpcMC22B + 0x000e)
      0004A4 F0               [24]  742 	movx	@dptr,a
      0004A5 90 01 83         [24]  743 	mov	dptr,#(_gpcMC22B + 0x000f)
      0004A8 F0               [24]  744 	movx	@dptr,a
                                    745 ;	../lib_master/uart.c:363: uint8_t __xdata pu8UartRx0Buf[UART0_RX_BUFF_SIZE] = {0};
      0004A9 90 01 84         [24]  746 	mov	dptr,#_pu8UartRx0Buf
      0004AC E4               [12]  747 	clr	a
      0004AD F0               [24]  748 	movx	@dptr,a
                                    749 ;	../lib_master/uart.c:364: uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
      0004AE 90 01 94         [24]  750 	mov	dptr,#_pu8UartTx0Buf
      0004B1 F0               [24]  751 	movx	@dptr,a
                                    752 ;	../lib_master/uart.c:365: uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};
      0004B2 90 01 A4         [24]  753 	mov	dptr,#_pu8UartRx1Buf
      0004B5 F0               [24]  754 	movx	@dptr,a
                                    755 ;	../lib_master/uart.c:367: uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};//  10마이크로초보다 큰 듯.. --> 비슷함..ㅠㅠ
      0004B6 90 01 B4         [24]  756 	mov	dptr,#_pu8UartTx1Buf
      0004B9 F0               [24]  757 	movx	@dptr,a
                                    758 ;	../lib_master/uart.c:369: uint8_t __xdata gu8Rx0Size = 0;  // Rx0버퍼에 쌓여있는, 받은 데이타 크기
      0004BA 90 01 C4         [24]  759 	mov	dptr,#_gu8Rx0Size
      0004BD F0               [24]  760 	movx	@dptr,a
                                    761 ;	../lib_master/uart.c:370: uint8_t __xdata gu8Rx0RIdx = 0; // Rx0버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
      0004BE 90 01 C5         [24]  762 	mov	dptr,#_gu8Rx0RIdx
      0004C1 F0               [24]  763 	movx	@dptr,a
                                    764 ;	../lib_master/uart.c:371: uint8_t __xdata gu8Rx0WIdx = 0; // Rx0버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
      0004C2 90 01 C6         [24]  765 	mov	dptr,#_gu8Rx0WIdx
      0004C5 F0               [24]  766 	movx	@dptr,a
                                    767 ;	../lib_master/uart.c:373: uint8_t __xdata gu8Tx0Size = 0;  // Tx0버퍼에 쌓여있는, 보낼 데이타 크기
      0004C6 90 01 C7         [24]  768 	mov	dptr,#_gu8Tx0Size
      0004C9 F0               [24]  769 	movx	@dptr,a
                                    770 ;	../lib_master/uart.c:374: uint8_t __xdata gu8Tx0RIdx = 0; // Tx0버퍼에서 읽기 인덱스, 이부문을 읽어서 SBUF에서 써서 보내기
      0004CA 90 01 C8         [24]  771 	mov	dptr,#_gu8Tx0RIdx
      0004CD F0               [24]  772 	movx	@dptr,a
                                    773 ;	../lib_master/uart.c:375: uint8_t __xdata gu8Tx0WIdx = 0; // Tx0버퍼에서 쓰기 인덱스, 이부문에 써서 인터럽트 함수에서 알아서 보내도록..
      0004CE 90 01 C9         [24]  774 	mov	dptr,#_gu8Tx0WIdx
      0004D1 F0               [24]  775 	movx	@dptr,a
                                    776 ;	../lib_master/uart.c:377: uint8_t __xdata gu8Rx1Size = 0;  // Rx1버퍼에 쌓여있는, 받은 데이타 크기
      0004D2 90 01 CA         [24]  777 	mov	dptr,#_gu8Rx1Size
      0004D5 F0               [24]  778 	movx	@dptr,a
                                    779 ;	../lib_master/uart.c:378: uint8_t __xdata gu8Rx1RIdx = 0; // Rx1버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
      0004D6 90 01 CB         [24]  780 	mov	dptr,#_gu8Rx1RIdx
      0004D9 F0               [24]  781 	movx	@dptr,a
                                    782 ;	../lib_master/uart.c:379: uint8_t __xdata gu8Rx1WIdx = 0; // Rx1버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
      0004DA 90 01 CC         [24]  783 	mov	dptr,#_gu8Rx1WIdx
      0004DD F0               [24]  784 	movx	@dptr,a
                                    785 ;	../lib_master/uart.c:381: uint8_t __xdata gu8Tx1Size = 0; // Tx1버퍼에 쌓여있는, 보낼 데이타 크기
      0004DE 90 01 CD         [24]  786 	mov	dptr,#_gu8Tx1Size
      0004E1 F0               [24]  787 	movx	@dptr,a
                                    788 ;	../lib_master/uart.c:382: uint8_t __xdata gu8Tx1RIdx = 0;
      0004E2 90 01 CE         [24]  789 	mov	dptr,#_gu8Tx1RIdx
      0004E5 F0               [24]  790 	movx	@dptr,a
                                    791 ;	../lib_master/uart.c:383: uint8_t __xdata gu8Tx1WIdx = 0;
      0004E6 90 01 CF         [24]  792 	mov	dptr,#_gu8Tx1WIdx
      0004E9 F0               [24]  793 	movx	@dptr,a
                                    794 ;	../lib_master/uart.c:388: uint8_t __xdata gu8Uart0RCnt = 0;
      0004EA 90 01 D0         [24]  795 	mov	dptr,#_gu8Uart0RCnt
      0004ED F0               [24]  796 	movx	@dptr,a
                                    797 ;	../lib_master/uart.c:389: uint8_t __xdata gu8Uart0TCnt = 0;
      0004EE 90 01 D1         [24]  798 	mov	dptr,#_gu8Uart0TCnt
      0004F1 F0               [24]  799 	movx	@dptr,a
                                    800 ;	../lib_master/uart.c:390: uint8_t __xdata gu8Uart1RCnt = 0;
      0004F2 90 01 D2         [24]  801 	mov	dptr,#_gu8Uart1RCnt
      0004F5 F0               [24]  802 	movx	@dptr,a
                                    803 ;	../lib_master/uart.c:391: uint8_t __xdata gu8Uart1TCnt = 0;
      0004F6 90 01 D3         [24]  804 	mov	dptr,#_gu8Uart1TCnt
      0004F9 F0               [24]  805 	movx	@dptr,a
                                    806 ;--------------------------------------------------------
                                    807 ; Home
                                    808 ;--------------------------------------------------------
                                    809 	.area HOME    (CODE)
                                    810 	.area HOME    (CODE)
                                    811 ;--------------------------------------------------------
                                    812 ; code
                                    813 ;--------------------------------------------------------
                                    814 	.area CSEG    (CODE)
                                    815 ;------------------------------------------------------------
                                    816 ;Allocation info for local variables in function 'InitialUART0_Timer1'
                                    817 ;------------------------------------------------------------
                                    818 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    819 ;------------------------------------------------------------
                                    820 ;	../lib_master/uart.c:46: void InitialUART0_Timer1(UINT32 u32Baudrate)    //T1M = 1, SMOD = 1
                                    821 ;	-----------------------------------------
                                    822 ;	 function InitialUART0_Timer1
                                    823 ;	-----------------------------------------
      002949                        824 _InitialUART0_Timer1:
                           000007   825 	ar7 = 0x07
                           000006   826 	ar6 = 0x06
                           000005   827 	ar5 = 0x05
                           000004   828 	ar4 = 0x04
                           000003   829 	ar3 = 0x03
                           000002   830 	ar2 = 0x02
                           000001   831 	ar1 = 0x01
                           000000   832 	ar0 = 0x00
      002949 AC 82            [24]  833 	mov	r4,dpl
      00294B AD 83            [24]  834 	mov	r5,dph
      00294D AE F0            [24]  835 	mov	r6,b
      00294F FF               [12]  836 	mov	r7,a
                                    837 ;	../lib_master/uart.c:48: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002950 53 B1 BF         [24]  838 	anl	_P0M1,#0xbf
      002953 53 B2 BF         [24]  839 	anl	_P0M2,#0xbf
                                    840 ;	../lib_master/uart.c:49: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002956 53 B1 7F         [24]  841 	anl	_P0M1,#0x7f
      002959 53 B2 7F         [24]  842 	anl	_P0M2,#0x7f
                                    843 ;	../lib_master/uart.c:51: SCON = 0x50;     	//UART0 Mode1,REN=1,TI=1
      00295C 75 98 50         [24]  844 	mov	_SCON,#0x50
                                    845 ;	../lib_master/uart.c:52: TMOD |= 0x20;    	//Timer1 Mode1
      00295F 43 89 20         [24]  846 	orl	_TMOD,#0x20
                                    847 ;	../lib_master/uart.c:54: set_SMOD;        	//UART0 Double Rate Enable
      002962 43 87 80         [24]  848 	orl	_PCON,#0x80
                                    849 ;	../lib_master/uart.c:55: set_T1M;
      002965 43 8E 10         [24]  850 	orl	_CKCON,#0x10
                                    851 ;	../lib_master/uart.c:56: clr_BRCK;        	//Serial port 0 baud rate clock source = Timer1
      002968 53 C4 DF         [24]  852 	anl	_T3CON,#0xdf
                                    853 ;	../lib_master/uart.c:62: TH1 = 256 - (1037500/u32Baudrate);         		     /*16.6 MHz */
      00296B 8C 1A            [24]  854 	mov	__divulong_PARM_2,r4
      00296D 8D 1B            [24]  855 	mov	(__divulong_PARM_2 + 1),r5
      00296F 8E 1C            [24]  856 	mov	(__divulong_PARM_2 + 2),r6
      002971 8F 1D            [24]  857 	mov	(__divulong_PARM_2 + 3),r7
      002973 90 D4 BC         [24]  858 	mov	dptr,#0xd4bc
      002976 75 F0 0F         [24]  859 	mov	b,#0x0f
      002979 E4               [12]  860 	clr	a
      00297A 12 33 5E         [24]  861 	lcall	__divulong
      00297D AC 82            [24]  862 	mov	r4,dpl
      00297F C3               [12]  863 	clr	c
      002980 E4               [12]  864 	clr	a
      002981 9C               [12]  865 	subb	a,r4
      002982 F5 8D            [12]  866 	mov	_TH1,a
                                    867 ;	../lib_master/uart.c:64: set_TR1;
                                    868 ;	assignBit
      002984 D2 8E            [12]  869 	setb	_TR1
                                    870 ;	../lib_master/uart.c:65: set_TI;						//For printf function must setting TI = 1
                                    871 ;	assignBit
      002986 D2 99            [12]  872 	setb	_TI
                                    873 ;	../lib_master/uart.c:66: }
      002988 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'InitialUART0_Timer3'
                                    877 ;------------------------------------------------------------
                                    878 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    879 ;------------------------------------------------------------
                                    880 ;	../lib_master/uart.c:69: void InitialUART0_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    881 ;	-----------------------------------------
                                    882 ;	 function InitialUART0_Timer3
                                    883 ;	-----------------------------------------
      002989                        884 _InitialUART0_Timer3:
      002989 AC 82            [24]  885 	mov	r4,dpl
      00298B AD 83            [24]  886 	mov	r5,dph
      00298D AE F0            [24]  887 	mov	r6,b
      00298F FF               [12]  888 	mov	r7,a
                                    889 ;	../lib_master/uart.c:71: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002990 53 B1 BF         [24]  890 	anl	_P0M1,#0xbf
      002993 53 B2 BF         [24]  891 	anl	_P0M2,#0xbf
                                    892 ;	../lib_master/uart.c:72: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit	
      002996 53 B1 7F         [24]  893 	anl	_P0M1,#0x7f
      002999 53 B2 7F         [24]  894 	anl	_P0M2,#0x7f
                                    895 ;	../lib_master/uart.c:74: SCON = 0x50;     //UART0 Mode1,REN=1,TI=1
      00299C 75 98 50         [24]  896 	mov	_SCON,#0x50
                                    897 ;	../lib_master/uart.c:75: set_SMOD;        //UART0 Double Rate Enable
      00299F 43 87 80         [24]  898 	orl	_PCON,#0x80
                                    899 ;	../lib_master/uart.c:76: T3CON &= 0xF8;   //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
      0029A2 53 C4 F8         [24]  900 	anl	_T3CON,#0xf8
                                    901 ;	../lib_master/uart.c:77: set_BRCK;        //UART0 baud rate clock source = Timer3
      0029A5 43 C4 20         [24]  902 	orl	_T3CON,#0x20
                                    903 ;	../lib_master/uart.c:84: RH3    = HIBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
      0029A8 8C 1A            [24]  904 	mov	__divulong_PARM_2,r4
      0029AA 8D 1B            [24]  905 	mov	(__divulong_PARM_2 + 1),r5
      0029AC 8E 1C            [24]  906 	mov	(__divulong_PARM_2 + 2),r6
      0029AE 8F 1D            [24]  907 	mov	(__divulong_PARM_2 + 3),r7
      0029B0 90 D4 BC         [24]  908 	mov	dptr,#0xd4bc
      0029B3 75 F0 0F         [24]  909 	mov	b,#0x0f
      0029B6 E4               [12]  910 	clr	a
      0029B7 12 33 5E         [24]  911 	lcall	__divulong
      0029BA AC 82            [24]  912 	mov	r4,dpl
      0029BC AD 83            [24]  913 	mov	r5,dph
      0029BE AE F0            [24]  914 	mov	r6,b
      0029C0 FF               [12]  915 	mov	r7,a
      0029C1 E4               [12]  916 	clr	a
      0029C2 C3               [12]  917 	clr	c
      0029C3 9C               [12]  918 	subb	a,r4
      0029C4 E4               [12]  919 	clr	a
      0029C5 9D               [12]  920 	subb	a,r5
      0029C6 F9               [12]  921 	mov	r1,a
      0029C7 74 01            [12]  922 	mov	a,#0x01
      0029C9 9E               [12]  923 	subb	a,r6
      0029CA E4               [12]  924 	clr	a
      0029CB 9F               [12]  925 	subb	a,r7
      0029CC 89 C6            [24]  926 	mov	_RH3,r1
                                    927 ;	../lib_master/uart.c:85: RL3    = LOBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
      0029CE C3               [12]  928 	clr	c
      0029CF E4               [12]  929 	clr	a
      0029D0 9C               [12]  930 	subb	a,r4
      0029D1 FC               [12]  931 	mov	r4,a
      0029D2 8C C5            [24]  932 	mov	_RL3,r4
                                    933 ;	../lib_master/uart.c:87: set_TR3;         //Trigger Timer3
      0029D4 43 C4 08         [24]  934 	orl	_T3CON,#0x08
                                    935 ;	../lib_master/uart.c:88: set_TI;					 //For printf function must setting TI = 1
                                    936 ;	assignBit
      0029D7 D2 99            [12]  937 	setb	_TI
                                    938 ;	../lib_master/uart.c:89: }
      0029D9 22               [24]  939 	ret
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'InitialUART1_Timer3'
                                    942 ;------------------------------------------------------------
                                    943 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    944 ;------------------------------------------------------------
                                    945 ;	../lib_master/uart.c:91: void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    946 ;	-----------------------------------------
                                    947 ;	 function InitialUART1_Timer3
                                    948 ;	-----------------------------------------
      0029DA                        949 _InitialUART1_Timer3:
      0029DA AC 82            [24]  950 	mov	r4,dpl
      0029DC AD 83            [24]  951 	mov	r5,dph
      0029DE AE F0            [24]  952 	mov	r6,b
      0029E0 FF               [12]  953 	mov	r7,a
                                    954 ;	../lib_master/uart.c:93: P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      0029E1 53 B1 FB         [24]  955 	anl	_P0M1,#0xfb
      0029E4 53 B2 FB         [24]  956 	anl	_P0M2,#0xfb
                                    957 ;	../lib_master/uart.c:94: P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      0029E7 53 B3 BF         [24]  958 	anl	_P1M1,#0xbf
      0029EA 53 B4 BF         [24]  959 	anl	_P1M2,#0xbf
                                    960 ;	../lib_master/uart.c:97: SCON_1 = 0x58;   	//UART1 Mode1,REN_1=1,TI_1=1 TB8=1
      0029ED 75 F8 58         [24]  961 	mov	_SCON_1,#0x58
                                    962 ;	../lib_master/uart.c:98: T3CON = 0x08;   	//T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
      0029F0 75 C4 08         [24]  963 	mov	_T3CON,#0x08
                                    964 ;	../lib_master/uart.c:99: clr_BRCK;
      0029F3 53 C4 DF         [24]  965 	anl	_T3CON,#0xdf
                                    966 ;	../lib_master/uart.c:106: RH3    = HIBYTE(65536 - (1037500/u32Baudrate));  			/*16.6 MHz */
      0029F6 8C 1A            [24]  967 	mov	__divulong_PARM_2,r4
      0029F8 8D 1B            [24]  968 	mov	(__divulong_PARM_2 + 1),r5
      0029FA 8E 1C            [24]  969 	mov	(__divulong_PARM_2 + 2),r6
      0029FC 8F 1D            [24]  970 	mov	(__divulong_PARM_2 + 3),r7
      0029FE 90 D4 BC         [24]  971 	mov	dptr,#0xd4bc
      002A01 75 F0 0F         [24]  972 	mov	b,#0x0f
      002A04 E4               [12]  973 	clr	a
      002A05 12 33 5E         [24]  974 	lcall	__divulong
      002A08 AC 82            [24]  975 	mov	r4,dpl
      002A0A AD 83            [24]  976 	mov	r5,dph
      002A0C AE F0            [24]  977 	mov	r6,b
      002A0E FF               [12]  978 	mov	r7,a
      002A0F E4               [12]  979 	clr	a
      002A10 C3               [12]  980 	clr	c
      002A11 9C               [12]  981 	subb	a,r4
      002A12 E4               [12]  982 	clr	a
      002A13 9D               [12]  983 	subb	a,r5
      002A14 F9               [12]  984 	mov	r1,a
      002A15 74 01            [12]  985 	mov	a,#0x01
      002A17 9E               [12]  986 	subb	a,r6
      002A18 E4               [12]  987 	clr	a
      002A19 9F               [12]  988 	subb	a,r7
      002A1A 89 C6            [24]  989 	mov	_RH3,r1
                                    990 ;	../lib_master/uart.c:107: RL3    = LOBYTE(65536 - (1037500/u32Baudrate));				/*16.6 MHz */
      002A1C C3               [12]  991 	clr	c
      002A1D E4               [12]  992 	clr	a
      002A1E 9C               [12]  993 	subb	a,r4
      002A1F FC               [12]  994 	mov	r4,a
      002A20 8C C5            [24]  995 	mov	_RL3,r4
                                    996 ;	../lib_master/uart.c:109: set_TR3;         //Trigger Timer3
      002A22 43 C4 08         [24]  997 	orl	_T3CON,#0x08
                                    998 ;	../lib_master/uart.c:110: }
      002A25 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'set_linefi_uplink_speed'
                                   1002 ;------------------------------------------------------------
                                   1003 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                   1004 ;------------------------------------------------------------
                                   1005 ;	../lib_master/uart.c:112: void set_linefi_uplink_speed(UINT32 u32Baudrate)
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function set_linefi_uplink_speed
                                   1008 ;	-----------------------------------------
      002A26                       1009 _set_linefi_uplink_speed:
                                   1010 ;	../lib_master/uart.c:114: return InitialUART1_Timer3(u32Baudrate);
                                   1011 ;	../lib_master/uart.c:115: }
      002A26 02 29 DA         [24] 1012 	ljmp	_InitialUART1_Timer3
                                   1013 ;------------------------------------------------------------
                                   1014 ;Allocation info for local variables in function 'putchar'
                                   1015 ;------------------------------------------------------------
                                   1016 ;c                         Allocated to registers r6 r7 
                                   1017 ;------------------------------------------------------------
                                   1018 ;	../lib_master/uart.c:118: int putchar (int c) 
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function putchar
                                   1021 ;	-----------------------------------------
      002A29                       1022 _putchar:
      002A29 AE 82            [24] 1023 	mov	r6,dpl
                                   1024 ;	../lib_master/uart.c:120: if (gu8UART == 0)  {
      002A2B E5 11            [12] 1025 	mov	a,_gu8UART
      002A2D 70 07            [24] 1026 	jnz	00102$
                                   1027 ;	../lib_master/uart.c:121: putchar_uart0(c);
      002A2F 8E 82            [24] 1028 	mov	dpl,r6
      002A31 12 2D 54         [24] 1029 	lcall	_putchar_uart0
      002A34 80 05            [24] 1030 	sjmp	00103$
      002A36                       1031 00102$:
                                   1032 ;	../lib_master/uart.c:124: putchar_uart1(c);
      002A36 8E 82            [24] 1033 	mov	dpl,r6
      002A38 12 2D 8D         [24] 1034 	lcall	_putchar_uart1
      002A3B                       1035 00103$:
                                   1036 ;	../lib_master/uart.c:126: return 0;
      002A3B 90 00 00         [24] 1037 	mov	dptr,#0x0000
                                   1038 ;	../lib_master/uart.c:127: }
      002A3E 22               [24] 1039 	ret
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'uart_setup'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	../lib_master/uart.c:406: void uart_setup() 
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function uart_setup
                                   1046 ;	-----------------------------------------
      002A3F                       1047 _uart_setup:
                                   1048 ;	../lib_master/uart.c:411: InitialUART0_Timer1(115200);
      002A3F 90 C2 00         [24] 1049 	mov	dptr,#0xc200
      002A42 75 F0 01         [24] 1050 	mov	b,#0x01
      002A45 E4               [12] 1051 	clr	a
      002A46 12 29 49         [24] 1052 	lcall	_InitialUART0_Timer1
                                   1053 ;	../lib_master/uart.c:412: InitialUART1_Timer3(115200);
      002A49 90 C2 00         [24] 1054 	mov	dptr,#0xc200
      002A4C 75 F0 01         [24] 1055 	mov	b,#0x01
      002A4F E4               [12] 1056 	clr	a
      002A50 12 29 DA         [24] 1057 	lcall	_InitialUART1_Timer3
                                   1058 ;	../lib_master/uart.c:414: set_ES;
                                   1059 ;	assignBit
      002A53 D2 AC            [12] 1060 	setb	_ES
                                   1061 ;	../lib_master/uart.c:415: set_ES_1;
      002A55 43 9C 01         [24] 1062 	orl	_EIE1,#0x01
                                   1063 ;	../lib_master/uart.c:417: set_EA;
                                   1064 ;	assignBit
      002A58 D2 AF            [12] 1065 	setb	_EA
                                   1066 ;	../lib_master/uart.c:418: }
      002A5A 22               [24] 1067 	ret
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'Uart0Tx_ISR'
                                   1070 ;------------------------------------------------------------
                                   1071 ;i                         Allocated to registers r5 r6 
                                   1072 ;------------------------------------------------------------
                                   1073 ;	../lib_master/uart.c:420: void Uart0Tx_ISR()
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function Uart0Tx_ISR
                                   1076 ;	-----------------------------------------
      002A5B                       1077 _Uart0Tx_ISR:
                                   1078 ;	../lib_master/uart.c:423: clr_TI;	 // clear, putchar_uart0()에서 직접 불린 상태면 gu8Tx0Size==1인데, 이 경우는 무의미 할 수도 있음, 
                                   1079 ;	assignBit
      002A5B C2 99            [12] 1080 	clr	_TI
                                   1081 ;	../lib_master/uart.c:424: if (gu8Tx0Size == 0) {
      002A5D 90 01 C7         [24] 1082 	mov	dptr,#_gu8Tx0Size
      002A60 E0               [24] 1083 	movx	a,@dptr
      002A61 FF               [12] 1084 	mov	r7,a
      002A62 E0               [24] 1085 	movx	a,@dptr
      002A63 70 01            [24] 1086 	jnz	00102$
                                   1087 ;	../lib_master/uart.c:425: return;
      002A65 22               [24] 1088 	ret
      002A66                       1089 00102$:
                                   1090 ;	../lib_master/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
      002A66 7D 64            [12] 1091 	mov	r5,#0x64
      002A68 7E 00            [12] 1092 	mov	r6,#0x00
      002A6A                       1093 00108$:
                                   1094 ;	../lib_master/uart.c:432: nop; nop; nop; nop;
      002A6A 00               [12] 1095 	NOP
      002A6B 00               [12] 1096 	NOP
      002A6C 00               [12] 1097 	NOP
      002A6D 00               [12] 1098 	NOP
      002A6E ED               [12] 1099 	mov	a,r5
      002A6F 24 FF            [12] 1100 	add	a,#0xff
      002A71 FB               [12] 1101 	mov	r3,a
      002A72 EE               [12] 1102 	mov	a,r6
      002A73 34 FF            [12] 1103 	addc	a,#0xff
      002A75 FC               [12] 1104 	mov	r4,a
      002A76 8B 05            [24] 1105 	mov	ar5,r3
      002A78 8C 06            [24] 1106 	mov	ar6,r4
                                   1107 ;	../lib_master/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
      002A7A EB               [12] 1108 	mov	a,r3
      002A7B 4C               [12] 1109 	orl	a,r4
      002A7C 70 EC            [24] 1110 	jnz	00108$
                                   1111 ;	../lib_master/uart.c:435: SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
      002A7E 90 01 C8         [24] 1112 	mov	dptr,#_gu8Tx0RIdx
      002A81 E0               [24] 1113 	movx	a,@dptr
      002A82 FE               [12] 1114 	mov	r6,a
      002A83 04               [12] 1115 	inc	a
      002A84 F0               [24] 1116 	movx	@dptr,a
      002A85 EE               [12] 1117 	mov	a,r6
      002A86 24 94            [12] 1118 	add	a,#_pu8UartTx0Buf
      002A88 F5 82            [12] 1119 	mov	dpl,a
      002A8A E4               [12] 1120 	clr	a
      002A8B 34 01            [12] 1121 	addc	a,#(_pu8UartTx0Buf >> 8)
      002A8D F5 83            [12] 1122 	mov	dph,a
      002A8F E0               [24] 1123 	movx	a,@dptr
      002A90 F5 99            [12] 1124 	mov	_SBUF,a
                                   1125 ;	../lib_master/uart.c:436: gu8Tx0Size--;
      002A92 EF               [12] 1126 	mov	a,r7
      002A93 14               [12] 1127 	dec	a
      002A94 90 01 C7         [24] 1128 	mov	dptr,#_gu8Tx0Size
      002A97 F0               [24] 1129 	movx	@dptr,a
                                   1130 ;	../lib_master/uart.c:437: if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
      002A98 90 01 C8         [24] 1131 	mov	dptr,#_gu8Tx0RIdx
      002A9B E0               [24] 1132 	movx	a,@dptr
      002A9C FF               [12] 1133 	mov	r7,a
      002A9D BF 10 05         [24] 1134 	cjne	r7,#0x10,00109$
                                   1135 ;	../lib_master/uart.c:438: gu8Tx0RIdx = 0;
      002AA0 90 01 C8         [24] 1136 	mov	dptr,#_gu8Tx0RIdx
      002AA3 E4               [12] 1137 	clr	a
      002AA4 F0               [24] 1138 	movx	@dptr,a
      002AA5                       1139 00109$:
                                   1140 ;	../lib_master/uart.c:440: }
      002AA5 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'SerialPort0_ISR'
                                   1144 ;------------------------------------------------------------
                                   1145 ;	../lib_master/uart.c:455: void SerialPort0_ISR(void) interrupt(4) 
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function SerialPort0_ISR
                                   1148 ;	-----------------------------------------
      002AA6                       1149 _SerialPort0_ISR:
                           00000F  1150 	ar7 = 0x0f
                           00000E  1151 	ar6 = 0x0e
                           00000D  1152 	ar5 = 0x0d
                           00000C  1153 	ar4 = 0x0c
                           00000B  1154 	ar3 = 0x0b
                           00000A  1155 	ar2 = 0x0a
                           000009  1156 	ar1 = 0x09
                           000008  1157 	ar0 = 0x08
      002AA6 C0 21            [24] 1158 	push	bits
      002AA8 C0 E0            [24] 1159 	push	acc
      002AAA C0 F0            [24] 1160 	push	b
      002AAC C0 82            [24] 1161 	push	dpl
      002AAE C0 83            [24] 1162 	push	dph
      002AB0 C0 07            [24] 1163 	push	(0+7)
      002AB2 C0 06            [24] 1164 	push	(0+6)
      002AB4 C0 05            [24] 1165 	push	(0+5)
      002AB6 C0 04            [24] 1166 	push	(0+4)
      002AB8 C0 03            [24] 1167 	push	(0+3)
      002ABA C0 02            [24] 1168 	push	(0+2)
      002ABC C0 01            [24] 1169 	push	(0+1)
      002ABE C0 00            [24] 1170 	push	(0+0)
      002AC0 C0 D0            [24] 1171 	push	psw
      002AC2 75 D0 08         [24] 1172 	mov	psw,#0x08
                                   1173 ;	../lib_master/uart.c:457: if (RI == 1) {  /* if reception occur */
      002AC5 30 98 3B         [24] 1174 	jnb	_RI,00106$
                                   1175 ;	../lib_master/uart.c:458: gu8Uart0RCnt++;
      002AC8 90 01 D0         [24] 1176 	mov	dptr,#_gu8Uart0RCnt
      002ACB E0               [24] 1177 	movx	a,@dptr
      002ACC 24 01            [12] 1178 	add	a,#0x01
      002ACE F0               [24] 1179 	movx	@dptr,a
                                   1180 ;	../lib_master/uart.c:459: if (gu8Rx0Size < UART0_RX_BUFF_SIZE) {
      002ACF 90 01 C4         [24] 1181 	mov	dptr,#_gu8Rx0Size
      002AD2 E0               [24] 1182 	movx	a,@dptr
      002AD3 FF               [12] 1183 	mov	r7,a
      002AD4 BF 10 00         [24] 1184 	cjne	r7,#0x10,00128$
      002AD7                       1185 00128$:
      002AD7 50 28            [24] 1186 	jnc	00104$
                                   1187 ;	../lib_master/uart.c:460: pu8UartRx0Buf[gu8Rx0WIdx++] = SBUF;
      002AD9 90 01 C6         [24] 1188 	mov	dptr,#_gu8Rx0WIdx
      002ADC E0               [24] 1189 	movx	a,@dptr
      002ADD FF               [12] 1190 	mov	r7,a
      002ADE 04               [12] 1191 	inc	a
      002ADF F0               [24] 1192 	movx	@dptr,a
      002AE0 EF               [12] 1193 	mov	a,r7
      002AE1 24 84            [12] 1194 	add	a,#_pu8UartRx0Buf
      002AE3 F5 82            [12] 1195 	mov	dpl,a
      002AE5 E4               [12] 1196 	clr	a
      002AE6 34 01            [12] 1197 	addc	a,#(_pu8UartRx0Buf >> 8)
      002AE8 F5 83            [12] 1198 	mov	dph,a
      002AEA E5 99            [12] 1199 	mov	a,_SBUF
      002AEC F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	../lib_master/uart.c:461: gu8Rx0Size++;
      002AED 90 01 C4         [24] 1202 	mov	dptr,#_gu8Rx0Size
      002AF0 E0               [24] 1203 	movx	a,@dptr
      002AF1 24 01            [12] 1204 	add	a,#0x01
      002AF3 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	../lib_master/uart.c:462: if (gu8Rx0WIdx == UART0_RX_BUFF_SIZE) {
      002AF4 90 01 C6         [24] 1207 	mov	dptr,#_gu8Rx0WIdx
      002AF7 E0               [24] 1208 	movx	a,@dptr
      002AF8 FF               [12] 1209 	mov	r7,a
      002AF9 BF 10 05         [24] 1210 	cjne	r7,#0x10,00104$
                                   1211 ;	../lib_master/uart.c:463: gu8Rx0WIdx = 0;
      002AFC 90 01 C6         [24] 1212 	mov	dptr,#_gu8Rx0WIdx
      002AFF E4               [12] 1213 	clr	a
      002B00 F0               [24] 1214 	movx	@dptr,a
      002B01                       1215 00104$:
                                   1216 ;	../lib_master/uart.c:469: clr_RI;        /* clear reception flag for next reception */
                                   1217 ;	assignBit
      002B01 C2 98            [12] 1218 	clr	_RI
      002B03                       1219 00106$:
                                   1220 ;	../lib_master/uart.c:472: if (TI == 1) {
      002B03 30 99 10         [24] 1221 	jnb	_TI,00109$
                                   1222 ;	../lib_master/uart.c:473: gu8Uart0TCnt++;
      002B06 90 01 D1         [24] 1223 	mov	dptr,#_gu8Uart0TCnt
      002B09 E0               [24] 1224 	movx	a,@dptr
      002B0A 24 01            [12] 1225 	add	a,#0x01
      002B0C F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	../lib_master/uart.c:474: Uart0Tx_ISR();
      002B0D 75 D0 00         [24] 1228 	mov	psw,#0x00
      002B10 12 2A 5B         [24] 1229 	lcall	_Uart0Tx_ISR
      002B13 75 D0 08         [24] 1230 	mov	psw,#0x08
      002B16                       1231 00109$:
                                   1232 ;	../lib_master/uart.c:476: }
      002B16 D0 D0            [24] 1233 	pop	psw
      002B18 D0 00            [24] 1234 	pop	(0+0)
      002B1A D0 01            [24] 1235 	pop	(0+1)
      002B1C D0 02            [24] 1236 	pop	(0+2)
      002B1E D0 03            [24] 1237 	pop	(0+3)
      002B20 D0 04            [24] 1238 	pop	(0+4)
      002B22 D0 05            [24] 1239 	pop	(0+5)
      002B24 D0 06            [24] 1240 	pop	(0+6)
      002B26 D0 07            [24] 1241 	pop	(0+7)
      002B28 D0 83            [24] 1242 	pop	dph
      002B2A D0 82            [24] 1243 	pop	dpl
      002B2C D0 F0            [24] 1244 	pop	b
      002B2E D0 E0            [24] 1245 	pop	acc
      002B30 D0 21            [24] 1246 	pop	bits
      002B32 32               [24] 1247 	reti
                                   1248 ;------------------------------------------------------------
                                   1249 ;Allocation info for local variables in function 'chkchar_uart0'
                                   1250 ;------------------------------------------------------------
                                   1251 ;	../lib_master/uart.c:479: uint8_t chkchar_uart0()
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function chkchar_uart0
                                   1254 ;	-----------------------------------------
      002B33                       1255 _chkchar_uart0:
                           000007  1256 	ar7 = 0x07
                           000006  1257 	ar6 = 0x06
                           000005  1258 	ar5 = 0x05
                           000004  1259 	ar4 = 0x04
                           000003  1260 	ar3 = 0x03
                           000002  1261 	ar2 = 0x02
                           000001  1262 	ar1 = 0x01
                           000000  1263 	ar0 = 0x00
                                   1264 ;	../lib_master/uart.c:484: return gu8Rx0Size;
      002B33 90 01 C4         [24] 1265 	mov	dptr,#_gu8Rx0Size
      002B36 E0               [24] 1266 	movx	a,@dptr
                                   1267 ;	../lib_master/uart.c:485: }
      002B37 F5 82            [12] 1268 	mov	dpl,a
      002B39 22               [24] 1269 	ret
                                   1270 ;------------------------------------------------------------
                                   1271 ;Allocation info for local variables in function 'getchar_uart0'
                                   1272 ;------------------------------------------------------------
                                   1273 ;apu8Data                  Allocated to registers r5 r6 r7 
                                   1274 ;------------------------------------------------------------
                                   1275 ;	../lib_master/uart.c:487: uint8_t getchar_uart0(uint8_t * apu8Data)
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function getchar_uart0
                                   1278 ;	-----------------------------------------
      002B3A                       1279 _getchar_uart0:
      002B3A AD 82            [24] 1280 	mov	r5,dpl
      002B3C AE 83            [24] 1281 	mov	r6,dph
      002B3E AF F0            [24] 1282 	mov	r7,b
                                   1283 ;	../lib_master/uart.c:492: if (gu8Rx0Size == 0) {
      002B40 90 01 C4         [24] 1284 	mov	dptr,#_gu8Rx0Size
      002B43 E0               [24] 1285 	movx	a,@dptr
                                   1286 ;	../lib_master/uart.c:493: return 0;
      002B44 70 03            [24] 1287 	jnz	00102$
      002B46 F5 82            [12] 1288 	mov	dpl,a
      002B48 22               [24] 1289 	ret
      002B49                       1290 00102$:
                                   1291 ;	../lib_master/uart.c:495: clr_ES;
                                   1292 ;	assignBit
      002B49 C2 AC            [12] 1293 	clr	_ES
                                   1294 ;	../lib_master/uart.c:496: *apu8Data = pu8UartRx0Buf[gu8Rx0RIdx++];
      002B4B 90 01 C5         [24] 1295 	mov	dptr,#_gu8Rx0RIdx
      002B4E E0               [24] 1296 	movx	a,@dptr
      002B4F FC               [12] 1297 	mov	r4,a
      002B50 04               [12] 1298 	inc	a
      002B51 F0               [24] 1299 	movx	@dptr,a
      002B52 EC               [12] 1300 	mov	a,r4
      002B53 24 84            [12] 1301 	add	a,#_pu8UartRx0Buf
      002B55 F5 82            [12] 1302 	mov	dpl,a
      002B57 E4               [12] 1303 	clr	a
      002B58 34 01            [12] 1304 	addc	a,#(_pu8UartRx0Buf >> 8)
      002B5A F5 83            [12] 1305 	mov	dph,a
      002B5C E0               [24] 1306 	movx	a,@dptr
      002B5D 8D 82            [24] 1307 	mov	dpl,r5
      002B5F 8E 83            [24] 1308 	mov	dph,r6
      002B61 8F F0            [24] 1309 	mov	b,r7
      002B63 12 34 06         [24] 1310 	lcall	__gptrput
                                   1311 ;	../lib_master/uart.c:497: gu8Rx0Size--;
      002B66 90 01 C4         [24] 1312 	mov	dptr,#_gu8Rx0Size
      002B69 E0               [24] 1313 	movx	a,@dptr
      002B6A 14               [12] 1314 	dec	a
      002B6B F0               [24] 1315 	movx	@dptr,a
                                   1316 ;	../lib_master/uart.c:498: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
      002B6C 90 01 C5         [24] 1317 	mov	dptr,#_gu8Rx0RIdx
      002B6F E0               [24] 1318 	movx	a,@dptr
      002B70 FF               [12] 1319 	mov	r7,a
      002B71 BF 10 05         [24] 1320 	cjne	r7,#0x10,00104$
                                   1321 ;	../lib_master/uart.c:499: gu8Rx0RIdx = 0;
      002B74 90 01 C5         [24] 1322 	mov	dptr,#_gu8Rx0RIdx
      002B77 E4               [12] 1323 	clr	a
      002B78 F0               [24] 1324 	movx	@dptr,a
      002B79                       1325 00104$:
                                   1326 ;	../lib_master/uart.c:501: set_ES;
                                   1327 ;	assignBit
      002B79 D2 AC            [12] 1328 	setb	_ES
                                   1329 ;	../lib_master/uart.c:502: return 1;
      002B7B 75 82 01         [24] 1330 	mov	dpl,#0x01
                                   1331 ;	../lib_master/uart.c:503: }
      002B7E 22               [24] 1332 	ret
                                   1333 ;------------------------------------------------------------
                                   1334 ;Allocation info for local variables in function 'getstr_uart0'
                                   1335 ;------------------------------------------------------------
                                   1336 ;apu8Data                  Allocated with name '_getstr_uart0_PARM_2'
                                   1337 ;au8Size                   Allocated to registers r7 
                                   1338 ;i                         Allocated to registers r3 
                                   1339 ;------------------------------------------------------------
                                   1340 ;	../lib_master/uart.c:505: uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data)
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function getstr_uart0
                                   1343 ;	-----------------------------------------
      002B7F                       1344 _getstr_uart0:
      002B7F AF 82            [24] 1345 	mov	r7,dpl
                                   1346 ;	../lib_master/uart.c:511: if (gu8Rx0Size == 0) {
      002B81 90 01 C4         [24] 1347 	mov	dptr,#_gu8Rx0Size
      002B84 E0               [24] 1348 	movx	a,@dptr
      002B85 FE               [12] 1349 	mov	r6,a
                                   1350 ;	../lib_master/uart.c:512: return 0;
      002B86 70 03            [24] 1351 	jnz	00102$
      002B88 F5 82            [12] 1352 	mov	dpl,a
      002B8A 22               [24] 1353 	ret
      002B8B                       1354 00102$:
                                   1355 ;	../lib_master/uart.c:515: if (gu8Rx0Size < au8Size) {
      002B8B C3               [12] 1356 	clr	c
      002B8C EE               [12] 1357 	mov	a,r6
      002B8D 9F               [12] 1358 	subb	a,r7
      002B8E 50 02            [24] 1359 	jnc	00117$
                                   1360 ;	../lib_master/uart.c:516: au8Size = gu8Rx0Size;
      002B90 8E 07            [24] 1361 	mov	ar7,r6
                                   1362 ;	../lib_master/uart.c:518: for (i=0;i<au8Size;i++) {
      002B92                       1363 00117$:
      002B92 AC 1A            [24] 1364 	mov	r4,_getstr_uart0_PARM_2
      002B94 AD 1B            [24] 1365 	mov	r5,(_getstr_uart0_PARM_2 + 1)
      002B96 AE 1C            [24] 1366 	mov	r6,(_getstr_uart0_PARM_2 + 2)
      002B98 7B 00            [12] 1367 	mov	r3,#0x00
      002B9A                       1368 00109$:
      002B9A C3               [12] 1369 	clr	c
      002B9B EB               [12] 1370 	mov	a,r3
      002B9C 9F               [12] 1371 	subb	a,r7
      002B9D 50 30            [24] 1372 	jnc	00107$
                                   1373 ;	../lib_master/uart.c:519: *apu8Data++ = pu8UartRx0Buf[gu8Rx0RIdx++];
      002B9F 90 01 C5         [24] 1374 	mov	dptr,#_gu8Rx0RIdx
      002BA2 E0               [24] 1375 	movx	a,@dptr
      002BA3 FA               [12] 1376 	mov	r2,a
      002BA4 04               [12] 1377 	inc	a
      002BA5 F0               [24] 1378 	movx	@dptr,a
      002BA6 EA               [12] 1379 	mov	a,r2
      002BA7 24 84            [12] 1380 	add	a,#_pu8UartRx0Buf
      002BA9 F5 82            [12] 1381 	mov	dpl,a
      002BAB E4               [12] 1382 	clr	a
      002BAC 34 01            [12] 1383 	addc	a,#(_pu8UartRx0Buf >> 8)
      002BAE F5 83            [12] 1384 	mov	dph,a
      002BB0 E0               [24] 1385 	movx	a,@dptr
      002BB1 8C 82            [24] 1386 	mov	dpl,r4
      002BB3 8D 83            [24] 1387 	mov	dph,r5
      002BB5 8E F0            [24] 1388 	mov	b,r6
      002BB7 12 34 06         [24] 1389 	lcall	__gptrput
      002BBA A3               [24] 1390 	inc	dptr
      002BBB AC 82            [24] 1391 	mov	r4,dpl
      002BBD AD 83            [24] 1392 	mov	r5,dph
                                   1393 ;	../lib_master/uart.c:520: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
      002BBF 90 01 C5         [24] 1394 	mov	dptr,#_gu8Rx0RIdx
      002BC2 E0               [24] 1395 	movx	a,@dptr
      002BC3 FA               [12] 1396 	mov	r2,a
      002BC4 BA 10 05         [24] 1397 	cjne	r2,#0x10,00110$
                                   1398 ;	../lib_master/uart.c:521: gu8Rx0RIdx = 0;
      002BC7 90 01 C5         [24] 1399 	mov	dptr,#_gu8Rx0RIdx
      002BCA E4               [12] 1400 	clr	a
      002BCB F0               [24] 1401 	movx	@dptr,a
      002BCC                       1402 00110$:
                                   1403 ;	../lib_master/uart.c:518: for (i=0;i<au8Size;i++) {
      002BCC 0B               [12] 1404 	inc	r3
      002BCD 80 CB            [24] 1405 	sjmp	00109$
      002BCF                       1406 00107$:
                                   1407 ;	../lib_master/uart.c:524: gu8Rx0Size -= au8Size;
      002BCF 90 01 C4         [24] 1408 	mov	dptr,#_gu8Rx0Size
      002BD2 E0               [24] 1409 	movx	a,@dptr
      002BD3 C3               [12] 1410 	clr	c
      002BD4 9F               [12] 1411 	subb	a,r7
      002BD5 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	../lib_master/uart.c:525: return au8Size;
      002BD6 8F 82            [24] 1414 	mov	dpl,r7
                                   1415 ;	../lib_master/uart.c:526: }
      002BD8 22               [24] 1416 	ret
                                   1417 ;------------------------------------------------------------
                                   1418 ;Allocation info for local variables in function 'Uart1Tx_ISR'
                                   1419 ;------------------------------------------------------------
                                   1420 ;i                         Allocated to registers r5 r6 
                                   1421 ;------------------------------------------------------------
                                   1422 ;	../lib_master/uart.c:527: void Uart1Tx_ISR()
                                   1423 ;	-----------------------------------------
                                   1424 ;	 function Uart1Tx_ISR
                                   1425 ;	-----------------------------------------
      002BD9                       1426 _Uart1Tx_ISR:
                                   1427 ;	../lib_master/uart.c:530: clr_TI_1;// clear, putchar_uart1()에서 직접 불린 상태면 gu8Tx1Size==1인데, 이 경우는 무의미 할 수도 있음, 
                                   1428 ;	assignBit
      002BD9 C2 F9            [12] 1429 	clr	_TI_1
                                   1430 ;	../lib_master/uart.c:531: if (gu8Tx1Size == 0) {
      002BDB 90 01 CD         [24] 1431 	mov	dptr,#_gu8Tx1Size
      002BDE E0               [24] 1432 	movx	a,@dptr
      002BDF FF               [12] 1433 	mov	r7,a
      002BE0 E0               [24] 1434 	movx	a,@dptr
      002BE1 70 01            [24] 1435 	jnz	00102$
                                   1436 ;	../lib_master/uart.c:533: return;
      002BE3 22               [24] 1437 	ret
      002BE4                       1438 00102$:
                                   1439 ;	../lib_master/uart.c:540: for (i = 0; i< LINEFI_DOWNLINKE_TX_GAP;i++) {
      002BE4 7D 64            [12] 1440 	mov	r5,#0x64
      002BE6 7E 00            [12] 1441 	mov	r6,#0x00
      002BE8                       1442 00106$:
                                   1443 ;	../lib_master/uart.c:541: nop; nop; nop; nop;
      002BE8 00               [12] 1444 	NOP
      002BE9 00               [12] 1445 	NOP
      002BEA 00               [12] 1446 	NOP
      002BEB 00               [12] 1447 	NOP
      002BEC ED               [12] 1448 	mov	a,r5
      002BED 24 FF            [12] 1449 	add	a,#0xff
      002BEF FB               [12] 1450 	mov	r3,a
      002BF0 EE               [12] 1451 	mov	a,r6
      002BF1 34 FF            [12] 1452 	addc	a,#0xff
      002BF3 FC               [12] 1453 	mov	r4,a
      002BF4 8B 05            [24] 1454 	mov	ar5,r3
      002BF6 8C 06            [24] 1455 	mov	ar6,r4
                                   1456 ;	../lib_master/uart.c:540: for (i = 0; i< LINEFI_DOWNLINKE_TX_GAP;i++) {
      002BF8 EB               [12] 1457 	mov	a,r3
      002BF9 4C               [12] 1458 	orl	a,r4
      002BFA 70 EC            [24] 1459 	jnz	00106$
                                   1460 ;	../lib_master/uart.c:553: SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
      002BFC 90 01 CE         [24] 1461 	mov	dptr,#_gu8Tx1RIdx
      002BFF E0               [24] 1462 	movx	a,@dptr
      002C00 FE               [12] 1463 	mov	r6,a
      002C01 04               [12] 1464 	inc	a
      002C02 F0               [24] 1465 	movx	@dptr,a
      002C03 EE               [12] 1466 	mov	a,r6
      002C04 24 B4            [12] 1467 	add	a,#_pu8UartTx1Buf
      002C06 F5 82            [12] 1468 	mov	dpl,a
      002C08 E4               [12] 1469 	clr	a
      002C09 34 01            [12] 1470 	addc	a,#(_pu8UartTx1Buf >> 8)
      002C0B F5 83            [12] 1471 	mov	dph,a
      002C0D E0               [24] 1472 	movx	a,@dptr
      002C0E F5 9A            [12] 1473 	mov	_SBUF_1,a
                                   1474 ;	../lib_master/uart.c:554: gu8Tx1Size--;
      002C10 EF               [12] 1475 	mov	a,r7
      002C11 14               [12] 1476 	dec	a
      002C12 90 01 CD         [24] 1477 	mov	dptr,#_gu8Tx1Size
      002C15 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../lib_master/uart.c:560: gu8Tx1RIdx &= UART1_TX_BUFF_SIZE_MSK;
      002C16 90 01 CE         [24] 1480 	mov	dptr,#_gu8Tx1RIdx
      002C19 E0               [24] 1481 	movx	a,@dptr
      002C1A 53 E0 0F         [24] 1482 	anl	acc,#0x0f
      002C1D F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	../lib_master/uart.c:562: }
      002C1E 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'SerialPort1_ISR'
                                   1488 ;------------------------------------------------------------
                                   1489 ;	../lib_master/uart.c:564: void SerialPort1_ISR(void) interrupt(15) 
                                   1490 ;	-----------------------------------------
                                   1491 ;	 function SerialPort1_ISR
                                   1492 ;	-----------------------------------------
      002C1F                       1493 _SerialPort1_ISR:
                           00000F  1494 	ar7 = 0x0f
                           00000E  1495 	ar6 = 0x0e
                           00000D  1496 	ar5 = 0x0d
                           00000C  1497 	ar4 = 0x0c
                           00000B  1498 	ar3 = 0x0b
                           00000A  1499 	ar2 = 0x0a
                           000009  1500 	ar1 = 0x09
                           000008  1501 	ar0 = 0x08
      002C1F C0 21            [24] 1502 	push	bits
      002C21 C0 E0            [24] 1503 	push	acc
      002C23 C0 F0            [24] 1504 	push	b
      002C25 C0 82            [24] 1505 	push	dpl
      002C27 C0 83            [24] 1506 	push	dph
      002C29 C0 07            [24] 1507 	push	(0+7)
      002C2B C0 06            [24] 1508 	push	(0+6)
      002C2D C0 05            [24] 1509 	push	(0+5)
      002C2F C0 04            [24] 1510 	push	(0+4)
      002C31 C0 03            [24] 1511 	push	(0+3)
      002C33 C0 02            [24] 1512 	push	(0+2)
      002C35 C0 01            [24] 1513 	push	(0+1)
      002C37 C0 00            [24] 1514 	push	(0+0)
      002C39 C0 D0            [24] 1515 	push	psw
      002C3B 75 D0 08         [24] 1516 	mov	psw,#0x08
                                   1517 ;	../lib_master/uart.c:566: if (RI_1 == 1) {/* if reception occur */
      002C3E 30 F8 3B         [24] 1518 	jnb	_RI_1,00106$
                                   1519 ;	../lib_master/uart.c:567: gu8Uart1RCnt ++;
      002C41 90 01 D2         [24] 1520 	mov	dptr,#_gu8Uart1RCnt
      002C44 E0               [24] 1521 	movx	a,@dptr
      002C45 24 01            [12] 1522 	add	a,#0x01
      002C47 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	../lib_master/uart.c:568: if (gu8Rx1Size < UART1_RX_BUFF_SIZE) {
      002C48 90 01 CA         [24] 1525 	mov	dptr,#_gu8Rx1Size
      002C4B E0               [24] 1526 	movx	a,@dptr
      002C4C FF               [12] 1527 	mov	r7,a
      002C4D BF 10 00         [24] 1528 	cjne	r7,#0x10,00128$
      002C50                       1529 00128$:
      002C50 50 28            [24] 1530 	jnc	00104$
                                   1531 ;	../lib_master/uart.c:569: pu8UartRx1Buf[gu8Rx1WIdx++] = SBUF_1;
      002C52 90 01 CC         [24] 1532 	mov	dptr,#_gu8Rx1WIdx
      002C55 E0               [24] 1533 	movx	a,@dptr
      002C56 FF               [12] 1534 	mov	r7,a
      002C57 04               [12] 1535 	inc	a
      002C58 F0               [24] 1536 	movx	@dptr,a
      002C59 EF               [12] 1537 	mov	a,r7
      002C5A 24 A4            [12] 1538 	add	a,#_pu8UartRx1Buf
      002C5C F5 82            [12] 1539 	mov	dpl,a
      002C5E E4               [12] 1540 	clr	a
      002C5F 34 01            [12] 1541 	addc	a,#(_pu8UartRx1Buf >> 8)
      002C61 F5 83            [12] 1542 	mov	dph,a
      002C63 E5 9A            [12] 1543 	mov	a,_SBUF_1
      002C65 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	../lib_master/uart.c:570: gu8Rx1Size++;
      002C66 90 01 CA         [24] 1546 	mov	dptr,#_gu8Rx1Size
      002C69 E0               [24] 1547 	movx	a,@dptr
      002C6A 24 01            [12] 1548 	add	a,#0x01
      002C6C F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	../lib_master/uart.c:571: if (gu8Rx1WIdx == UART1_RX_BUFF_SIZE) {
      002C6D 90 01 CC         [24] 1551 	mov	dptr,#_gu8Rx1WIdx
      002C70 E0               [24] 1552 	movx	a,@dptr
      002C71 FF               [12] 1553 	mov	r7,a
      002C72 BF 10 05         [24] 1554 	cjne	r7,#0x10,00104$
                                   1555 ;	../lib_master/uart.c:572: gu8Rx1WIdx = 0;
      002C75 90 01 CC         [24] 1556 	mov	dptr,#_gu8Rx1WIdx
      002C78 E4               [12] 1557 	clr	a
      002C79 F0               [24] 1558 	movx	@dptr,a
      002C7A                       1559 00104$:
                                   1560 ;	../lib_master/uart.c:578: clr_RI_1;      /* clear reception flag for next reception */
                                   1561 ;	assignBit
      002C7A C2 F8            [12] 1562 	clr	_RI_1
      002C7C                       1563 00106$:
                                   1564 ;	../lib_master/uart.c:581: if (TI_1 == 1) {
      002C7C 30 F9 10         [24] 1565 	jnb	_TI_1,00109$
                                   1566 ;	../lib_master/uart.c:582: gu8Uart1TCnt ++;
      002C7F 90 01 D3         [24] 1567 	mov	dptr,#_gu8Uart1TCnt
      002C82 E0               [24] 1568 	movx	a,@dptr
      002C83 24 01            [12] 1569 	add	a,#0x01
      002C85 F0               [24] 1570 	movx	@dptr,a
                                   1571 ;	../lib_master/uart.c:583: Uart1Tx_ISR();
      002C86 75 D0 00         [24] 1572 	mov	psw,#0x00
      002C89 12 2B D9         [24] 1573 	lcall	_Uart1Tx_ISR
      002C8C 75 D0 08         [24] 1574 	mov	psw,#0x08
      002C8F                       1575 00109$:
                                   1576 ;	../lib_master/uart.c:585: }
      002C8F D0 D0            [24] 1577 	pop	psw
      002C91 D0 00            [24] 1578 	pop	(0+0)
      002C93 D0 01            [24] 1579 	pop	(0+1)
      002C95 D0 02            [24] 1580 	pop	(0+2)
      002C97 D0 03            [24] 1581 	pop	(0+3)
      002C99 D0 04            [24] 1582 	pop	(0+4)
      002C9B D0 05            [24] 1583 	pop	(0+5)
      002C9D D0 06            [24] 1584 	pop	(0+6)
      002C9F D0 07            [24] 1585 	pop	(0+7)
      002CA1 D0 83            [24] 1586 	pop	dph
      002CA3 D0 82            [24] 1587 	pop	dpl
      002CA5 D0 F0            [24] 1588 	pop	b
      002CA7 D0 E0            [24] 1589 	pop	acc
      002CA9 D0 21            [24] 1590 	pop	bits
      002CAB 32               [24] 1591 	reti
                                   1592 ;------------------------------------------------------------
                                   1593 ;Allocation info for local variables in function 'chkchar_uart1'
                                   1594 ;------------------------------------------------------------
                                   1595 ;	../lib_master/uart.c:587: uint8_t chkchar_uart1()
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function chkchar_uart1
                                   1598 ;	-----------------------------------------
      002CAC                       1599 _chkchar_uart1:
                           000007  1600 	ar7 = 0x07
                           000006  1601 	ar6 = 0x06
                           000005  1602 	ar5 = 0x05
                           000004  1603 	ar4 = 0x04
                           000003  1604 	ar3 = 0x03
                           000002  1605 	ar2 = 0x02
                           000001  1606 	ar1 = 0x01
                           000000  1607 	ar0 = 0x00
                                   1608 ;	../lib_master/uart.c:592: return gu8Rx1Size;
      002CAC 90 01 CA         [24] 1609 	mov	dptr,#_gu8Rx1Size
      002CAF E0               [24] 1610 	movx	a,@dptr
                                   1611 ;	../lib_master/uart.c:593: }
      002CB0 F5 82            [12] 1612 	mov	dpl,a
      002CB2 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'getchar_uart1'
                                   1616 ;------------------------------------------------------------
                                   1617 ;apu8Data                  Allocated to registers r5 r6 r7 
                                   1618 ;------------------------------------------------------------
                                   1619 ;	../lib_master/uart.c:595: uint8_t getchar_uart1(uint8_t * apu8Data)
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function getchar_uart1
                                   1622 ;	-----------------------------------------
      002CB3                       1623 _getchar_uart1:
      002CB3 AD 82            [24] 1624 	mov	r5,dpl
      002CB5 AE 83            [24] 1625 	mov	r6,dph
      002CB7 AF F0            [24] 1626 	mov	r7,b
                                   1627 ;	../lib_master/uart.c:600: if (gu8Rx1Size == 0) {
      002CB9 90 01 CA         [24] 1628 	mov	dptr,#_gu8Rx1Size
      002CBC E0               [24] 1629 	movx	a,@dptr
                                   1630 ;	../lib_master/uart.c:601: return 0;
      002CBD 70 03            [24] 1631 	jnz	00102$
      002CBF F5 82            [12] 1632 	mov	dpl,a
      002CC1 22               [24] 1633 	ret
      002CC2                       1634 00102$:
                                   1635 ;	../lib_master/uart.c:603: clr_ES_1;
      002CC2 53 9C FE         [24] 1636 	anl	_EIE1,#0xfe
                                   1637 ;	../lib_master/uart.c:604: *apu8Data = pu8UartRx1Buf[gu8Rx1RIdx++];
      002CC5 90 01 CB         [24] 1638 	mov	dptr,#_gu8Rx1RIdx
      002CC8 E0               [24] 1639 	movx	a,@dptr
      002CC9 FC               [12] 1640 	mov	r4,a
      002CCA 04               [12] 1641 	inc	a
      002CCB F0               [24] 1642 	movx	@dptr,a
      002CCC EC               [12] 1643 	mov	a,r4
      002CCD 24 A4            [12] 1644 	add	a,#_pu8UartRx1Buf
      002CCF F5 82            [12] 1645 	mov	dpl,a
      002CD1 E4               [12] 1646 	clr	a
      002CD2 34 01            [12] 1647 	addc	a,#(_pu8UartRx1Buf >> 8)
      002CD4 F5 83            [12] 1648 	mov	dph,a
      002CD6 E0               [24] 1649 	movx	a,@dptr
      002CD7 8D 82            [24] 1650 	mov	dpl,r5
      002CD9 8E 83            [24] 1651 	mov	dph,r6
      002CDB 8F F0            [24] 1652 	mov	b,r7
      002CDD 12 34 06         [24] 1653 	lcall	__gptrput
                                   1654 ;	../lib_master/uart.c:605: gu8Rx1Size--;
      002CE0 90 01 CA         [24] 1655 	mov	dptr,#_gu8Rx1Size
      002CE3 E0               [24] 1656 	movx	a,@dptr
      002CE4 14               [12] 1657 	dec	a
      002CE5 F0               [24] 1658 	movx	@dptr,a
                                   1659 ;	../lib_master/uart.c:606: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
      002CE6 90 01 CB         [24] 1660 	mov	dptr,#_gu8Rx1RIdx
      002CE9 E0               [24] 1661 	movx	a,@dptr
      002CEA FF               [12] 1662 	mov	r7,a
      002CEB BF 10 05         [24] 1663 	cjne	r7,#0x10,00104$
                                   1664 ;	../lib_master/uart.c:607: gu8Rx1RIdx = 0;
      002CEE 90 01 CB         [24] 1665 	mov	dptr,#_gu8Rx1RIdx
      002CF1 E4               [12] 1666 	clr	a
      002CF2 F0               [24] 1667 	movx	@dptr,a
      002CF3                       1668 00104$:
                                   1669 ;	../lib_master/uart.c:609: set_ES_1;
      002CF3 43 9C 01         [24] 1670 	orl	_EIE1,#0x01
                                   1671 ;	../lib_master/uart.c:610: return 1;
      002CF6 75 82 01         [24] 1672 	mov	dpl,#0x01
                                   1673 ;	../lib_master/uart.c:611: }
      002CF9 22               [24] 1674 	ret
                                   1675 ;------------------------------------------------------------
                                   1676 ;Allocation info for local variables in function 'getstr_uart1'
                                   1677 ;------------------------------------------------------------
                                   1678 ;apu8Data                  Allocated with name '_getstr_uart1_PARM_2'
                                   1679 ;au8Size                   Allocated to registers r7 
                                   1680 ;i                         Allocated to registers r3 
                                   1681 ;------------------------------------------------------------
                                   1682 ;	../lib_master/uart.c:613: uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data)
                                   1683 ;	-----------------------------------------
                                   1684 ;	 function getstr_uart1
                                   1685 ;	-----------------------------------------
      002CFA                       1686 _getstr_uart1:
      002CFA AF 82            [24] 1687 	mov	r7,dpl
                                   1688 ;	../lib_master/uart.c:619: if (gu8Rx1Size == 0) {
      002CFC 90 01 CA         [24] 1689 	mov	dptr,#_gu8Rx1Size
      002CFF E0               [24] 1690 	movx	a,@dptr
      002D00 FE               [12] 1691 	mov	r6,a
                                   1692 ;	../lib_master/uart.c:620: return 0;
      002D01 70 03            [24] 1693 	jnz	00102$
      002D03 F5 82            [12] 1694 	mov	dpl,a
      002D05 22               [24] 1695 	ret
      002D06                       1696 00102$:
                                   1697 ;	../lib_master/uart.c:623: if (gu8Rx1Size < au8Size) {
      002D06 C3               [12] 1698 	clr	c
      002D07 EE               [12] 1699 	mov	a,r6
      002D08 9F               [12] 1700 	subb	a,r7
      002D09 50 02            [24] 1701 	jnc	00117$
                                   1702 ;	../lib_master/uart.c:624: au8Size = gu8Rx1Size;
      002D0B 8E 07            [24] 1703 	mov	ar7,r6
                                   1704 ;	../lib_master/uart.c:626: for (i=0;i<au8Size;i++) {
      002D0D                       1705 00117$:
      002D0D AC 1A            [24] 1706 	mov	r4,_getstr_uart1_PARM_2
      002D0F AD 1B            [24] 1707 	mov	r5,(_getstr_uart1_PARM_2 + 1)
      002D11 AE 1C            [24] 1708 	mov	r6,(_getstr_uart1_PARM_2 + 2)
      002D13 7B 00            [12] 1709 	mov	r3,#0x00
      002D15                       1710 00109$:
      002D15 C3               [12] 1711 	clr	c
      002D16 EB               [12] 1712 	mov	a,r3
      002D17 9F               [12] 1713 	subb	a,r7
      002D18 50 30            [24] 1714 	jnc	00107$
                                   1715 ;	../lib_master/uart.c:627: *apu8Data++ = pu8UartRx1Buf[gu8Rx1RIdx++];
      002D1A 90 01 CB         [24] 1716 	mov	dptr,#_gu8Rx1RIdx
      002D1D E0               [24] 1717 	movx	a,@dptr
      002D1E FA               [12] 1718 	mov	r2,a
      002D1F 04               [12] 1719 	inc	a
      002D20 F0               [24] 1720 	movx	@dptr,a
      002D21 EA               [12] 1721 	mov	a,r2
      002D22 24 A4            [12] 1722 	add	a,#_pu8UartRx1Buf
      002D24 F5 82            [12] 1723 	mov	dpl,a
      002D26 E4               [12] 1724 	clr	a
      002D27 34 01            [12] 1725 	addc	a,#(_pu8UartRx1Buf >> 8)
      002D29 F5 83            [12] 1726 	mov	dph,a
      002D2B E0               [24] 1727 	movx	a,@dptr
      002D2C 8C 82            [24] 1728 	mov	dpl,r4
      002D2E 8D 83            [24] 1729 	mov	dph,r5
      002D30 8E F0            [24] 1730 	mov	b,r6
      002D32 12 34 06         [24] 1731 	lcall	__gptrput
      002D35 A3               [24] 1732 	inc	dptr
      002D36 AC 82            [24] 1733 	mov	r4,dpl
      002D38 AD 83            [24] 1734 	mov	r5,dph
                                   1735 ;	../lib_master/uart.c:628: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
      002D3A 90 01 CB         [24] 1736 	mov	dptr,#_gu8Rx1RIdx
      002D3D E0               [24] 1737 	movx	a,@dptr
      002D3E FA               [12] 1738 	mov	r2,a
      002D3F BA 10 05         [24] 1739 	cjne	r2,#0x10,00110$
                                   1740 ;	../lib_master/uart.c:629: gu8Rx1RIdx = 0;
      002D42 90 01 CB         [24] 1741 	mov	dptr,#_gu8Rx1RIdx
      002D45 E4               [12] 1742 	clr	a
      002D46 F0               [24] 1743 	movx	@dptr,a
      002D47                       1744 00110$:
                                   1745 ;	../lib_master/uart.c:626: for (i=0;i<au8Size;i++) {
      002D47 0B               [12] 1746 	inc	r3
      002D48 80 CB            [24] 1747 	sjmp	00109$
      002D4A                       1748 00107$:
                                   1749 ;	../lib_master/uart.c:632: gu8Rx1Size -= au8Size;
      002D4A 90 01 CA         [24] 1750 	mov	dptr,#_gu8Rx1Size
      002D4D E0               [24] 1751 	movx	a,@dptr
      002D4E C3               [12] 1752 	clr	c
      002D4F 9F               [12] 1753 	subb	a,r7
      002D50 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	../lib_master/uart.c:633: return au8Size;
      002D51 8F 82            [24] 1756 	mov	dpl,r7
                                   1757 ;	../lib_master/uart.c:634: }
      002D53 22               [24] 1758 	ret
                                   1759 ;------------------------------------------------------------
                                   1760 ;Allocation info for local variables in function 'putchar_uart0'
                                   1761 ;------------------------------------------------------------
                                   1762 ;au8Data                   Allocated to registers r7 
                                   1763 ;------------------------------------------------------------
                                   1764 ;	../lib_master/uart.c:636: void putchar_uart0(char au8Data)
                                   1765 ;	-----------------------------------------
                                   1766 ;	 function putchar_uart0
                                   1767 ;	-----------------------------------------
      002D54                       1768 _putchar_uart0:
      002D54 AF 82            [24] 1769 	mov	r7,dpl
                                   1770 ;	../lib_master/uart.c:638: while (gu8Tx0Size >= UART0_TX_BUFF_SIZE) {
      002D56                       1771 00101$:
      002D56 90 01 C7         [24] 1772 	mov	dptr,#_gu8Tx0Size
      002D59 E0               [24] 1773 	movx	a,@dptr
      002D5A FE               [12] 1774 	mov	r6,a
      002D5B BE 10 00         [24] 1775 	cjne	r6,#0x10,00120$
      002D5E                       1776 00120$:
      002D5E 40 03            [24] 1777 	jc	00103$
                                   1778 ;	../lib_master/uart.c:641: nop;
      002D60 00               [12] 1779 	NOP
      002D61 80 F3            [24] 1780 	sjmp	00101$
      002D63                       1781 00103$:
                                   1782 ;	../lib_master/uart.c:644: pu8UartTx0Buf[gu8Tx0WIdx++] = au8Data;
      002D63 90 01 C9         [24] 1783 	mov	dptr,#_gu8Tx0WIdx
      002D66 E0               [24] 1784 	movx	a,@dptr
      002D67 FE               [12] 1785 	mov	r6,a
      002D68 04               [12] 1786 	inc	a
      002D69 F0               [24] 1787 	movx	@dptr,a
      002D6A EE               [12] 1788 	mov	a,r6
      002D6B 24 94            [12] 1789 	add	a,#_pu8UartTx0Buf
      002D6D F5 82            [12] 1790 	mov	dpl,a
      002D6F E4               [12] 1791 	clr	a
      002D70 34 01            [12] 1792 	addc	a,#(_pu8UartTx0Buf >> 8)
      002D72 F5 83            [12] 1793 	mov	dph,a
      002D74 EF               [12] 1794 	mov	a,r7
      002D75 F0               [24] 1795 	movx	@dptr,a
                                   1796 ;	../lib_master/uart.c:645: gu8Tx0Size++;
      002D76 90 01 C7         [24] 1797 	mov	dptr,#_gu8Tx0Size
      002D79 E0               [24] 1798 	movx	a,@dptr
      002D7A 24 01            [12] 1799 	add	a,#0x01
      002D7C F0               [24] 1800 	movx	@dptr,a
                                   1801 ;	../lib_master/uart.c:646: if (gu8Tx0WIdx == UART0_TX_BUFF_SIZE) {
      002D7D 90 01 C9         [24] 1802 	mov	dptr,#_gu8Tx0WIdx
      002D80 E0               [24] 1803 	movx	a,@dptr
      002D81 FF               [12] 1804 	mov	r7,a
      002D82 BF 10 05         [24] 1805 	cjne	r7,#0x10,00105$
                                   1806 ;	../lib_master/uart.c:648: gu8Tx0WIdx = 0;
      002D85 90 01 C9         [24] 1807 	mov	dptr,#_gu8Tx0WIdx
      002D88 E4               [12] 1808 	clr	a
      002D89 F0               [24] 1809 	movx	@dptr,a
      002D8A                       1810 00105$:
                                   1811 ;	../lib_master/uart.c:650: set_TI;
                                   1812 ;	assignBit
      002D8A D2 99            [12] 1813 	setb	_TI
                                   1814 ;	../lib_master/uart.c:651: }
      002D8C 22               [24] 1815 	ret
                                   1816 ;------------------------------------------------------------
                                   1817 ;Allocation info for local variables in function 'putchar_uart1'
                                   1818 ;------------------------------------------------------------
                                   1819 ;au8Data                   Allocated to registers r7 
                                   1820 ;------------------------------------------------------------
                                   1821 ;	../lib_master/uart.c:653: void putchar_uart1(char au8Data)
                                   1822 ;	-----------------------------------------
                                   1823 ;	 function putchar_uart1
                                   1824 ;	-----------------------------------------
      002D8D                       1825 _putchar_uart1:
      002D8D AF 82            [24] 1826 	mov	r7,dpl
                                   1827 ;	../lib_master/uart.c:655: while (gu8Tx1Size >= UART1_TX_BUFF_SIZE) {
      002D8F                       1828 00101$:
      002D8F 90 01 CD         [24] 1829 	mov	dptr,#_gu8Tx1Size
      002D92 E0               [24] 1830 	movx	a,@dptr
      002D93 FE               [12] 1831 	mov	r6,a
      002D94 BE 10 00         [24] 1832 	cjne	r6,#0x10,00121$
      002D97                       1833 00121$:
      002D97 40 0A            [24] 1834 	jc	00103$
                                   1835 ;	../lib_master/uart.c:656: gu8BFCnt++;
      002D99 90 01 6D         [24] 1836 	mov	dptr,#_gu8BFCnt
      002D9C E0               [24] 1837 	movx	a,@dptr
      002D9D 24 01            [12] 1838 	add	a,#0x01
      002D9F F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	../lib_master/uart.c:659: nop;
      002DA0 00               [12] 1841 	NOP
      002DA1 80 EC            [24] 1842 	sjmp	00101$
      002DA3                       1843 00103$:
                                   1844 ;	../lib_master/uart.c:661: gu8BNFCnt++;
      002DA3 90 01 6C         [24] 1845 	mov	dptr,#_gu8BNFCnt
      002DA6 E0               [24] 1846 	movx	a,@dptr
      002DA7 24 01            [12] 1847 	add	a,#0x01
      002DA9 F0               [24] 1848 	movx	@dptr,a
                                   1849 ;	../lib_master/uart.c:663: clr_ES_1;
      002DAA 53 9C FE         [24] 1850 	anl	_EIE1,#0xfe
                                   1851 ;	../lib_master/uart.c:664: pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
      002DAD 90 01 CF         [24] 1852 	mov	dptr,#_gu8Tx1WIdx
      002DB0 E0               [24] 1853 	movx	a,@dptr
      002DB1 FE               [12] 1854 	mov	r6,a
      002DB2 04               [12] 1855 	inc	a
      002DB3 F0               [24] 1856 	movx	@dptr,a
      002DB4 EE               [12] 1857 	mov	a,r6
      002DB5 24 B4            [12] 1858 	add	a,#_pu8UartTx1Buf
      002DB7 F5 82            [12] 1859 	mov	dpl,a
      002DB9 E4               [12] 1860 	clr	a
      002DBA 34 01            [12] 1861 	addc	a,#(_pu8UartTx1Buf >> 8)
      002DBC F5 83            [12] 1862 	mov	dph,a
      002DBE EF               [12] 1863 	mov	a,r7
      002DBF F0               [24] 1864 	movx	@dptr,a
                                   1865 ;	../lib_master/uart.c:665: gu8Tx1Size++;
      002DC0 90 01 CD         [24] 1866 	mov	dptr,#_gu8Tx1Size
      002DC3 E0               [24] 1867 	movx	a,@dptr
      002DC4 24 01            [12] 1868 	add	a,#0x01
      002DC6 F0               [24] 1869 	movx	@dptr,a
                                   1870 ;	../lib_master/uart.c:672: gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;
      002DC7 90 01 CF         [24] 1871 	mov	dptr,#_gu8Tx1WIdx
      002DCA E0               [24] 1872 	movx	a,@dptr
      002DCB 53 E0 0F         [24] 1873 	anl	acc,#0x0f
      002DCE F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	../lib_master/uart.c:679: if (gu8Tx1Size == 1) {
      002DCF 90 01 CD         [24] 1876 	mov	dptr,#_gu8Tx1Size
      002DD2 E0               [24] 1877 	movx	a,@dptr
      002DD3 FF               [12] 1878 	mov	r7,a
      002DD4 BF 01 0B         [24] 1879 	cjne	r7,#0x01,00105$
                                   1880 ;	../lib_master/uart.c:680: gu8BECnt++;
      002DD7 90 01 6F         [24] 1881 	mov	dptr,#_gu8BECnt
      002DDA E0               [24] 1882 	movx	a,@dptr
      002DDB 24 01            [12] 1883 	add	a,#0x01
      002DDD F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	../lib_master/uart.c:682: set_TI_1;
                                   1886 ;	assignBit
      002DDE D2 F9            [12] 1887 	setb	_TI_1
      002DE0 80 07            [24] 1888 	sjmp	00106$
      002DE2                       1889 00105$:
                                   1890 ;	../lib_master/uart.c:685: gu8BNECnt++;
      002DE2 90 01 6E         [24] 1891 	mov	dptr,#_gu8BNECnt
      002DE5 E0               [24] 1892 	movx	a,@dptr
      002DE6 24 01            [12] 1893 	add	a,#0x01
      002DE8 F0               [24] 1894 	movx	@dptr,a
      002DE9                       1895 00106$:
                                   1896 ;	../lib_master/uart.c:706: set_ES_1;
      002DE9 43 9C 01         [24] 1897 	orl	_EIE1,#0x01
                                   1898 ;	../lib_master/uart.c:707: }
      002DEC 22               [24] 1899 	ret
                                   1900 ;------------------------------------------------------------
                                   1901 ;Allocation info for local variables in function 'preamble'
                                   1902 ;------------------------------------------------------------
                                   1903 ;	../lib_master/uart.c:710: void preamble() 
                                   1904 ;	-----------------------------------------
                                   1905 ;	 function preamble
                                   1906 ;	-----------------------------------------
      002DED                       1907 _preamble:
                                   1908 ;	../lib_master/uart.c:712: gu8UART = 1;
      002DED 75 11 01         [24] 1909 	mov	_gu8UART,#0x01
                                   1910 ;	../lib_master/uart.c:713: putchar(0xF0);
      002DF0 90 00 F0         [24] 1911 	mov	dptr,#0x00f0
                                   1912 ;	../lib_master/uart.c:714: return;
                                   1913 ;	../lib_master/uart.c:715: }
      002DF3 02 2A 29         [24] 1914 	ljmp	_putchar
                                   1915 ;------------------------------------------------------------
                                   1916 ;Allocation info for local variables in function 'putchar_manchester'
                                   1917 ;------------------------------------------------------------
                                   1918 ;c                         Allocated to registers r7 
                                   1919 ;------------------------------------------------------------
                                   1920 ;	../lib_master/uart.c:717: void putchar_manchester(char c) 
                                   1921 ;	-----------------------------------------
                                   1922 ;	 function putchar_manchester
                                   1923 ;	-----------------------------------------
      002DF6                       1924 _putchar_manchester:
      002DF6 AF 82            [24] 1925 	mov	r7,dpl
                                   1926 ;	../lib_master/uart.c:719: gu8UART = 1;
      002DF8 75 11 01         [24] 1927 	mov	_gu8UART,#0x01
                                   1928 ;	../lib_master/uart.c:720: putchar( (gpc2B2MC[(c>>6)&0x3]<<4) | gpc2B2MC[(c>>4)&0x3]);
      002DFB EF               [12] 1929 	mov	a,r7
      002DFC 23               [12] 1930 	rl	a
      002DFD 23               [12] 1931 	rl	a
      002DFE 54 03            [12] 1932 	anl	a,#0x03
      002E00 FE               [12] 1933 	mov	r6,a
      002E01 53 06 03         [24] 1934 	anl	ar6,#0x03
      002E04 7D 00            [12] 1935 	mov	r5,#0x00
      002E06 EE               [12] 1936 	mov	a,r6
      002E07 24 70            [12] 1937 	add	a,#_gpc2B2MC
      002E09 F5 82            [12] 1938 	mov	dpl,a
      002E0B ED               [12] 1939 	mov	a,r5
      002E0C 34 01            [12] 1940 	addc	a,#(_gpc2B2MC >> 8)
      002E0E F5 83            [12] 1941 	mov	dph,a
      002E10 E0               [24] 1942 	movx	a,@dptr
      002E11 FE               [12] 1943 	mov	r6,a
      002E12 E4               [12] 1944 	clr	a
      002E13 CE               [12] 1945 	xch	a,r6
      002E14 C4               [12] 1946 	swap	a
      002E15 CE               [12] 1947 	xch	a,r6
      002E16 6E               [12] 1948 	xrl	a,r6
      002E17 CE               [12] 1949 	xch	a,r6
      002E18 54 F0            [12] 1950 	anl	a,#0xf0
      002E1A CE               [12] 1951 	xch	a,r6
      002E1B 6E               [12] 1952 	xrl	a,r6
      002E1C FD               [12] 1953 	mov	r5,a
      002E1D EF               [12] 1954 	mov	a,r7
      002E1E C4               [12] 1955 	swap	a
      002E1F 54 0F            [12] 1956 	anl	a,#0x0f
      002E21 FC               [12] 1957 	mov	r4,a
      002E22 53 04 03         [24] 1958 	anl	ar4,#0x03
      002E25 7B 00            [12] 1959 	mov	r3,#0x00
      002E27 EC               [12] 1960 	mov	a,r4
      002E28 24 70            [12] 1961 	add	a,#_gpc2B2MC
      002E2A F5 82            [12] 1962 	mov	dpl,a
      002E2C EB               [12] 1963 	mov	a,r3
      002E2D 34 01            [12] 1964 	addc	a,#(_gpc2B2MC >> 8)
      002E2F F5 83            [12] 1965 	mov	dph,a
      002E31 E0               [24] 1966 	movx	a,@dptr
      002E32 7B 00            [12] 1967 	mov	r3,#0x00
      002E34 4E               [12] 1968 	orl	a,r6
      002E35 F5 82            [12] 1969 	mov	dpl,a
      002E37 EB               [12] 1970 	mov	a,r3
      002E38 4D               [12] 1971 	orl	a,r5
      002E39 F5 83            [12] 1972 	mov	dph,a
      002E3B C0 07            [24] 1973 	push	ar7
      002E3D 12 2A 29         [24] 1974 	lcall	_putchar
      002E40 D0 07            [24] 1975 	pop	ar7
                                   1976 ;	../lib_master/uart.c:721: putchar( (gpc2B2MC[(c>>2)&0x3]<<4) | gpc2B2MC[(c>>0)&0x3]);
      002E42 EF               [12] 1977 	mov	a,r7
      002E43 03               [12] 1978 	rr	a
      002E44 03               [12] 1979 	rr	a
      002E45 54 3F            [12] 1980 	anl	a,#0x3f
      002E47 FE               [12] 1981 	mov	r6,a
      002E48 53 06 03         [24] 1982 	anl	ar6,#0x03
      002E4B 7D 00            [12] 1983 	mov	r5,#0x00
      002E4D EE               [12] 1984 	mov	a,r6
      002E4E 24 70            [12] 1985 	add	a,#_gpc2B2MC
      002E50 F5 82            [12] 1986 	mov	dpl,a
      002E52 ED               [12] 1987 	mov	a,r5
      002E53 34 01            [12] 1988 	addc	a,#(_gpc2B2MC >> 8)
      002E55 F5 83            [12] 1989 	mov	dph,a
      002E57 E0               [24] 1990 	movx	a,@dptr
      002E58 FE               [12] 1991 	mov	r6,a
      002E59 E4               [12] 1992 	clr	a
      002E5A CE               [12] 1993 	xch	a,r6
      002E5B C4               [12] 1994 	swap	a
      002E5C CE               [12] 1995 	xch	a,r6
      002E5D 6E               [12] 1996 	xrl	a,r6
      002E5E CE               [12] 1997 	xch	a,r6
      002E5F 54 F0            [12] 1998 	anl	a,#0xf0
      002E61 CE               [12] 1999 	xch	a,r6
      002E62 6E               [12] 2000 	xrl	a,r6
      002E63 FD               [12] 2001 	mov	r5,a
      002E64 53 07 03         [24] 2002 	anl	ar7,#0x03
      002E67 7C 00            [12] 2003 	mov	r4,#0x00
      002E69 EF               [12] 2004 	mov	a,r7
      002E6A 24 70            [12] 2005 	add	a,#_gpc2B2MC
      002E6C F5 82            [12] 2006 	mov	dpl,a
      002E6E EC               [12] 2007 	mov	a,r4
      002E6F 34 01            [12] 2008 	addc	a,#(_gpc2B2MC >> 8)
      002E71 F5 83            [12] 2009 	mov	dph,a
      002E73 E0               [24] 2010 	movx	a,@dptr
      002E74 7C 00            [12] 2011 	mov	r4,#0x00
      002E76 4E               [12] 2012 	orl	a,r6
      002E77 F5 82            [12] 2013 	mov	dpl,a
      002E79 EC               [12] 2014 	mov	a,r4
      002E7A 4D               [12] 2015 	orl	a,r5
      002E7B F5 83            [12] 2016 	mov	dph,a
                                   2017 ;	../lib_master/uart.c:722: return;
                                   2018 ;	../lib_master/uart.c:723: }
      002E7D 02 2A 29         [24] 2019 	ljmp	_putchar
                                   2020 ;------------------------------------------------------------
                                   2021 ;Allocation info for local variables in function 'chk_manchester'
                                   2022 ;------------------------------------------------------------
                                   2023 ;c                         Allocated to registers r7 
                                   2024 ;------------------------------------------------------------
                                   2025 ;	../lib_master/uart.c:725: UINT8 chk_manchester(UINT8 c)
                                   2026 ;	-----------------------------------------
                                   2027 ;	 function chk_manchester
                                   2028 ;	-----------------------------------------
      002E80                       2029 _chk_manchester:
                                   2030 ;	../lib_master/uart.c:739: if (gpcMC22B[(c>>4)] == 0xF) {
      002E80 E5 82            [12] 2031 	mov	a,dpl
      002E82 FF               [12] 2032 	mov	r7,a
      002E83 C4               [12] 2033 	swap	a
      002E84 54 0F            [12] 2034 	anl	a,#0x0f
      002E86 24 74            [12] 2035 	add	a,#_gpcMC22B
      002E88 F5 82            [12] 2036 	mov	dpl,a
      002E8A E4               [12] 2037 	clr	a
      002E8B 34 01            [12] 2038 	addc	a,#(_gpcMC22B >> 8)
      002E8D F5 83            [12] 2039 	mov	dph,a
      002E8F E0               [24] 2040 	movx	a,@dptr
      002E90 FE               [12] 2041 	mov	r6,a
      002E91 BE 0F 04         [24] 2042 	cjne	r6,#0x0f,00102$
                                   2043 ;	../lib_master/uart.c:740: return MC_NOT_OK;
      002E94 75 82 00         [24] 2044 	mov	dpl,#0x00
      002E97 22               [24] 2045 	ret
      002E98                       2046 00102$:
                                   2047 ;	../lib_master/uart.c:742: if (gpcMC22B[(c&0xF)] == 0xF) {
      002E98 53 07 0F         [24] 2048 	anl	ar7,#0x0f
      002E9B 7E 00            [12] 2049 	mov	r6,#0x00
      002E9D EF               [12] 2050 	mov	a,r7
      002E9E 24 74            [12] 2051 	add	a,#_gpcMC22B
      002EA0 F5 82            [12] 2052 	mov	dpl,a
      002EA2 EE               [12] 2053 	mov	a,r6
      002EA3 34 01            [12] 2054 	addc	a,#(_gpcMC22B >> 8)
      002EA5 F5 83            [12] 2055 	mov	dph,a
      002EA7 E0               [24] 2056 	movx	a,@dptr
      002EA8 FF               [12] 2057 	mov	r7,a
      002EA9 BF 0F 04         [24] 2058 	cjne	r7,#0x0f,00104$
                                   2059 ;	../lib_master/uart.c:743: return MC_NOT_OK;
      002EAC 75 82 00         [24] 2060 	mov	dpl,#0x00
      002EAF 22               [24] 2061 	ret
      002EB0                       2062 00104$:
                                   2063 ;	../lib_master/uart.c:745: return MC_OK;
      002EB0 75 82 01         [24] 2064 	mov	dpl,#0x01
                                   2065 ;	../lib_master/uart.c:746: }
      002EB3 22               [24] 2066 	ret
                                   2067 ;------------------------------------------------------------
                                   2068 ;Allocation info for local variables in function 'conv_manchester2nibble'
                                   2069 ;------------------------------------------------------------
                                   2070 ;c                         Allocated to registers r7 
                                   2071 ;------------------------------------------------------------
                                   2072 ;	../lib_master/uart.c:748: UINT8 conv_manchester2nibble(UINT8 c)
                                   2073 ;	-----------------------------------------
                                   2074 ;	 function conv_manchester2nibble
                                   2075 ;	-----------------------------------------
      002EB4                       2076 _conv_manchester2nibble:
                                   2077 ;	../lib_master/uart.c:762: return (gpcMC22B[c>>4]<<2) | (gpcMC22B[c&0xF]); 
      002EB4 E5 82            [12] 2078 	mov	a,dpl
      002EB6 FF               [12] 2079 	mov	r7,a
      002EB7 C4               [12] 2080 	swap	a
      002EB8 54 0F            [12] 2081 	anl	a,#0x0f
      002EBA 24 74            [12] 2082 	add	a,#_gpcMC22B
      002EBC F5 82            [12] 2083 	mov	dpl,a
      002EBE E4               [12] 2084 	clr	a
      002EBF 34 01            [12] 2085 	addc	a,#(_gpcMC22B >> 8)
      002EC1 F5 83            [12] 2086 	mov	dph,a
      002EC3 E0               [24] 2087 	movx	a,@dptr
      002EC4 25 E0            [12] 2088 	add	a,acc
      002EC6 25 E0            [12] 2089 	add	a,acc
      002EC8 FE               [12] 2090 	mov	r6,a
      002EC9 53 07 0F         [24] 2091 	anl	ar7,#0x0f
      002ECC 7D 00            [12] 2092 	mov	r5,#0x00
      002ECE EF               [12] 2093 	mov	a,r7
      002ECF 24 74            [12] 2094 	add	a,#_gpcMC22B
      002ED1 F5 82            [12] 2095 	mov	dpl,a
      002ED3 ED               [12] 2096 	mov	a,r5
      002ED4 34 01            [12] 2097 	addc	a,#(_gpcMC22B >> 8)
      002ED6 F5 83            [12] 2098 	mov	dph,a
      002ED8 E0               [24] 2099 	movx	a,@dptr
      002ED9 4E               [12] 2100 	orl	a,r6
      002EDA F5 82            [12] 2101 	mov	dpl,a
                                   2102 ;	../lib_master/uart.c:763: }
      002EDC 22               [24] 2103 	ret
                                   2104 	.area CSEG    (CODE)
                                   2105 	.area CONST   (CODE)
                                   2106 	.area CABS    (ABS,CODE)
