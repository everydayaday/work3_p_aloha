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
      000019                        571 _getstr_uart0_PARM_2:
      000019                        572 	.ds 3
                                    573 	.area	OSEG    (OVR,DATA)
                                    574 	.area	OSEG    (OVR,DATA)
      000019                        575 _getstr_uart1_PARM_2:
      000019                        576 	.ds 3
                                    577 	.area	OSEG    (OVR,DATA)
                                    578 	.area	OSEG    (OVR,DATA)
                                    579 	.area	OSEG    (OVR,DATA)
                                    580 	.area	OSEG    (OVR,DATA)
                                    581 ;--------------------------------------------------------
                                    582 ; indirectly addressable internal ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area ISEG    (DATA)
                                    585 ;--------------------------------------------------------
                                    586 ; absolute internal ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area IABS    (ABS,DATA)
                                    589 	.area IABS    (ABS,DATA)
                                    590 ;--------------------------------------------------------
                                    591 ; bit data
                                    592 ;--------------------------------------------------------
                                    593 	.area BSEG    (BIT)
                                    594 ;--------------------------------------------------------
                                    595 ; paged external ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area PSEG    (PAG,XDATA)
                                    598 ;--------------------------------------------------------
                                    599 ; external ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area XSEG    (XDATA)
      00012A                        602 _gu8BNFCnt::
      00012A                        603 	.ds 1
      00012B                        604 _gu8BFCnt::
      00012B                        605 	.ds 1
      00012C                        606 _gu8BNECnt::
      00012C                        607 	.ds 1
      00012D                        608 _gu8BECnt::
      00012D                        609 	.ds 1
      00012E                        610 _gpc2B2MC::
      00012E                        611 	.ds 4
      000132                        612 _gpcMC22B::
      000132                        613 	.ds 16
      000142                        614 _pu8UartRx0Buf::
      000142                        615 	.ds 16
      000152                        616 _pu8UartTx0Buf::
      000152                        617 	.ds 16
      000162                        618 _pu8UartRx1Buf::
      000162                        619 	.ds 16
      000172                        620 _pu8UartTx1Buf::
      000172                        621 	.ds 16
      000182                        622 _gu8Rx0Size::
      000182                        623 	.ds 1
      000183                        624 _gu8Rx0RIdx::
      000183                        625 	.ds 1
      000184                        626 _gu8Rx0WIdx::
      000184                        627 	.ds 1
      000185                        628 _gu8Tx0Size::
      000185                        629 	.ds 1
      000186                        630 _gu8Tx0RIdx::
      000186                        631 	.ds 1
      000187                        632 _gu8Tx0WIdx::
      000187                        633 	.ds 1
      000188                        634 _gu8Rx1Size::
      000188                        635 	.ds 1
      000189                        636 _gu8Rx1RIdx::
      000189                        637 	.ds 1
      00018A                        638 _gu8Rx1WIdx::
      00018A                        639 	.ds 1
      00018B                        640 _gu8Tx1Size::
      00018B                        641 	.ds 1
      00018C                        642 _gu8Tx1RIdx::
      00018C                        643 	.ds 1
      00018D                        644 _gu8Tx1WIdx::
      00018D                        645 	.ds 1
      00018E                        646 _gu8Uart0RCnt::
      00018E                        647 	.ds 1
      00018F                        648 _gu8Uart0TCnt::
      00018F                        649 	.ds 1
      000190                        650 _gu8Uart1RCnt::
      000190                        651 	.ds 1
      000191                        652 _gu8Uart1TCnt::
      000191                        653 	.ds 1
                                    654 ;--------------------------------------------------------
                                    655 ; absolute external ram data
                                    656 ;--------------------------------------------------------
                                    657 	.area XABS    (ABS,XDATA)
                                    658 ;--------------------------------------------------------
                                    659 ; external initialized ram data
                                    660 ;--------------------------------------------------------
                                    661 	.area HOME    (CODE)
                                    662 	.area GSINIT0 (CODE)
                                    663 	.area GSINIT1 (CODE)
                                    664 	.area GSINIT2 (CODE)
                                    665 	.area GSINIT3 (CODE)
                                    666 	.area GSINIT4 (CODE)
                                    667 	.area GSINIT5 (CODE)
                                    668 	.area GSINIT  (CODE)
                                    669 	.area GSFINAL (CODE)
                                    670 	.area CSEG    (CODE)
                                    671 ;--------------------------------------------------------
                                    672 ; global & static initialisations
                                    673 ;--------------------------------------------------------
                                    674 	.area HOME    (CODE)
                                    675 	.area GSINIT  (CODE)
                                    676 	.area GSFINAL (CODE)
                                    677 	.area GSINIT  (CODE)
                                    678 ;	../lib/uart.c:12: UINT8 __xdata gu8BNFCnt = 0;
      00043A 90 01 2A         [24]  679 	mov	dptr,#_gu8BNFCnt
      00043D E4               [12]  680 	clr	a
      00043E F0               [24]  681 	movx	@dptr,a
                                    682 ;	../lib/uart.c:13: UINT8 __xdata gu8BFCnt = 0;
      00043F 90 01 2B         [24]  683 	mov	dptr,#_gu8BFCnt
      000442 F0               [24]  684 	movx	@dptr,a
                                    685 ;	../lib/uart.c:14: UINT8 __xdata gu8BNECnt = 0;
      000443 90 01 2C         [24]  686 	mov	dptr,#_gu8BNECnt
      000446 F0               [24]  687 	movx	@dptr,a
                                    688 ;	../lib/uart.c:15: UINT8 __xdata gu8BECnt = 0;
      000447 90 01 2D         [24]  689 	mov	dptr,#_gu8BECnt
      00044A F0               [24]  690 	movx	@dptr,a
                                    691 ;	../lib/uart.c:17: const char __xdata  gpc2B2MC[] = {// 2Bits to Manchester Code
      00044B 90 01 2E         [24]  692 	mov	dptr,#_gpc2B2MC
      00044E 74 0A            [12]  693 	mov	a,#0x0a
      000450 F0               [24]  694 	movx	@dptr,a
      000451 90 01 2F         [24]  695 	mov	dptr,#(_gpc2B2MC + 0x0001)
      000454 14               [12]  696 	dec	a
      000455 F0               [24]  697 	movx	@dptr,a
      000456 90 01 30         [24]  698 	mov	dptr,#(_gpc2B2MC + 0x0002)
      000459 74 06            [12]  699 	mov	a,#0x06
      00045B F0               [24]  700 	movx	@dptr,a
      00045C 90 01 31         [24]  701 	mov	dptr,#(_gpc2B2MC + 0x0003)
      00045F 14               [12]  702 	dec	a
      000460 F0               [24]  703 	movx	@dptr,a
                                    704 ;	../lib/uart.c:24: const char __xdata  gpcMC22B[16] = {// manchester code to 2Bits
      000461 90 01 32         [24]  705 	mov	dptr,#_gpcMC22B
      000464 74 0F            [12]  706 	mov	a,#0x0f
      000466 F0               [24]  707 	movx	@dptr,a
      000467 90 01 33         [24]  708 	mov	dptr,#(_gpcMC22B + 0x0001)
      00046A F0               [24]  709 	movx	@dptr,a
      00046B 90 01 34         [24]  710 	mov	dptr,#(_gpcMC22B + 0x0002)
      00046E F0               [24]  711 	movx	@dptr,a
      00046F 90 01 35         [24]  712 	mov	dptr,#(_gpcMC22B + 0x0003)
      000472 F0               [24]  713 	movx	@dptr,a
      000473 90 01 36         [24]  714 	mov	dptr,#(_gpcMC22B + 0x0004)
      000476 F0               [24]  715 	movx	@dptr,a
      000477 90 01 37         [24]  716 	mov	dptr,#(_gpcMC22B + 0x0005)
      00047A 74 03            [12]  717 	mov	a,#0x03
      00047C F0               [24]  718 	movx	@dptr,a
      00047D 90 01 38         [24]  719 	mov	dptr,#(_gpcMC22B + 0x0006)
      000480 14               [12]  720 	dec	a
      000481 F0               [24]  721 	movx	@dptr,a
      000482 90 01 39         [24]  722 	mov	dptr,#(_gpcMC22B + 0x0007)
      000485 74 0F            [12]  723 	mov	a,#0x0f
      000487 F0               [24]  724 	movx	@dptr,a
      000488 90 01 3A         [24]  725 	mov	dptr,#(_gpcMC22B + 0x0008)
      00048B F0               [24]  726 	movx	@dptr,a
      00048C 90 01 3B         [24]  727 	mov	dptr,#(_gpcMC22B + 0x0009)
      00048F 74 01            [12]  728 	mov	a,#0x01
      000491 F0               [24]  729 	movx	@dptr,a
      000492 90 01 3C         [24]  730 	mov	dptr,#(_gpcMC22B + 0x000a)
      000495 E4               [12]  731 	clr	a
      000496 F0               [24]  732 	movx	@dptr,a
      000497 90 01 3D         [24]  733 	mov	dptr,#(_gpcMC22B + 0x000b)
      00049A 74 0F            [12]  734 	mov	a,#0x0f
      00049C F0               [24]  735 	movx	@dptr,a
      00049D 90 01 3E         [24]  736 	mov	dptr,#(_gpcMC22B + 0x000c)
      0004A0 F0               [24]  737 	movx	@dptr,a
      0004A1 90 01 3F         [24]  738 	mov	dptr,#(_gpcMC22B + 0x000d)
      0004A4 F0               [24]  739 	movx	@dptr,a
      0004A5 90 01 40         [24]  740 	mov	dptr,#(_gpcMC22B + 0x000e)
      0004A8 F0               [24]  741 	movx	@dptr,a
      0004A9 90 01 41         [24]  742 	mov	dptr,#(_gpcMC22B + 0x000f)
      0004AC F0               [24]  743 	movx	@dptr,a
                                    744 ;	../lib/uart.c:363: uint8_t __xdata pu8UartRx0Buf[UART0_RX_BUFF_SIZE] = {0};
      0004AD 90 01 42         [24]  745 	mov	dptr,#_pu8UartRx0Buf
      0004B0 E4               [12]  746 	clr	a
      0004B1 F0               [24]  747 	movx	@dptr,a
                                    748 ;	../lib/uart.c:364: uint8_t __xdata pu8UartTx0Buf[UART0_TX_BUFF_SIZE] = {0};
      0004B2 90 01 52         [24]  749 	mov	dptr,#_pu8UartTx0Buf
      0004B5 F0               [24]  750 	movx	@dptr,a
                                    751 ;	../lib/uart.c:365: uint8_t __xdata pu8UartRx1Buf[UART1_RX_BUFF_SIZE] = {0};
      0004B6 90 01 62         [24]  752 	mov	dptr,#_pu8UartRx1Buf
      0004B9 F0               [24]  753 	movx	@dptr,a
                                    754 ;	../lib/uart.c:367: uint8_t __xdata pu8UartTx1Buf[UART1_TX_BUFF_SIZE] = {0};//  10마이크로초보다 큰 듯.. --> 비슷함..ㅠㅠ
      0004BA 90 01 72         [24]  755 	mov	dptr,#_pu8UartTx1Buf
      0004BD F0               [24]  756 	movx	@dptr,a
                                    757 ;	../lib/uart.c:369: uint8_t __xdata gu8Rx0Size = 0;  // Rx0버퍼에 쌓여있는, 받은 데이타 크기
      0004BE 90 01 82         [24]  758 	mov	dptr,#_gu8Rx0Size
      0004C1 F0               [24]  759 	movx	@dptr,a
                                    760 ;	../lib/uart.c:370: uint8_t __xdata gu8Rx0RIdx = 0; // Rx0버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
      0004C2 90 01 83         [24]  761 	mov	dptr,#_gu8Rx0RIdx
      0004C5 F0               [24]  762 	movx	@dptr,a
                                    763 ;	../lib/uart.c:371: uint8_t __xdata gu8Rx0WIdx = 0; // Rx0버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
      0004C6 90 01 84         [24]  764 	mov	dptr,#_gu8Rx0WIdx
      0004C9 F0               [24]  765 	movx	@dptr,a
                                    766 ;	../lib/uart.c:373: uint8_t __xdata gu8Tx0Size = 0;  // Tx0버퍼에 쌓여있는, 보낼 데이타 크기
      0004CA 90 01 85         [24]  767 	mov	dptr,#_gu8Tx0Size
      0004CD F0               [24]  768 	movx	@dptr,a
                                    769 ;	../lib/uart.c:374: uint8_t __xdata gu8Tx0RIdx = 0; // Tx0버퍼에서 읽기 인덱스, 이부문을 읽어서 SBUF에서 써서 보내기
      0004CE 90 01 86         [24]  770 	mov	dptr,#_gu8Tx0RIdx
      0004D1 F0               [24]  771 	movx	@dptr,a
                                    772 ;	../lib/uart.c:375: uint8_t __xdata gu8Tx0WIdx = 0; // Tx0버퍼에서 쓰기 인덱스, 이부문에 써서 인터럽트 함수에서 알아서 보내도록..
      0004D2 90 01 87         [24]  773 	mov	dptr,#_gu8Tx0WIdx
      0004D5 F0               [24]  774 	movx	@dptr,a
                                    775 ;	../lib/uart.c:377: uint8_t __xdata gu8Rx1Size = 0;  // Rx1버퍼에 쌓여있는, 받은 데이타 크기
      0004D6 90 01 88         [24]  776 	mov	dptr,#_gu8Rx1Size
      0004D9 F0               [24]  777 	movx	@dptr,a
                                    778 ;	../lib/uart.c:378: uint8_t __xdata gu8Rx1RIdx = 0; // Rx1버퍼에서 읽기 인덱스, 이부문부터 쌓여진 데이타를 읽어서 처리
      0004DA 90 01 89         [24]  779 	mov	dptr,#_gu8Rx1RIdx
      0004DD F0               [24]  780 	movx	@dptr,a
                                    781 ;	../lib/uart.c:379: uint8_t __xdata gu8Rx1WIdx = 0; // Rx1버퍼에서 쓰기 인덱스, SBUF로 수신된 데이타를 이부문에 써서 쌓아둠
      0004DE 90 01 8A         [24]  782 	mov	dptr,#_gu8Rx1WIdx
      0004E1 F0               [24]  783 	movx	@dptr,a
                                    784 ;	../lib/uart.c:381: uint8_t __xdata gu8Tx1Size = 0; // Tx1버퍼에 쌓여있는, 보낼 데이타 크기
      0004E2 90 01 8B         [24]  785 	mov	dptr,#_gu8Tx1Size
      0004E5 F0               [24]  786 	movx	@dptr,a
                                    787 ;	../lib/uart.c:382: uint8_t __xdata gu8Tx1RIdx = 0;
      0004E6 90 01 8C         [24]  788 	mov	dptr,#_gu8Tx1RIdx
      0004E9 F0               [24]  789 	movx	@dptr,a
                                    790 ;	../lib/uart.c:383: uint8_t __xdata gu8Tx1WIdx = 0;
      0004EA 90 01 8D         [24]  791 	mov	dptr,#_gu8Tx1WIdx
      0004ED F0               [24]  792 	movx	@dptr,a
                                    793 ;	../lib/uart.c:388: uint8_t __xdata gu8Uart0RCnt = 0;
      0004EE 90 01 8E         [24]  794 	mov	dptr,#_gu8Uart0RCnt
      0004F1 F0               [24]  795 	movx	@dptr,a
                                    796 ;	../lib/uart.c:389: uint8_t __xdata gu8Uart0TCnt = 0;
      0004F2 90 01 8F         [24]  797 	mov	dptr,#_gu8Uart0TCnt
      0004F5 F0               [24]  798 	movx	@dptr,a
                                    799 ;	../lib/uart.c:390: uint8_t __xdata gu8Uart1RCnt = 0;
      0004F6 90 01 90         [24]  800 	mov	dptr,#_gu8Uart1RCnt
      0004F9 F0               [24]  801 	movx	@dptr,a
                                    802 ;	../lib/uart.c:391: uint8_t __xdata gu8Uart1TCnt = 0;
      0004FA 90 01 91         [24]  803 	mov	dptr,#_gu8Uart1TCnt
      0004FD F0               [24]  804 	movx	@dptr,a
                                    805 ;--------------------------------------------------------
                                    806 ; Home
                                    807 ;--------------------------------------------------------
                                    808 	.area HOME    (CODE)
                                    809 	.area HOME    (CODE)
                                    810 ;--------------------------------------------------------
                                    811 ; code
                                    812 ;--------------------------------------------------------
                                    813 	.area CSEG    (CODE)
                                    814 ;------------------------------------------------------------
                                    815 ;Allocation info for local variables in function 'InitialUART0_Timer1'
                                    816 ;------------------------------------------------------------
                                    817 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    818 ;------------------------------------------------------------
                                    819 ;	../lib/uart.c:46: void InitialUART0_Timer1(UINT32 u32Baudrate)    //T1M = 1, SMOD = 1
                                    820 ;	-----------------------------------------
                                    821 ;	 function InitialUART0_Timer1
                                    822 ;	-----------------------------------------
      002BE4                        823 _InitialUART0_Timer1:
                           000007   824 	ar7 = 0x07
                           000006   825 	ar6 = 0x06
                           000005   826 	ar5 = 0x05
                           000004   827 	ar4 = 0x04
                           000003   828 	ar3 = 0x03
                           000002   829 	ar2 = 0x02
                           000001   830 	ar1 = 0x01
                           000000   831 	ar0 = 0x00
      002BE4 AC 82            [24]  832 	mov	r4,dpl
      002BE6 AD 83            [24]  833 	mov	r5,dph
      002BE8 AE F0            [24]  834 	mov	r6,b
      002BEA FF               [12]  835 	mov	r7,a
                                    836 ;	../lib/uart.c:48: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002BEB 53 B1 BF         [24]  837 	anl	_P0M1,#0xbf
      002BEE 53 B2 BF         [24]  838 	anl	_P0M2,#0xbf
                                    839 ;	../lib/uart.c:49: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002BF1 53 B1 7F         [24]  840 	anl	_P0M1,#0x7f
      002BF4 53 B2 7F         [24]  841 	anl	_P0M2,#0x7f
                                    842 ;	../lib/uart.c:51: SCON = 0x50;     	//UART0 Mode1,REN=1,TI=1
      002BF7 75 98 50         [24]  843 	mov	_SCON,#0x50
                                    844 ;	../lib/uart.c:52: TMOD |= 0x20;    	//Timer1 Mode1
      002BFA 43 89 20         [24]  845 	orl	_TMOD,#0x20
                                    846 ;	../lib/uart.c:54: set_SMOD;        	//UART0 Double Rate Enable
      002BFD 43 87 80         [24]  847 	orl	_PCON,#0x80
                                    848 ;	../lib/uart.c:55: set_T1M;
      002C00 43 8E 10         [24]  849 	orl	_CKCON,#0x10
                                    850 ;	../lib/uart.c:56: clr_BRCK;        	//Serial port 0 baud rate clock source = Timer1
      002C03 53 C4 DF         [24]  851 	anl	_T3CON,#0xdf
                                    852 ;	../lib/uart.c:62: TH1 = 256 - (1037500/u32Baudrate);         		     /*16.6 MHz */
      002C06 8C 19            [24]  853 	mov	__divulong_PARM_2,r4
      002C08 8D 1A            [24]  854 	mov	(__divulong_PARM_2 + 1),r5
      002C0A 8E 1B            [24]  855 	mov	(__divulong_PARM_2 + 2),r6
      002C0C 8F 1C            [24]  856 	mov	(__divulong_PARM_2 + 3),r7
      002C0E 90 D4 BC         [24]  857 	mov	dptr,#0xd4bc
      002C11 75 F0 0F         [24]  858 	mov	b,#0x0f
      002C14 E4               [12]  859 	clr	a
      002C15 12 35 E1         [24]  860 	lcall	__divulong
      002C18 AC 82            [24]  861 	mov	r4,dpl
      002C1A C3               [12]  862 	clr	c
      002C1B E4               [12]  863 	clr	a
      002C1C 9C               [12]  864 	subb	a,r4
      002C1D F5 8D            [12]  865 	mov	_TH1,a
                                    866 ;	../lib/uart.c:64: set_TR1;
                                    867 ;	assignBit
      002C1F D2 8E            [12]  868 	setb	_TR1
                                    869 ;	../lib/uart.c:65: set_TI;						//For printf function must setting TI = 1
                                    870 ;	assignBit
      002C21 D2 99            [12]  871 	setb	_TI
                                    872 ;	../lib/uart.c:66: }
      002C23 22               [24]  873 	ret
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'InitialUART0_Timer3'
                                    876 ;------------------------------------------------------------
                                    877 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    878 ;------------------------------------------------------------
                                    879 ;	../lib/uart.c:69: void InitialUART0_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    880 ;	-----------------------------------------
                                    881 ;	 function InitialUART0_Timer3
                                    882 ;	-----------------------------------------
      002C24                        883 _InitialUART0_Timer3:
      002C24 AC 82            [24]  884 	mov	r4,dpl
      002C26 AD 83            [24]  885 	mov	r5,dph
      002C28 AE F0            [24]  886 	mov	r6,b
      002C2A FF               [12]  887 	mov	r7,a
                                    888 ;	../lib/uart.c:71: P06_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002C2B 53 B1 BF         [24]  889 	anl	_P0M1,#0xbf
      002C2E 53 B2 BF         [24]  890 	anl	_P0M2,#0xbf
                                    891 ;	../lib/uart.c:72: P07_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit	
      002C31 53 B1 7F         [24]  892 	anl	_P0M1,#0x7f
      002C34 53 B2 7F         [24]  893 	anl	_P0M2,#0x7f
                                    894 ;	../lib/uart.c:74: SCON = 0x50;     //UART0 Mode1,REN=1,TI=1
      002C37 75 98 50         [24]  895 	mov	_SCON,#0x50
                                    896 ;	../lib/uart.c:75: set_SMOD;        //UART0 Double Rate Enable
      002C3A 43 87 80         [24]  897 	orl	_PCON,#0x80
                                    898 ;	../lib/uart.c:76: T3CON &= 0xF8;   //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
      002C3D 53 C4 F8         [24]  899 	anl	_T3CON,#0xf8
                                    900 ;	../lib/uart.c:77: set_BRCK;        //UART0 baud rate clock source = Timer3
      002C40 43 C4 20         [24]  901 	orl	_T3CON,#0x20
                                    902 ;	../lib/uart.c:84: RH3    = HIBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
      002C43 8C 19            [24]  903 	mov	__divulong_PARM_2,r4
      002C45 8D 1A            [24]  904 	mov	(__divulong_PARM_2 + 1),r5
      002C47 8E 1B            [24]  905 	mov	(__divulong_PARM_2 + 2),r6
      002C49 8F 1C            [24]  906 	mov	(__divulong_PARM_2 + 3),r7
      002C4B 90 D4 BC         [24]  907 	mov	dptr,#0xd4bc
      002C4E 75 F0 0F         [24]  908 	mov	b,#0x0f
      002C51 E4               [12]  909 	clr	a
      002C52 12 35 E1         [24]  910 	lcall	__divulong
      002C55 AC 82            [24]  911 	mov	r4,dpl
      002C57 AD 83            [24]  912 	mov	r5,dph
      002C59 AE F0            [24]  913 	mov	r6,b
      002C5B FF               [12]  914 	mov	r7,a
      002C5C E4               [12]  915 	clr	a
      002C5D C3               [12]  916 	clr	c
      002C5E 9C               [12]  917 	subb	a,r4
      002C5F E4               [12]  918 	clr	a
      002C60 9D               [12]  919 	subb	a,r5
      002C61 F9               [12]  920 	mov	r1,a
      002C62 74 01            [12]  921 	mov	a,#0x01
      002C64 9E               [12]  922 	subb	a,r6
      002C65 E4               [12]  923 	clr	a
      002C66 9F               [12]  924 	subb	a,r7
      002C67 89 C6            [24]  925 	mov	_RH3,r1
                                    926 ;	../lib/uart.c:85: RL3    = LOBYTE(65536 - (1037500/u32Baudrate)); 			/*16.6 MHz */
      002C69 C3               [12]  927 	clr	c
      002C6A E4               [12]  928 	clr	a
      002C6B 9C               [12]  929 	subb	a,r4
      002C6C FC               [12]  930 	mov	r4,a
      002C6D 8C C5            [24]  931 	mov	_RL3,r4
                                    932 ;	../lib/uart.c:87: set_TR3;         //Trigger Timer3
      002C6F 43 C4 08         [24]  933 	orl	_T3CON,#0x08
                                    934 ;	../lib/uart.c:88: set_TI;					 //For printf function must setting TI = 1
                                    935 ;	assignBit
      002C72 D2 99            [12]  936 	setb	_TI
                                    937 ;	../lib/uart.c:89: }
      002C74 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'InitialUART1_Timer3'
                                    941 ;------------------------------------------------------------
                                    942 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    943 ;------------------------------------------------------------
                                    944 ;	../lib/uart.c:91: void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    945 ;	-----------------------------------------
                                    946 ;	 function InitialUART1_Timer3
                                    947 ;	-----------------------------------------
      002C75                        948 _InitialUART1_Timer3:
      002C75 AC 82            [24]  949 	mov	r4,dpl
      002C77 AD 83            [24]  950 	mov	r5,dph
      002C79 AE F0            [24]  951 	mov	r6,b
      002C7B FF               [12]  952 	mov	r7,a
                                    953 ;	../lib/uart.c:93: P02_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002C7C 53 B1 FB         [24]  954 	anl	_P0M1,#0xfb
      002C7F 53 B2 FB         [24]  955 	anl	_P0M2,#0xfb
                                    956 ;	../lib/uart.c:94: P16_Quasi_Mode;		//Setting UART pin as Quasi mode for transmit
      002C82 53 B3 BF         [24]  957 	anl	_P1M1,#0xbf
      002C85 53 B4 BF         [24]  958 	anl	_P1M2,#0xbf
                                    959 ;	../lib/uart.c:97: SCON_1 = 0x58;   	//UART1 Mode1,REN_1=1,TI_1=1 TB8=1
      002C88 75 F8 58         [24]  960 	mov	_SCON_1,#0x58
                                    961 ;	../lib/uart.c:98: T3CON = 0x08;   	//T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
      002C8B 75 C4 08         [24]  962 	mov	_T3CON,#0x08
                                    963 ;	../lib/uart.c:99: clr_BRCK;
      002C8E 53 C4 DF         [24]  964 	anl	_T3CON,#0xdf
                                    965 ;	../lib/uart.c:106: RH3    = HIBYTE(65536 - (1037500/u32Baudrate));  			/*16.6 MHz */
      002C91 8C 19            [24]  966 	mov	__divulong_PARM_2,r4
      002C93 8D 1A            [24]  967 	mov	(__divulong_PARM_2 + 1),r5
      002C95 8E 1B            [24]  968 	mov	(__divulong_PARM_2 + 2),r6
      002C97 8F 1C            [24]  969 	mov	(__divulong_PARM_2 + 3),r7
      002C99 90 D4 BC         [24]  970 	mov	dptr,#0xd4bc
      002C9C 75 F0 0F         [24]  971 	mov	b,#0x0f
      002C9F E4               [12]  972 	clr	a
      002CA0 12 35 E1         [24]  973 	lcall	__divulong
      002CA3 AC 82            [24]  974 	mov	r4,dpl
      002CA5 AD 83            [24]  975 	mov	r5,dph
      002CA7 AE F0            [24]  976 	mov	r6,b
      002CA9 FF               [12]  977 	mov	r7,a
      002CAA E4               [12]  978 	clr	a
      002CAB C3               [12]  979 	clr	c
      002CAC 9C               [12]  980 	subb	a,r4
      002CAD E4               [12]  981 	clr	a
      002CAE 9D               [12]  982 	subb	a,r5
      002CAF F9               [12]  983 	mov	r1,a
      002CB0 74 01            [12]  984 	mov	a,#0x01
      002CB2 9E               [12]  985 	subb	a,r6
      002CB3 E4               [12]  986 	clr	a
      002CB4 9F               [12]  987 	subb	a,r7
      002CB5 89 C6            [24]  988 	mov	_RH3,r1
                                    989 ;	../lib/uart.c:107: RL3    = LOBYTE(65536 - (1037500/u32Baudrate));				/*16.6 MHz */
      002CB7 C3               [12]  990 	clr	c
      002CB8 E4               [12]  991 	clr	a
      002CB9 9C               [12]  992 	subb	a,r4
      002CBA FC               [12]  993 	mov	r4,a
      002CBB 8C C5            [24]  994 	mov	_RL3,r4
                                    995 ;	../lib/uart.c:109: set_TR3;         //Trigger Timer3
      002CBD 43 C4 08         [24]  996 	orl	_T3CON,#0x08
                                    997 ;	../lib/uart.c:110: }
      002CC0 22               [24]  998 	ret
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'set_linefi_uplink_speed'
                                   1001 ;------------------------------------------------------------
                                   1002 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                   1003 ;------------------------------------------------------------
                                   1004 ;	../lib/uart.c:112: void set_linefi_uplink_speed(UINT32 u32Baudrate)
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function set_linefi_uplink_speed
                                   1007 ;	-----------------------------------------
      002CC1                       1008 _set_linefi_uplink_speed:
                                   1009 ;	../lib/uart.c:114: return InitialUART1_Timer3(u32Baudrate);
                                   1010 ;	../lib/uart.c:115: }
      002CC1 02 2C 75         [24] 1011 	ljmp	_InitialUART1_Timer3
                                   1012 ;------------------------------------------------------------
                                   1013 ;Allocation info for local variables in function 'putchar'
                                   1014 ;------------------------------------------------------------
                                   1015 ;c                         Allocated to registers r6 r7 
                                   1016 ;------------------------------------------------------------
                                   1017 ;	../lib/uart.c:118: int putchar (int c) 
                                   1018 ;	-----------------------------------------
                                   1019 ;	 function putchar
                                   1020 ;	-----------------------------------------
      002CC4                       1021 _putchar:
      002CC4 AE 82            [24] 1022 	mov	r6,dpl
                                   1023 ;	../lib/uart.c:120: if (gu8UART == 0)  {
      002CC6 E5 11            [12] 1024 	mov	a,_gu8UART
      002CC8 70 07            [24] 1025 	jnz	00102$
                                   1026 ;	../lib/uart.c:121: putchar_uart0(c);
      002CCA 8E 82            [24] 1027 	mov	dpl,r6
      002CCC 12 2F D7         [24] 1028 	lcall	_putchar_uart0
      002CCF 80 05            [24] 1029 	sjmp	00103$
      002CD1                       1030 00102$:
                                   1031 ;	../lib/uart.c:124: putchar_uart1(c);
      002CD1 8E 82            [24] 1032 	mov	dpl,r6
      002CD3 12 30 10         [24] 1033 	lcall	_putchar_uart1
      002CD6                       1034 00103$:
                                   1035 ;	../lib/uart.c:126: return 0;
      002CD6 90 00 00         [24] 1036 	mov	dptr,#0x0000
                                   1037 ;	../lib/uart.c:127: }
      002CD9 22               [24] 1038 	ret
                                   1039 ;------------------------------------------------------------
                                   1040 ;Allocation info for local variables in function 'uart_setup'
                                   1041 ;------------------------------------------------------------
                                   1042 ;	../lib/uart.c:406: void uart_setup() 
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function uart_setup
                                   1045 ;	-----------------------------------------
      002CDA                       1046 _uart_setup:
                                   1047 ;	../lib/uart.c:411: InitialUART0_Timer1(115200);
      002CDA 90 C2 00         [24] 1048 	mov	dptr,#0xc200
      002CDD 75 F0 01         [24] 1049 	mov	b,#0x01
      002CE0 E4               [12] 1050 	clr	a
      002CE1 12 2B E4         [24] 1051 	lcall	_InitialUART0_Timer1
                                   1052 ;	../lib/uart.c:412: InitialUART1_Timer3(115200);
      002CE4 90 C2 00         [24] 1053 	mov	dptr,#0xc200
      002CE7 75 F0 01         [24] 1054 	mov	b,#0x01
      002CEA E4               [12] 1055 	clr	a
      002CEB 12 2C 75         [24] 1056 	lcall	_InitialUART1_Timer3
                                   1057 ;	../lib/uart.c:414: set_ES;
                                   1058 ;	assignBit
      002CEE D2 AC            [12] 1059 	setb	_ES
                                   1060 ;	../lib/uart.c:415: set_ES_1;
      002CF0 43 9C 01         [24] 1061 	orl	_EIE1,#0x01
                                   1062 ;	../lib/uart.c:417: set_EA;
                                   1063 ;	assignBit
      002CF3 D2 AF            [12] 1064 	setb	_EA
                                   1065 ;	../lib/uart.c:418: }
      002CF5 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'Uart0Tx_ISR'
                                   1069 ;------------------------------------------------------------
                                   1070 ;i                         Allocated to registers r5 r6 
                                   1071 ;------------------------------------------------------------
                                   1072 ;	../lib/uart.c:420: void Uart0Tx_ISR()
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function Uart0Tx_ISR
                                   1075 ;	-----------------------------------------
      002CF6                       1076 _Uart0Tx_ISR:
                                   1077 ;	../lib/uart.c:423: clr_TI;	 // clear, putchar_uart0()에서 직접 불린 상태면 gu8Tx0Size==1인데, 이 경우는 무의미 할 수도 있음, 
                                   1078 ;	assignBit
      002CF6 C2 99            [12] 1079 	clr	_TI
                                   1080 ;	../lib/uart.c:424: if (gu8Tx0Size == 0) {
      002CF8 90 01 85         [24] 1081 	mov	dptr,#_gu8Tx0Size
      002CFB E0               [24] 1082 	movx	a,@dptr
      002CFC FF               [12] 1083 	mov	r7,a
      002CFD E0               [24] 1084 	movx	a,@dptr
      002CFE 70 01            [24] 1085 	jnz	00102$
                                   1086 ;	../lib/uart.c:425: return;
      002D00 22               [24] 1087 	ret
      002D01                       1088 00102$:
                                   1089 ;	../lib/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
      002D01 7D 64            [12] 1090 	mov	r5,#0x64
      002D03 7E 00            [12] 1091 	mov	r6,#0x00
      002D05                       1092 00108$:
                                   1093 ;	../lib/uart.c:432: nop; nop; nop; nop;
      002D05 00               [12] 1094 	NOP
      002D06 00               [12] 1095 	NOP
      002D07 00               [12] 1096 	NOP
      002D08 00               [12] 1097 	NOP
      002D09 ED               [12] 1098 	mov	a,r5
      002D0A 24 FF            [12] 1099 	add	a,#0xff
      002D0C FB               [12] 1100 	mov	r3,a
      002D0D EE               [12] 1101 	mov	a,r6
      002D0E 34 FF            [12] 1102 	addc	a,#0xff
      002D10 FC               [12] 1103 	mov	r4,a
      002D11 8B 05            [24] 1104 	mov	ar5,r3
      002D13 8C 06            [24] 1105 	mov	ar6,r4
                                   1106 ;	../lib/uart.c:431: for (i = 0; i< UART0_TX_GAP;i++) {
      002D15 EB               [12] 1107 	mov	a,r3
      002D16 4C               [12] 1108 	orl	a,r4
      002D17 70 EC            [24] 1109 	jnz	00108$
                                   1110 ;	../lib/uart.c:435: SBUF = pu8UartTx0Buf[gu8Tx0RIdx++];
      002D19 90 01 86         [24] 1111 	mov	dptr,#_gu8Tx0RIdx
      002D1C E0               [24] 1112 	movx	a,@dptr
      002D1D FE               [12] 1113 	mov	r6,a
      002D1E 04               [12] 1114 	inc	a
      002D1F F0               [24] 1115 	movx	@dptr,a
      002D20 EE               [12] 1116 	mov	a,r6
      002D21 24 52            [12] 1117 	add	a,#_pu8UartTx0Buf
      002D23 F5 82            [12] 1118 	mov	dpl,a
      002D25 E4               [12] 1119 	clr	a
      002D26 34 01            [12] 1120 	addc	a,#(_pu8UartTx0Buf >> 8)
      002D28 F5 83            [12] 1121 	mov	dph,a
      002D2A E0               [24] 1122 	movx	a,@dptr
      002D2B F5 99            [12] 1123 	mov	_SBUF,a
                                   1124 ;	../lib/uart.c:436: gu8Tx0Size--;
      002D2D EF               [12] 1125 	mov	a,r7
      002D2E 14               [12] 1126 	dec	a
      002D2F 90 01 85         [24] 1127 	mov	dptr,#_gu8Tx0Size
      002D32 F0               [24] 1128 	movx	@dptr,a
                                   1129 ;	../lib/uart.c:437: if (gu8Tx0RIdx == UART0_TX_BUFF_SIZE) {
      002D33 90 01 86         [24] 1130 	mov	dptr,#_gu8Tx0RIdx
      002D36 E0               [24] 1131 	movx	a,@dptr
      002D37 FF               [12] 1132 	mov	r7,a
      002D38 BF 10 05         [24] 1133 	cjne	r7,#0x10,00109$
                                   1134 ;	../lib/uart.c:438: gu8Tx0RIdx = 0;
      002D3B 90 01 86         [24] 1135 	mov	dptr,#_gu8Tx0RIdx
      002D3E E4               [12] 1136 	clr	a
      002D3F F0               [24] 1137 	movx	@dptr,a
      002D40                       1138 00109$:
                                   1139 ;	../lib/uart.c:440: }
      002D40 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'SerialPort0_ISR'
                                   1143 ;------------------------------------------------------------
                                   1144 ;	../lib/uart.c:455: void SerialPort0_ISR(void) interrupt(4) 
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function SerialPort0_ISR
                                   1147 ;	-----------------------------------------
      002D41                       1148 _SerialPort0_ISR:
                           00000F  1149 	ar7 = 0x0f
                           00000E  1150 	ar6 = 0x0e
                           00000D  1151 	ar5 = 0x0d
                           00000C  1152 	ar4 = 0x0c
                           00000B  1153 	ar3 = 0x0b
                           00000A  1154 	ar2 = 0x0a
                           000009  1155 	ar1 = 0x09
                           000008  1156 	ar0 = 0x08
      002D41 C0 21            [24] 1157 	push	bits
      002D43 C0 E0            [24] 1158 	push	acc
      002D45 C0 F0            [24] 1159 	push	b
      002D47 C0 82            [24] 1160 	push	dpl
      002D49 C0 83            [24] 1161 	push	dph
      002D4B C0 07            [24] 1162 	push	(0+7)
      002D4D C0 06            [24] 1163 	push	(0+6)
      002D4F C0 05            [24] 1164 	push	(0+5)
      002D51 C0 04            [24] 1165 	push	(0+4)
      002D53 C0 03            [24] 1166 	push	(0+3)
      002D55 C0 02            [24] 1167 	push	(0+2)
      002D57 C0 01            [24] 1168 	push	(0+1)
      002D59 C0 00            [24] 1169 	push	(0+0)
      002D5B C0 D0            [24] 1170 	push	psw
      002D5D 75 D0 08         [24] 1171 	mov	psw,#0x08
                                   1172 ;	../lib/uart.c:457: if (RI == 1) {  /* if reception occur */
      002D60 30 98 3B         [24] 1173 	jnb	_RI,00106$
                                   1174 ;	../lib/uart.c:458: gu8Uart0RCnt++;
      002D63 90 01 8E         [24] 1175 	mov	dptr,#_gu8Uart0RCnt
      002D66 E0               [24] 1176 	movx	a,@dptr
      002D67 24 01            [12] 1177 	add	a,#0x01
      002D69 F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	../lib/uart.c:459: if (gu8Rx0Size < UART0_RX_BUFF_SIZE) {
      002D6A 90 01 82         [24] 1180 	mov	dptr,#_gu8Rx0Size
      002D6D E0               [24] 1181 	movx	a,@dptr
      002D6E FF               [12] 1182 	mov	r7,a
      002D6F BF 10 00         [24] 1183 	cjne	r7,#0x10,00128$
      002D72                       1184 00128$:
      002D72 50 28            [24] 1185 	jnc	00104$
                                   1186 ;	../lib/uart.c:460: pu8UartRx0Buf[gu8Rx0WIdx++] = SBUF;
      002D74 90 01 84         [24] 1187 	mov	dptr,#_gu8Rx0WIdx
      002D77 E0               [24] 1188 	movx	a,@dptr
      002D78 FF               [12] 1189 	mov	r7,a
      002D79 04               [12] 1190 	inc	a
      002D7A F0               [24] 1191 	movx	@dptr,a
      002D7B EF               [12] 1192 	mov	a,r7
      002D7C 24 42            [12] 1193 	add	a,#_pu8UartRx0Buf
      002D7E F5 82            [12] 1194 	mov	dpl,a
      002D80 E4               [12] 1195 	clr	a
      002D81 34 01            [12] 1196 	addc	a,#(_pu8UartRx0Buf >> 8)
      002D83 F5 83            [12] 1197 	mov	dph,a
      002D85 E5 99            [12] 1198 	mov	a,_SBUF
      002D87 F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	../lib/uart.c:461: gu8Rx0Size++;
      002D88 90 01 82         [24] 1201 	mov	dptr,#_gu8Rx0Size
      002D8B E0               [24] 1202 	movx	a,@dptr
      002D8C 24 01            [12] 1203 	add	a,#0x01
      002D8E F0               [24] 1204 	movx	@dptr,a
                                   1205 ;	../lib/uart.c:462: if (gu8Rx0WIdx == UART0_RX_BUFF_SIZE) {
      002D8F 90 01 84         [24] 1206 	mov	dptr,#_gu8Rx0WIdx
      002D92 E0               [24] 1207 	movx	a,@dptr
      002D93 FF               [12] 1208 	mov	r7,a
      002D94 BF 10 05         [24] 1209 	cjne	r7,#0x10,00104$
                                   1210 ;	../lib/uart.c:463: gu8Rx0WIdx = 0;
      002D97 90 01 84         [24] 1211 	mov	dptr,#_gu8Rx0WIdx
      002D9A E4               [12] 1212 	clr	a
      002D9B F0               [24] 1213 	movx	@dptr,a
      002D9C                       1214 00104$:
                                   1215 ;	../lib/uart.c:469: clr_RI;        /* clear reception flag for next reception */
                                   1216 ;	assignBit
      002D9C C2 98            [12] 1217 	clr	_RI
      002D9E                       1218 00106$:
                                   1219 ;	../lib/uart.c:472: if (TI == 1) {
      002D9E 30 99 10         [24] 1220 	jnb	_TI,00109$
                                   1221 ;	../lib/uart.c:473: gu8Uart0TCnt++;
      002DA1 90 01 8F         [24] 1222 	mov	dptr,#_gu8Uart0TCnt
      002DA4 E0               [24] 1223 	movx	a,@dptr
      002DA5 24 01            [12] 1224 	add	a,#0x01
      002DA7 F0               [24] 1225 	movx	@dptr,a
                                   1226 ;	../lib/uart.c:474: Uart0Tx_ISR();
      002DA8 75 D0 00         [24] 1227 	mov	psw,#0x00
      002DAB 12 2C F6         [24] 1228 	lcall	_Uart0Tx_ISR
      002DAE 75 D0 08         [24] 1229 	mov	psw,#0x08
      002DB1                       1230 00109$:
                                   1231 ;	../lib/uart.c:476: }
      002DB1 D0 D0            [24] 1232 	pop	psw
      002DB3 D0 00            [24] 1233 	pop	(0+0)
      002DB5 D0 01            [24] 1234 	pop	(0+1)
      002DB7 D0 02            [24] 1235 	pop	(0+2)
      002DB9 D0 03            [24] 1236 	pop	(0+3)
      002DBB D0 04            [24] 1237 	pop	(0+4)
      002DBD D0 05            [24] 1238 	pop	(0+5)
      002DBF D0 06            [24] 1239 	pop	(0+6)
      002DC1 D0 07            [24] 1240 	pop	(0+7)
      002DC3 D0 83            [24] 1241 	pop	dph
      002DC5 D0 82            [24] 1242 	pop	dpl
      002DC7 D0 F0            [24] 1243 	pop	b
      002DC9 D0 E0            [24] 1244 	pop	acc
      002DCB D0 21            [24] 1245 	pop	bits
      002DCD 32               [24] 1246 	reti
                                   1247 ;------------------------------------------------------------
                                   1248 ;Allocation info for local variables in function 'chkchar_uart0'
                                   1249 ;------------------------------------------------------------
                                   1250 ;	../lib/uart.c:479: uint8_t chkchar_uart0()
                                   1251 ;	-----------------------------------------
                                   1252 ;	 function chkchar_uart0
                                   1253 ;	-----------------------------------------
      002DCE                       1254 _chkchar_uart0:
                           000007  1255 	ar7 = 0x07
                           000006  1256 	ar6 = 0x06
                           000005  1257 	ar5 = 0x05
                           000004  1258 	ar4 = 0x04
                           000003  1259 	ar3 = 0x03
                           000002  1260 	ar2 = 0x02
                           000001  1261 	ar1 = 0x01
                           000000  1262 	ar0 = 0x00
                                   1263 ;	../lib/uart.c:484: return gu8Rx0Size;
      002DCE 90 01 82         [24] 1264 	mov	dptr,#_gu8Rx0Size
      002DD1 E0               [24] 1265 	movx	a,@dptr
                                   1266 ;	../lib/uart.c:485: }
      002DD2 F5 82            [12] 1267 	mov	dpl,a
      002DD4 22               [24] 1268 	ret
                                   1269 ;------------------------------------------------------------
                                   1270 ;Allocation info for local variables in function 'getchar_uart0'
                                   1271 ;------------------------------------------------------------
                                   1272 ;apu8Data                  Allocated to registers r5 r6 r7 
                                   1273 ;------------------------------------------------------------
                                   1274 ;	../lib/uart.c:487: uint8_t getchar_uart0(uint8_t * apu8Data)
                                   1275 ;	-----------------------------------------
                                   1276 ;	 function getchar_uart0
                                   1277 ;	-----------------------------------------
      002DD5                       1278 _getchar_uart0:
      002DD5 AD 82            [24] 1279 	mov	r5,dpl
      002DD7 AE 83            [24] 1280 	mov	r6,dph
      002DD9 AF F0            [24] 1281 	mov	r7,b
                                   1282 ;	../lib/uart.c:492: if (gu8Rx0Size == 0) {
      002DDB 90 01 82         [24] 1283 	mov	dptr,#_gu8Rx0Size
      002DDE E0               [24] 1284 	movx	a,@dptr
                                   1285 ;	../lib/uart.c:493: return 0;
      002DDF 70 03            [24] 1286 	jnz	00102$
      002DE1 F5 82            [12] 1287 	mov	dpl,a
      002DE3 22               [24] 1288 	ret
      002DE4                       1289 00102$:
                                   1290 ;	../lib/uart.c:495: clr_ES;
                                   1291 ;	assignBit
      002DE4 C2 AC            [12] 1292 	clr	_ES
                                   1293 ;	../lib/uart.c:496: *apu8Data = pu8UartRx0Buf[gu8Rx0RIdx++];
      002DE6 90 01 83         [24] 1294 	mov	dptr,#_gu8Rx0RIdx
      002DE9 E0               [24] 1295 	movx	a,@dptr
      002DEA FC               [12] 1296 	mov	r4,a
      002DEB 04               [12] 1297 	inc	a
      002DEC F0               [24] 1298 	movx	@dptr,a
      002DED EC               [12] 1299 	mov	a,r4
      002DEE 24 42            [12] 1300 	add	a,#_pu8UartRx0Buf
      002DF0 F5 82            [12] 1301 	mov	dpl,a
      002DF2 E4               [12] 1302 	clr	a
      002DF3 34 01            [12] 1303 	addc	a,#(_pu8UartRx0Buf >> 8)
      002DF5 F5 83            [12] 1304 	mov	dph,a
      002DF7 E0               [24] 1305 	movx	a,@dptr
      002DF8 8D 82            [24] 1306 	mov	dpl,r5
      002DFA 8E 83            [24] 1307 	mov	dph,r6
      002DFC 8F F0            [24] 1308 	mov	b,r7
      002DFE 12 36 89         [24] 1309 	lcall	__gptrput
                                   1310 ;	../lib/uart.c:497: gu8Rx0Size--;
      002E01 90 01 82         [24] 1311 	mov	dptr,#_gu8Rx0Size
      002E04 E0               [24] 1312 	movx	a,@dptr
      002E05 14               [12] 1313 	dec	a
      002E06 F0               [24] 1314 	movx	@dptr,a
                                   1315 ;	../lib/uart.c:498: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
      002E07 90 01 83         [24] 1316 	mov	dptr,#_gu8Rx0RIdx
      002E0A E0               [24] 1317 	movx	a,@dptr
      002E0B FF               [12] 1318 	mov	r7,a
      002E0C BF 10 05         [24] 1319 	cjne	r7,#0x10,00104$
                                   1320 ;	../lib/uart.c:499: gu8Rx0RIdx = 0;
      002E0F 90 01 83         [24] 1321 	mov	dptr,#_gu8Rx0RIdx
      002E12 E4               [12] 1322 	clr	a
      002E13 F0               [24] 1323 	movx	@dptr,a
      002E14                       1324 00104$:
                                   1325 ;	../lib/uart.c:501: set_ES;
                                   1326 ;	assignBit
      002E14 D2 AC            [12] 1327 	setb	_ES
                                   1328 ;	../lib/uart.c:502: return 1;
      002E16 75 82 01         [24] 1329 	mov	dpl,#0x01
                                   1330 ;	../lib/uart.c:503: }
      002E19 22               [24] 1331 	ret
                                   1332 ;------------------------------------------------------------
                                   1333 ;Allocation info for local variables in function 'getstr_uart0'
                                   1334 ;------------------------------------------------------------
                                   1335 ;apu8Data                  Allocated with name '_getstr_uart0_PARM_2'
                                   1336 ;au8Size                   Allocated to registers r7 
                                   1337 ;i                         Allocated to registers r3 
                                   1338 ;------------------------------------------------------------
                                   1339 ;	../lib/uart.c:505: uint8_t getstr_uart0(uint8_t au8Size, uint8_t * apu8Data)
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function getstr_uart0
                                   1342 ;	-----------------------------------------
      002E1A                       1343 _getstr_uart0:
      002E1A AF 82            [24] 1344 	mov	r7,dpl
                                   1345 ;	../lib/uart.c:511: if (gu8Rx0Size == 0) {
      002E1C 90 01 82         [24] 1346 	mov	dptr,#_gu8Rx0Size
      002E1F E0               [24] 1347 	movx	a,@dptr
      002E20 FE               [12] 1348 	mov	r6,a
                                   1349 ;	../lib/uart.c:512: return 0;
      002E21 70 03            [24] 1350 	jnz	00102$
      002E23 F5 82            [12] 1351 	mov	dpl,a
      002E25 22               [24] 1352 	ret
      002E26                       1353 00102$:
                                   1354 ;	../lib/uart.c:515: if (gu8Rx0Size < au8Size) {
      002E26 C3               [12] 1355 	clr	c
      002E27 EE               [12] 1356 	mov	a,r6
      002E28 9F               [12] 1357 	subb	a,r7
      002E29 50 02            [24] 1358 	jnc	00117$
                                   1359 ;	../lib/uart.c:516: au8Size = gu8Rx0Size;
      002E2B 8E 07            [24] 1360 	mov	ar7,r6
                                   1361 ;	../lib/uart.c:518: for (i=0;i<au8Size;i++) {
      002E2D                       1362 00117$:
      002E2D AC 19            [24] 1363 	mov	r4,_getstr_uart0_PARM_2
      002E2F AD 1A            [24] 1364 	mov	r5,(_getstr_uart0_PARM_2 + 1)
      002E31 AE 1B            [24] 1365 	mov	r6,(_getstr_uart0_PARM_2 + 2)
      002E33 7B 00            [12] 1366 	mov	r3,#0x00
      002E35                       1367 00109$:
      002E35 C3               [12] 1368 	clr	c
      002E36 EB               [12] 1369 	mov	a,r3
      002E37 9F               [12] 1370 	subb	a,r7
      002E38 50 30            [24] 1371 	jnc	00107$
                                   1372 ;	../lib/uart.c:519: *apu8Data++ = pu8UartRx0Buf[gu8Rx0RIdx++];
      002E3A 90 01 83         [24] 1373 	mov	dptr,#_gu8Rx0RIdx
      002E3D E0               [24] 1374 	movx	a,@dptr
      002E3E FA               [12] 1375 	mov	r2,a
      002E3F 04               [12] 1376 	inc	a
      002E40 F0               [24] 1377 	movx	@dptr,a
      002E41 EA               [12] 1378 	mov	a,r2
      002E42 24 42            [12] 1379 	add	a,#_pu8UartRx0Buf
      002E44 F5 82            [12] 1380 	mov	dpl,a
      002E46 E4               [12] 1381 	clr	a
      002E47 34 01            [12] 1382 	addc	a,#(_pu8UartRx0Buf >> 8)
      002E49 F5 83            [12] 1383 	mov	dph,a
      002E4B E0               [24] 1384 	movx	a,@dptr
      002E4C 8C 82            [24] 1385 	mov	dpl,r4
      002E4E 8D 83            [24] 1386 	mov	dph,r5
      002E50 8E F0            [24] 1387 	mov	b,r6
      002E52 12 36 89         [24] 1388 	lcall	__gptrput
      002E55 A3               [24] 1389 	inc	dptr
      002E56 AC 82            [24] 1390 	mov	r4,dpl
      002E58 AD 83            [24] 1391 	mov	r5,dph
                                   1392 ;	../lib/uart.c:520: if (gu8Rx0RIdx == UART0_RX_BUFF_SIZE) {
      002E5A 90 01 83         [24] 1393 	mov	dptr,#_gu8Rx0RIdx
      002E5D E0               [24] 1394 	movx	a,@dptr
      002E5E FA               [12] 1395 	mov	r2,a
      002E5F BA 10 05         [24] 1396 	cjne	r2,#0x10,00110$
                                   1397 ;	../lib/uart.c:521: gu8Rx0RIdx = 0;
      002E62 90 01 83         [24] 1398 	mov	dptr,#_gu8Rx0RIdx
      002E65 E4               [12] 1399 	clr	a
      002E66 F0               [24] 1400 	movx	@dptr,a
      002E67                       1401 00110$:
                                   1402 ;	../lib/uart.c:518: for (i=0;i<au8Size;i++) {
      002E67 0B               [12] 1403 	inc	r3
      002E68 80 CB            [24] 1404 	sjmp	00109$
      002E6A                       1405 00107$:
                                   1406 ;	../lib/uart.c:524: gu8Rx0Size -= au8Size;
      002E6A 90 01 82         [24] 1407 	mov	dptr,#_gu8Rx0Size
      002E6D E0               [24] 1408 	movx	a,@dptr
      002E6E C3               [12] 1409 	clr	c
      002E6F 9F               [12] 1410 	subb	a,r7
      002E70 F0               [24] 1411 	movx	@dptr,a
                                   1412 ;	../lib/uart.c:525: return au8Size;
      002E71 8F 82            [24] 1413 	mov	dpl,r7
                                   1414 ;	../lib/uart.c:526: }
      002E73 22               [24] 1415 	ret
                                   1416 ;------------------------------------------------------------
                                   1417 ;Allocation info for local variables in function 'Uart1Tx_ISR'
                                   1418 ;------------------------------------------------------------
                                   1419 ;	../lib/uart.c:527: void Uart1Tx_ISR()
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function Uart1Tx_ISR
                                   1422 ;	-----------------------------------------
      002E74                       1423 _Uart1Tx_ISR:
                                   1424 ;	../lib/uart.c:530: clr_TI_1;// clear, putchar_uart1()에서 직접 불린 상태면 gu8Tx1Size==1인데, 이 경우는 무의미 할 수도 있음, 
                                   1425 ;	assignBit
      002E74 C2 F9            [12] 1426 	clr	_TI_1
                                   1427 ;	../lib/uart.c:531: if (gu8Tx1Size == 0) {
      002E76 90 01 8B         [24] 1428 	mov	dptr,#_gu8Tx1Size
      002E79 E0               [24] 1429 	movx	a,@dptr
      002E7A FF               [12] 1430 	mov	r7,a
      002E7B E0               [24] 1431 	movx	a,@dptr
      002E7C 70 01            [24] 1432 	jnz	00102$
                                   1433 ;	../lib/uart.c:533: return;
      002E7E 22               [24] 1434 	ret
      002E7F                       1435 00102$:
                                   1436 ;	../lib/uart.c:553: SBUF_1 = pu8UartTx1Buf[gu8Tx1RIdx++];
      002E7F 90 01 8C         [24] 1437 	mov	dptr,#_gu8Tx1RIdx
      002E82 E0               [24] 1438 	movx	a,@dptr
      002E83 FE               [12] 1439 	mov	r6,a
      002E84 04               [12] 1440 	inc	a
      002E85 F0               [24] 1441 	movx	@dptr,a
      002E86 EE               [12] 1442 	mov	a,r6
      002E87 24 72            [12] 1443 	add	a,#_pu8UartTx1Buf
      002E89 F5 82            [12] 1444 	mov	dpl,a
      002E8B E4               [12] 1445 	clr	a
      002E8C 34 01            [12] 1446 	addc	a,#(_pu8UartTx1Buf >> 8)
      002E8E F5 83            [12] 1447 	mov	dph,a
      002E90 E0               [24] 1448 	movx	a,@dptr
      002E91 F5 9A            [12] 1449 	mov	_SBUF_1,a
                                   1450 ;	../lib/uart.c:554: gu8Tx1Size--;
      002E93 EF               [12] 1451 	mov	a,r7
      002E94 14               [12] 1452 	dec	a
      002E95 90 01 8B         [24] 1453 	mov	dptr,#_gu8Tx1Size
      002E98 F0               [24] 1454 	movx	@dptr,a
                                   1455 ;	../lib/uart.c:560: gu8Tx1RIdx &= UART1_TX_BUFF_SIZE_MSK;
      002E99 90 01 8C         [24] 1456 	mov	dptr,#_gu8Tx1RIdx
      002E9C E0               [24] 1457 	movx	a,@dptr
      002E9D 53 E0 0F         [24] 1458 	anl	acc,#0x0f
      002EA0 F0               [24] 1459 	movx	@dptr,a
                                   1460 ;	../lib/uart.c:562: }
      002EA1 22               [24] 1461 	ret
                                   1462 ;------------------------------------------------------------
                                   1463 ;Allocation info for local variables in function 'SerialPort1_ISR'
                                   1464 ;------------------------------------------------------------
                                   1465 ;	../lib/uart.c:564: void SerialPort1_ISR(void) interrupt(15) 
                                   1466 ;	-----------------------------------------
                                   1467 ;	 function SerialPort1_ISR
                                   1468 ;	-----------------------------------------
      002EA2                       1469 _SerialPort1_ISR:
                           00000F  1470 	ar7 = 0x0f
                           00000E  1471 	ar6 = 0x0e
                           00000D  1472 	ar5 = 0x0d
                           00000C  1473 	ar4 = 0x0c
                           00000B  1474 	ar3 = 0x0b
                           00000A  1475 	ar2 = 0x0a
                           000009  1476 	ar1 = 0x09
                           000008  1477 	ar0 = 0x08
      002EA2 C0 21            [24] 1478 	push	bits
      002EA4 C0 E0            [24] 1479 	push	acc
      002EA6 C0 F0            [24] 1480 	push	b
      002EA8 C0 82            [24] 1481 	push	dpl
      002EAA C0 83            [24] 1482 	push	dph
      002EAC C0 07            [24] 1483 	push	(0+7)
      002EAE C0 06            [24] 1484 	push	(0+6)
      002EB0 C0 05            [24] 1485 	push	(0+5)
      002EB2 C0 04            [24] 1486 	push	(0+4)
      002EB4 C0 03            [24] 1487 	push	(0+3)
      002EB6 C0 02            [24] 1488 	push	(0+2)
      002EB8 C0 01            [24] 1489 	push	(0+1)
      002EBA C0 00            [24] 1490 	push	(0+0)
      002EBC C0 D0            [24] 1491 	push	psw
      002EBE 75 D0 08         [24] 1492 	mov	psw,#0x08
                                   1493 ;	../lib/uart.c:566: if (RI_1 == 1) {/* if reception occur */
      002EC1 30 F8 3B         [24] 1494 	jnb	_RI_1,00106$
                                   1495 ;	../lib/uart.c:567: gu8Uart1RCnt ++;
      002EC4 90 01 90         [24] 1496 	mov	dptr,#_gu8Uart1RCnt
      002EC7 E0               [24] 1497 	movx	a,@dptr
      002EC8 24 01            [12] 1498 	add	a,#0x01
      002ECA F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	../lib/uart.c:568: if (gu8Rx1Size < UART1_RX_BUFF_SIZE) {
      002ECB 90 01 88         [24] 1501 	mov	dptr,#_gu8Rx1Size
      002ECE E0               [24] 1502 	movx	a,@dptr
      002ECF FF               [12] 1503 	mov	r7,a
      002ED0 BF 10 00         [24] 1504 	cjne	r7,#0x10,00128$
      002ED3                       1505 00128$:
      002ED3 50 28            [24] 1506 	jnc	00104$
                                   1507 ;	../lib/uart.c:569: pu8UartRx1Buf[gu8Rx1WIdx++] = SBUF_1;
      002ED5 90 01 8A         [24] 1508 	mov	dptr,#_gu8Rx1WIdx
      002ED8 E0               [24] 1509 	movx	a,@dptr
      002ED9 FF               [12] 1510 	mov	r7,a
      002EDA 04               [12] 1511 	inc	a
      002EDB F0               [24] 1512 	movx	@dptr,a
      002EDC EF               [12] 1513 	mov	a,r7
      002EDD 24 62            [12] 1514 	add	a,#_pu8UartRx1Buf
      002EDF F5 82            [12] 1515 	mov	dpl,a
      002EE1 E4               [12] 1516 	clr	a
      002EE2 34 01            [12] 1517 	addc	a,#(_pu8UartRx1Buf >> 8)
      002EE4 F5 83            [12] 1518 	mov	dph,a
      002EE6 E5 9A            [12] 1519 	mov	a,_SBUF_1
      002EE8 F0               [24] 1520 	movx	@dptr,a
                                   1521 ;	../lib/uart.c:570: gu8Rx1Size++;
      002EE9 90 01 88         [24] 1522 	mov	dptr,#_gu8Rx1Size
      002EEC E0               [24] 1523 	movx	a,@dptr
      002EED 24 01            [12] 1524 	add	a,#0x01
      002EEF F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	../lib/uart.c:571: if (gu8Rx1WIdx == UART1_RX_BUFF_SIZE) {
      002EF0 90 01 8A         [24] 1527 	mov	dptr,#_gu8Rx1WIdx
      002EF3 E0               [24] 1528 	movx	a,@dptr
      002EF4 FF               [12] 1529 	mov	r7,a
      002EF5 BF 10 05         [24] 1530 	cjne	r7,#0x10,00104$
                                   1531 ;	../lib/uart.c:572: gu8Rx1WIdx = 0;
      002EF8 90 01 8A         [24] 1532 	mov	dptr,#_gu8Rx1WIdx
      002EFB E4               [12] 1533 	clr	a
      002EFC F0               [24] 1534 	movx	@dptr,a
      002EFD                       1535 00104$:
                                   1536 ;	../lib/uart.c:578: clr_RI_1;      /* clear reception flag for next reception */
                                   1537 ;	assignBit
      002EFD C2 F8            [12] 1538 	clr	_RI_1
      002EFF                       1539 00106$:
                                   1540 ;	../lib/uart.c:581: if (TI_1 == 1) {
      002EFF 30 F9 10         [24] 1541 	jnb	_TI_1,00109$
                                   1542 ;	../lib/uart.c:582: gu8Uart1TCnt ++;
      002F02 90 01 91         [24] 1543 	mov	dptr,#_gu8Uart1TCnt
      002F05 E0               [24] 1544 	movx	a,@dptr
      002F06 24 01            [12] 1545 	add	a,#0x01
      002F08 F0               [24] 1546 	movx	@dptr,a
                                   1547 ;	../lib/uart.c:583: Uart1Tx_ISR();
      002F09 75 D0 00         [24] 1548 	mov	psw,#0x00
      002F0C 12 2E 74         [24] 1549 	lcall	_Uart1Tx_ISR
      002F0F 75 D0 08         [24] 1550 	mov	psw,#0x08
      002F12                       1551 00109$:
                                   1552 ;	../lib/uart.c:585: }
      002F12 D0 D0            [24] 1553 	pop	psw
      002F14 D0 00            [24] 1554 	pop	(0+0)
      002F16 D0 01            [24] 1555 	pop	(0+1)
      002F18 D0 02            [24] 1556 	pop	(0+2)
      002F1A D0 03            [24] 1557 	pop	(0+3)
      002F1C D0 04            [24] 1558 	pop	(0+4)
      002F1E D0 05            [24] 1559 	pop	(0+5)
      002F20 D0 06            [24] 1560 	pop	(0+6)
      002F22 D0 07            [24] 1561 	pop	(0+7)
      002F24 D0 83            [24] 1562 	pop	dph
      002F26 D0 82            [24] 1563 	pop	dpl
      002F28 D0 F0            [24] 1564 	pop	b
      002F2A D0 E0            [24] 1565 	pop	acc
      002F2C D0 21            [24] 1566 	pop	bits
      002F2E 32               [24] 1567 	reti
                                   1568 ;------------------------------------------------------------
                                   1569 ;Allocation info for local variables in function 'chkchar_uart1'
                                   1570 ;------------------------------------------------------------
                                   1571 ;	../lib/uart.c:587: uint8_t chkchar_uart1()
                                   1572 ;	-----------------------------------------
                                   1573 ;	 function chkchar_uart1
                                   1574 ;	-----------------------------------------
      002F2F                       1575 _chkchar_uart1:
                           000007  1576 	ar7 = 0x07
                           000006  1577 	ar6 = 0x06
                           000005  1578 	ar5 = 0x05
                           000004  1579 	ar4 = 0x04
                           000003  1580 	ar3 = 0x03
                           000002  1581 	ar2 = 0x02
                           000001  1582 	ar1 = 0x01
                           000000  1583 	ar0 = 0x00
                                   1584 ;	../lib/uart.c:592: return gu8Rx1Size;
      002F2F 90 01 88         [24] 1585 	mov	dptr,#_gu8Rx1Size
      002F32 E0               [24] 1586 	movx	a,@dptr
                                   1587 ;	../lib/uart.c:593: }
      002F33 F5 82            [12] 1588 	mov	dpl,a
      002F35 22               [24] 1589 	ret
                                   1590 ;------------------------------------------------------------
                                   1591 ;Allocation info for local variables in function 'getchar_uart1'
                                   1592 ;------------------------------------------------------------
                                   1593 ;apu8Data                  Allocated to registers r5 r6 r7 
                                   1594 ;------------------------------------------------------------
                                   1595 ;	../lib/uart.c:595: uint8_t getchar_uart1(uint8_t * apu8Data)
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function getchar_uart1
                                   1598 ;	-----------------------------------------
      002F36                       1599 _getchar_uart1:
      002F36 AD 82            [24] 1600 	mov	r5,dpl
      002F38 AE 83            [24] 1601 	mov	r6,dph
      002F3A AF F0            [24] 1602 	mov	r7,b
                                   1603 ;	../lib/uart.c:600: if (gu8Rx1Size == 0) {
      002F3C 90 01 88         [24] 1604 	mov	dptr,#_gu8Rx1Size
      002F3F E0               [24] 1605 	movx	a,@dptr
                                   1606 ;	../lib/uart.c:601: return 0;
      002F40 70 03            [24] 1607 	jnz	00102$
      002F42 F5 82            [12] 1608 	mov	dpl,a
      002F44 22               [24] 1609 	ret
      002F45                       1610 00102$:
                                   1611 ;	../lib/uart.c:603: clr_ES_1;
      002F45 53 9C FE         [24] 1612 	anl	_EIE1,#0xfe
                                   1613 ;	../lib/uart.c:604: *apu8Data = pu8UartRx1Buf[gu8Rx1RIdx++];
      002F48 90 01 89         [24] 1614 	mov	dptr,#_gu8Rx1RIdx
      002F4B E0               [24] 1615 	movx	a,@dptr
      002F4C FC               [12] 1616 	mov	r4,a
      002F4D 04               [12] 1617 	inc	a
      002F4E F0               [24] 1618 	movx	@dptr,a
      002F4F EC               [12] 1619 	mov	a,r4
      002F50 24 62            [12] 1620 	add	a,#_pu8UartRx1Buf
      002F52 F5 82            [12] 1621 	mov	dpl,a
      002F54 E4               [12] 1622 	clr	a
      002F55 34 01            [12] 1623 	addc	a,#(_pu8UartRx1Buf >> 8)
      002F57 F5 83            [12] 1624 	mov	dph,a
      002F59 E0               [24] 1625 	movx	a,@dptr
      002F5A 8D 82            [24] 1626 	mov	dpl,r5
      002F5C 8E 83            [24] 1627 	mov	dph,r6
      002F5E 8F F0            [24] 1628 	mov	b,r7
      002F60 12 36 89         [24] 1629 	lcall	__gptrput
                                   1630 ;	../lib/uart.c:605: gu8Rx1Size--;
      002F63 90 01 88         [24] 1631 	mov	dptr,#_gu8Rx1Size
      002F66 E0               [24] 1632 	movx	a,@dptr
      002F67 14               [12] 1633 	dec	a
      002F68 F0               [24] 1634 	movx	@dptr,a
                                   1635 ;	../lib/uart.c:606: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
      002F69 90 01 89         [24] 1636 	mov	dptr,#_gu8Rx1RIdx
      002F6C E0               [24] 1637 	movx	a,@dptr
      002F6D FF               [12] 1638 	mov	r7,a
      002F6E BF 10 05         [24] 1639 	cjne	r7,#0x10,00104$
                                   1640 ;	../lib/uart.c:607: gu8Rx1RIdx = 0;
      002F71 90 01 89         [24] 1641 	mov	dptr,#_gu8Rx1RIdx
      002F74 E4               [12] 1642 	clr	a
      002F75 F0               [24] 1643 	movx	@dptr,a
      002F76                       1644 00104$:
                                   1645 ;	../lib/uart.c:609: set_ES_1;
      002F76 43 9C 01         [24] 1646 	orl	_EIE1,#0x01
                                   1647 ;	../lib/uart.c:610: return 1;
      002F79 75 82 01         [24] 1648 	mov	dpl,#0x01
                                   1649 ;	../lib/uart.c:611: }
      002F7C 22               [24] 1650 	ret
                                   1651 ;------------------------------------------------------------
                                   1652 ;Allocation info for local variables in function 'getstr_uart1'
                                   1653 ;------------------------------------------------------------
                                   1654 ;apu8Data                  Allocated with name '_getstr_uart1_PARM_2'
                                   1655 ;au8Size                   Allocated to registers r7 
                                   1656 ;i                         Allocated to registers r3 
                                   1657 ;------------------------------------------------------------
                                   1658 ;	../lib/uart.c:613: uint8_t getstr_uart1(uint8_t au8Size, uint8_t * apu8Data)
                                   1659 ;	-----------------------------------------
                                   1660 ;	 function getstr_uart1
                                   1661 ;	-----------------------------------------
      002F7D                       1662 _getstr_uart1:
      002F7D AF 82            [24] 1663 	mov	r7,dpl
                                   1664 ;	../lib/uart.c:619: if (gu8Rx1Size == 0) {
      002F7F 90 01 88         [24] 1665 	mov	dptr,#_gu8Rx1Size
      002F82 E0               [24] 1666 	movx	a,@dptr
      002F83 FE               [12] 1667 	mov	r6,a
                                   1668 ;	../lib/uart.c:620: return 0;
      002F84 70 03            [24] 1669 	jnz	00102$
      002F86 F5 82            [12] 1670 	mov	dpl,a
      002F88 22               [24] 1671 	ret
      002F89                       1672 00102$:
                                   1673 ;	../lib/uart.c:623: if (gu8Rx1Size < au8Size) {
      002F89 C3               [12] 1674 	clr	c
      002F8A EE               [12] 1675 	mov	a,r6
      002F8B 9F               [12] 1676 	subb	a,r7
      002F8C 50 02            [24] 1677 	jnc	00117$
                                   1678 ;	../lib/uart.c:624: au8Size = gu8Rx1Size;
      002F8E 8E 07            [24] 1679 	mov	ar7,r6
                                   1680 ;	../lib/uart.c:626: for (i=0;i<au8Size;i++) {
      002F90                       1681 00117$:
      002F90 AC 19            [24] 1682 	mov	r4,_getstr_uart1_PARM_2
      002F92 AD 1A            [24] 1683 	mov	r5,(_getstr_uart1_PARM_2 + 1)
      002F94 AE 1B            [24] 1684 	mov	r6,(_getstr_uart1_PARM_2 + 2)
      002F96 7B 00            [12] 1685 	mov	r3,#0x00
      002F98                       1686 00109$:
      002F98 C3               [12] 1687 	clr	c
      002F99 EB               [12] 1688 	mov	a,r3
      002F9A 9F               [12] 1689 	subb	a,r7
      002F9B 50 30            [24] 1690 	jnc	00107$
                                   1691 ;	../lib/uart.c:627: *apu8Data++ = pu8UartRx1Buf[gu8Rx1RIdx++];
      002F9D 90 01 89         [24] 1692 	mov	dptr,#_gu8Rx1RIdx
      002FA0 E0               [24] 1693 	movx	a,@dptr
      002FA1 FA               [12] 1694 	mov	r2,a
      002FA2 04               [12] 1695 	inc	a
      002FA3 F0               [24] 1696 	movx	@dptr,a
      002FA4 EA               [12] 1697 	mov	a,r2
      002FA5 24 62            [12] 1698 	add	a,#_pu8UartRx1Buf
      002FA7 F5 82            [12] 1699 	mov	dpl,a
      002FA9 E4               [12] 1700 	clr	a
      002FAA 34 01            [12] 1701 	addc	a,#(_pu8UartRx1Buf >> 8)
      002FAC F5 83            [12] 1702 	mov	dph,a
      002FAE E0               [24] 1703 	movx	a,@dptr
      002FAF 8C 82            [24] 1704 	mov	dpl,r4
      002FB1 8D 83            [24] 1705 	mov	dph,r5
      002FB3 8E F0            [24] 1706 	mov	b,r6
      002FB5 12 36 89         [24] 1707 	lcall	__gptrput
      002FB8 A3               [24] 1708 	inc	dptr
      002FB9 AC 82            [24] 1709 	mov	r4,dpl
      002FBB AD 83            [24] 1710 	mov	r5,dph
                                   1711 ;	../lib/uart.c:628: if (gu8Rx1RIdx == UART1_RX_BUFF_SIZE) {
      002FBD 90 01 89         [24] 1712 	mov	dptr,#_gu8Rx1RIdx
      002FC0 E0               [24] 1713 	movx	a,@dptr
      002FC1 FA               [12] 1714 	mov	r2,a
      002FC2 BA 10 05         [24] 1715 	cjne	r2,#0x10,00110$
                                   1716 ;	../lib/uart.c:629: gu8Rx1RIdx = 0;
      002FC5 90 01 89         [24] 1717 	mov	dptr,#_gu8Rx1RIdx
      002FC8 E4               [12] 1718 	clr	a
      002FC9 F0               [24] 1719 	movx	@dptr,a
      002FCA                       1720 00110$:
                                   1721 ;	../lib/uart.c:626: for (i=0;i<au8Size;i++) {
      002FCA 0B               [12] 1722 	inc	r3
      002FCB 80 CB            [24] 1723 	sjmp	00109$
      002FCD                       1724 00107$:
                                   1725 ;	../lib/uart.c:632: gu8Rx1Size -= au8Size;
      002FCD 90 01 88         [24] 1726 	mov	dptr,#_gu8Rx1Size
      002FD0 E0               [24] 1727 	movx	a,@dptr
      002FD1 C3               [12] 1728 	clr	c
      002FD2 9F               [12] 1729 	subb	a,r7
      002FD3 F0               [24] 1730 	movx	@dptr,a
                                   1731 ;	../lib/uart.c:633: return au8Size;
      002FD4 8F 82            [24] 1732 	mov	dpl,r7
                                   1733 ;	../lib/uart.c:634: }
      002FD6 22               [24] 1734 	ret
                                   1735 ;------------------------------------------------------------
                                   1736 ;Allocation info for local variables in function 'putchar_uart0'
                                   1737 ;------------------------------------------------------------
                                   1738 ;au8Data                   Allocated to registers r7 
                                   1739 ;------------------------------------------------------------
                                   1740 ;	../lib/uart.c:636: void putchar_uart0(char au8Data)
                                   1741 ;	-----------------------------------------
                                   1742 ;	 function putchar_uart0
                                   1743 ;	-----------------------------------------
      002FD7                       1744 _putchar_uart0:
      002FD7 AF 82            [24] 1745 	mov	r7,dpl
                                   1746 ;	../lib/uart.c:638: while (gu8Tx0Size >= UART0_TX_BUFF_SIZE) {
      002FD9                       1747 00101$:
      002FD9 90 01 85         [24] 1748 	mov	dptr,#_gu8Tx0Size
      002FDC E0               [24] 1749 	movx	a,@dptr
      002FDD FE               [12] 1750 	mov	r6,a
      002FDE BE 10 00         [24] 1751 	cjne	r6,#0x10,00120$
      002FE1                       1752 00120$:
      002FE1 40 03            [24] 1753 	jc	00103$
                                   1754 ;	../lib/uart.c:641: nop;
      002FE3 00               [12] 1755 	NOP
      002FE4 80 F3            [24] 1756 	sjmp	00101$
      002FE6                       1757 00103$:
                                   1758 ;	../lib/uart.c:644: pu8UartTx0Buf[gu8Tx0WIdx++] = au8Data;
      002FE6 90 01 87         [24] 1759 	mov	dptr,#_gu8Tx0WIdx
      002FE9 E0               [24] 1760 	movx	a,@dptr
      002FEA FE               [12] 1761 	mov	r6,a
      002FEB 04               [12] 1762 	inc	a
      002FEC F0               [24] 1763 	movx	@dptr,a
      002FED EE               [12] 1764 	mov	a,r6
      002FEE 24 52            [12] 1765 	add	a,#_pu8UartTx0Buf
      002FF0 F5 82            [12] 1766 	mov	dpl,a
      002FF2 E4               [12] 1767 	clr	a
      002FF3 34 01            [12] 1768 	addc	a,#(_pu8UartTx0Buf >> 8)
      002FF5 F5 83            [12] 1769 	mov	dph,a
      002FF7 EF               [12] 1770 	mov	a,r7
      002FF8 F0               [24] 1771 	movx	@dptr,a
                                   1772 ;	../lib/uart.c:645: gu8Tx0Size++;
      002FF9 90 01 85         [24] 1773 	mov	dptr,#_gu8Tx0Size
      002FFC E0               [24] 1774 	movx	a,@dptr
      002FFD 24 01            [12] 1775 	add	a,#0x01
      002FFF F0               [24] 1776 	movx	@dptr,a
                                   1777 ;	../lib/uart.c:646: if (gu8Tx0WIdx == UART0_TX_BUFF_SIZE) {
      003000 90 01 87         [24] 1778 	mov	dptr,#_gu8Tx0WIdx
      003003 E0               [24] 1779 	movx	a,@dptr
      003004 FF               [12] 1780 	mov	r7,a
      003005 BF 10 05         [24] 1781 	cjne	r7,#0x10,00105$
                                   1782 ;	../lib/uart.c:648: gu8Tx0WIdx = 0;
      003008 90 01 87         [24] 1783 	mov	dptr,#_gu8Tx0WIdx
      00300B E4               [12] 1784 	clr	a
      00300C F0               [24] 1785 	movx	@dptr,a
      00300D                       1786 00105$:
                                   1787 ;	../lib/uart.c:650: set_TI;
                                   1788 ;	assignBit
      00300D D2 99            [12] 1789 	setb	_TI
                                   1790 ;	../lib/uart.c:651: }
      00300F 22               [24] 1791 	ret
                                   1792 ;------------------------------------------------------------
                                   1793 ;Allocation info for local variables in function 'putchar_uart1'
                                   1794 ;------------------------------------------------------------
                                   1795 ;au8Data                   Allocated to registers r7 
                                   1796 ;------------------------------------------------------------
                                   1797 ;	../lib/uart.c:653: void putchar_uart1(char au8Data)
                                   1798 ;	-----------------------------------------
                                   1799 ;	 function putchar_uart1
                                   1800 ;	-----------------------------------------
      003010                       1801 _putchar_uart1:
      003010 AF 82            [24] 1802 	mov	r7,dpl
                                   1803 ;	../lib/uart.c:655: while (gu8Tx1Size >= UART1_TX_BUFF_SIZE) {
      003012                       1804 00101$:
      003012 90 01 8B         [24] 1805 	mov	dptr,#_gu8Tx1Size
      003015 E0               [24] 1806 	movx	a,@dptr
      003016 FE               [12] 1807 	mov	r6,a
      003017 BE 10 00         [24] 1808 	cjne	r6,#0x10,00121$
      00301A                       1809 00121$:
      00301A 40 0A            [24] 1810 	jc	00103$
                                   1811 ;	../lib/uart.c:656: gu8BFCnt++;
      00301C 90 01 2B         [24] 1812 	mov	dptr,#_gu8BFCnt
      00301F E0               [24] 1813 	movx	a,@dptr
      003020 24 01            [12] 1814 	add	a,#0x01
      003022 F0               [24] 1815 	movx	@dptr,a
                                   1816 ;	../lib/uart.c:659: nop;
      003023 00               [12] 1817 	NOP
      003024 80 EC            [24] 1818 	sjmp	00101$
      003026                       1819 00103$:
                                   1820 ;	../lib/uart.c:661: gu8BNFCnt++;
      003026 90 01 2A         [24] 1821 	mov	dptr,#_gu8BNFCnt
      003029 E0               [24] 1822 	movx	a,@dptr
      00302A 24 01            [12] 1823 	add	a,#0x01
      00302C F0               [24] 1824 	movx	@dptr,a
                                   1825 ;	../lib/uart.c:663: clr_ES_1;
      00302D 53 9C FE         [24] 1826 	anl	_EIE1,#0xfe
                                   1827 ;	../lib/uart.c:664: pu8UartTx1Buf[gu8Tx1WIdx++] = au8Data;
      003030 90 01 8D         [24] 1828 	mov	dptr,#_gu8Tx1WIdx
      003033 E0               [24] 1829 	movx	a,@dptr
      003034 FE               [12] 1830 	mov	r6,a
      003035 04               [12] 1831 	inc	a
      003036 F0               [24] 1832 	movx	@dptr,a
      003037 EE               [12] 1833 	mov	a,r6
      003038 24 72            [12] 1834 	add	a,#_pu8UartTx1Buf
      00303A F5 82            [12] 1835 	mov	dpl,a
      00303C E4               [12] 1836 	clr	a
      00303D 34 01            [12] 1837 	addc	a,#(_pu8UartTx1Buf >> 8)
      00303F F5 83            [12] 1838 	mov	dph,a
      003041 EF               [12] 1839 	mov	a,r7
      003042 F0               [24] 1840 	movx	@dptr,a
                                   1841 ;	../lib/uart.c:665: gu8Tx1Size++;
      003043 90 01 8B         [24] 1842 	mov	dptr,#_gu8Tx1Size
      003046 E0               [24] 1843 	movx	a,@dptr
      003047 24 01            [12] 1844 	add	a,#0x01
      003049 F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	../lib/uart.c:672: gu8Tx1WIdx &= UART1_TX_BUFF_SIZE_MSK;
      00304A 90 01 8D         [24] 1847 	mov	dptr,#_gu8Tx1WIdx
      00304D E0               [24] 1848 	movx	a,@dptr
      00304E 53 E0 0F         [24] 1849 	anl	acc,#0x0f
      003051 F0               [24] 1850 	movx	@dptr,a
                                   1851 ;	../lib/uart.c:679: if (gu8Tx1Size == 1) {
      003052 90 01 8B         [24] 1852 	mov	dptr,#_gu8Tx1Size
      003055 E0               [24] 1853 	movx	a,@dptr
      003056 FF               [12] 1854 	mov	r7,a
      003057 BF 01 0B         [24] 1855 	cjne	r7,#0x01,00105$
                                   1856 ;	../lib/uart.c:680: gu8BECnt++;
      00305A 90 01 2D         [24] 1857 	mov	dptr,#_gu8BECnt
      00305D E0               [24] 1858 	movx	a,@dptr
      00305E 24 01            [12] 1859 	add	a,#0x01
      003060 F0               [24] 1860 	movx	@dptr,a
                                   1861 ;	../lib/uart.c:682: set_TI_1;
                                   1862 ;	assignBit
      003061 D2 F9            [12] 1863 	setb	_TI_1
      003063 80 07            [24] 1864 	sjmp	00106$
      003065                       1865 00105$:
                                   1866 ;	../lib/uart.c:685: gu8BNECnt++;
      003065 90 01 2C         [24] 1867 	mov	dptr,#_gu8BNECnt
      003068 E0               [24] 1868 	movx	a,@dptr
      003069 24 01            [12] 1869 	add	a,#0x01
      00306B F0               [24] 1870 	movx	@dptr,a
      00306C                       1871 00106$:
                                   1872 ;	../lib/uart.c:706: set_ES_1;
      00306C 43 9C 01         [24] 1873 	orl	_EIE1,#0x01
                                   1874 ;	../lib/uart.c:707: }
      00306F 22               [24] 1875 	ret
                                   1876 ;------------------------------------------------------------
                                   1877 ;Allocation info for local variables in function 'preamble'
                                   1878 ;------------------------------------------------------------
                                   1879 ;	../lib/uart.c:710: void preamble() 
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function preamble
                                   1882 ;	-----------------------------------------
      003070                       1883 _preamble:
                                   1884 ;	../lib/uart.c:712: gu8UART = 1;
      003070 75 11 01         [24] 1885 	mov	_gu8UART,#0x01
                                   1886 ;	../lib/uart.c:713: putchar(0xF0);
      003073 90 00 F0         [24] 1887 	mov	dptr,#0x00f0
                                   1888 ;	../lib/uart.c:714: return;
                                   1889 ;	../lib/uart.c:715: }
      003076 02 2C C4         [24] 1890 	ljmp	_putchar
                                   1891 ;------------------------------------------------------------
                                   1892 ;Allocation info for local variables in function 'putchar_manchester'
                                   1893 ;------------------------------------------------------------
                                   1894 ;c                         Allocated to registers r7 
                                   1895 ;------------------------------------------------------------
                                   1896 ;	../lib/uart.c:717: void putchar_manchester(char c) 
                                   1897 ;	-----------------------------------------
                                   1898 ;	 function putchar_manchester
                                   1899 ;	-----------------------------------------
      003079                       1900 _putchar_manchester:
      003079 AF 82            [24] 1901 	mov	r7,dpl
                                   1902 ;	../lib/uart.c:719: gu8UART = 1;
      00307B 75 11 01         [24] 1903 	mov	_gu8UART,#0x01
                                   1904 ;	../lib/uart.c:720: putchar( (gpc2B2MC[(c>>6)&0x3]<<4) | gpc2B2MC[(c>>4)&0x3]);
      00307E EF               [12] 1905 	mov	a,r7
      00307F 23               [12] 1906 	rl	a
      003080 23               [12] 1907 	rl	a
      003081 54 03            [12] 1908 	anl	a,#0x03
      003083 FE               [12] 1909 	mov	r6,a
      003084 53 06 03         [24] 1910 	anl	ar6,#0x03
      003087 7D 00            [12] 1911 	mov	r5,#0x00
      003089 EE               [12] 1912 	mov	a,r6
      00308A 24 2E            [12] 1913 	add	a,#_gpc2B2MC
      00308C F5 82            [12] 1914 	mov	dpl,a
      00308E ED               [12] 1915 	mov	a,r5
      00308F 34 01            [12] 1916 	addc	a,#(_gpc2B2MC >> 8)
      003091 F5 83            [12] 1917 	mov	dph,a
      003093 E0               [24] 1918 	movx	a,@dptr
      003094 FE               [12] 1919 	mov	r6,a
      003095 E4               [12] 1920 	clr	a
      003096 CE               [12] 1921 	xch	a,r6
      003097 C4               [12] 1922 	swap	a
      003098 CE               [12] 1923 	xch	a,r6
      003099 6E               [12] 1924 	xrl	a,r6
      00309A CE               [12] 1925 	xch	a,r6
      00309B 54 F0            [12] 1926 	anl	a,#0xf0
      00309D CE               [12] 1927 	xch	a,r6
      00309E 6E               [12] 1928 	xrl	a,r6
      00309F FD               [12] 1929 	mov	r5,a
      0030A0 EF               [12] 1930 	mov	a,r7
      0030A1 C4               [12] 1931 	swap	a
      0030A2 54 0F            [12] 1932 	anl	a,#0x0f
      0030A4 FC               [12] 1933 	mov	r4,a
      0030A5 53 04 03         [24] 1934 	anl	ar4,#0x03
      0030A8 7B 00            [12] 1935 	mov	r3,#0x00
      0030AA EC               [12] 1936 	mov	a,r4
      0030AB 24 2E            [12] 1937 	add	a,#_gpc2B2MC
      0030AD F5 82            [12] 1938 	mov	dpl,a
      0030AF EB               [12] 1939 	mov	a,r3
      0030B0 34 01            [12] 1940 	addc	a,#(_gpc2B2MC >> 8)
      0030B2 F5 83            [12] 1941 	mov	dph,a
      0030B4 E0               [24] 1942 	movx	a,@dptr
      0030B5 7B 00            [12] 1943 	mov	r3,#0x00
      0030B7 4E               [12] 1944 	orl	a,r6
      0030B8 F5 82            [12] 1945 	mov	dpl,a
      0030BA EB               [12] 1946 	mov	a,r3
      0030BB 4D               [12] 1947 	orl	a,r5
      0030BC F5 83            [12] 1948 	mov	dph,a
      0030BE C0 07            [24] 1949 	push	ar7
      0030C0 12 2C C4         [24] 1950 	lcall	_putchar
      0030C3 D0 07            [24] 1951 	pop	ar7
                                   1952 ;	../lib/uart.c:721: putchar( (gpc2B2MC[(c>>2)&0x3]<<4) | gpc2B2MC[(c>>0)&0x3]);
      0030C5 EF               [12] 1953 	mov	a,r7
      0030C6 03               [12] 1954 	rr	a
      0030C7 03               [12] 1955 	rr	a
      0030C8 54 3F            [12] 1956 	anl	a,#0x3f
      0030CA FE               [12] 1957 	mov	r6,a
      0030CB 53 06 03         [24] 1958 	anl	ar6,#0x03
      0030CE 7D 00            [12] 1959 	mov	r5,#0x00
      0030D0 EE               [12] 1960 	mov	a,r6
      0030D1 24 2E            [12] 1961 	add	a,#_gpc2B2MC
      0030D3 F5 82            [12] 1962 	mov	dpl,a
      0030D5 ED               [12] 1963 	mov	a,r5
      0030D6 34 01            [12] 1964 	addc	a,#(_gpc2B2MC >> 8)
      0030D8 F5 83            [12] 1965 	mov	dph,a
      0030DA E0               [24] 1966 	movx	a,@dptr
      0030DB FE               [12] 1967 	mov	r6,a
      0030DC E4               [12] 1968 	clr	a
      0030DD CE               [12] 1969 	xch	a,r6
      0030DE C4               [12] 1970 	swap	a
      0030DF CE               [12] 1971 	xch	a,r6
      0030E0 6E               [12] 1972 	xrl	a,r6
      0030E1 CE               [12] 1973 	xch	a,r6
      0030E2 54 F0            [12] 1974 	anl	a,#0xf0
      0030E4 CE               [12] 1975 	xch	a,r6
      0030E5 6E               [12] 1976 	xrl	a,r6
      0030E6 FD               [12] 1977 	mov	r5,a
      0030E7 53 07 03         [24] 1978 	anl	ar7,#0x03
      0030EA 7C 00            [12] 1979 	mov	r4,#0x00
      0030EC EF               [12] 1980 	mov	a,r7
      0030ED 24 2E            [12] 1981 	add	a,#_gpc2B2MC
      0030EF F5 82            [12] 1982 	mov	dpl,a
      0030F1 EC               [12] 1983 	mov	a,r4
      0030F2 34 01            [12] 1984 	addc	a,#(_gpc2B2MC >> 8)
      0030F4 F5 83            [12] 1985 	mov	dph,a
      0030F6 E0               [24] 1986 	movx	a,@dptr
      0030F7 7C 00            [12] 1987 	mov	r4,#0x00
      0030F9 4E               [12] 1988 	orl	a,r6
      0030FA F5 82            [12] 1989 	mov	dpl,a
      0030FC EC               [12] 1990 	mov	a,r4
      0030FD 4D               [12] 1991 	orl	a,r5
      0030FE F5 83            [12] 1992 	mov	dph,a
                                   1993 ;	../lib/uart.c:722: return;
                                   1994 ;	../lib/uart.c:723: }
      003100 02 2C C4         [24] 1995 	ljmp	_putchar
                                   1996 ;------------------------------------------------------------
                                   1997 ;Allocation info for local variables in function 'chk_manchester'
                                   1998 ;------------------------------------------------------------
                                   1999 ;c                         Allocated to registers r7 
                                   2000 ;------------------------------------------------------------
                                   2001 ;	../lib/uart.c:725: UINT8 chk_manchester(UINT8 c)
                                   2002 ;	-----------------------------------------
                                   2003 ;	 function chk_manchester
                                   2004 ;	-----------------------------------------
      003103                       2005 _chk_manchester:
                                   2006 ;	../lib/uart.c:739: if (gpcMC22B[(c>>4)] == 0xF) {
      003103 E5 82            [12] 2007 	mov	a,dpl
      003105 FF               [12] 2008 	mov	r7,a
      003106 C4               [12] 2009 	swap	a
      003107 54 0F            [12] 2010 	anl	a,#0x0f
      003109 24 32            [12] 2011 	add	a,#_gpcMC22B
      00310B F5 82            [12] 2012 	mov	dpl,a
      00310D E4               [12] 2013 	clr	a
      00310E 34 01            [12] 2014 	addc	a,#(_gpcMC22B >> 8)
      003110 F5 83            [12] 2015 	mov	dph,a
      003112 E0               [24] 2016 	movx	a,@dptr
      003113 FE               [12] 2017 	mov	r6,a
      003114 BE 0F 04         [24] 2018 	cjne	r6,#0x0f,00102$
                                   2019 ;	../lib/uart.c:740: return MC_NOT_OK;
      003117 75 82 00         [24] 2020 	mov	dpl,#0x00
      00311A 22               [24] 2021 	ret
      00311B                       2022 00102$:
                                   2023 ;	../lib/uart.c:742: if (gpcMC22B[(c&0xF)] == 0xF) {
      00311B 53 07 0F         [24] 2024 	anl	ar7,#0x0f
      00311E 7E 00            [12] 2025 	mov	r6,#0x00
      003120 EF               [12] 2026 	mov	a,r7
      003121 24 32            [12] 2027 	add	a,#_gpcMC22B
      003123 F5 82            [12] 2028 	mov	dpl,a
      003125 EE               [12] 2029 	mov	a,r6
      003126 34 01            [12] 2030 	addc	a,#(_gpcMC22B >> 8)
      003128 F5 83            [12] 2031 	mov	dph,a
      00312A E0               [24] 2032 	movx	a,@dptr
      00312B FF               [12] 2033 	mov	r7,a
      00312C BF 0F 04         [24] 2034 	cjne	r7,#0x0f,00104$
                                   2035 ;	../lib/uart.c:743: return MC_NOT_OK;
      00312F 75 82 00         [24] 2036 	mov	dpl,#0x00
      003132 22               [24] 2037 	ret
      003133                       2038 00104$:
                                   2039 ;	../lib/uart.c:745: return MC_OK;
      003133 75 82 01         [24] 2040 	mov	dpl,#0x01
                                   2041 ;	../lib/uart.c:746: }
      003136 22               [24] 2042 	ret
                                   2043 ;------------------------------------------------------------
                                   2044 ;Allocation info for local variables in function 'conv_manchester2nibble'
                                   2045 ;------------------------------------------------------------
                                   2046 ;c                         Allocated to registers r7 
                                   2047 ;------------------------------------------------------------
                                   2048 ;	../lib/uart.c:748: UINT8 conv_manchester2nibble(UINT8 c)
                                   2049 ;	-----------------------------------------
                                   2050 ;	 function conv_manchester2nibble
                                   2051 ;	-----------------------------------------
      003137                       2052 _conv_manchester2nibble:
                                   2053 ;	../lib/uart.c:762: return (gpcMC22B[c>>4]<<2) | (gpcMC22B[c&0xF]); 
      003137 E5 82            [12] 2054 	mov	a,dpl
      003139 FF               [12] 2055 	mov	r7,a
      00313A C4               [12] 2056 	swap	a
      00313B 54 0F            [12] 2057 	anl	a,#0x0f
      00313D 24 32            [12] 2058 	add	a,#_gpcMC22B
      00313F F5 82            [12] 2059 	mov	dpl,a
      003141 E4               [12] 2060 	clr	a
      003142 34 01            [12] 2061 	addc	a,#(_gpcMC22B >> 8)
      003144 F5 83            [12] 2062 	mov	dph,a
      003146 E0               [24] 2063 	movx	a,@dptr
      003147 25 E0            [12] 2064 	add	a,acc
      003149 25 E0            [12] 2065 	add	a,acc
      00314B FE               [12] 2066 	mov	r6,a
      00314C 53 07 0F         [24] 2067 	anl	ar7,#0x0f
      00314F 7D 00            [12] 2068 	mov	r5,#0x00
      003151 EF               [12] 2069 	mov	a,r7
      003152 24 32            [12] 2070 	add	a,#_gpcMC22B
      003154 F5 82            [12] 2071 	mov	dpl,a
      003156 ED               [12] 2072 	mov	a,r5
      003157 34 01            [12] 2073 	addc	a,#(_gpcMC22B >> 8)
      003159 F5 83            [12] 2074 	mov	dph,a
      00315B E0               [24] 2075 	movx	a,@dptr
      00315C 4E               [12] 2076 	orl	a,r6
      00315D F5 82            [12] 2077 	mov	dpl,a
                                   2078 ;	../lib/uart.c:763: }
      00315F 22               [24] 2079 	ret
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
                                   2082 	.area CABS    (ABS,CODE)
