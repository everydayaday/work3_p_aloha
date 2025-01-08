                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module linefi_packet
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _crc8_PARM_3
                                     12 	.globl _crc8_PARM_2
                                     13 	.globl _packet_gen_table
                                     14 	.globl _sht75_crc_table
                                     15 	.globl _getchar_uart1
                                     16 	.globl _putchar_uart1
                                     17 	.globl _printf_fast_f
                                     18 	.globl _MOSI
                                     19 	.globl _P00
                                     20 	.globl _MISO
                                     21 	.globl _P01
                                     22 	.globl _RXD_1
                                     23 	.globl _P02
                                     24 	.globl _P03
                                     25 	.globl _STADC
                                     26 	.globl _P04
                                     27 	.globl _P05
                                     28 	.globl _TXD
                                     29 	.globl _P06
                                     30 	.globl _RXD
                                     31 	.globl _P07
                                     32 	.globl _IT0
                                     33 	.globl _IE0
                                     34 	.globl _IT1
                                     35 	.globl _IE1
                                     36 	.globl _TR0
                                     37 	.globl _TF0
                                     38 	.globl _TR1
                                     39 	.globl _TF1
                                     40 	.globl _P10
                                     41 	.globl _P11
                                     42 	.globl _P12
                                     43 	.globl _SCL
                                     44 	.globl _P13
                                     45 	.globl _SDA
                                     46 	.globl _P14
                                     47 	.globl _P15
                                     48 	.globl _TXD_1
                                     49 	.globl _P16
                                     50 	.globl _P17
                                     51 	.globl _RI
                                     52 	.globl _TI
                                     53 	.globl _RB8
                                     54 	.globl _TB8
                                     55 	.globl _REN
                                     56 	.globl _SM2
                                     57 	.globl _SM1
                                     58 	.globl _FE
                                     59 	.globl _SM0
                                     60 	.globl _P20
                                     61 	.globl _EX0
                                     62 	.globl _ET0
                                     63 	.globl _EX1
                                     64 	.globl _ET1
                                     65 	.globl _ES
                                     66 	.globl _EBOD
                                     67 	.globl _EADC
                                     68 	.globl _EA
                                     69 	.globl _P30
                                     70 	.globl _PX0
                                     71 	.globl _PT0
                                     72 	.globl _PX1
                                     73 	.globl _PT1
                                     74 	.globl _PS
                                     75 	.globl _PBOD
                                     76 	.globl _PADC
                                     77 	.globl _I2CPX
                                     78 	.globl _AA
                                     79 	.globl _SI
                                     80 	.globl _STO
                                     81 	.globl _STA
                                     82 	.globl _I2CEN
                                     83 	.globl _CM_RL2
                                     84 	.globl _TR2
                                     85 	.globl _TF2
                                     86 	.globl _P
                                     87 	.globl _OV
                                     88 	.globl _RS0
                                     89 	.globl _RS1
                                     90 	.globl _F0
                                     91 	.globl _AC
                                     92 	.globl _CY
                                     93 	.globl _CLRPWM
                                     94 	.globl _PWMF
                                     95 	.globl _LOAD
                                     96 	.globl _PWMRUN
                                     97 	.globl _ADCHS0
                                     98 	.globl _ADCHS1
                                     99 	.globl _ADCHS2
                                    100 	.globl _ADCHS3
                                    101 	.globl _ETGSEL0
                                    102 	.globl _ETGSEL1
                                    103 	.globl _ADCS
                                    104 	.globl _ADCF
                                    105 	.globl _RI_1
                                    106 	.globl _TI_1
                                    107 	.globl _RB8_1
                                    108 	.globl _TB8_1
                                    109 	.globl _REN_1
                                    110 	.globl _SM2_1
                                    111 	.globl _SM1_1
                                    112 	.globl _FE_1
                                    113 	.globl _SM0_1
                                    114 	.globl _EIPH1
                                    115 	.globl _EIP1
                                    116 	.globl _PMD
                                    117 	.globl _PMEN
                                    118 	.globl _PDTCNT
                                    119 	.globl _PDTEN
                                    120 	.globl _SCON_1
                                    121 	.globl _EIPH
                                    122 	.globl _AINDIDS
                                    123 	.globl _SPDR
                                    124 	.globl _SPSR
                                    125 	.globl _SPCR2
                                    126 	.globl _SPCR
                                    127 	.globl _CAPCON4
                                    128 	.globl _CAPCON3
                                    129 	.globl _B
                                    130 	.globl _EIP
                                    131 	.globl _C2H
                                    132 	.globl _C2L
                                    133 	.globl _PIF
                                    134 	.globl _PIPEN
                                    135 	.globl _PINEN
                                    136 	.globl _PICON
                                    137 	.globl _ADCCON0
                                    138 	.globl _C1H
                                    139 	.globl _C1L
                                    140 	.globl _C0H
                                    141 	.globl _C0L
                                    142 	.globl _ADCDLY
                                    143 	.globl _ADCCON2
                                    144 	.globl _ADCCON1
                                    145 	.globl _ACC
                                    146 	.globl _PWMCON1
                                    147 	.globl _PIOCON0
                                    148 	.globl _PWM3L
                                    149 	.globl _PWM2L
                                    150 	.globl _PWM1L
                                    151 	.globl _PWM0L
                                    152 	.globl _PWMPL
                                    153 	.globl _PWMCON0
                                    154 	.globl _FBD
                                    155 	.globl _PNP
                                    156 	.globl _PWM3H
                                    157 	.globl _PWM2H
                                    158 	.globl _PWM1H
                                    159 	.globl _PWM0H
                                    160 	.globl _PWMPH
                                    161 	.globl _PSW
                                    162 	.globl _ADCMPH
                                    163 	.globl _ADCMPL
                                    164 	.globl _PWM5L
                                    165 	.globl _TH2
                                    166 	.globl _PWM4L
                                    167 	.globl _TL2
                                    168 	.globl _RCMP2H
                                    169 	.globl _RCMP2L
                                    170 	.globl _T2MOD
                                    171 	.globl _T2CON
                                    172 	.globl _TA
                                    173 	.globl _PIOCON1
                                    174 	.globl _RH3
                                    175 	.globl _PWM5H
                                    176 	.globl _RL3
                                    177 	.globl _PWM4H
                                    178 	.globl _T3CON
                                    179 	.globl _ADCRH
                                    180 	.globl _ADCRL
                                    181 	.globl _I2ADDR
                                    182 	.globl _I2CON
                                    183 	.globl _I2TOC
                                    184 	.globl _I2CLK
                                    185 	.globl _I2STAT
                                    186 	.globl _I2DAT
                                    187 	.globl _SADDR_1
                                    188 	.globl _SADEN_1
                                    189 	.globl _SADEN
                                    190 	.globl _IP
                                    191 	.globl _PWMINTC
                                    192 	.globl _IPH
                                    193 	.globl _P2S
                                    194 	.globl _P1SR
                                    195 	.globl _P1M2
                                    196 	.globl _P1S
                                    197 	.globl _P1M1
                                    198 	.globl _P0SR
                                    199 	.globl _P0M2
                                    200 	.globl _P0S
                                    201 	.globl _P0M1
                                    202 	.globl _P3
                                    203 	.globl _IAPCN
                                    204 	.globl _IAPFD
                                    205 	.globl _P3SR
                                    206 	.globl _P3M2
                                    207 	.globl _P3S
                                    208 	.globl _P3M1
                                    209 	.globl _BODCON1
                                    210 	.globl _WDCON
                                    211 	.globl _SADDR
                                    212 	.globl _IE
                                    213 	.globl _IAPAH
                                    214 	.globl _IAPAL
                                    215 	.globl _IAPUEN
                                    216 	.globl _IAPTRG
                                    217 	.globl _BODCON0
                                    218 	.globl _AUXR1
                                    219 	.globl _P2
                                    220 	.globl _CHPCON
                                    221 	.globl _EIE1
                                    222 	.globl _EIE
                                    223 	.globl _SBUF_1
                                    224 	.globl _SBUF
                                    225 	.globl _SCON
                                    226 	.globl _CKEN
                                    227 	.globl _CKSWT
                                    228 	.globl _CKDIV
                                    229 	.globl _CAPCON2
                                    230 	.globl _CAPCON1
                                    231 	.globl _CAPCON0
                                    232 	.globl _SFRS
                                    233 	.globl _P1
                                    234 	.globl _WKCON
                                    235 	.globl _CKCON
                                    236 	.globl _TH1
                                    237 	.globl _TH0
                                    238 	.globl _TL1
                                    239 	.globl _TL0
                                    240 	.globl _TMOD
                                    241 	.globl _TCON
                                    242 	.globl _PCON
                                    243 	.globl _RWK
                                    244 	.globl _RCTRIM1
                                    245 	.globl _RCTRIM0
                                    246 	.globl _DPH
                                    247 	.globl _DPL
                                    248 	.globl _SP
                                    249 	.globl _P0
                                    250 	.globl _gpcTypeStr
                                    251 	.globl _print_raw_packet_PARM_2
                                    252 	.globl _cp_buf2linefipacket_PARM_3
                                    253 	.globl _cp_buf2linefipacket_PARM_2
                                    254 	.globl _gu16Cnt
                                    255 	.globl _size_linefi_packet
                                    256 	.globl _calc_crc_linefi_packet_packet
                                    257 	.globl _add_crc_linefi_packet_packet
                                    258 	.globl _chk_crc_linefi_packet_packet
                                    259 	.globl _get_octet_from_linefi
                                    260 	.globl _send_octet_to_linefi
                                    261 	.globl _send_linefi_packet
                                    262 	.globl _cp_buf2linefipacket
                                    263 	.globl _print_linefipacket
                                    264 	.globl _get_timer_value
                                    265 	.globl _get_bktimer_value
                                    266 	.globl _crc8
                                    267 	.globl _print_raw_packet
                                    268 ;--------------------------------------------------------
                                    269 ; special function registers
                                    270 ;--------------------------------------------------------
                                    271 	.area RSEG    (ABS,DATA)
      000000                        272 	.org 0x0000
                           000080   273 _P0	=	0x0080
                           000081   274 _SP	=	0x0081
                           000082   275 _DPL	=	0x0082
                           000083   276 _DPH	=	0x0083
                           000084   277 _RCTRIM0	=	0x0084
                           000085   278 _RCTRIM1	=	0x0085
                           000086   279 _RWK	=	0x0086
                           000087   280 _PCON	=	0x0087
                           000088   281 _TCON	=	0x0088
                           000089   282 _TMOD	=	0x0089
                           00008A   283 _TL0	=	0x008a
                           00008B   284 _TL1	=	0x008b
                           00008C   285 _TH0	=	0x008c
                           00008D   286 _TH1	=	0x008d
                           00008E   287 _CKCON	=	0x008e
                           00008F   288 _WKCON	=	0x008f
                           000090   289 _P1	=	0x0090
                           000091   290 _SFRS	=	0x0091
                           000092   291 _CAPCON0	=	0x0092
                           000093   292 _CAPCON1	=	0x0093
                           000094   293 _CAPCON2	=	0x0094
                           000095   294 _CKDIV	=	0x0095
                           000096   295 _CKSWT	=	0x0096
                           000097   296 _CKEN	=	0x0097
                           000098   297 _SCON	=	0x0098
                           000099   298 _SBUF	=	0x0099
                           00009A   299 _SBUF_1	=	0x009a
                           00009B   300 _EIE	=	0x009b
                           00009C   301 _EIE1	=	0x009c
                           00009F   302 _CHPCON	=	0x009f
                           0000A0   303 _P2	=	0x00a0
                           0000A2   304 _AUXR1	=	0x00a2
                           0000A3   305 _BODCON0	=	0x00a3
                           0000A4   306 _IAPTRG	=	0x00a4
                           0000A5   307 _IAPUEN	=	0x00a5
                           0000A6   308 _IAPAL	=	0x00a6
                           0000A7   309 _IAPAH	=	0x00a7
                           0000A8   310 _IE	=	0x00a8
                           0000A9   311 _SADDR	=	0x00a9
                           0000AA   312 _WDCON	=	0x00aa
                           0000AB   313 _BODCON1	=	0x00ab
                           0000AC   314 _P3M1	=	0x00ac
                           0000AC   315 _P3S	=	0x00ac
                           0000AD   316 _P3M2	=	0x00ad
                           0000AD   317 _P3SR	=	0x00ad
                           0000AE   318 _IAPFD	=	0x00ae
                           0000AF   319 _IAPCN	=	0x00af
                           0000B0   320 _P3	=	0x00b0
                           0000B1   321 _P0M1	=	0x00b1
                           0000B1   322 _P0S	=	0x00b1
                           0000B2   323 _P0M2	=	0x00b2
                           0000B2   324 _P0SR	=	0x00b2
                           0000B3   325 _P1M1	=	0x00b3
                           0000B3   326 _P1S	=	0x00b3
                           0000B4   327 _P1M2	=	0x00b4
                           0000B4   328 _P1SR	=	0x00b4
                           0000B5   329 _P2S	=	0x00b5
                           0000B7   330 _IPH	=	0x00b7
                           0000B7   331 _PWMINTC	=	0x00b7
                           0000B8   332 _IP	=	0x00b8
                           0000B9   333 _SADEN	=	0x00b9
                           0000BA   334 _SADEN_1	=	0x00ba
                           0000BB   335 _SADDR_1	=	0x00bb
                           0000BC   336 _I2DAT	=	0x00bc
                           0000BD   337 _I2STAT	=	0x00bd
                           0000BE   338 _I2CLK	=	0x00be
                           0000BF   339 _I2TOC	=	0x00bf
                           0000C0   340 _I2CON	=	0x00c0
                           0000C1   341 _I2ADDR	=	0x00c1
                           0000C2   342 _ADCRL	=	0x00c2
                           0000C3   343 _ADCRH	=	0x00c3
                           0000C4   344 _T3CON	=	0x00c4
                           0000C4   345 _PWM4H	=	0x00c4
                           0000C5   346 _RL3	=	0x00c5
                           0000C5   347 _PWM5H	=	0x00c5
                           0000C6   348 _RH3	=	0x00c6
                           0000C6   349 _PIOCON1	=	0x00c6
                           0000C7   350 _TA	=	0x00c7
                           0000C8   351 _T2CON	=	0x00c8
                           0000C9   352 _T2MOD	=	0x00c9
                           0000CA   353 _RCMP2L	=	0x00ca
                           0000CB   354 _RCMP2H	=	0x00cb
                           0000CC   355 _TL2	=	0x00cc
                           0000CC   356 _PWM4L	=	0x00cc
                           0000CD   357 _TH2	=	0x00cd
                           0000CD   358 _PWM5L	=	0x00cd
                           0000CE   359 _ADCMPL	=	0x00ce
                           0000CF   360 _ADCMPH	=	0x00cf
                           0000D0   361 _PSW	=	0x00d0
                           0000D1   362 _PWMPH	=	0x00d1
                           0000D2   363 _PWM0H	=	0x00d2
                           0000D3   364 _PWM1H	=	0x00d3
                           0000D4   365 _PWM2H	=	0x00d4
                           0000D5   366 _PWM3H	=	0x00d5
                           0000D6   367 _PNP	=	0x00d6
                           0000D7   368 _FBD	=	0x00d7
                           0000D8   369 _PWMCON0	=	0x00d8
                           0000D9   370 _PWMPL	=	0x00d9
                           0000DA   371 _PWM0L	=	0x00da
                           0000DB   372 _PWM1L	=	0x00db
                           0000DC   373 _PWM2L	=	0x00dc
                           0000DD   374 _PWM3L	=	0x00dd
                           0000DE   375 _PIOCON0	=	0x00de
                           0000DF   376 _PWMCON1	=	0x00df
                           0000E0   377 _ACC	=	0x00e0
                           0000E1   378 _ADCCON1	=	0x00e1
                           0000E2   379 _ADCCON2	=	0x00e2
                           0000E3   380 _ADCDLY	=	0x00e3
                           0000E4   381 _C0L	=	0x00e4
                           0000E5   382 _C0H	=	0x00e5
                           0000E6   383 _C1L	=	0x00e6
                           0000E7   384 _C1H	=	0x00e7
                           0000E8   385 _ADCCON0	=	0x00e8
                           0000E9   386 _PICON	=	0x00e9
                           0000EA   387 _PINEN	=	0x00ea
                           0000EB   388 _PIPEN	=	0x00eb
                           0000EC   389 _PIF	=	0x00ec
                           0000ED   390 _C2L	=	0x00ed
                           0000EE   391 _C2H	=	0x00ee
                           0000EF   392 _EIP	=	0x00ef
                           0000F0   393 _B	=	0x00f0
                           0000F1   394 _CAPCON3	=	0x00f1
                           0000F2   395 _CAPCON4	=	0x00f2
                           0000F3   396 _SPCR	=	0x00f3
                           0000F3   397 _SPCR2	=	0x00f3
                           0000F4   398 _SPSR	=	0x00f4
                           0000F5   399 _SPDR	=	0x00f5
                           0000F6   400 _AINDIDS	=	0x00f6
                           0000F7   401 _EIPH	=	0x00f7
                           0000F8   402 _SCON_1	=	0x00f8
                           0000F9   403 _PDTEN	=	0x00f9
                           0000FA   404 _PDTCNT	=	0x00fa
                           0000FB   405 _PMEN	=	0x00fb
                           0000FC   406 _PMD	=	0x00fc
                           0000FE   407 _EIP1	=	0x00fe
                           0000FF   408 _EIPH1	=	0x00ff
                                    409 ;--------------------------------------------------------
                                    410 ; special function bits
                                    411 ;--------------------------------------------------------
                                    412 	.area RSEG    (ABS,DATA)
      000000                        413 	.org 0x0000
                           0000FF   414 _SM0_1	=	0x00ff
                           0000FF   415 _FE_1	=	0x00ff
                           0000FE   416 _SM1_1	=	0x00fe
                           0000FD   417 _SM2_1	=	0x00fd
                           0000FC   418 _REN_1	=	0x00fc
                           0000FB   419 _TB8_1	=	0x00fb
                           0000FA   420 _RB8_1	=	0x00fa
                           0000F9   421 _TI_1	=	0x00f9
                           0000F8   422 _RI_1	=	0x00f8
                           0000EF   423 _ADCF	=	0x00ef
                           0000EE   424 _ADCS	=	0x00ee
                           0000ED   425 _ETGSEL1	=	0x00ed
                           0000EC   426 _ETGSEL0	=	0x00ec
                           0000EB   427 _ADCHS3	=	0x00eb
                           0000EA   428 _ADCHS2	=	0x00ea
                           0000E9   429 _ADCHS1	=	0x00e9
                           0000E8   430 _ADCHS0	=	0x00e8
                           0000DF   431 _PWMRUN	=	0x00df
                           0000DE   432 _LOAD	=	0x00de
                           0000DD   433 _PWMF	=	0x00dd
                           0000DC   434 _CLRPWM	=	0x00dc
                           0000D7   435 _CY	=	0x00d7
                           0000D6   436 _AC	=	0x00d6
                           0000D5   437 _F0	=	0x00d5
                           0000D4   438 _RS1	=	0x00d4
                           0000D3   439 _RS0	=	0x00d3
                           0000D2   440 _OV	=	0x00d2
                           0000D0   441 _P	=	0x00d0
                           0000CF   442 _TF2	=	0x00cf
                           0000CA   443 _TR2	=	0x00ca
                           0000C8   444 _CM_RL2	=	0x00c8
                           0000C6   445 _I2CEN	=	0x00c6
                           0000C5   446 _STA	=	0x00c5
                           0000C4   447 _STO	=	0x00c4
                           0000C3   448 _SI	=	0x00c3
                           0000C2   449 _AA	=	0x00c2
                           0000C0   450 _I2CPX	=	0x00c0
                           0000BE   451 _PADC	=	0x00be
                           0000BD   452 _PBOD	=	0x00bd
                           0000BC   453 _PS	=	0x00bc
                           0000BB   454 _PT1	=	0x00bb
                           0000BA   455 _PX1	=	0x00ba
                           0000B9   456 _PT0	=	0x00b9
                           0000B8   457 _PX0	=	0x00b8
                           0000B0   458 _P30	=	0x00b0
                           0000AF   459 _EA	=	0x00af
                           0000AE   460 _EADC	=	0x00ae
                           0000AD   461 _EBOD	=	0x00ad
                           0000AC   462 _ES	=	0x00ac
                           0000AB   463 _ET1	=	0x00ab
                           0000AA   464 _EX1	=	0x00aa
                           0000A9   465 _ET0	=	0x00a9
                           0000A8   466 _EX0	=	0x00a8
                           0000A0   467 _P20	=	0x00a0
                           00009F   468 _SM0	=	0x009f
                           00009F   469 _FE	=	0x009f
                           00009E   470 _SM1	=	0x009e
                           00009D   471 _SM2	=	0x009d
                           00009C   472 _REN	=	0x009c
                           00009B   473 _TB8	=	0x009b
                           00009A   474 _RB8	=	0x009a
                           000099   475 _TI	=	0x0099
                           000098   476 _RI	=	0x0098
                           000097   477 _P17	=	0x0097
                           000096   478 _P16	=	0x0096
                           000096   479 _TXD_1	=	0x0096
                           000095   480 _P15	=	0x0095
                           000094   481 _P14	=	0x0094
                           000094   482 _SDA	=	0x0094
                           000093   483 _P13	=	0x0093
                           000093   484 _SCL	=	0x0093
                           000092   485 _P12	=	0x0092
                           000091   486 _P11	=	0x0091
                           000090   487 _P10	=	0x0090
                           00008F   488 _TF1	=	0x008f
                           00008E   489 _TR1	=	0x008e
                           00008D   490 _TF0	=	0x008d
                           00008C   491 _TR0	=	0x008c
                           00008B   492 _IE1	=	0x008b
                           00008A   493 _IT1	=	0x008a
                           000089   494 _IE0	=	0x0089
                           000088   495 _IT0	=	0x0088
                           000087   496 _P07	=	0x0087
                           000087   497 _RXD	=	0x0087
                           000086   498 _P06	=	0x0086
                           000086   499 _TXD	=	0x0086
                           000085   500 _P05	=	0x0085
                           000084   501 _P04	=	0x0084
                           000084   502 _STADC	=	0x0084
                           000083   503 _P03	=	0x0083
                           000082   504 _P02	=	0x0082
                           000082   505 _RXD_1	=	0x0082
                           000081   506 _P01	=	0x0081
                           000081   507 _MISO	=	0x0081
                           000080   508 _P00	=	0x0080
                           000080   509 _MOSI	=	0x0080
                                    510 ;--------------------------------------------------------
                                    511 ; overlayable register banks
                                    512 ;--------------------------------------------------------
                                    513 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        514 	.ds 8
                                    515 ;--------------------------------------------------------
                                    516 ; internal ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area DSEG    (DATA)
      00005F                        519 _gu16Cnt::
      00005F                        520 	.ds 2
      000061                        521 _cp_buf2linefipacket_PARM_2:
      000061                        522 	.ds 3
      000064                        523 _cp_buf2linefipacket_PARM_3:
      000064                        524 	.ds 3
      000067                        525 _cp_buf2linefipacket_i_65538_75:
      000067                        526 	.ds 1
      000068                        527 _cp_buf2linefipacket_sloc0_1_0:
      000068                        528 	.ds 3
      00006B                        529 _print_linefipacket_i_65537_81:
      00006B                        530 	.ds 1
      00006C                        531 _get_timer_value_ptr3_65536_85:
      00006C                        532 	.ds 3
      00006F                        533 _get_bktimer_value_ptr_sht_65536_89:
      00006F                        534 	.ds 3
      000072                        535 _print_raw_packet_PARM_2:
      000072                        536 	.ds 3
                                    537 ;--------------------------------------------------------
                                    538 ; overlayable items in internal ram 
                                    539 ;--------------------------------------------------------
                                    540 	.area	OSEG    (OVR,DATA)
                                    541 	.area	OSEG    (OVR,DATA)
                                    542 	.area	OSEG    (OVR,DATA)
                                    543 	.area	OSEG    (OVR,DATA)
      000019                        544 _crc8_PARM_2:
      000019                        545 	.ds 1
      00001A                        546 _crc8_PARM_3:
      00001A                        547 	.ds 1
                                    548 ;--------------------------------------------------------
                                    549 ; indirectly addressable internal ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area ISEG    (DATA)
                                    552 ;--------------------------------------------------------
                                    553 ; absolute internal ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area IABS    (ABS,DATA)
                                    556 	.area IABS    (ABS,DATA)
                                    557 ;--------------------------------------------------------
                                    558 ; bit data
                                    559 ;--------------------------------------------------------
                                    560 	.area BSEG    (BIT)
                                    561 ;--------------------------------------------------------
                                    562 ; paged external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area PSEG    (PAG,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XSEG    (XDATA)
      0000D6                        569 _gpcTypeStr::
      0000D6                        570 	.ds 84
                                    571 ;--------------------------------------------------------
                                    572 ; absolute external ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area XABS    (ABS,XDATA)
                                    575 ;--------------------------------------------------------
                                    576 ; external initialized ram data
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area GSINIT0 (CODE)
                                    580 	.area GSINIT1 (CODE)
                                    581 	.area GSINIT2 (CODE)
                                    582 	.area GSINIT3 (CODE)
                                    583 	.area GSINIT4 (CODE)
                                    584 	.area GSINIT5 (CODE)
                                    585 	.area GSINIT  (CODE)
                                    586 	.area GSFINAL (CODE)
                                    587 	.area CSEG    (CODE)
                                    588 ;--------------------------------------------------------
                                    589 ; global & static initialisations
                                    590 ;--------------------------------------------------------
                                    591 	.area HOME    (CODE)
                                    592 	.area GSINIT  (CODE)
                                    593 	.area GSFINAL (CODE)
                                    594 	.area GSINIT  (CODE)
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'get_timer_value'
                                    597 ;------------------------------------------------------------
                                    598 ;ptr3                      Allocated with name '_get_timer_value_ptr3_65536_85'
                                    599 ;index                     Allocated to registers r7 
                                    600 ;value                     Allocated to registers r5 
                                    601 ;a                         Allocated with name '_get_timer_value_a_65536_85'
                                    602 ;------------------------------------------------------------
                                    603 ;	../lib/linefi_packet.c:199: static uint8 *ptr3 = NULL; 
      00029F E4               [12]  604 	clr	a
      0002A0 F5 6C            [12]  605 	mov	_get_timer_value_ptr3_65536_85,a
      0002A2 F5 6D            [12]  606 	mov	(_get_timer_value_ptr3_65536_85 + 1),a
                                    607 ;	1-genFromRTrack replaced	mov	(_get_timer_value_ptr3_65536_85 + 2),#0x00
      0002A4 F5 6E            [12]  608 	mov	(_get_timer_value_ptr3_65536_85 + 2),a
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'get_bktimer_value'
                                    611 ;------------------------------------------------------------
                                    612 ;ptr_sht                   Allocated with name '_get_bktimer_value_ptr_sht_65536_89'
                                    613 ;index                     Allocated to registers r7 
                                    614 ;value                     Allocated to registers r5 
                                    615 ;a                         Allocated with name '_get_bktimer_value_a_65536_89'
                                    616 ;------------------------------------------------------------
                                    617 ;	../lib/linefi_packet.c:213: static uint8 *ptr_sht = NULL; 
      0002A6 E4               [12]  618 	clr	a
      0002A7 F5 6F            [12]  619 	mov	_get_bktimer_value_ptr_sht_65536_89,a
      0002A9 F5 70            [12]  620 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 1),a
                                    621 ;	1-genFromRTrack replaced	mov	(_get_bktimer_value_ptr_sht_65536_89 + 2),#0x00
      0002AB F5 71            [12]  622 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 2),a
                                    623 ;	../lib/linefi_packet.c:15: uint16 gu16Cnt = 0;
      0002AD E4               [12]  624 	clr	a
      0002AE F5 5F            [12]  625 	mov	_gu16Cnt,a
      0002B0 F5 60            [12]  626 	mov	(_gu16Cnt + 1),a
                                    627 ;	../lib/linefi_packet.c:17: const char * __xdata gpcTypeStr[] = {
      0002B2 90 00 D6         [24]  628 	mov	dptr,#_gpcTypeStr
      0002B5 74 89            [12]  629 	mov	a,#___str_14
      0002B7 F0               [24]  630 	movx	@dptr,a
      0002B8 74 3D            [12]  631 	mov	a,#(___str_14 >> 8)
      0002BA A3               [24]  632 	inc	dptr
      0002BB F0               [24]  633 	movx	@dptr,a
      0002BC 74 80            [12]  634 	mov	a,#0x80
      0002BE A3               [24]  635 	inc	dptr
      0002BF F0               [24]  636 	movx	@dptr,a
      0002C0 90 00 D9         [24]  637 	mov	dptr,#(_gpcTypeStr + 0x0003)
      0002C3 74 94            [12]  638 	mov	a,#___str_15
      0002C5 F0               [24]  639 	movx	@dptr,a
      0002C6 74 3D            [12]  640 	mov	a,#(___str_15 >> 8)
      0002C8 A3               [24]  641 	inc	dptr
      0002C9 F0               [24]  642 	movx	@dptr,a
      0002CA 74 80            [12]  643 	mov	a,#0x80
      0002CC A3               [24]  644 	inc	dptr
      0002CD F0               [24]  645 	movx	@dptr,a
      0002CE 90 00 DC         [24]  646 	mov	dptr,#(_gpcTypeStr + 0x0006)
      0002D1 74 9F            [12]  647 	mov	a,#___str_16
      0002D3 F0               [24]  648 	movx	@dptr,a
      0002D4 74 3D            [12]  649 	mov	a,#(___str_16 >> 8)
      0002D6 A3               [24]  650 	inc	dptr
      0002D7 F0               [24]  651 	movx	@dptr,a
      0002D8 74 80            [12]  652 	mov	a,#0x80
      0002DA A3               [24]  653 	inc	dptr
      0002DB F0               [24]  654 	movx	@dptr,a
      0002DC 90 00 DF         [24]  655 	mov	dptr,#(_gpcTypeStr + 0x0009)
      0002DF 74 AA            [12]  656 	mov	a,#___str_17
      0002E1 F0               [24]  657 	movx	@dptr,a
      0002E2 74 3D            [12]  658 	mov	a,#(___str_17 >> 8)
      0002E4 A3               [24]  659 	inc	dptr
      0002E5 F0               [24]  660 	movx	@dptr,a
      0002E6 74 80            [12]  661 	mov	a,#0x80
      0002E8 A3               [24]  662 	inc	dptr
      0002E9 F0               [24]  663 	movx	@dptr,a
      0002EA 90 00 E2         [24]  664 	mov	dptr,#(_gpcTypeStr + 0x000c)
      0002ED 74 B7            [12]  665 	mov	a,#___str_18
      0002EF F0               [24]  666 	movx	@dptr,a
      0002F0 74 3D            [12]  667 	mov	a,#(___str_18 >> 8)
      0002F2 A3               [24]  668 	inc	dptr
      0002F3 F0               [24]  669 	movx	@dptr,a
      0002F4 74 80            [12]  670 	mov	a,#0x80
      0002F6 A3               [24]  671 	inc	dptr
      0002F7 F0               [24]  672 	movx	@dptr,a
      0002F8 90 00 E5         [24]  673 	mov	dptr,#(_gpcTypeStr + 0x000f)
      0002FB 74 C3            [12]  674 	mov	a,#___str_19
      0002FD F0               [24]  675 	movx	@dptr,a
      0002FE 74 3D            [12]  676 	mov	a,#(___str_19 >> 8)
      000300 A3               [24]  677 	inc	dptr
      000301 F0               [24]  678 	movx	@dptr,a
      000302 74 80            [12]  679 	mov	a,#0x80
      000304 A3               [24]  680 	inc	dptr
      000305 F0               [24]  681 	movx	@dptr,a
      000306 90 00 E8         [24]  682 	mov	dptr,#(_gpcTypeStr + 0x0012)
      000309 74 D2            [12]  683 	mov	a,#___str_20
      00030B F0               [24]  684 	movx	@dptr,a
      00030C 74 3D            [12]  685 	mov	a,#(___str_20 >> 8)
      00030E A3               [24]  686 	inc	dptr
      00030F F0               [24]  687 	movx	@dptr,a
      000310 74 80            [12]  688 	mov	a,#0x80
      000312 A3               [24]  689 	inc	dptr
      000313 F0               [24]  690 	movx	@dptr,a
      000314 90 00 EB         [24]  691 	mov	dptr,#(_gpcTypeStr + 0x0015)
      000317 74 E0            [12]  692 	mov	a,#___str_21
      000319 F0               [24]  693 	movx	@dptr,a
      00031A 74 3D            [12]  694 	mov	a,#(___str_21 >> 8)
      00031C A3               [24]  695 	inc	dptr
      00031D F0               [24]  696 	movx	@dptr,a
      00031E 74 80            [12]  697 	mov	a,#0x80
      000320 A3               [24]  698 	inc	dptr
      000321 F0               [24]  699 	movx	@dptr,a
      000322 90 00 EE         [24]  700 	mov	dptr,#(_gpcTypeStr + 0x0018)
      000325 74 E9            [12]  701 	mov	a,#___str_22
      000327 F0               [24]  702 	movx	@dptr,a
      000328 74 3D            [12]  703 	mov	a,#(___str_22 >> 8)
      00032A A3               [24]  704 	inc	dptr
      00032B F0               [24]  705 	movx	@dptr,a
      00032C 74 80            [12]  706 	mov	a,#0x80
      00032E A3               [24]  707 	inc	dptr
      00032F F0               [24]  708 	movx	@dptr,a
      000330 90 00 F1         [24]  709 	mov	dptr,#(_gpcTypeStr + 0x001b)
      000333 74 E9            [12]  710 	mov	a,#___str_22
      000335 F0               [24]  711 	movx	@dptr,a
      000336 74 3D            [12]  712 	mov	a,#(___str_22 >> 8)
      000338 A3               [24]  713 	inc	dptr
      000339 F0               [24]  714 	movx	@dptr,a
      00033A 74 80            [12]  715 	mov	a,#0x80
      00033C A3               [24]  716 	inc	dptr
      00033D F0               [24]  717 	movx	@dptr,a
      00033E 90 00 F4         [24]  718 	mov	dptr,#(_gpcTypeStr + 0x001e)
      000341 74 E9            [12]  719 	mov	a,#___str_22
      000343 F0               [24]  720 	movx	@dptr,a
      000344 74 3D            [12]  721 	mov	a,#(___str_22 >> 8)
      000346 A3               [24]  722 	inc	dptr
      000347 F0               [24]  723 	movx	@dptr,a
      000348 74 80            [12]  724 	mov	a,#0x80
      00034A A3               [24]  725 	inc	dptr
      00034B F0               [24]  726 	movx	@dptr,a
      00034C 90 00 F7         [24]  727 	mov	dptr,#(_gpcTypeStr + 0x0021)
      00034F 74 E9            [12]  728 	mov	a,#___str_22
      000351 F0               [24]  729 	movx	@dptr,a
      000352 74 3D            [12]  730 	mov	a,#(___str_22 >> 8)
      000354 A3               [24]  731 	inc	dptr
      000355 F0               [24]  732 	movx	@dptr,a
      000356 74 80            [12]  733 	mov	a,#0x80
      000358 A3               [24]  734 	inc	dptr
      000359 F0               [24]  735 	movx	@dptr,a
      00035A 90 00 FA         [24]  736 	mov	dptr,#(_gpcTypeStr + 0x0024)
      00035D 74 E9            [12]  737 	mov	a,#___str_22
      00035F F0               [24]  738 	movx	@dptr,a
      000360 74 3D            [12]  739 	mov	a,#(___str_22 >> 8)
      000362 A3               [24]  740 	inc	dptr
      000363 F0               [24]  741 	movx	@dptr,a
      000364 74 80            [12]  742 	mov	a,#0x80
      000366 A3               [24]  743 	inc	dptr
      000367 F0               [24]  744 	movx	@dptr,a
      000368 90 00 FD         [24]  745 	mov	dptr,#(_gpcTypeStr + 0x0027)
      00036B 74 E9            [12]  746 	mov	a,#___str_22
      00036D F0               [24]  747 	movx	@dptr,a
      00036E 74 3D            [12]  748 	mov	a,#(___str_22 >> 8)
      000370 A3               [24]  749 	inc	dptr
      000371 F0               [24]  750 	movx	@dptr,a
      000372 74 80            [12]  751 	mov	a,#0x80
      000374 A3               [24]  752 	inc	dptr
      000375 F0               [24]  753 	movx	@dptr,a
      000376 90 01 00         [24]  754 	mov	dptr,#(_gpcTypeStr + 0x002a)
      000379 74 E9            [12]  755 	mov	a,#___str_22
      00037B F0               [24]  756 	movx	@dptr,a
      00037C 74 3D            [12]  757 	mov	a,#(___str_22 >> 8)
      00037E A3               [24]  758 	inc	dptr
      00037F F0               [24]  759 	movx	@dptr,a
      000380 74 80            [12]  760 	mov	a,#0x80
      000382 A3               [24]  761 	inc	dptr
      000383 F0               [24]  762 	movx	@dptr,a
      000384 90 01 03         [24]  763 	mov	dptr,#(_gpcTypeStr + 0x002d)
      000387 74 E9            [12]  764 	mov	a,#___str_22
      000389 F0               [24]  765 	movx	@dptr,a
      00038A 74 3D            [12]  766 	mov	a,#(___str_22 >> 8)
      00038C A3               [24]  767 	inc	dptr
      00038D F0               [24]  768 	movx	@dptr,a
      00038E 74 80            [12]  769 	mov	a,#0x80
      000390 A3               [24]  770 	inc	dptr
      000391 F0               [24]  771 	movx	@dptr,a
      000392 90 01 06         [24]  772 	mov	dptr,#(_gpcTypeStr + 0x0030)
      000395 74 E9            [12]  773 	mov	a,#___str_22
      000397 F0               [24]  774 	movx	@dptr,a
      000398 74 3D            [12]  775 	mov	a,#(___str_22 >> 8)
      00039A A3               [24]  776 	inc	dptr
      00039B F0               [24]  777 	movx	@dptr,a
      00039C 74 80            [12]  778 	mov	a,#0x80
      00039E A3               [24]  779 	inc	dptr
      00039F F0               [24]  780 	movx	@dptr,a
      0003A0 90 01 09         [24]  781 	mov	dptr,#(_gpcTypeStr + 0x0033)
      0003A3 74 E9            [12]  782 	mov	a,#___str_22
      0003A5 F0               [24]  783 	movx	@dptr,a
      0003A6 74 3D            [12]  784 	mov	a,#(___str_22 >> 8)
      0003A8 A3               [24]  785 	inc	dptr
      0003A9 F0               [24]  786 	movx	@dptr,a
      0003AA 74 80            [12]  787 	mov	a,#0x80
      0003AC A3               [24]  788 	inc	dptr
      0003AD F0               [24]  789 	movx	@dptr,a
      0003AE 90 01 0C         [24]  790 	mov	dptr,#(_gpcTypeStr + 0x0036)
      0003B1 74 E9            [12]  791 	mov	a,#___str_22
      0003B3 F0               [24]  792 	movx	@dptr,a
      0003B4 74 3D            [12]  793 	mov	a,#(___str_22 >> 8)
      0003B6 A3               [24]  794 	inc	dptr
      0003B7 F0               [24]  795 	movx	@dptr,a
      0003B8 74 80            [12]  796 	mov	a,#0x80
      0003BA A3               [24]  797 	inc	dptr
      0003BB F0               [24]  798 	movx	@dptr,a
      0003BC 90 01 0F         [24]  799 	mov	dptr,#(_gpcTypeStr + 0x0039)
      0003BF 74 E9            [12]  800 	mov	a,#___str_22
      0003C1 F0               [24]  801 	movx	@dptr,a
      0003C2 74 3D            [12]  802 	mov	a,#(___str_22 >> 8)
      0003C4 A3               [24]  803 	inc	dptr
      0003C5 F0               [24]  804 	movx	@dptr,a
      0003C6 74 80            [12]  805 	mov	a,#0x80
      0003C8 A3               [24]  806 	inc	dptr
      0003C9 F0               [24]  807 	movx	@dptr,a
      0003CA 90 01 12         [24]  808 	mov	dptr,#(_gpcTypeStr + 0x003c)
      0003CD 74 E9            [12]  809 	mov	a,#___str_22
      0003CF F0               [24]  810 	movx	@dptr,a
      0003D0 74 3D            [12]  811 	mov	a,#(___str_22 >> 8)
      0003D2 A3               [24]  812 	inc	dptr
      0003D3 F0               [24]  813 	movx	@dptr,a
      0003D4 74 80            [12]  814 	mov	a,#0x80
      0003D6 A3               [24]  815 	inc	dptr
      0003D7 F0               [24]  816 	movx	@dptr,a
      0003D8 90 01 15         [24]  817 	mov	dptr,#(_gpcTypeStr + 0x003f)
      0003DB 74 E9            [12]  818 	mov	a,#___str_22
      0003DD F0               [24]  819 	movx	@dptr,a
      0003DE 74 3D            [12]  820 	mov	a,#(___str_22 >> 8)
      0003E0 A3               [24]  821 	inc	dptr
      0003E1 F0               [24]  822 	movx	@dptr,a
      0003E2 74 80            [12]  823 	mov	a,#0x80
      0003E4 A3               [24]  824 	inc	dptr
      0003E5 F0               [24]  825 	movx	@dptr,a
      0003E6 90 01 18         [24]  826 	mov	dptr,#(_gpcTypeStr + 0x0042)
      0003E9 74 E9            [12]  827 	mov	a,#___str_22
      0003EB F0               [24]  828 	movx	@dptr,a
      0003EC 74 3D            [12]  829 	mov	a,#(___str_22 >> 8)
      0003EE A3               [24]  830 	inc	dptr
      0003EF F0               [24]  831 	movx	@dptr,a
      0003F0 74 80            [12]  832 	mov	a,#0x80
      0003F2 A3               [24]  833 	inc	dptr
      0003F3 F0               [24]  834 	movx	@dptr,a
      0003F4 90 01 1B         [24]  835 	mov	dptr,#(_gpcTypeStr + 0x0045)
      0003F7 74 E9            [12]  836 	mov	a,#___str_22
      0003F9 F0               [24]  837 	movx	@dptr,a
      0003FA 74 3D            [12]  838 	mov	a,#(___str_22 >> 8)
      0003FC A3               [24]  839 	inc	dptr
      0003FD F0               [24]  840 	movx	@dptr,a
      0003FE 74 80            [12]  841 	mov	a,#0x80
      000400 A3               [24]  842 	inc	dptr
      000401 F0               [24]  843 	movx	@dptr,a
      000402 90 01 1E         [24]  844 	mov	dptr,#(_gpcTypeStr + 0x0048)
      000405 74 E9            [12]  845 	mov	a,#___str_22
      000407 F0               [24]  846 	movx	@dptr,a
      000408 74 3D            [12]  847 	mov	a,#(___str_22 >> 8)
      00040A A3               [24]  848 	inc	dptr
      00040B F0               [24]  849 	movx	@dptr,a
      00040C 74 80            [12]  850 	mov	a,#0x80
      00040E A3               [24]  851 	inc	dptr
      00040F F0               [24]  852 	movx	@dptr,a
      000410 90 01 21         [24]  853 	mov	dptr,#(_gpcTypeStr + 0x004b)
      000413 74 E9            [12]  854 	mov	a,#___str_22
      000415 F0               [24]  855 	movx	@dptr,a
      000416 74 3D            [12]  856 	mov	a,#(___str_22 >> 8)
      000418 A3               [24]  857 	inc	dptr
      000419 F0               [24]  858 	movx	@dptr,a
      00041A 74 80            [12]  859 	mov	a,#0x80
      00041C A3               [24]  860 	inc	dptr
      00041D F0               [24]  861 	movx	@dptr,a
      00041E 90 01 24         [24]  862 	mov	dptr,#(_gpcTypeStr + 0x004e)
      000421 74 E9            [12]  863 	mov	a,#___str_22
      000423 F0               [24]  864 	movx	@dptr,a
      000424 74 3D            [12]  865 	mov	a,#(___str_22 >> 8)
      000426 A3               [24]  866 	inc	dptr
      000427 F0               [24]  867 	movx	@dptr,a
      000428 74 80            [12]  868 	mov	a,#0x80
      00042A A3               [24]  869 	inc	dptr
      00042B F0               [24]  870 	movx	@dptr,a
      00042C 90 01 27         [24]  871 	mov	dptr,#(_gpcTypeStr + 0x0051)
      00042F 74 E9            [12]  872 	mov	a,#___str_22
      000431 F0               [24]  873 	movx	@dptr,a
      000432 74 3D            [12]  874 	mov	a,#(___str_22 >> 8)
      000434 A3               [24]  875 	inc	dptr
      000435 F0               [24]  876 	movx	@dptr,a
      000436 74 80            [12]  877 	mov	a,#0x80
      000438 A3               [24]  878 	inc	dptr
      000439 F0               [24]  879 	movx	@dptr,a
                                    880 ;--------------------------------------------------------
                                    881 ; Home
                                    882 ;--------------------------------------------------------
                                    883 	.area HOME    (CODE)
                                    884 	.area HOME    (CODE)
                                    885 ;--------------------------------------------------------
                                    886 ; code
                                    887 ;--------------------------------------------------------
                                    888 	.area CSEG    (CODE)
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'size_linefi_packet'
                                    891 ;------------------------------------------------------------
                                    892 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    893 ;------------------------------------------------------------
                                    894 ;	../lib/linefi_packet.c:48: uint8 size_linefi_packet(linefi_packet_t * apstLineFiPkt)
                                    895 ;	-----------------------------------------
                                    896 ;	 function size_linefi_packet
                                    897 ;	-----------------------------------------
      00221D                        898 _size_linefi_packet:
                           000007   899 	ar7 = 0x07
                           000006   900 	ar6 = 0x06
                           000005   901 	ar5 = 0x05
                           000004   902 	ar4 = 0x04
                           000003   903 	ar3 = 0x03
                           000002   904 	ar2 = 0x02
                           000001   905 	ar1 = 0x01
                           000000   906 	ar0 = 0x00
      00221D AD 82            [24]  907 	mov	r5,dpl
      00221F AE 83            [24]  908 	mov	r6,dph
      002221 AF F0            [24]  909 	mov	r7,b
                                    910 ;	../lib/linefi_packet.c:50: return apstLineFiPkt->u8Size + sizeof(linefi_packet_t) - sizeof(uint8 *);
      002223 74 03            [12]  911 	mov	a,#0x03
      002225 2D               [12]  912 	add	a,r5
      002226 FD               [12]  913 	mov	r5,a
      002227 E4               [12]  914 	clr	a
      002228 3E               [12]  915 	addc	a,r6
      002229 FE               [12]  916 	mov	r6,a
      00222A 8D 82            [24]  917 	mov	dpl,r5
      00222C 8E 83            [24]  918 	mov	dph,r6
      00222E 8F F0            [24]  919 	mov	b,r7
      002230 12 37 EE         [24]  920 	lcall	__gptrget
      002233 24 05            [12]  921 	add	a,#0x05
      002235 F5 82            [12]  922 	mov	dpl,a
                                    923 ;	../lib/linefi_packet.c:51: }
      002237 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'calc_crc_linefi_packet_packet'
                                    927 ;------------------------------------------------------------
                                    928 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    929 ;u8CRC                     Allocated to registers 
                                    930 ;------------------------------------------------------------
                                    931 ;	../lib/linefi_packet.c:53: uint8 calc_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                    932 ;	-----------------------------------------
                                    933 ;	 function calc_crc_linefi_packet_packet
                                    934 ;	-----------------------------------------
      002238                        935 _calc_crc_linefi_packet_packet:
      002238 AD 82            [24]  936 	mov	r5,dpl
      00223A AE 83            [24]  937 	mov	r6,dph
      00223C AF F0            [24]  938 	mov	r7,b
                                    939 ;	../lib/linefi_packet.c:55: uint8 u8CRC = crc8((uint8 *)apstLineFiPkt, 4, 0xFF);
      00223E 8D 02            [24]  940 	mov	ar2,r5
      002240 8E 03            [24]  941 	mov	ar3,r6
      002242 8F 04            [24]  942 	mov	ar4,r7
      002244 75 19 04         [24]  943 	mov	_crc8_PARM_2,#0x04
      002247 75 1A FF         [24]  944 	mov	_crc8_PARM_3,#0xff
      00224A 8A 82            [24]  945 	mov	dpl,r2
      00224C 8B 83            [24]  946 	mov	dph,r3
      00224E 8C F0            [24]  947 	mov	b,r4
      002250 C0 07            [24]  948 	push	ar7
      002252 C0 06            [24]  949 	push	ar6
      002254 C0 05            [24]  950 	push	ar5
      002256 12 28 E0         [24]  951 	lcall	_crc8
      002259 85 82 1A         [24]  952 	mov	_crc8_PARM_3,dpl
      00225C D0 05            [24]  953 	pop	ar5
      00225E D0 06            [24]  954 	pop	ar6
      002260 D0 07            [24]  955 	pop	ar7
                                    956 ;	../lib/linefi_packet.c:56: u8CRC = crc8((uint8 *)(apstLineFiPkt->pu8Data), apstLineFiPkt->u8Size-5, u8CRC);
      002262 74 05            [12]  957 	mov	a,#0x05
      002264 2D               [12]  958 	add	a,r5
      002265 FA               [12]  959 	mov	r2,a
      002266 E4               [12]  960 	clr	a
      002267 3E               [12]  961 	addc	a,r6
      002268 FB               [12]  962 	mov	r3,a
      002269 8F 04            [24]  963 	mov	ar4,r7
      00226B 8A 82            [24]  964 	mov	dpl,r2
      00226D 8B 83            [24]  965 	mov	dph,r3
      00226F 8C F0            [24]  966 	mov	b,r4
      002271 12 37 EE         [24]  967 	lcall	__gptrget
      002274 FA               [12]  968 	mov	r2,a
      002275 A3               [24]  969 	inc	dptr
      002276 12 37 EE         [24]  970 	lcall	__gptrget
      002279 FB               [12]  971 	mov	r3,a
      00227A A3               [24]  972 	inc	dptr
      00227B 12 37 EE         [24]  973 	lcall	__gptrget
      00227E FC               [12]  974 	mov	r4,a
      00227F 74 03            [12]  975 	mov	a,#0x03
      002281 2D               [12]  976 	add	a,r5
      002282 FD               [12]  977 	mov	r5,a
      002283 E4               [12]  978 	clr	a
      002284 3E               [12]  979 	addc	a,r6
      002285 FE               [12]  980 	mov	r6,a
      002286 8D 82            [24]  981 	mov	dpl,r5
      002288 8E 83            [24]  982 	mov	dph,r6
      00228A 8F F0            [24]  983 	mov	b,r7
      00228C 12 37 EE         [24]  984 	lcall	__gptrget
      00228F 24 FB            [12]  985 	add	a,#0xfb
      002291 F5 19            [12]  986 	mov	_crc8_PARM_2,a
      002293 8A 82            [24]  987 	mov	dpl,r2
      002295 8B 83            [24]  988 	mov	dph,r3
      002297 8C F0            [24]  989 	mov	b,r4
                                    990 ;	../lib/linefi_packet.c:58: return u8CRC;
                                    991 ;	../lib/linefi_packet.c:59: }
      002299 02 28 E0         [24]  992 	ljmp	_crc8
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'add_crc_linefi_packet_packet'
                                    995 ;------------------------------------------------------------
                                    996 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    997 ;u8CRC                     Allocated to registers r4 
                                    998 ;------------------------------------------------------------
                                    999 ;	../lib/linefi_packet.c:61: void add_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                   1000 ;	-----------------------------------------
                                   1001 ;	 function add_crc_linefi_packet_packet
                                   1002 ;	-----------------------------------------
      00229C                       1003 _add_crc_linefi_packet_packet:
                                   1004 ;	../lib/linefi_packet.c:63: uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      00229C AD 82            [24] 1005 	mov	r5,dpl
      00229E AE 83            [24] 1006 	mov	r6,dph
      0022A0 AF F0            [24] 1007 	mov	r7,b
      0022A2 C0 07            [24] 1008 	push	ar7
      0022A4 C0 06            [24] 1009 	push	ar6
      0022A6 C0 05            [24] 1010 	push	ar5
      0022A8 12 22 38         [24] 1011 	lcall	_calc_crc_linefi_packet_packet
      0022AB AC 82            [24] 1012 	mov	r4,dpl
      0022AD D0 05            [24] 1013 	pop	ar5
      0022AF D0 06            [24] 1014 	pop	ar6
      0022B1 D0 07            [24] 1015 	pop	ar7
                                   1016 ;	../lib/linefi_packet.c:64: apstLineFiPkt->u8CRC = u8CRC;
      0022B3 74 04            [12] 1017 	mov	a,#0x04
      0022B5 2D               [12] 1018 	add	a,r5
      0022B6 FD               [12] 1019 	mov	r5,a
      0022B7 E4               [12] 1020 	clr	a
      0022B8 3E               [12] 1021 	addc	a,r6
      0022B9 FE               [12] 1022 	mov	r6,a
      0022BA 8D 82            [24] 1023 	mov	dpl,r5
      0022BC 8E 83            [24] 1024 	mov	dph,r6
      0022BE 8F F0            [24] 1025 	mov	b,r7
      0022C0 EC               [12] 1026 	mov	a,r4
                                   1027 ;	../lib/linefi_packet.c:65: }
      0022C1 02 36 89         [24] 1028 	ljmp	__gptrput
                                   1029 ;------------------------------------------------------------
                                   1030 ;Allocation info for local variables in function 'chk_crc_linefi_packet_packet'
                                   1031 ;------------------------------------------------------------
                                   1032 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   1033 ;u8CRC                     Allocated to registers r4 
                                   1034 ;------------------------------------------------------------
                                   1035 ;	../lib/linefi_packet.c:67: uint8 chk_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function chk_crc_linefi_packet_packet
                                   1038 ;	-----------------------------------------
      0022C4                       1039 _chk_crc_linefi_packet_packet:
                                   1040 ;	../lib/linefi_packet.c:69: uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      0022C4 AD 82            [24] 1041 	mov	r5,dpl
      0022C6 AE 83            [24] 1042 	mov	r6,dph
      0022C8 AF F0            [24] 1043 	mov	r7,b
      0022CA C0 07            [24] 1044 	push	ar7
      0022CC C0 06            [24] 1045 	push	ar6
      0022CE C0 05            [24] 1046 	push	ar5
      0022D0 12 22 38         [24] 1047 	lcall	_calc_crc_linefi_packet_packet
      0022D3 AC 82            [24] 1048 	mov	r4,dpl
      0022D5 D0 05            [24] 1049 	pop	ar5
      0022D7 D0 06            [24] 1050 	pop	ar6
      0022D9 D0 07            [24] 1051 	pop	ar7
                                   1052 ;	../lib/linefi_packet.c:71: if (apstLineFiPkt->u8CRC == u8CRC) {
      0022DB 74 04            [12] 1053 	mov	a,#0x04
      0022DD 2D               [12] 1054 	add	a,r5
      0022DE FD               [12] 1055 	mov	r5,a
      0022DF E4               [12] 1056 	clr	a
      0022E0 3E               [12] 1057 	addc	a,r6
      0022E1 FE               [12] 1058 	mov	r6,a
      0022E2 8D 82            [24] 1059 	mov	dpl,r5
      0022E4 8E 83            [24] 1060 	mov	dph,r6
      0022E6 8F F0            [24] 1061 	mov	b,r7
      0022E8 12 37 EE         [24] 1062 	lcall	__gptrget
      0022EB B5 04 04         [24] 1063 	cjne	a,ar4,00102$
                                   1064 ;	../lib/linefi_packet.c:72: return CRC_OK;
      0022EE 75 82 01         [24] 1065 	mov	dpl,#0x01
      0022F1 22               [24] 1066 	ret
      0022F2                       1067 00102$:
                                   1068 ;	../lib/linefi_packet.c:74: return CRC_NOT_OK;
      0022F2 75 82 00         [24] 1069 	mov	dpl,#0x00
                                   1070 ;	../lib/linefi_packet.c:75: }
      0022F5 22               [24] 1071 	ret
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'get_octet_from_linefi'
                                   1074 ;------------------------------------------------------------
                                   1075 ;apu8Tmp                   Allocated to registers r5 r6 r7 
                                   1076 ;------------------------------------------------------------
                                   1077 ;	../lib/linefi_packet.c:78: UINT8 get_octet_from_linefi(UINT8 * apu8Tmp)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function get_octet_from_linefi
                                   1080 ;	-----------------------------------------
      0022F6                       1081 _get_octet_from_linefi:
                                   1082 ;	../lib/linefi_packet.c:81: return getchar_uart1(apu8Tmp);
                                   1083 ;	../lib/linefi_packet.c:82: }
      0022F6 02 2F 36         [24] 1084 	ljmp	_getchar_uart1
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'send_octet_to_linefi'
                                   1087 ;------------------------------------------------------------
                                   1088 ;au8Data                   Allocated to registers 
                                   1089 ;------------------------------------------------------------
                                   1090 ;	../lib/linefi_packet.c:84: void send_octet_to_linefi(UINT8 au8Data)
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function send_octet_to_linefi
                                   1093 ;	-----------------------------------------
      0022F9                       1094 _send_octet_to_linefi:
                                   1095 ;	../lib/linefi_packet.c:87: return putchar_uart1(au8Data);
                                   1096 ;	../lib/linefi_packet.c:88: }
      0022F9 02 30 10         [24] 1097 	ljmp	_putchar_uart1
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'send_linefi_packet'
                                   1100 ;------------------------------------------------------------
                                   1101 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   1102 ;pu8Buf                    Allocated to registers r2 r3 r4 
                                   1103 ;u8CRC                     Allocated with name '_send_linefi_packet_u8CRC_65536_67'
                                   1104 ;i                         Allocated with name '_send_linefi_packet_i_65537_68'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	../lib/linefi_packet.c:90: void send_linefi_packet(linefi_packet_t * apstLineFiPkt)
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function send_linefi_packet
                                   1109 ;	-----------------------------------------
      0022FC                       1110 _send_linefi_packet:
                                   1111 ;	../lib/linefi_packet.c:92: uint8 __xdata u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      0022FC AD 82            [24] 1112 	mov	r5,dpl
      0022FE AE 83            [24] 1113 	mov	r6,dph
      002300 AF F0            [24] 1114 	mov	r7,b
      002302 C0 07            [24] 1115 	push	ar7
      002304 C0 06            [24] 1116 	push	ar6
      002306 C0 05            [24] 1117 	push	ar5
      002308 12 22 38         [24] 1118 	lcall	_calc_crc_linefi_packet_packet
      00230B D0 05            [24] 1119 	pop	ar5
      00230D D0 06            [24] 1120 	pop	ar6
      00230F D0 07            [24] 1121 	pop	ar7
                                   1122 ;	../lib/linefi_packet.c:94: uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
      002311 8D 02            [24] 1123 	mov	ar2,r5
      002313 8E 03            [24] 1124 	mov	ar3,r6
      002315 8F 04            [24] 1125 	mov	ar4,r7
                                   1126 ;	../lib/linefi_packet.c:95: send_octet_to_linefi(*pu8Buf++);
      002317 8A 82            [24] 1127 	mov	dpl,r2
      002319 8B 83            [24] 1128 	mov	dph,r3
      00231B 8C F0            [24] 1129 	mov	b,r4
      00231D 12 37 EE         [24] 1130 	lcall	__gptrget
      002320 F5 82            [12] 1131 	mov	dpl,a
      002322 0A               [12] 1132 	inc	r2
      002323 BA 00 01         [24] 1133 	cjne	r2,#0x00,00118$
      002326 0B               [12] 1134 	inc	r3
      002327                       1135 00118$:
      002327 C0 07            [24] 1136 	push	ar7
      002329 C0 06            [24] 1137 	push	ar6
      00232B C0 05            [24] 1138 	push	ar5
      00232D C0 04            [24] 1139 	push	ar4
      00232F C0 03            [24] 1140 	push	ar3
      002331 C0 02            [24] 1141 	push	ar2
      002333 12 22 F9         [24] 1142 	lcall	_send_octet_to_linefi
      002336 D0 02            [24] 1143 	pop	ar2
      002338 D0 03            [24] 1144 	pop	ar3
      00233A D0 04            [24] 1145 	pop	ar4
      00233C D0 05            [24] 1146 	pop	ar5
      00233E D0 06            [24] 1147 	pop	ar6
      002340 D0 07            [24] 1148 	pop	ar7
                                   1149 ;	../lib/linefi_packet.c:96: send_octet_to_linefi(*pu8Buf++);
      002342 8A 82            [24] 1150 	mov	dpl,r2
      002344 8B 83            [24] 1151 	mov	dph,r3
      002346 8C F0            [24] 1152 	mov	b,r4
      002348 12 37 EE         [24] 1153 	lcall	__gptrget
      00234B F5 82            [12] 1154 	mov	dpl,a
      00234D 0A               [12] 1155 	inc	r2
      00234E BA 00 01         [24] 1156 	cjne	r2,#0x00,00119$
      002351 0B               [12] 1157 	inc	r3
      002352                       1158 00119$:
      002352 C0 07            [24] 1159 	push	ar7
      002354 C0 06            [24] 1160 	push	ar6
      002356 C0 05            [24] 1161 	push	ar5
      002358 C0 04            [24] 1162 	push	ar4
      00235A C0 03            [24] 1163 	push	ar3
      00235C C0 02            [24] 1164 	push	ar2
      00235E 12 22 F9         [24] 1165 	lcall	_send_octet_to_linefi
      002361 D0 02            [24] 1166 	pop	ar2
      002363 D0 03            [24] 1167 	pop	ar3
      002365 D0 04            [24] 1168 	pop	ar4
      002367 D0 05            [24] 1169 	pop	ar5
      002369 D0 06            [24] 1170 	pop	ar6
      00236B D0 07            [24] 1171 	pop	ar7
                                   1172 ;	../lib/linefi_packet.c:97: send_octet_to_linefi(*pu8Buf++);
      00236D 8A 82            [24] 1173 	mov	dpl,r2
      00236F 8B 83            [24] 1174 	mov	dph,r3
      002371 8C F0            [24] 1175 	mov	b,r4
      002373 12 37 EE         [24] 1176 	lcall	__gptrget
      002376 F9               [12] 1177 	mov	r1,a
      002377 0A               [12] 1178 	inc	r2
      002378 BA 00 01         [24] 1179 	cjne	r2,#0x00,00120$
      00237B 0B               [12] 1180 	inc	r3
      00237C                       1181 00120$:
      00237C 89 82            [24] 1182 	mov	dpl,r1
      00237E C0 07            [24] 1183 	push	ar7
      002380 C0 06            [24] 1184 	push	ar6
      002382 C0 05            [24] 1185 	push	ar5
      002384 C0 04            [24] 1186 	push	ar4
      002386 C0 03            [24] 1187 	push	ar3
      002388 C0 02            [24] 1188 	push	ar2
      00238A 12 22 F9         [24] 1189 	lcall	_send_octet_to_linefi
      00238D D0 02            [24] 1190 	pop	ar2
      00238F D0 03            [24] 1191 	pop	ar3
      002391 D0 04            [24] 1192 	pop	ar4
      002393 D0 05            [24] 1193 	pop	ar5
      002395 D0 06            [24] 1194 	pop	ar6
      002397 D0 07            [24] 1195 	pop	ar7
                                   1196 ;	../lib/linefi_packet.c:98: send_octet_to_linefi(*pu8Buf++);
      002399 8A 82            [24] 1197 	mov	dpl,r2
      00239B 8B 83            [24] 1198 	mov	dph,r3
      00239D 8C F0            [24] 1199 	mov	b,r4
      00239F 12 37 EE         [24] 1200 	lcall	__gptrget
      0023A2 F5 82            [12] 1201 	mov	dpl,a
      0023A4 0A               [12] 1202 	inc	r2
      0023A5 BA 00 01         [24] 1203 	cjne	r2,#0x00,00121$
      0023A8 0B               [12] 1204 	inc	r3
      0023A9                       1205 00121$:
      0023A9 C0 07            [24] 1206 	push	ar7
      0023AB C0 06            [24] 1207 	push	ar6
      0023AD C0 05            [24] 1208 	push	ar5
      0023AF C0 04            [24] 1209 	push	ar4
      0023B1 C0 03            [24] 1210 	push	ar3
      0023B3 C0 02            [24] 1211 	push	ar2
      0023B5 12 22 F9         [24] 1212 	lcall	_send_octet_to_linefi
      0023B8 D0 02            [24] 1213 	pop	ar2
      0023BA D0 03            [24] 1214 	pop	ar3
      0023BC D0 04            [24] 1215 	pop	ar4
                                   1216 ;	../lib/linefi_packet.c:99: send_octet_to_linefi(*pu8Buf++); //CRC
      0023BE 8A 82            [24] 1217 	mov	dpl,r2
      0023C0 8B 83            [24] 1218 	mov	dph,r3
      0023C2 8C F0            [24] 1219 	mov	b,r4
      0023C4 12 37 EE         [24] 1220 	lcall	__gptrget
      0023C7 F5 82            [12] 1221 	mov	dpl,a
      0023C9 12 22 F9         [24] 1222 	lcall	_send_octet_to_linefi
      0023CC D0 05            [24] 1223 	pop	ar5
      0023CE D0 06            [24] 1224 	pop	ar6
      0023D0 D0 07            [24] 1225 	pop	ar7
                                   1226 ;	../lib/linefi_packet.c:102: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      0023D2 74 05            [12] 1227 	mov	a,#0x05
      0023D4 2D               [12] 1228 	add	a,r5
      0023D5 FA               [12] 1229 	mov	r2,a
      0023D6 E4               [12] 1230 	clr	a
      0023D7 3E               [12] 1231 	addc	a,r6
      0023D8 FB               [12] 1232 	mov	r3,a
      0023D9 8F 04            [24] 1233 	mov	ar4,r7
      0023DB 74 03            [12] 1234 	mov	a,#0x03
      0023DD 2D               [12] 1235 	add	a,r5
      0023DE FD               [12] 1236 	mov	r5,a
      0023DF E4               [12] 1237 	clr	a
      0023E0 3E               [12] 1238 	addc	a,r6
      0023E1 FE               [12] 1239 	mov	r6,a
      0023E2 79 00            [12] 1240 	mov	r1,#0x00
      0023E4                       1241 00103$:
      0023E4 C0 02            [24] 1242 	push	ar2
      0023E6 C0 03            [24] 1243 	push	ar3
      0023E8 C0 04            [24] 1244 	push	ar4
      0023EA 8D 82            [24] 1245 	mov	dpl,r5
      0023EC 8E 83            [24] 1246 	mov	dph,r6
      0023EE 8F F0            [24] 1247 	mov	b,r7
      0023F0 12 37 EE         [24] 1248 	lcall	__gptrget
      0023F3 7C 00            [12] 1249 	mov	r4,#0x00
      0023F5 24 FB            [12] 1250 	add	a,#0xfb
      0023F7 F8               [12] 1251 	mov	r0,a
      0023F8 EC               [12] 1252 	mov	a,r4
      0023F9 34 FF            [12] 1253 	addc	a,#0xff
      0023FB FC               [12] 1254 	mov	r4,a
      0023FC 89 02            [24] 1255 	mov	ar2,r1
      0023FE 7B 00            [12] 1256 	mov	r3,#0x00
      002400 C3               [12] 1257 	clr	c
      002401 EA               [12] 1258 	mov	a,r2
      002402 98               [12] 1259 	subb	a,r0
      002403 EB               [12] 1260 	mov	a,r3
      002404 64 80            [12] 1261 	xrl	a,#0x80
      002406 8C F0            [24] 1262 	mov	b,r4
      002408 63 F0 80         [24] 1263 	xrl	b,#0x80
      00240B 95 F0            [12] 1264 	subb	a,b
      00240D D0 04            [24] 1265 	pop	ar4
      00240F D0 03            [24] 1266 	pop	ar3
      002411 D0 02            [24] 1267 	pop	ar2
      002413 50 54            [24] 1268 	jnc	00105$
                                   1269 ;	../lib/linefi_packet.c:103: send_octet_to_linefi(*(apstLineFiPkt->pu8Data+i));
      002415 C0 05            [24] 1270 	push	ar5
      002417 C0 06            [24] 1271 	push	ar6
      002419 C0 07            [24] 1272 	push	ar7
      00241B 8A 82            [24] 1273 	mov	dpl,r2
      00241D 8B 83            [24] 1274 	mov	dph,r3
      00241F 8C F0            [24] 1275 	mov	b,r4
      002421 12 37 EE         [24] 1276 	lcall	__gptrget
      002424 F8               [12] 1277 	mov	r0,a
      002425 A3               [24] 1278 	inc	dptr
      002426 12 37 EE         [24] 1279 	lcall	__gptrget
      002429 FE               [12] 1280 	mov	r6,a
      00242A A3               [24] 1281 	inc	dptr
      00242B 12 37 EE         [24] 1282 	lcall	__gptrget
      00242E FF               [12] 1283 	mov	r7,a
      00242F E9               [12] 1284 	mov	a,r1
      002430 28               [12] 1285 	add	a,r0
      002431 F8               [12] 1286 	mov	r0,a
      002432 E4               [12] 1287 	clr	a
      002433 3E               [12] 1288 	addc	a,r6
      002434 FE               [12] 1289 	mov	r6,a
      002435 88 82            [24] 1290 	mov	dpl,r0
      002437 8E 83            [24] 1291 	mov	dph,r6
      002439 8F F0            [24] 1292 	mov	b,r7
      00243B 12 37 EE         [24] 1293 	lcall	__gptrget
      00243E F5 82            [12] 1294 	mov	dpl,a
      002440 C0 07            [24] 1295 	push	ar7
      002442 C0 06            [24] 1296 	push	ar6
      002444 C0 05            [24] 1297 	push	ar5
      002446 C0 04            [24] 1298 	push	ar4
      002448 C0 03            [24] 1299 	push	ar3
      00244A C0 02            [24] 1300 	push	ar2
      00244C C0 01            [24] 1301 	push	ar1
      00244E 12 22 F9         [24] 1302 	lcall	_send_octet_to_linefi
      002451 D0 01            [24] 1303 	pop	ar1
      002453 D0 02            [24] 1304 	pop	ar2
      002455 D0 03            [24] 1305 	pop	ar3
      002457 D0 04            [24] 1306 	pop	ar4
      002459 D0 05            [24] 1307 	pop	ar5
      00245B D0 06            [24] 1308 	pop	ar6
      00245D D0 07            [24] 1309 	pop	ar7
                                   1310 ;	../lib/linefi_packet.c:102: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      00245F 09               [12] 1311 	inc	r1
      002460 D0 07            [24] 1312 	pop	ar7
      002462 D0 06            [24] 1313 	pop	ar6
      002464 D0 05            [24] 1314 	pop	ar5
      002466 02 23 E4         [24] 1315 	ljmp	00103$
      002469                       1316 00105$:
                                   1317 ;	../lib/linefi_packet.c:117: }
      002469 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'cp_buf2linefipacket'
                                   1321 ;------------------------------------------------------------
                                   1322 ;apu8RxBuf                 Allocated with name '_cp_buf2linefipacket_PARM_2'
                                   1323 ;apstLineFiPkt             Allocated with name '_cp_buf2linefipacket_PARM_3'
                                   1324 ;au8Size                   Allocated to registers r7 
                                   1325 ;pu8Buf                    Allocated to registers r5 r6 r7 
                                   1326 ;i                         Allocated with name '_cp_buf2linefipacket_i_65538_75'
                                   1327 ;sloc0                     Allocated with name '_cp_buf2linefipacket_sloc0_1_0'
                                   1328 ;------------------------------------------------------------
                                   1329 ;	../lib/linefi_packet.c:119: uint8 cp_buf2linefipacket(uint8 au8Size, uint8 * apu8RxBuf, linefi_packet_t * apstLineFiPkt)
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function cp_buf2linefipacket
                                   1332 ;	-----------------------------------------
      00246A                       1333 _cp_buf2linefipacket:
      00246A AF 82            [24] 1334 	mov	r7,dpl
                                   1335 ;	../lib/linefi_packet.c:124: if (au8Size < 5) {
      00246C BF 05 00         [24] 1336 	cjne	r7,#0x05,00132$
      00246F                       1337 00132$:
      00246F 50 04            [24] 1338 	jnc	00102$
                                   1339 ;	../lib/linefi_packet.c:126: return CONV_ERR_TOO_SMALLSIZE;
      002471 75 82 03         [24] 1340 	mov	dpl,#0x03
      002474 22               [24] 1341 	ret
      002475                       1342 00102$:
                                   1343 ;	../lib/linefi_packet.c:129: uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
      002475 AD 64            [24] 1344 	mov	r5,_cp_buf2linefipacket_PARM_3
      002477 AE 65            [24] 1345 	mov	r6,(_cp_buf2linefipacket_PARM_3 + 1)
      002479 AF 66            [24] 1346 	mov	r7,(_cp_buf2linefipacket_PARM_3 + 2)
                                   1347 ;	../lib/linefi_packet.c:132: *pu8Buf++ = *apu8RxBuf++;
      00247B AA 61            [24] 1348 	mov	r2,_cp_buf2linefipacket_PARM_2
      00247D AB 62            [24] 1349 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      00247F AC 63            [24] 1350 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      002481 8A 82            [24] 1351 	mov	dpl,r2
      002483 8B 83            [24] 1352 	mov	dph,r3
      002485 8C F0            [24] 1353 	mov	b,r4
      002487 12 37 EE         [24] 1354 	lcall	__gptrget
      00248A F9               [12] 1355 	mov	r1,a
      00248B 74 01            [12] 1356 	mov	a,#0x01
      00248D 2A               [12] 1357 	add	a,r2
      00248E F5 61            [12] 1358 	mov	_cp_buf2linefipacket_PARM_2,a
      002490 E4               [12] 1359 	clr	a
      002491 3B               [12] 1360 	addc	a,r3
      002492 F5 62            [12] 1361 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      002494 8C 63            [24] 1362 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      002496 8D 82            [24] 1363 	mov	dpl,r5
      002498 8E 83            [24] 1364 	mov	dph,r6
      00249A 8F F0            [24] 1365 	mov	b,r7
      00249C E9               [12] 1366 	mov	a,r1
      00249D 12 36 89         [24] 1367 	lcall	__gptrput
      0024A0 0D               [12] 1368 	inc	r5
      0024A1 BD 00 01         [24] 1369 	cjne	r5,#0x00,00134$
      0024A4 0E               [12] 1370 	inc	r6
      0024A5                       1371 00134$:
                                   1372 ;	../lib/linefi_packet.c:133: *pu8Buf++ = *apu8RxBuf++;
      0024A5 AA 61            [24] 1373 	mov	r2,_cp_buf2linefipacket_PARM_2
      0024A7 AB 62            [24] 1374 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      0024A9 AC 63            [24] 1375 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      0024AB 8A 82            [24] 1376 	mov	dpl,r2
      0024AD 8B 83            [24] 1377 	mov	dph,r3
      0024AF 8C F0            [24] 1378 	mov	b,r4
      0024B1 12 37 EE         [24] 1379 	lcall	__gptrget
      0024B4 F9               [12] 1380 	mov	r1,a
      0024B5 74 01            [12] 1381 	mov	a,#0x01
      0024B7 2A               [12] 1382 	add	a,r2
      0024B8 F5 61            [12] 1383 	mov	_cp_buf2linefipacket_PARM_2,a
      0024BA E4               [12] 1384 	clr	a
      0024BB 3B               [12] 1385 	addc	a,r3
      0024BC F5 62            [12] 1386 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      0024BE 8C 63            [24] 1387 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      0024C0 8D 82            [24] 1388 	mov	dpl,r5
      0024C2 8E 83            [24] 1389 	mov	dph,r6
      0024C4 8F F0            [24] 1390 	mov	b,r7
      0024C6 E9               [12] 1391 	mov	a,r1
      0024C7 12 36 89         [24] 1392 	lcall	__gptrput
      0024CA 0D               [12] 1393 	inc	r5
      0024CB BD 00 01         [24] 1394 	cjne	r5,#0x00,00135$
      0024CE 0E               [12] 1395 	inc	r6
      0024CF                       1396 00135$:
                                   1397 ;	../lib/linefi_packet.c:134: *pu8Buf++ = *apu8RxBuf++;
      0024CF AA 61            [24] 1398 	mov	r2,_cp_buf2linefipacket_PARM_2
      0024D1 AB 62            [24] 1399 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      0024D3 AC 63            [24] 1400 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      0024D5 8A 82            [24] 1401 	mov	dpl,r2
      0024D7 8B 83            [24] 1402 	mov	dph,r3
      0024D9 8C F0            [24] 1403 	mov	b,r4
      0024DB 12 37 EE         [24] 1404 	lcall	__gptrget
      0024DE F9               [12] 1405 	mov	r1,a
      0024DF 74 01            [12] 1406 	mov	a,#0x01
      0024E1 2A               [12] 1407 	add	a,r2
      0024E2 F5 61            [12] 1408 	mov	_cp_buf2linefipacket_PARM_2,a
      0024E4 E4               [12] 1409 	clr	a
      0024E5 3B               [12] 1410 	addc	a,r3
      0024E6 F5 62            [12] 1411 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      0024E8 8C 63            [24] 1412 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      0024EA 8D 82            [24] 1413 	mov	dpl,r5
      0024EC 8E 83            [24] 1414 	mov	dph,r6
      0024EE 8F F0            [24] 1415 	mov	b,r7
      0024F0 E9               [12] 1416 	mov	a,r1
      0024F1 12 36 89         [24] 1417 	lcall	__gptrput
      0024F4 0D               [12] 1418 	inc	r5
      0024F5 BD 00 01         [24] 1419 	cjne	r5,#0x00,00136$
      0024F8 0E               [12] 1420 	inc	r6
      0024F9                       1421 00136$:
                                   1422 ;	../lib/linefi_packet.c:135: *pu8Buf++ = *apu8RxBuf++;
      0024F9 AA 61            [24] 1423 	mov	r2,_cp_buf2linefipacket_PARM_2
      0024FB AB 62            [24] 1424 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      0024FD AC 63            [24] 1425 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      0024FF 8A 82            [24] 1426 	mov	dpl,r2
      002501 8B 83            [24] 1427 	mov	dph,r3
      002503 8C F0            [24] 1428 	mov	b,r4
      002505 12 37 EE         [24] 1429 	lcall	__gptrget
      002508 F9               [12] 1430 	mov	r1,a
      002509 74 01            [12] 1431 	mov	a,#0x01
      00250B 2A               [12] 1432 	add	a,r2
      00250C F5 61            [12] 1433 	mov	_cp_buf2linefipacket_PARM_2,a
      00250E E4               [12] 1434 	clr	a
      00250F 3B               [12] 1435 	addc	a,r3
      002510 F5 62            [12] 1436 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      002512 8C 63            [24] 1437 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      002514 8D 82            [24] 1438 	mov	dpl,r5
      002516 8E 83            [24] 1439 	mov	dph,r6
      002518 8F F0            [24] 1440 	mov	b,r7
      00251A E9               [12] 1441 	mov	a,r1
      00251B 12 36 89         [24] 1442 	lcall	__gptrput
      00251E 0D               [12] 1443 	inc	r5
      00251F BD 00 01         [24] 1444 	cjne	r5,#0x00,00137$
      002522 0E               [12] 1445 	inc	r6
      002523                       1446 00137$:
                                   1447 ;	../lib/linefi_packet.c:136: *pu8Buf++ = *apu8RxBuf++;
      002523 AA 61            [24] 1448 	mov	r2,_cp_buf2linefipacket_PARM_2
      002525 AB 62            [24] 1449 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      002527 AC 63            [24] 1450 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      002529 8A 82            [24] 1451 	mov	dpl,r2
      00252B 8B 83            [24] 1452 	mov	dph,r3
      00252D 8C F0            [24] 1453 	mov	b,r4
      00252F 12 37 EE         [24] 1454 	lcall	__gptrget
      002532 F9               [12] 1455 	mov	r1,a
      002533 74 01            [12] 1456 	mov	a,#0x01
      002535 2A               [12] 1457 	add	a,r2
      002536 F5 61            [12] 1458 	mov	_cp_buf2linefipacket_PARM_2,a
      002538 E4               [12] 1459 	clr	a
      002539 3B               [12] 1460 	addc	a,r3
      00253A F5 62            [12] 1461 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      00253C 8C 63            [24] 1462 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      00253E 8D 82            [24] 1463 	mov	dpl,r5
      002540 8E 83            [24] 1464 	mov	dph,r6
      002542 8F F0            [24] 1465 	mov	b,r7
      002544 E9               [12] 1466 	mov	a,r1
      002545 12 36 89         [24] 1467 	lcall	__gptrput
                                   1468 ;	../lib/linefi_packet.c:140: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      002548 AD 64            [24] 1469 	mov	r5,_cp_buf2linefipacket_PARM_3
      00254A AE 65            [24] 1470 	mov	r6,(_cp_buf2linefipacket_PARM_3 + 1)
      00254C AF 66            [24] 1471 	mov	r7,(_cp_buf2linefipacket_PARM_3 + 2)
      00254E 74 03            [12] 1472 	mov	a,#0x03
      002550 2D               [12] 1473 	add	a,r5
      002551 FA               [12] 1474 	mov	r2,a
      002552 E4               [12] 1475 	clr	a
      002553 3E               [12] 1476 	addc	a,r6
      002554 FB               [12] 1477 	mov	r3,a
      002555 8F 04            [24] 1478 	mov	ar4,r7
      002557 85 61 68         [24] 1479 	mov	_cp_buf2linefipacket_sloc0_1_0,_cp_buf2linefipacket_PARM_2
      00255A 85 62 69         [24] 1480 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 1),(_cp_buf2linefipacket_PARM_2 + 1)
      00255D 85 63 6A         [24] 1481 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 2),(_cp_buf2linefipacket_PARM_2 + 2)
      002560 75 67 00         [24] 1482 	mov	_cp_buf2linefipacket_i_65538_75,#0x00
      002563                       1483 00107$:
      002563 C0 05            [24] 1484 	push	ar5
      002565 C0 06            [24] 1485 	push	ar6
      002567 C0 07            [24] 1486 	push	ar7
      002569 8A 82            [24] 1487 	mov	dpl,r2
      00256B 8B 83            [24] 1488 	mov	dph,r3
      00256D 8C F0            [24] 1489 	mov	b,r4
      00256F 12 37 EE         [24] 1490 	lcall	__gptrget
      002572 79 00            [12] 1491 	mov	r1,#0x00
      002574 24 FB            [12] 1492 	add	a,#0xfb
      002576 F8               [12] 1493 	mov	r0,a
      002577 E9               [12] 1494 	mov	a,r1
      002578 34 FF            [12] 1495 	addc	a,#0xff
      00257A F9               [12] 1496 	mov	r1,a
      00257B AE 67            [24] 1497 	mov	r6,_cp_buf2linefipacket_i_65538_75
      00257D 7F 00            [12] 1498 	mov	r7,#0x00
      00257F C3               [12] 1499 	clr	c
      002580 EE               [12] 1500 	mov	a,r6
      002581 98               [12] 1501 	subb	a,r0
      002582 EF               [12] 1502 	mov	a,r7
      002583 64 80            [12] 1503 	xrl	a,#0x80
      002585 89 F0            [24] 1504 	mov	b,r1
      002587 63 F0 80         [24] 1505 	xrl	b,#0x80
      00258A 95 F0            [12] 1506 	subb	a,b
      00258C D0 07            [24] 1507 	pop	ar7
      00258E D0 06            [24] 1508 	pop	ar6
      002590 D0 05            [24] 1509 	pop	ar5
      002592 50 53            [24] 1510 	jnc	00103$
                                   1511 ;	../lib/linefi_packet.c:141: apstLineFiPkt->pu8Data[i] = *apu8RxBuf++;
      002594 C0 02            [24] 1512 	push	ar2
      002596 C0 03            [24] 1513 	push	ar3
      002598 C0 04            [24] 1514 	push	ar4
      00259A 74 05            [12] 1515 	mov	a,#0x05
      00259C 2D               [12] 1516 	add	a,r5
      00259D F8               [12] 1517 	mov	r0,a
      00259E E4               [12] 1518 	clr	a
      00259F 3E               [12] 1519 	addc	a,r6
      0025A0 F9               [12] 1520 	mov	r1,a
      0025A1 8F 04            [24] 1521 	mov	ar4,r7
      0025A3 88 82            [24] 1522 	mov	dpl,r0
      0025A5 89 83            [24] 1523 	mov	dph,r1
      0025A7 8C F0            [24] 1524 	mov	b,r4
      0025A9 12 37 EE         [24] 1525 	lcall	__gptrget
      0025AC F8               [12] 1526 	mov	r0,a
      0025AD A3               [24] 1527 	inc	dptr
      0025AE 12 37 EE         [24] 1528 	lcall	__gptrget
      0025B1 F9               [12] 1529 	mov	r1,a
      0025B2 A3               [24] 1530 	inc	dptr
      0025B3 12 37 EE         [24] 1531 	lcall	__gptrget
      0025B6 FC               [12] 1532 	mov	r4,a
      0025B7 E5 67            [12] 1533 	mov	a,_cp_buf2linefipacket_i_65538_75
      0025B9 28               [12] 1534 	add	a,r0
      0025BA F8               [12] 1535 	mov	r0,a
      0025BB E4               [12] 1536 	clr	a
      0025BC 39               [12] 1537 	addc	a,r1
      0025BD F9               [12] 1538 	mov	r1,a
      0025BE 85 68 82         [24] 1539 	mov	dpl,_cp_buf2linefipacket_sloc0_1_0
      0025C1 85 69 83         [24] 1540 	mov	dph,(_cp_buf2linefipacket_sloc0_1_0 + 1)
      0025C4 85 6A F0         [24] 1541 	mov	b,(_cp_buf2linefipacket_sloc0_1_0 + 2)
      0025C7 12 37 EE         [24] 1542 	lcall	__gptrget
      0025CA FB               [12] 1543 	mov	r3,a
      0025CB A3               [24] 1544 	inc	dptr
      0025CC 85 82 68         [24] 1545 	mov	_cp_buf2linefipacket_sloc0_1_0,dpl
      0025CF 85 83 69         [24] 1546 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 1),dph
      0025D2 88 82            [24] 1547 	mov	dpl,r0
      0025D4 89 83            [24] 1548 	mov	dph,r1
      0025D6 8C F0            [24] 1549 	mov	b,r4
      0025D8 EB               [12] 1550 	mov	a,r3
      0025D9 12 36 89         [24] 1551 	lcall	__gptrput
                                   1552 ;	../lib/linefi_packet.c:140: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      0025DC 05 67            [12] 1553 	inc	_cp_buf2linefipacket_i_65538_75
      0025DE D0 04            [24] 1554 	pop	ar4
      0025E0 D0 03            [24] 1555 	pop	ar3
      0025E2 D0 02            [24] 1556 	pop	ar2
      0025E4 02 25 63         [24] 1557 	ljmp	00107$
      0025E7                       1558 00103$:
                                   1559 ;	../lib/linefi_packet.c:144: if (chk_crc_linefi_packet_packet(apstLineFiPkt) == CRC_NOT_OK) {
      0025E7 8D 82            [24] 1560 	mov	dpl,r5
      0025E9 8E 83            [24] 1561 	mov	dph,r6
      0025EB 8F F0            [24] 1562 	mov	b,r7
      0025ED 12 22 C4         [24] 1563 	lcall	_chk_crc_linefi_packet_packet
      0025F0 E5 82            [12] 1564 	mov	a,dpl
      0025F2 70 04            [24] 1565 	jnz	00105$
                                   1566 ;	../lib/linefi_packet.c:145: return CONV_ERR_CRC;
      0025F4 75 82 04         [24] 1567 	mov	dpl,#0x04
      0025F7 22               [24] 1568 	ret
      0025F8                       1569 00105$:
                                   1570 ;	../lib/linefi_packet.c:147: return CONV_OK;
      0025F8 75 82 02         [24] 1571 	mov	dpl,#0x02
                                   1572 ;	../lib/linefi_packet.c:148: }
      0025FB 22               [24] 1573 	ret
                                   1574 ;------------------------------------------------------------
                                   1575 ;Allocation info for local variables in function 'print_linefipacket'
                                   1576 ;------------------------------------------------------------
                                   1577 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   1578 ;i                         Allocated with name '_print_linefipacket_i_65537_81'
                                   1579 ;------------------------------------------------------------
                                   1580 ;	../lib/linefi_packet.c:150: void print_linefipacket(linefi_packet_t * apstLineFiPkt)
                                   1581 ;	-----------------------------------------
                                   1582 ;	 function print_linefipacket
                                   1583 ;	-----------------------------------------
      0025FC                       1584 _print_linefipacket:
      0025FC AD 82            [24] 1585 	mov	r5,dpl
      0025FE AE 83            [24] 1586 	mov	r6,dph
      002600 AF F0            [24] 1587 	mov	r7,b
                                   1588 ;	../lib/linefi_packet.c:152: printf_fast_f("-------------------------------\r\n");
      002602 C0 07            [24] 1589 	push	ar7
      002604 C0 06            [24] 1590 	push	ar6
      002606 C0 05            [24] 1591 	push	ar5
      002608 74 F1            [12] 1592 	mov	a,#___str_0
      00260A C0 E0            [24] 1593 	push	acc
      00260C 74 3C            [12] 1594 	mov	a,#(___str_0 >> 8)
      00260E C0 E0            [24] 1595 	push	acc
      002610 12 31 60         [24] 1596 	lcall	_printf_fast_f
      002613 15 81            [12] 1597 	dec	sp
      002615 15 81            [12] 1598 	dec	sp
      002617 D0 05            [24] 1599 	pop	ar5
      002619 D0 06            [24] 1600 	pop	ar6
      00261B D0 07            [24] 1601 	pop	ar7
                                   1602 ;	../lib/linefi_packet.c:153: printf_fast_f("Ver : %d\r\n", apstLineFiPkt->u8Ver);
      00261D 8D 82            [24] 1603 	mov	dpl,r5
      00261F 8E 83            [24] 1604 	mov	dph,r6
      002621 8F F0            [24] 1605 	mov	b,r7
      002623 12 37 EE         [24] 1606 	lcall	__gptrget
      002626 FC               [12] 1607 	mov	r4,a
      002627 7B 00            [12] 1608 	mov	r3,#0x00
      002629 C0 07            [24] 1609 	push	ar7
      00262B C0 06            [24] 1610 	push	ar6
      00262D C0 05            [24] 1611 	push	ar5
      00262F C0 04            [24] 1612 	push	ar4
      002631 C0 03            [24] 1613 	push	ar3
      002633 74 13            [12] 1614 	mov	a,#___str_1
      002635 C0 E0            [24] 1615 	push	acc
      002637 74 3D            [12] 1616 	mov	a,#(___str_1 >> 8)
      002639 C0 E0            [24] 1617 	push	acc
      00263B 12 31 60         [24] 1618 	lcall	_printf_fast_f
      00263E E5 81            [12] 1619 	mov	a,sp
      002640 24 FC            [12] 1620 	add	a,#0xfc
      002642 F5 81            [12] 1621 	mov	sp,a
      002644 D0 05            [24] 1622 	pop	ar5
      002646 D0 06            [24] 1623 	pop	ar6
      002648 D0 07            [24] 1624 	pop	ar7
                                   1625 ;	../lib/linefi_packet.c:154: printf_fast_f("Type: %d(%s)\r\n", apstLineFiPkt->u8Type, gpcTypeStr[apstLineFiPkt->u8Type]);
      00264A 74 01            [12] 1626 	mov	a,#0x01
      00264C 2D               [12] 1627 	add	a,r5
      00264D FA               [12] 1628 	mov	r2,a
      00264E E4               [12] 1629 	clr	a
      00264F 3E               [12] 1630 	addc	a,r6
      002650 FB               [12] 1631 	mov	r3,a
      002651 8F 04            [24] 1632 	mov	ar4,r7
      002653 8A 82            [24] 1633 	mov	dpl,r2
      002655 8B 83            [24] 1634 	mov	dph,r3
      002657 8C F0            [24] 1635 	mov	b,r4
      002659 12 37 EE         [24] 1636 	lcall	__gptrget
      00265C FA               [12] 1637 	mov	r2,a
      00265D 75 F0 03         [24] 1638 	mov	b,#0x03
      002660 A4               [48] 1639 	mul	ab
      002661 24 D6            [12] 1640 	add	a,#_gpcTypeStr
      002663 F5 82            [12] 1641 	mov	dpl,a
      002665 74 00            [12] 1642 	mov	a,#(_gpcTypeStr >> 8)
      002667 35 F0            [12] 1643 	addc	a,b
      002669 F5 83            [12] 1644 	mov	dph,a
      00266B E0               [24] 1645 	movx	a,@dptr
      00266C F9               [12] 1646 	mov	r1,a
      00266D A3               [24] 1647 	inc	dptr
      00266E E0               [24] 1648 	movx	a,@dptr
      00266F FB               [12] 1649 	mov	r3,a
      002670 A3               [24] 1650 	inc	dptr
      002671 E0               [24] 1651 	movx	a,@dptr
      002672 FC               [12] 1652 	mov	r4,a
      002673 8A 00            [24] 1653 	mov	ar0,r2
      002675 7A 00            [12] 1654 	mov	r2,#0x00
      002677 C0 07            [24] 1655 	push	ar7
      002679 C0 06            [24] 1656 	push	ar6
      00267B C0 05            [24] 1657 	push	ar5
      00267D C0 01            [24] 1658 	push	ar1
      00267F C0 03            [24] 1659 	push	ar3
      002681 C0 04            [24] 1660 	push	ar4
      002683 C0 00            [24] 1661 	push	ar0
      002685 C0 02            [24] 1662 	push	ar2
      002687 74 1E            [12] 1663 	mov	a,#___str_2
      002689 C0 E0            [24] 1664 	push	acc
      00268B 74 3D            [12] 1665 	mov	a,#(___str_2 >> 8)
      00268D C0 E0            [24] 1666 	push	acc
      00268F 12 31 60         [24] 1667 	lcall	_printf_fast_f
      002692 E5 81            [12] 1668 	mov	a,sp
      002694 24 F9            [12] 1669 	add	a,#0xf9
      002696 F5 81            [12] 1670 	mov	sp,a
      002698 D0 05            [24] 1671 	pop	ar5
      00269A D0 06            [24] 1672 	pop	ar6
      00269C D0 07            [24] 1673 	pop	ar7
                                   1674 ;	../lib/linefi_packet.c:157: printf_fast_f("Addr: %d\r\n", apstLineFiPkt->u8Addr);
      00269E 74 02            [12] 1675 	mov	a,#0x02
      0026A0 2D               [12] 1676 	add	a,r5
      0026A1 FA               [12] 1677 	mov	r2,a
      0026A2 E4               [12] 1678 	clr	a
      0026A3 3E               [12] 1679 	addc	a,r6
      0026A4 FB               [12] 1680 	mov	r3,a
      0026A5 8F 04            [24] 1681 	mov	ar4,r7
      0026A7 8A 82            [24] 1682 	mov	dpl,r2
      0026A9 8B 83            [24] 1683 	mov	dph,r3
      0026AB 8C F0            [24] 1684 	mov	b,r4
      0026AD 12 37 EE         [24] 1685 	lcall	__gptrget
      0026B0 FA               [12] 1686 	mov	r2,a
      0026B1 7C 00            [12] 1687 	mov	r4,#0x00
      0026B3 C0 07            [24] 1688 	push	ar7
      0026B5 C0 06            [24] 1689 	push	ar6
      0026B7 C0 05            [24] 1690 	push	ar5
      0026B9 C0 02            [24] 1691 	push	ar2
      0026BB C0 04            [24] 1692 	push	ar4
      0026BD 74 2D            [12] 1693 	mov	a,#___str_3
      0026BF C0 E0            [24] 1694 	push	acc
      0026C1 74 3D            [12] 1695 	mov	a,#(___str_3 >> 8)
      0026C3 C0 E0            [24] 1696 	push	acc
      0026C5 12 31 60         [24] 1697 	lcall	_printf_fast_f
      0026C8 E5 81            [12] 1698 	mov	a,sp
      0026CA 24 FC            [12] 1699 	add	a,#0xfc
      0026CC F5 81            [12] 1700 	mov	sp,a
      0026CE D0 05            [24] 1701 	pop	ar5
      0026D0 D0 06            [24] 1702 	pop	ar6
      0026D2 D0 07            [24] 1703 	pop	ar7
                                   1704 ;	../lib/linefi_packet.c:158: printf_fast_f("Size: %d\r\n", apstLineFiPkt->u8Size);
      0026D4 74 03            [12] 1705 	mov	a,#0x03
      0026D6 2D               [12] 1706 	add	a,r5
      0026D7 FA               [12] 1707 	mov	r2,a
      0026D8 E4               [12] 1708 	clr	a
      0026D9 3E               [12] 1709 	addc	a,r6
      0026DA FB               [12] 1710 	mov	r3,a
      0026DB 8F 04            [24] 1711 	mov	ar4,r7
      0026DD 8A 82            [24] 1712 	mov	dpl,r2
      0026DF 8B 83            [24] 1713 	mov	dph,r3
      0026E1 8C F0            [24] 1714 	mov	b,r4
      0026E3 12 37 EE         [24] 1715 	lcall	__gptrget
      0026E6 FA               [12] 1716 	mov	r2,a
      0026E7 7C 00            [12] 1717 	mov	r4,#0x00
      0026E9 C0 07            [24] 1718 	push	ar7
      0026EB C0 06            [24] 1719 	push	ar6
      0026ED C0 05            [24] 1720 	push	ar5
      0026EF C0 02            [24] 1721 	push	ar2
      0026F1 C0 04            [24] 1722 	push	ar4
      0026F3 74 38            [12] 1723 	mov	a,#___str_4
      0026F5 C0 E0            [24] 1724 	push	acc
      0026F7 74 3D            [12] 1725 	mov	a,#(___str_4 >> 8)
      0026F9 C0 E0            [24] 1726 	push	acc
      0026FB 12 31 60         [24] 1727 	lcall	_printf_fast_f
      0026FE E5 81            [12] 1728 	mov	a,sp
      002700 24 FC            [12] 1729 	add	a,#0xfc
      002702 F5 81            [12] 1730 	mov	sp,a
      002704 D0 05            [24] 1731 	pop	ar5
      002706 D0 06            [24] 1732 	pop	ar6
      002708 D0 07            [24] 1733 	pop	ar7
                                   1734 ;	../lib/linefi_packet.c:159: printf_fast_f("CRC comp : %d %d \r\n", apstLineFiPkt->u8CRC, calc_crc_linefi_packet_packet(apstLineFiPkt));
      00270A 8D 82            [24] 1735 	mov	dpl,r5
      00270C 8E 83            [24] 1736 	mov	dph,r6
      00270E 8F F0            [24] 1737 	mov	b,r7
      002710 C0 07            [24] 1738 	push	ar7
      002712 C0 06            [24] 1739 	push	ar6
      002714 C0 05            [24] 1740 	push	ar5
      002716 12 22 38         [24] 1741 	lcall	_calc_crc_linefi_packet_packet
      002719 AC 82            [24] 1742 	mov	r4,dpl
      00271B D0 05            [24] 1743 	pop	ar5
      00271D D0 06            [24] 1744 	pop	ar6
      00271F D0 07            [24] 1745 	pop	ar7
      002721 7B 00            [12] 1746 	mov	r3,#0x00
      002723 74 04            [12] 1747 	mov	a,#0x04
      002725 2D               [12] 1748 	add	a,r5
      002726 F8               [12] 1749 	mov	r0,a
      002727 E4               [12] 1750 	clr	a
      002728 3E               [12] 1751 	addc	a,r6
      002729 F9               [12] 1752 	mov	r1,a
      00272A 8F 02            [24] 1753 	mov	ar2,r7
      00272C 88 82            [24] 1754 	mov	dpl,r0
      00272E 89 83            [24] 1755 	mov	dph,r1
      002730 8A F0            [24] 1756 	mov	b,r2
      002732 12 37 EE         [24] 1757 	lcall	__gptrget
      002735 F8               [12] 1758 	mov	r0,a
      002736 7A 00            [12] 1759 	mov	r2,#0x00
      002738 C0 07            [24] 1760 	push	ar7
      00273A C0 06            [24] 1761 	push	ar6
      00273C C0 05            [24] 1762 	push	ar5
      00273E C0 04            [24] 1763 	push	ar4
      002740 C0 03            [24] 1764 	push	ar3
      002742 C0 00            [24] 1765 	push	ar0
      002744 C0 02            [24] 1766 	push	ar2
      002746 74 43            [12] 1767 	mov	a,#___str_5
      002748 C0 E0            [24] 1768 	push	acc
      00274A 74 3D            [12] 1769 	mov	a,#(___str_5 >> 8)
      00274C C0 E0            [24] 1770 	push	acc
      00274E 12 31 60         [24] 1771 	lcall	_printf_fast_f
      002751 E5 81            [12] 1772 	mov	a,sp
      002753 24 FA            [12] 1773 	add	a,#0xfa
      002755 F5 81            [12] 1774 	mov	sp,a
                                   1775 ;	../lib/linefi_packet.c:160: printf_fast_f("DATA: ");
      002757 74 57            [12] 1776 	mov	a,#___str_6
      002759 C0 E0            [24] 1777 	push	acc
      00275B 74 3D            [12] 1778 	mov	a,#(___str_6 >> 8)
      00275D C0 E0            [24] 1779 	push	acc
      00275F 12 31 60         [24] 1780 	lcall	_printf_fast_f
      002762 15 81            [12] 1781 	dec	sp
      002764 15 81            [12] 1782 	dec	sp
      002766 D0 05            [24] 1783 	pop	ar5
      002768 D0 06            [24] 1784 	pop	ar6
      00276A D0 07            [24] 1785 	pop	ar7
                                   1786 ;	../lib/linefi_packet.c:162: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      00276C 74 05            [12] 1787 	mov	a,#0x05
      00276E 2D               [12] 1788 	add	a,r5
      00276F FA               [12] 1789 	mov	r2,a
      002770 E4               [12] 1790 	clr	a
      002771 3E               [12] 1791 	addc	a,r6
      002772 FB               [12] 1792 	mov	r3,a
      002773 8F 04            [24] 1793 	mov	ar4,r7
      002775 74 03            [12] 1794 	mov	a,#0x03
      002777 2D               [12] 1795 	add	a,r5
      002778 FD               [12] 1796 	mov	r5,a
      002779 E4               [12] 1797 	clr	a
      00277A 3E               [12] 1798 	addc	a,r6
      00277B FE               [12] 1799 	mov	r6,a
      00277C 75 6B 00         [24] 1800 	mov	_print_linefipacket_i_65537_81,#0x00
      00277F                       1801 00103$:
      00277F C0 02            [24] 1802 	push	ar2
      002781 C0 03            [24] 1803 	push	ar3
      002783 C0 04            [24] 1804 	push	ar4
      002785 8D 82            [24] 1805 	mov	dpl,r5
      002787 8E 83            [24] 1806 	mov	dph,r6
      002789 8F F0            [24] 1807 	mov	b,r7
      00278B 12 37 EE         [24] 1808 	lcall	__gptrget
      00278E 79 00            [12] 1809 	mov	r1,#0x00
      002790 24 FB            [12] 1810 	add	a,#0xfb
      002792 F8               [12] 1811 	mov	r0,a
      002793 E9               [12] 1812 	mov	a,r1
      002794 34 FF            [12] 1813 	addc	a,#0xff
      002796 F9               [12] 1814 	mov	r1,a
      002797 AB 6B            [24] 1815 	mov	r3,_print_linefipacket_i_65537_81
      002799 7C 00            [12] 1816 	mov	r4,#0x00
      00279B C3               [12] 1817 	clr	c
      00279C EB               [12] 1818 	mov	a,r3
      00279D 98               [12] 1819 	subb	a,r0
      00279E EC               [12] 1820 	mov	a,r4
      00279F 64 80            [12] 1821 	xrl	a,#0x80
      0027A1 89 F0            [24] 1822 	mov	b,r1
      0027A3 63 F0 80         [24] 1823 	xrl	b,#0x80
      0027A6 95 F0            [12] 1824 	subb	a,b
      0027A8 D0 04            [24] 1825 	pop	ar4
      0027AA D0 03            [24] 1826 	pop	ar3
      0027AC D0 02            [24] 1827 	pop	ar2
      0027AE 50 65            [24] 1828 	jnc	00101$
                                   1829 ;	../lib/linefi_packet.c:163: printf_fast_f("0x%x ", apstLineFiPkt->pu8Data[i]);
      0027B0 C0 05            [24] 1830 	push	ar5
      0027B2 C0 06            [24] 1831 	push	ar6
      0027B4 C0 07            [24] 1832 	push	ar7
      0027B6 8A 82            [24] 1833 	mov	dpl,r2
      0027B8 8B 83            [24] 1834 	mov	dph,r3
      0027BA 8C F0            [24] 1835 	mov	b,r4
      0027BC 12 37 EE         [24] 1836 	lcall	__gptrget
      0027BF F8               [12] 1837 	mov	r0,a
      0027C0 A3               [24] 1838 	inc	dptr
      0027C1 12 37 EE         [24] 1839 	lcall	__gptrget
      0027C4 F9               [12] 1840 	mov	r1,a
      0027C5 A3               [24] 1841 	inc	dptr
      0027C6 12 37 EE         [24] 1842 	lcall	__gptrget
      0027C9 FF               [12] 1843 	mov	r7,a
      0027CA E5 6B            [12] 1844 	mov	a,_print_linefipacket_i_65537_81
      0027CC 28               [12] 1845 	add	a,r0
      0027CD F8               [12] 1846 	mov	r0,a
      0027CE E4               [12] 1847 	clr	a
      0027CF 39               [12] 1848 	addc	a,r1
      0027D0 F9               [12] 1849 	mov	r1,a
      0027D1 88 82            [24] 1850 	mov	dpl,r0
      0027D3 89 83            [24] 1851 	mov	dph,r1
      0027D5 8F F0            [24] 1852 	mov	b,r7
      0027D7 12 37 EE         [24] 1853 	lcall	__gptrget
      0027DA F8               [12] 1854 	mov	r0,a
      0027DB 7F 00            [12] 1855 	mov	r7,#0x00
      0027DD C0 07            [24] 1856 	push	ar7
      0027DF C0 06            [24] 1857 	push	ar6
      0027E1 C0 05            [24] 1858 	push	ar5
      0027E3 C0 04            [24] 1859 	push	ar4
      0027E5 C0 03            [24] 1860 	push	ar3
      0027E7 C0 02            [24] 1861 	push	ar2
      0027E9 C0 00            [24] 1862 	push	ar0
      0027EB C0 07            [24] 1863 	push	ar7
      0027ED 74 5E            [12] 1864 	mov	a,#___str_7
      0027EF C0 E0            [24] 1865 	push	acc
      0027F1 74 3D            [12] 1866 	mov	a,#(___str_7 >> 8)
      0027F3 C0 E0            [24] 1867 	push	acc
      0027F5 12 31 60         [24] 1868 	lcall	_printf_fast_f
      0027F8 E5 81            [12] 1869 	mov	a,sp
      0027FA 24 FC            [12] 1870 	add	a,#0xfc
      0027FC F5 81            [12] 1871 	mov	sp,a
      0027FE D0 02            [24] 1872 	pop	ar2
      002800 D0 03            [24] 1873 	pop	ar3
      002802 D0 04            [24] 1874 	pop	ar4
      002804 D0 05            [24] 1875 	pop	ar5
      002806 D0 06            [24] 1876 	pop	ar6
      002808 D0 07            [24] 1877 	pop	ar7
                                   1878 ;	../lib/linefi_packet.c:162: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      00280A 05 6B            [12] 1879 	inc	_print_linefipacket_i_65537_81
      00280C D0 07            [24] 1880 	pop	ar7
      00280E D0 06            [24] 1881 	pop	ar6
      002810 D0 05            [24] 1882 	pop	ar5
      002812 02 27 7F         [24] 1883 	ljmp	00103$
      002815                       1884 00101$:
                                   1885 ;	../lib/linefi_packet.c:165: printf_fast_f("\r\n");
      002815 74 64            [12] 1886 	mov	a,#___str_8
      002817 C0 E0            [24] 1887 	push	acc
      002819 74 3D            [12] 1888 	mov	a,#(___str_8 >> 8)
      00281B C0 E0            [24] 1889 	push	acc
      00281D 12 31 60         [24] 1890 	lcall	_printf_fast_f
      002820 15 81            [12] 1891 	dec	sp
      002822 15 81            [12] 1892 	dec	sp
                                   1893 ;	../lib/linefi_packet.c:166: printf_fast_f("-------------------------------\r\n");
      002824 74 F1            [12] 1894 	mov	a,#___str_0
      002826 C0 E0            [24] 1895 	push	acc
      002828 74 3C            [12] 1896 	mov	a,#(___str_0 >> 8)
      00282A C0 E0            [24] 1897 	push	acc
      00282C 12 31 60         [24] 1898 	lcall	_printf_fast_f
      00282F 15 81            [12] 1899 	dec	sp
      002831 15 81            [12] 1900 	dec	sp
                                   1901 ;	../lib/linefi_packet.c:167: }
      002833 22               [24] 1902 	ret
                                   1903 ;------------------------------------------------------------
                                   1904 ;Allocation info for local variables in function 'get_timer_value'
                                   1905 ;------------------------------------------------------------
                                   1906 ;ptr3                      Allocated with name '_get_timer_value_ptr3_65536_85'
                                   1907 ;index                     Allocated to registers r7 
                                   1908 ;value                     Allocated to registers r5 
                                   1909 ;a                         Allocated with name '_get_timer_value_a_65536_85'
                                   1910 ;------------------------------------------------------------
                                   1911 ;	../lib/linefi_packet.c:195: uint8 get_timer_value(uint8 index) {
                                   1912 ;	-----------------------------------------
                                   1913 ;	 function get_timer_value
                                   1914 ;	-----------------------------------------
      002834                       1915 _get_timer_value:
      002834 AF 82            [24] 1916 	mov	r7,dpl
                                   1917 ;	../lib/linefi_packet.c:200: if (ptr3 == NULL) {
      002836 E5 6C            [12] 1918 	mov	a,_get_timer_value_ptr3_65536_85
      002838 45 6D            [12] 1919 	orl	a,(_get_timer_value_ptr3_65536_85 + 1)
      00283A 70 09            [24] 1920 	jnz	00102$
                                   1921 ;	../lib/linefi_packet.c:201: ptr3 = (uint8 *)packet_gen_table;
      00283C 75 6C 1C         [24] 1922 	mov	_get_timer_value_ptr3_65536_85,#_packet_gen_table
      00283F 75 6D 2B         [24] 1923 	mov	(_get_timer_value_ptr3_65536_85 + 1),#(_packet_gen_table >> 8)
      002842 75 6E 80         [24] 1924 	mov	(_get_timer_value_ptr3_65536_85 + 2),#0x80
      002845                       1925 00102$:
                                   1926 ;	../lib/linefi_packet.c:203: ptr3 += index; 
      002845 EF               [12] 1927 	mov	a,r7
      002846 25 6C            [12] 1928 	add	a,_get_timer_value_ptr3_65536_85
      002848 F5 6C            [12] 1929 	mov	_get_timer_value_ptr3_65536_85,a
      00284A E4               [12] 1930 	clr	a
      00284B 35 6D            [12] 1931 	addc	a,(_get_timer_value_ptr3_65536_85 + 1)
      00284D F5 6D            [12] 1932 	mov	(_get_timer_value_ptr3_65536_85 + 1),a
                                   1933 ;	../lib/linefi_packet.c:204: if (ptr3 >= packet_gen_table + sizeof(packet_gen_table)) {
      00284F 74 AC            [12] 1934 	mov	a,#(_packet_gen_table + 0x0190)
      002851 C0 E0            [24] 1935 	push	acc
      002853 74 2C            [12] 1936 	mov	a,#((_packet_gen_table + 0x0190) >> 8)
      002855 C0 E0            [24] 1937 	push	acc
      002857 74 80            [12] 1938 	mov	a,#0x80
      002859 C0 E0            [24] 1939 	push	acc
      00285B 85 6C 82         [24] 1940 	mov	dpl,_get_timer_value_ptr3_65536_85
      00285E 85 6D 83         [24] 1941 	mov	dph,(_get_timer_value_ptr3_65536_85 + 1)
      002861 85 6E F0         [24] 1942 	mov	b,(_get_timer_value_ptr3_65536_85 + 2)
      002864 12 00 81         [24] 1943 	lcall	___gptr_cmp
      002867 15 81            [12] 1944 	dec	sp
      002869 15 81            [12] 1945 	dec	sp
      00286B 15 81            [12] 1946 	dec	sp
      00286D 40 09            [24] 1947 	jc	00104$
                                   1948 ;	../lib/linefi_packet.c:205: ptr3 = (uint8*)packet_gen_table; 
      00286F 75 6C 1C         [24] 1949 	mov	_get_timer_value_ptr3_65536_85,#_packet_gen_table
      002872 75 6D 2B         [24] 1950 	mov	(_get_timer_value_ptr3_65536_85 + 1),#(_packet_gen_table >> 8)
      002875 75 6E 80         [24] 1951 	mov	(_get_timer_value_ptr3_65536_85 + 2),#0x80
      002878                       1952 00104$:
                                   1953 ;	../lib/linefi_packet.c:207: value = (*ptr3);
      002878 AD 6C            [24] 1954 	mov	r5,_get_timer_value_ptr3_65536_85
      00287A AE 6D            [24] 1955 	mov	r6,(_get_timer_value_ptr3_65536_85 + 1)
      00287C AF 6E            [24] 1956 	mov	r7,(_get_timer_value_ptr3_65536_85 + 2)
      00287E 8D 82            [24] 1957 	mov	dpl,r5
      002880 8E 83            [24] 1958 	mov	dph,r6
      002882 8F F0            [24] 1959 	mov	b,r7
      002884 12 37 EE         [24] 1960 	lcall	__gptrget
                                   1961 ;	../lib/linefi_packet.c:208: return value;
                                   1962 ;	../lib/linefi_packet.c:209: }
      002887 F5 82            [12] 1963 	mov	dpl,a
      002889 22               [24] 1964 	ret
                                   1965 ;------------------------------------------------------------
                                   1966 ;Allocation info for local variables in function 'get_bktimer_value'
                                   1967 ;------------------------------------------------------------
                                   1968 ;ptr_sht                   Allocated with name '_get_bktimer_value_ptr_sht_65536_89'
                                   1969 ;index                     Allocated to registers r7 
                                   1970 ;value                     Allocated to registers r5 
                                   1971 ;a                         Allocated with name '_get_bktimer_value_a_65536_89'
                                   1972 ;------------------------------------------------------------
                                   1973 ;	../lib/linefi_packet.c:210: uint8 get_bktimer_value(uint8 index) {	
                                   1974 ;	-----------------------------------------
                                   1975 ;	 function get_bktimer_value
                                   1976 ;	-----------------------------------------
      00288A                       1977 _get_bktimer_value:
      00288A AF 82            [24] 1978 	mov	r7,dpl
                                   1979 ;	../lib/linefi_packet.c:214: if (ptr_sht == NULL) {
      00288C E5 6F            [12] 1980 	mov	a,_get_bktimer_value_ptr_sht_65536_89
      00288E 45 70            [12] 1981 	orl	a,(_get_bktimer_value_ptr_sht_65536_89 + 1)
      002890 70 09            [24] 1982 	jnz	00102$
                                   1983 ;	../lib/linefi_packet.c:215: ptr_sht = (uint8*)sht75_crc_table;
      002892 75 6F 1C         [24] 1984 	mov	_get_bktimer_value_ptr_sht_65536_89,#_sht75_crc_table
      002895 75 70 2A         [24] 1985 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 1),#(_sht75_crc_table >> 8)
      002898 75 71 80         [24] 1986 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 2),#0x80
      00289B                       1987 00102$:
                                   1988 ;	../lib/linefi_packet.c:217: ptr_sht += index; 
      00289B EF               [12] 1989 	mov	a,r7
      00289C 25 6F            [12] 1990 	add	a,_get_bktimer_value_ptr_sht_65536_89
      00289E F5 6F            [12] 1991 	mov	_get_bktimer_value_ptr_sht_65536_89,a
      0028A0 E4               [12] 1992 	clr	a
      0028A1 35 70            [12] 1993 	addc	a,(_get_bktimer_value_ptr_sht_65536_89 + 1)
      0028A3 F5 70            [12] 1994 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 1),a
                                   1995 ;	../lib/linefi_packet.c:218: if (ptr_sht >= sht75_crc_table + sizeof(sht75_crc_table)) {
      0028A5 74 1C            [12] 1996 	mov	a,#(_sht75_crc_table + 0x0100)
      0028A7 C0 E0            [24] 1997 	push	acc
      0028A9 74 2B            [12] 1998 	mov	a,#((_sht75_crc_table + 0x0100) >> 8)
      0028AB C0 E0            [24] 1999 	push	acc
      0028AD 74 80            [12] 2000 	mov	a,#0x80
      0028AF C0 E0            [24] 2001 	push	acc
      0028B1 85 6F 82         [24] 2002 	mov	dpl,_get_bktimer_value_ptr_sht_65536_89
      0028B4 85 70 83         [24] 2003 	mov	dph,(_get_bktimer_value_ptr_sht_65536_89 + 1)
      0028B7 85 71 F0         [24] 2004 	mov	b,(_get_bktimer_value_ptr_sht_65536_89 + 2)
      0028BA 12 00 81         [24] 2005 	lcall	___gptr_cmp
      0028BD 15 81            [12] 2006 	dec	sp
      0028BF 15 81            [12] 2007 	dec	sp
      0028C1 15 81            [12] 2008 	dec	sp
      0028C3 40 09            [24] 2009 	jc	00104$
                                   2010 ;	../lib/linefi_packet.c:219: ptr_sht = (uint8*)sht75_crc_table; 
      0028C5 75 6F 1C         [24] 2011 	mov	_get_bktimer_value_ptr_sht_65536_89,#_sht75_crc_table
      0028C8 75 70 2A         [24] 2012 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 1),#(_sht75_crc_table >> 8)
      0028CB 75 71 80         [24] 2013 	mov	(_get_bktimer_value_ptr_sht_65536_89 + 2),#0x80
      0028CE                       2014 00104$:
                                   2015 ;	../lib/linefi_packet.c:221: value = (*ptr_sht);
      0028CE AD 6F            [24] 2016 	mov	r5,_get_bktimer_value_ptr_sht_65536_89
      0028D0 AE 70            [24] 2017 	mov	r6,(_get_bktimer_value_ptr_sht_65536_89 + 1)
      0028D2 AF 71            [24] 2018 	mov	r7,(_get_bktimer_value_ptr_sht_65536_89 + 2)
      0028D4 8D 82            [24] 2019 	mov	dpl,r5
      0028D6 8E 83            [24] 2020 	mov	dph,r6
      0028D8 8F F0            [24] 2021 	mov	b,r7
      0028DA 12 37 EE         [24] 2022 	lcall	__gptrget
                                   2023 ;	../lib/linefi_packet.c:223: return value;
                                   2024 ;	../lib/linefi_packet.c:224: }
      0028DD F5 82            [12] 2025 	mov	dpl,a
      0028DF 22               [24] 2026 	ret
                                   2027 ;------------------------------------------------------------
                                   2028 ;Allocation info for local variables in function 'crc8'
                                   2029 ;------------------------------------------------------------
                                   2030 ;num_bytes                 Allocated with name '_crc8_PARM_2'
                                   2031 ;au8CRC                    Allocated with name '_crc8_PARM_3'
                                   2032 ;input_str                 Allocated to registers r5 r6 r7 
                                   2033 ;a                         Allocated to registers r3 
                                   2034 ;crc                       Allocated to registers r4 
                                   2035 ;ptr                       Allocated to registers r5 r6 r7 
                                   2036 ;------------------------------------------------------------
                                   2037 ;	../lib/linefi_packet.c:226: uint8 crc8( uint8 *input_str, uint8 num_bytes, uint8 au8CRC) 
                                   2038 ;	-----------------------------------------
                                   2039 ;	 function crc8
                                   2040 ;	-----------------------------------------
      0028E0                       2041 _crc8:
      0028E0 AD 82            [24] 2042 	mov	r5,dpl
      0028E2 AE 83            [24] 2043 	mov	r6,dph
      0028E4 AF F0            [24] 2044 	mov	r7,b
                                   2045 ;	../lib/linefi_packet.c:232: crc = au8CRC;
      0028E6 AC 1A            [24] 2046 	mov	r4,_crc8_PARM_3
                                   2047 ;	../lib/linefi_packet.c:235: if ( ptr != NULL )
      0028E8 ED               [12] 2048 	mov	a,r5
      0028E9 4E               [12] 2049 	orl	a,r6
      0028EA 60 21            [24] 2050 	jz	00103$
                                   2051 ;	../lib/linefi_packet.c:236: for (a=0; a<num_bytes; a++) {
      0028EC 7B 00            [12] 2052 	mov	r3,#0x00
      0028EE                       2053 00105$:
      0028EE C3               [12] 2054 	clr	c
      0028EF EB               [12] 2055 	mov	a,r3
      0028F0 95 19            [12] 2056 	subb	a,_crc8_PARM_2
      0028F2 50 19            [24] 2057 	jnc	00103$
                                   2058 ;	../lib/linefi_packet.c:238: crc = sht75_crc_table[(*ptr++) ^ crc];
      0028F4 8D 82            [24] 2059 	mov	dpl,r5
      0028F6 8E 83            [24] 2060 	mov	dph,r6
      0028F8 8F F0            [24] 2061 	mov	b,r7
      0028FA 12 37 EE         [24] 2062 	lcall	__gptrget
      0028FD FA               [12] 2063 	mov	r2,a
      0028FE A3               [24] 2064 	inc	dptr
      0028FF AD 82            [24] 2065 	mov	r5,dpl
      002901 AE 83            [24] 2066 	mov	r6,dph
      002903 EC               [12] 2067 	mov	a,r4
      002904 6A               [12] 2068 	xrl	a,r2
      002905 90 2A 1C         [24] 2069 	mov	dptr,#_sht75_crc_table
      002908 93               [24] 2070 	movc	a,@a+dptr
      002909 FC               [12] 2071 	mov	r4,a
                                   2072 ;	../lib/linefi_packet.c:236: for (a=0; a<num_bytes; a++) {
      00290A 0B               [12] 2073 	inc	r3
      00290B 80 E1            [24] 2074 	sjmp	00105$
      00290D                       2075 00103$:
                                   2076 ;	../lib/linefi_packet.c:241: return crc;
      00290D 8C 82            [24] 2077 	mov	dpl,r4
                                   2078 ;	../lib/linefi_packet.c:242: }  /* crc_8 */
      00290F 22               [24] 2079 	ret
                                   2080 ;------------------------------------------------------------
                                   2081 ;Allocation info for local variables in function 'print_raw_packet'
                                   2082 ;------------------------------------------------------------
                                   2083 ;apu8Data                  Allocated with name '_print_raw_packet_PARM_2'
                                   2084 ;au8Size                   Allocated to registers r7 
                                   2085 ;i                         Allocated to registers r6 
                                   2086 ;------------------------------------------------------------
                                   2087 ;	../lib/linefi_packet.c:244: void print_raw_packet(uint8 au8Size, uint8 * apu8Data)
                                   2088 ;	-----------------------------------------
                                   2089 ;	 function print_raw_packet
                                   2090 ;	-----------------------------------------
      002910                       2091 _print_raw_packet:
      002910 AF 82            [24] 2092 	mov	r7,dpl
                                   2093 ;	../lib/linefi_packet.c:247: printf_fast_f("#%d\r\n", gu16Cnt++);
      002912 AD 5F            [24] 2094 	mov	r5,_gu16Cnt
      002914 AE 60            [24] 2095 	mov	r6,(_gu16Cnt + 1)
      002916 05 5F            [12] 2096 	inc	_gu16Cnt
      002918 E4               [12] 2097 	clr	a
      002919 B5 5F 02         [24] 2098 	cjne	a,_gu16Cnt,00136$
      00291C 05 60            [12] 2099 	inc	(_gu16Cnt + 1)
      00291E                       2100 00136$:
      00291E C0 07            [24] 2101 	push	ar7
      002920 C0 05            [24] 2102 	push	ar5
      002922 C0 06            [24] 2103 	push	ar6
      002924 74 67            [12] 2104 	mov	a,#___str_9
      002926 C0 E0            [24] 2105 	push	acc
      002928 74 3D            [12] 2106 	mov	a,#(___str_9 >> 8)
      00292A C0 E0            [24] 2107 	push	acc
      00292C 12 31 60         [24] 2108 	lcall	_printf_fast_f
      00292F E5 81            [12] 2109 	mov	a,sp
      002931 24 FC            [12] 2110 	add	a,#0xfc
      002933 F5 81            [12] 2111 	mov	sp,a
                                   2112 ;	../lib/linefi_packet.c:248: printf_fast_f("raw :  ");
      002935 74 6D            [12] 2113 	mov	a,#___str_10
      002937 C0 E0            [24] 2114 	push	acc
      002939 74 3D            [12] 2115 	mov	a,#(___str_10 >> 8)
      00293B C0 E0            [24] 2116 	push	acc
      00293D 12 31 60         [24] 2117 	lcall	_printf_fast_f
      002940 15 81            [12] 2118 	dec	sp
      002942 15 81            [12] 2119 	dec	sp
      002944 D0 07            [24] 2120 	pop	ar7
                                   2121 ;	../lib/linefi_packet.c:249: for (i=0;i<au8Size;i++) {
      002946 7E 00            [12] 2122 	mov	r6,#0x00
      002948                       2123 00107$:
      002948 C3               [12] 2124 	clr	c
      002949 EE               [12] 2125 	mov	a,r6
      00294A 9F               [12] 2126 	subb	a,r7
      00294B 50 24            [24] 2127 	jnc	00101$
                                   2128 ;	../lib/linefi_packet.c:250: printf_fast_f("%2d   ", i);
      00294D 8E 04            [24] 2129 	mov	ar4,r6
      00294F 7D 00            [12] 2130 	mov	r5,#0x00
      002951 C0 07            [24] 2131 	push	ar7
      002953 C0 06            [24] 2132 	push	ar6
      002955 C0 04            [24] 2133 	push	ar4
      002957 C0 05            [24] 2134 	push	ar5
      002959 74 75            [12] 2135 	mov	a,#___str_11
      00295B C0 E0            [24] 2136 	push	acc
      00295D 74 3D            [12] 2137 	mov	a,#(___str_11 >> 8)
      00295F C0 E0            [24] 2138 	push	acc
      002961 12 31 60         [24] 2139 	lcall	_printf_fast_f
      002964 E5 81            [12] 2140 	mov	a,sp
      002966 24 FC            [12] 2141 	add	a,#0xfc
      002968 F5 81            [12] 2142 	mov	sp,a
      00296A D0 06            [24] 2143 	pop	ar6
      00296C D0 07            [24] 2144 	pop	ar7
                                   2145 ;	../lib/linefi_packet.c:249: for (i=0;i<au8Size;i++) {
      00296E 0E               [12] 2146 	inc	r6
      00296F 80 D7            [24] 2147 	sjmp	00107$
      002971                       2148 00101$:
                                   2149 ;	../lib/linefi_packet.c:252: printf_fast_f("\r\n");
      002971 C0 07            [24] 2150 	push	ar7
      002973 74 64            [12] 2151 	mov	a,#___str_8
      002975 C0 E0            [24] 2152 	push	acc
      002977 74 3D            [12] 2153 	mov	a,#(___str_8 >> 8)
      002979 C0 E0            [24] 2154 	push	acc
      00297B 12 31 60         [24] 2155 	lcall	_printf_fast_f
      00297E 15 81            [12] 2156 	dec	sp
      002980 15 81            [12] 2157 	dec	sp
                                   2158 ;	../lib/linefi_packet.c:253: printf_fast_f("data:");
      002982 74 7C            [12] 2159 	mov	a,#___str_12
      002984 C0 E0            [24] 2160 	push	acc
      002986 74 3D            [12] 2161 	mov	a,#(___str_12 >> 8)
      002988 C0 E0            [24] 2162 	push	acc
      00298A 12 31 60         [24] 2163 	lcall	_printf_fast_f
      00298D 15 81            [12] 2164 	dec	sp
      00298F 15 81            [12] 2165 	dec	sp
      002991 D0 07            [24] 2166 	pop	ar7
                                   2167 ;	../lib/linefi_packet.c:254: for (i=0;i<au8Size;i++) {
      002993 7E 00            [12] 2168 	mov	r6,#0x00
      002995                       2169 00110$:
      002995 C3               [12] 2170 	clr	c
      002996 EE               [12] 2171 	mov	a,r6
      002997 9F               [12] 2172 	subb	a,r7
      002998 50 72            [24] 2173 	jnc	00105$
                                   2174 ;	../lib/linefi_packet.c:255: if (*apu8Data < 0x10) {
      00299A AB 72            [24] 2175 	mov	r3,_print_raw_packet_PARM_2
      00299C AC 73            [24] 2176 	mov	r4,(_print_raw_packet_PARM_2 + 1)
      00299E AD 74            [24] 2177 	mov	r5,(_print_raw_packet_PARM_2 + 2)
      0029A0 8B 82            [24] 2178 	mov	dpl,r3
      0029A2 8C 83            [24] 2179 	mov	dph,r4
      0029A4 8D F0            [24] 2180 	mov	b,r5
      0029A6 12 37 EE         [24] 2181 	lcall	__gptrget
      0029A9 FA               [12] 2182 	mov	r2,a
      0029AA BA 10 00         [24] 2183 	cjne	r2,#0x10,00139$
      0029AD                       2184 00139$:
      0029AD 50 30            [24] 2185 	jnc	00103$
                                   2186 ;	../lib/linefi_packet.c:256: printf_fast_f("0x0%x ", *apu8Data++);
      0029AF 8A 01            [24] 2187 	mov	ar1,r2
      0029B1 74 01            [12] 2188 	mov	a,#0x01
      0029B3 2B               [12] 2189 	add	a,r3
      0029B4 F5 72            [12] 2190 	mov	_print_raw_packet_PARM_2,a
      0029B6 E4               [12] 2191 	clr	a
      0029B7 3C               [12] 2192 	addc	a,r4
      0029B8 F5 73            [12] 2193 	mov	(_print_raw_packet_PARM_2 + 1),a
      0029BA 8D 74            [24] 2194 	mov	(_print_raw_packet_PARM_2 + 2),r5
      0029BC 89 00            [24] 2195 	mov	ar0,r1
      0029BE 79 00            [12] 2196 	mov	r1,#0x00
      0029C0 C0 07            [24] 2197 	push	ar7
      0029C2 C0 06            [24] 2198 	push	ar6
      0029C4 C0 00            [24] 2199 	push	ar0
      0029C6 C0 01            [24] 2200 	push	ar1
      0029C8 74 82            [12] 2201 	mov	a,#___str_13
      0029CA C0 E0            [24] 2202 	push	acc
      0029CC 74 3D            [12] 2203 	mov	a,#(___str_13 >> 8)
      0029CE C0 E0            [24] 2204 	push	acc
      0029D0 12 31 60         [24] 2205 	lcall	_printf_fast_f
      0029D3 E5 81            [12] 2206 	mov	a,sp
      0029D5 24 FC            [12] 2207 	add	a,#0xfc
      0029D7 F5 81            [12] 2208 	mov	sp,a
      0029D9 D0 06            [24] 2209 	pop	ar6
      0029DB D0 07            [24] 2210 	pop	ar7
      0029DD 80 2A            [24] 2211 	sjmp	00111$
      0029DF                       2212 00103$:
                                   2213 ;	../lib/linefi_packet.c:259: printf_fast_f("0x%x ", *apu8Data++);
      0029DF 74 01            [12] 2214 	mov	a,#0x01
      0029E1 2B               [12] 2215 	add	a,r3
      0029E2 F5 72            [12] 2216 	mov	_print_raw_packet_PARM_2,a
      0029E4 E4               [12] 2217 	clr	a
      0029E5 3C               [12] 2218 	addc	a,r4
      0029E6 F5 73            [12] 2219 	mov	(_print_raw_packet_PARM_2 + 1),a
      0029E8 8D 74            [24] 2220 	mov	(_print_raw_packet_PARM_2 + 2),r5
      0029EA 7D 00            [12] 2221 	mov	r5,#0x00
      0029EC C0 07            [24] 2222 	push	ar7
      0029EE C0 06            [24] 2223 	push	ar6
      0029F0 C0 02            [24] 2224 	push	ar2
      0029F2 C0 05            [24] 2225 	push	ar5
      0029F4 74 5E            [12] 2226 	mov	a,#___str_7
      0029F6 C0 E0            [24] 2227 	push	acc
      0029F8 74 3D            [12] 2228 	mov	a,#(___str_7 >> 8)
      0029FA C0 E0            [24] 2229 	push	acc
      0029FC 12 31 60         [24] 2230 	lcall	_printf_fast_f
      0029FF E5 81            [12] 2231 	mov	a,sp
      002A01 24 FC            [12] 2232 	add	a,#0xfc
      002A03 F5 81            [12] 2233 	mov	sp,a
      002A05 D0 06            [24] 2234 	pop	ar6
      002A07 D0 07            [24] 2235 	pop	ar7
      002A09                       2236 00111$:
                                   2237 ;	../lib/linefi_packet.c:254: for (i=0;i<au8Size;i++) {
      002A09 0E               [12] 2238 	inc	r6
      002A0A 80 89            [24] 2239 	sjmp	00110$
      002A0C                       2240 00105$:
                                   2241 ;	../lib/linefi_packet.c:262: printf_fast_f("\r\n");
      002A0C 74 64            [12] 2242 	mov	a,#___str_8
      002A0E C0 E0            [24] 2243 	push	acc
      002A10 74 3D            [12] 2244 	mov	a,#(___str_8 >> 8)
      002A12 C0 E0            [24] 2245 	push	acc
      002A14 12 31 60         [24] 2246 	lcall	_printf_fast_f
      002A17 15 81            [12] 2247 	dec	sp
      002A19 15 81            [12] 2248 	dec	sp
                                   2249 ;	../lib/linefi_packet.c:263: }
      002A1B 22               [24] 2250 	ret
                                   2251 	.area CSEG    (CODE)
                                   2252 	.area CONST   (CODE)
                                   2253 	.area CONST   (CODE)
      003CF1                       2254 ___str_0:
      003CF1 2D 2D 2D 2D 2D 2D 2D  2255 	.ascii "-------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D
      003D10 0D                    2256 	.db 0x0d
      003D11 0A                    2257 	.db 0x0a
      003D12 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                                   2260 	.area CONST   (CODE)
      003D13                       2261 ___str_1:
      003D13 56 65 72 20 3A 20 25  2262 	.ascii "Ver : %d"
             64
      003D1B 0D                    2263 	.db 0x0d
      003D1C 0A                    2264 	.db 0x0a
      003D1D 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      003D1E                       2268 ___str_2:
      003D1E 54 79 70 65 3A 20 25  2269 	.ascii "Type: %d(%s)"
             64 28 25 73 29
      003D2A 0D                    2270 	.db 0x0d
      003D2B 0A                    2271 	.db 0x0a
      003D2C 00                    2272 	.db 0x00
                                   2273 	.area CSEG    (CODE)
                                   2274 	.area CONST   (CODE)
      003D2D                       2275 ___str_3:
      003D2D 41 64 64 72 3A 20 25  2276 	.ascii "Addr: %d"
             64
      003D35 0D                    2277 	.db 0x0d
      003D36 0A                    2278 	.db 0x0a
      003D37 00                    2279 	.db 0x00
                                   2280 	.area CSEG    (CODE)
                                   2281 	.area CONST   (CODE)
      003D38                       2282 ___str_4:
      003D38 53 69 7A 65 3A 20 25  2283 	.ascii "Size: %d"
             64
      003D40 0D                    2284 	.db 0x0d
      003D41 0A                    2285 	.db 0x0a
      003D42 00                    2286 	.db 0x00
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area CONST   (CODE)
      003D43                       2289 ___str_5:
      003D43 43 52 43 20 63 6F 6D  2290 	.ascii "CRC comp : %d %d "
             70 20 3A 20 25 64 20
             25 64 20
      003D54 0D                    2291 	.db 0x0d
      003D55 0A                    2292 	.db 0x0a
      003D56 00                    2293 	.db 0x00
                                   2294 	.area CSEG    (CODE)
                                   2295 	.area CONST   (CODE)
      003D57                       2296 ___str_6:
      003D57 44 41 54 41 3A 20     2297 	.ascii "DATA: "
      003D5D 00                    2298 	.db 0x00
                                   2299 	.area CSEG    (CODE)
                                   2300 	.area CONST   (CODE)
      003D5E                       2301 ___str_7:
      003D5E 30 78 25 78 20        2302 	.ascii "0x%x "
      003D63 00                    2303 	.db 0x00
                                   2304 	.area CSEG    (CODE)
                                   2305 	.area CONST   (CODE)
      003D64                       2306 ___str_8:
      003D64 0D                    2307 	.db 0x0d
      003D65 0A                    2308 	.db 0x0a
      003D66 00                    2309 	.db 0x00
                                   2310 	.area CSEG    (CODE)
      002A1C                       2311 _sht75_crc_table:
      002A1C 00                    2312 	.db #0x00	; 0
      002A1D 31                    2313 	.db #0x31	; 49	'1'
      002A1E 62                    2314 	.db #0x62	; 98	'b'
      002A1F 53                    2315 	.db #0x53	; 83	'S'
      002A20 C4                    2316 	.db #0xc4	; 196
      002A21 F5                    2317 	.db #0xf5	; 245
      002A22 A6                    2318 	.db #0xa6	; 166
      002A23 97                    2319 	.db #0x97	; 151
      002A24 B9                    2320 	.db #0xb9	; 185
      002A25 88                    2321 	.db #0x88	; 136
      002A26 DB                    2322 	.db #0xdb	; 219
      002A27 EA                    2323 	.db #0xea	; 234
      002A28 7D                    2324 	.db #0x7d	; 125
      002A29 4C                    2325 	.db #0x4c	; 76	'L'
      002A2A 1F                    2326 	.db #0x1f	; 31
      002A2B 2E                    2327 	.db #0x2e	; 46
      002A2C 43                    2328 	.db #0x43	; 67	'C'
      002A2D 72                    2329 	.db #0x72	; 114	'r'
      002A2E 21                    2330 	.db #0x21	; 33
      002A2F 10                    2331 	.db #0x10	; 16
      002A30 87                    2332 	.db #0x87	; 135
      002A31 B6                    2333 	.db #0xb6	; 182
      002A32 E5                    2334 	.db #0xe5	; 229
      002A33 D4                    2335 	.db #0xd4	; 212
      002A34 FA                    2336 	.db #0xfa	; 250
      002A35 CB                    2337 	.db #0xcb	; 203
      002A36 98                    2338 	.db #0x98	; 152
      002A37 A9                    2339 	.db #0xa9	; 169
      002A38 3E                    2340 	.db #0x3e	; 62
      002A39 0F                    2341 	.db #0x0f	; 15
      002A3A 5C                    2342 	.db #0x5c	; 92
      002A3B 6D                    2343 	.db #0x6d	; 109	'm'
      002A3C 86                    2344 	.db #0x86	; 134
      002A3D B7                    2345 	.db #0xb7	; 183
      002A3E E4                    2346 	.db #0xe4	; 228
      002A3F D5                    2347 	.db #0xd5	; 213
      002A40 42                    2348 	.db #0x42	; 66	'B'
      002A41 73                    2349 	.db #0x73	; 115	's'
      002A42 20                    2350 	.db #0x20	; 32
      002A43 11                    2351 	.db #0x11	; 17
      002A44 3F                    2352 	.db #0x3f	; 63
      002A45 0E                    2353 	.db #0x0e	; 14
      002A46 5D                    2354 	.db #0x5d	; 93
      002A47 6C                    2355 	.db #0x6c	; 108	'l'
      002A48 FB                    2356 	.db #0xfb	; 251
      002A49 CA                    2357 	.db #0xca	; 202
      002A4A 99                    2358 	.db #0x99	; 153
      002A4B A8                    2359 	.db #0xa8	; 168
      002A4C C5                    2360 	.db #0xc5	; 197
      002A4D F4                    2361 	.db #0xf4	; 244
      002A4E A7                    2362 	.db #0xa7	; 167
      002A4F 96                    2363 	.db #0x96	; 150
      002A50 01                    2364 	.db #0x01	; 1
      002A51 30                    2365 	.db #0x30	; 48	'0'
      002A52 63                    2366 	.db #0x63	; 99	'c'
      002A53 52                    2367 	.db #0x52	; 82	'R'
      002A54 7C                    2368 	.db #0x7c	; 124
      002A55 4D                    2369 	.db #0x4d	; 77	'M'
      002A56 1E                    2370 	.db #0x1e	; 30
      002A57 2F                    2371 	.db #0x2f	; 47
      002A58 B8                    2372 	.db #0xb8	; 184
      002A59 89                    2373 	.db #0x89	; 137
      002A5A DA                    2374 	.db #0xda	; 218
      002A5B EB                    2375 	.db #0xeb	; 235
      002A5C 3D                    2376 	.db #0x3d	; 61
      002A5D 0C                    2377 	.db #0x0c	; 12
      002A5E 5F                    2378 	.db #0x5f	; 95
      002A5F 6E                    2379 	.db #0x6e	; 110	'n'
      002A60 F9                    2380 	.db #0xf9	; 249
      002A61 C8                    2381 	.db #0xc8	; 200
      002A62 9B                    2382 	.db #0x9b	; 155
      002A63 AA                    2383 	.db #0xaa	; 170
      002A64 84                    2384 	.db #0x84	; 132
      002A65 B5                    2385 	.db #0xb5	; 181
      002A66 E6                    2386 	.db #0xe6	; 230
      002A67 D7                    2387 	.db #0xd7	; 215
      002A68 40                    2388 	.db #0x40	; 64
      002A69 71                    2389 	.db #0x71	; 113	'q'
      002A6A 22                    2390 	.db #0x22	; 34
      002A6B 13                    2391 	.db #0x13	; 19
      002A6C 7E                    2392 	.db #0x7e	; 126
      002A6D 4F                    2393 	.db #0x4f	; 79	'O'
      002A6E 1C                    2394 	.db #0x1c	; 28
      002A6F 2D                    2395 	.db #0x2d	; 45
      002A70 BA                    2396 	.db #0xba	; 186
      002A71 8B                    2397 	.db #0x8b	; 139
      002A72 D8                    2398 	.db #0xd8	; 216
      002A73 E9                    2399 	.db #0xe9	; 233
      002A74 C7                    2400 	.db #0xc7	; 199
      002A75 F6                    2401 	.db #0xf6	; 246
      002A76 A5                    2402 	.db #0xa5	; 165
      002A77 94                    2403 	.db #0x94	; 148
      002A78 03                    2404 	.db #0x03	; 3
      002A79 32                    2405 	.db #0x32	; 50	'2'
      002A7A 61                    2406 	.db #0x61	; 97	'a'
      002A7B 50                    2407 	.db #0x50	; 80	'P'
      002A7C BB                    2408 	.db #0xbb	; 187
      002A7D 8A                    2409 	.db #0x8a	; 138
      002A7E D9                    2410 	.db #0xd9	; 217
      002A7F E8                    2411 	.db #0xe8	; 232
      002A80 7F                    2412 	.db #0x7f	; 127
      002A81 4E                    2413 	.db #0x4e	; 78	'N'
      002A82 1D                    2414 	.db #0x1d	; 29
      002A83 2C                    2415 	.db #0x2c	; 44
      002A84 02                    2416 	.db #0x02	; 2
      002A85 33                    2417 	.db #0x33	; 51	'3'
      002A86 60                    2418 	.db #0x60	; 96
      002A87 51                    2419 	.db #0x51	; 81	'Q'
      002A88 C6                    2420 	.db #0xc6	; 198
      002A89 F7                    2421 	.db #0xf7	; 247
      002A8A A4                    2422 	.db #0xa4	; 164
      002A8B 95                    2423 	.db #0x95	; 149
      002A8C F8                    2424 	.db #0xf8	; 248
      002A8D C9                    2425 	.db #0xc9	; 201
      002A8E 9A                    2426 	.db #0x9a	; 154
      002A8F AB                    2427 	.db #0xab	; 171
      002A90 3C                    2428 	.db #0x3c	; 60
      002A91 0D                    2429 	.db #0x0d	; 13
      002A92 5E                    2430 	.db #0x5e	; 94
      002A93 6F                    2431 	.db #0x6f	; 111	'o'
      002A94 41                    2432 	.db #0x41	; 65	'A'
      002A95 70                    2433 	.db #0x70	; 112	'p'
      002A96 23                    2434 	.db #0x23	; 35
      002A97 12                    2435 	.db #0x12	; 18
      002A98 85                    2436 	.db #0x85	; 133
      002A99 B4                    2437 	.db #0xb4	; 180
      002A9A E7                    2438 	.db #0xe7	; 231
      002A9B D6                    2439 	.db #0xd6	; 214
      002A9C 7A                    2440 	.db #0x7a	; 122	'z'
      002A9D 4B                    2441 	.db #0x4b	; 75	'K'
      002A9E 18                    2442 	.db #0x18	; 24
      002A9F 29                    2443 	.db #0x29	; 41
      002AA0 BE                    2444 	.db #0xbe	; 190
      002AA1 8F                    2445 	.db #0x8f	; 143
      002AA2 DC                    2446 	.db #0xdc	; 220
      002AA3 ED                    2447 	.db #0xed	; 237
      002AA4 C3                    2448 	.db #0xc3	; 195
      002AA5 F2                    2449 	.db #0xf2	; 242
      002AA6 A1                    2450 	.db #0xa1	; 161
      002AA7 90                    2451 	.db #0x90	; 144
      002AA8 07                    2452 	.db #0x07	; 7
      002AA9 36                    2453 	.db #0x36	; 54	'6'
      002AAA 65                    2454 	.db #0x65	; 101	'e'
      002AAB 54                    2455 	.db #0x54	; 84	'T'
      002AAC 39                    2456 	.db #0x39	; 57	'9'
      002AAD 08                    2457 	.db #0x08	; 8
      002AAE 5B                    2458 	.db #0x5b	; 91
      002AAF 6A                    2459 	.db #0x6a	; 106	'j'
      002AB0 FD                    2460 	.db #0xfd	; 253
      002AB1 CC                    2461 	.db #0xcc	; 204
      002AB2 9F                    2462 	.db #0x9f	; 159
      002AB3 AE                    2463 	.db #0xae	; 174
      002AB4 80                    2464 	.db #0x80	; 128
      002AB5 B1                    2465 	.db #0xb1	; 177
      002AB6 E2                    2466 	.db #0xe2	; 226
      002AB7 D3                    2467 	.db #0xd3	; 211
      002AB8 44                    2468 	.db #0x44	; 68	'D'
      002AB9 75                    2469 	.db #0x75	; 117	'u'
      002ABA 26                    2470 	.db #0x26	; 38
      002ABB 17                    2471 	.db #0x17	; 23
      002ABC FC                    2472 	.db #0xfc	; 252
      002ABD CD                    2473 	.db #0xcd	; 205
      002ABE 9E                    2474 	.db #0x9e	; 158
      002ABF AF                    2475 	.db #0xaf	; 175
      002AC0 38                    2476 	.db #0x38	; 56	'8'
      002AC1 09                    2477 	.db #0x09	; 9
      002AC2 5A                    2478 	.db #0x5a	; 90	'Z'
      002AC3 6B                    2479 	.db #0x6b	; 107	'k'
      002AC4 45                    2480 	.db #0x45	; 69	'E'
      002AC5 74                    2481 	.db #0x74	; 116	't'
      002AC6 27                    2482 	.db #0x27	; 39
      002AC7 16                    2483 	.db #0x16	; 22
      002AC8 81                    2484 	.db #0x81	; 129
      002AC9 B0                    2485 	.db #0xb0	; 176
      002ACA E3                    2486 	.db #0xe3	; 227
      002ACB D2                    2487 	.db #0xd2	; 210
      002ACC BF                    2488 	.db #0xbf	; 191
      002ACD 8E                    2489 	.db #0x8e	; 142
      002ACE DD                    2490 	.db #0xdd	; 221
      002ACF EC                    2491 	.db #0xec	; 236
      002AD0 7B                    2492 	.db #0x7b	; 123
      002AD1 4A                    2493 	.db #0x4a	; 74	'J'
      002AD2 19                    2494 	.db #0x19	; 25
      002AD3 28                    2495 	.db #0x28	; 40
      002AD4 06                    2496 	.db #0x06	; 6
      002AD5 37                    2497 	.db #0x37	; 55	'7'
      002AD6 64                    2498 	.db #0x64	; 100	'd'
      002AD7 55                    2499 	.db #0x55	; 85	'U'
      002AD8 C2                    2500 	.db #0xc2	; 194
      002AD9 F3                    2501 	.db #0xf3	; 243
      002ADA A0                    2502 	.db #0xa0	; 160
      002ADB 91                    2503 	.db #0x91	; 145
      002ADC 47                    2504 	.db #0x47	; 71	'G'
      002ADD 76                    2505 	.db #0x76	; 118	'v'
      002ADE 25                    2506 	.db #0x25	; 37
      002ADF 14                    2507 	.db #0x14	; 20
      002AE0 83                    2508 	.db #0x83	; 131
      002AE1 B2                    2509 	.db #0xb2	; 178
      002AE2 E1                    2510 	.db #0xe1	; 225
      002AE3 D0                    2511 	.db #0xd0	; 208
      002AE4 FE                    2512 	.db #0xfe	; 254
      002AE5 CF                    2513 	.db #0xcf	; 207
      002AE6 9C                    2514 	.db #0x9c	; 156
      002AE7 AD                    2515 	.db #0xad	; 173
      002AE8 3A                    2516 	.db #0x3a	; 58
      002AE9 0B                    2517 	.db #0x0b	; 11
      002AEA 58                    2518 	.db #0x58	; 88	'X'
      002AEB 69                    2519 	.db #0x69	; 105	'i'
      002AEC 04                    2520 	.db #0x04	; 4
      002AED 35                    2521 	.db #0x35	; 53	'5'
      002AEE 66                    2522 	.db #0x66	; 102	'f'
      002AEF 57                    2523 	.db #0x57	; 87	'W'
      002AF0 C0                    2524 	.db #0xc0	; 192
      002AF1 F1                    2525 	.db #0xf1	; 241
      002AF2 A2                    2526 	.db #0xa2	; 162
      002AF3 93                    2527 	.db #0x93	; 147
      002AF4 BD                    2528 	.db #0xbd	; 189
      002AF5 8C                    2529 	.db #0x8c	; 140
      002AF6 DF                    2530 	.db #0xdf	; 223
      002AF7 EE                    2531 	.db #0xee	; 238
      002AF8 79                    2532 	.db #0x79	; 121	'y'
      002AF9 48                    2533 	.db #0x48	; 72	'H'
      002AFA 1B                    2534 	.db #0x1b	; 27
      002AFB 2A                    2535 	.db #0x2a	; 42
      002AFC C1                    2536 	.db #0xc1	; 193
      002AFD F0                    2537 	.db #0xf0	; 240
      002AFE A3                    2538 	.db #0xa3	; 163
      002AFF 92                    2539 	.db #0x92	; 146
      002B00 05                    2540 	.db #0x05	; 5
      002B01 34                    2541 	.db #0x34	; 52	'4'
      002B02 67                    2542 	.db #0x67	; 103	'g'
      002B03 56                    2543 	.db #0x56	; 86	'V'
      002B04 78                    2544 	.db #0x78	; 120	'x'
      002B05 49                    2545 	.db #0x49	; 73	'I'
      002B06 1A                    2546 	.db #0x1a	; 26
      002B07 2B                    2547 	.db #0x2b	; 43
      002B08 BC                    2548 	.db #0xbc	; 188
      002B09 8D                    2549 	.db #0x8d	; 141
      002B0A DE                    2550 	.db #0xde	; 222
      002B0B EF                    2551 	.db #0xef	; 239
      002B0C 82                    2552 	.db #0x82	; 130
      002B0D B3                    2553 	.db #0xb3	; 179
      002B0E E0                    2554 	.db #0xe0	; 224
      002B0F D1                    2555 	.db #0xd1	; 209
      002B10 46                    2556 	.db #0x46	; 70	'F'
      002B11 77                    2557 	.db #0x77	; 119	'w'
      002B12 24                    2558 	.db #0x24	; 36
      002B13 15                    2559 	.db #0x15	; 21
      002B14 3B                    2560 	.db #0x3b	; 59
      002B15 0A                    2561 	.db #0x0a	; 10
      002B16 59                    2562 	.db #0x59	; 89	'Y'
      002B17 68                    2563 	.db #0x68	; 104	'h'
      002B18 FF                    2564 	.db #0xff	; 255
      002B19 CE                    2565 	.db #0xce	; 206
      002B1A 9D                    2566 	.db #0x9d	; 157
      002B1B AC                    2567 	.db #0xac	; 172
      002B1C                       2568 _packet_gen_table:
      002B1C 2D 00                 2569 	.byte #0x2d, #0x00	; 45
      002B1E 05 00                 2570 	.byte #0x05, #0x00	; 5
      002B20 1F 00                 2571 	.byte #0x1f, #0x00	; 31
      002B22 18 00                 2572 	.byte #0x18, #0x00	; 24
      002B24 03 00                 2573 	.byte #0x03, #0x00	; 3
      002B26 14 00                 2574 	.byte #0x14, #0x00	; 20
      002B28 27 00                 2575 	.byte #0x27, #0x00	; 39
      002B2A 01 00                 2576 	.byte #0x01, #0x00	; 1
      002B2C 1C 00                 2577 	.byte #0x1c, #0x00	; 28
      002B2E 03 00                 2578 	.byte #0x03, #0x00	; 3
      002B30 28 00                 2579 	.byte #0x28, #0x00	; 40
      002B32 3B 00                 2580 	.byte #0x3b, #0x00	; 59
      002B34 02 00                 2581 	.byte #0x02, #0x00	; 2
      002B36 12 00                 2582 	.byte #0x12, #0x00	; 18
      002B38 1D 00                 2583 	.byte #0x1d, #0x00	; 29
      002B3A 03 00                 2584 	.byte #0x03, #0x00	; 3
      002B3C 0E 00                 2585 	.byte #0x0e, #0x00	; 14
      002B3E 1F 00                 2586 	.byte #0x1f, #0x00	; 31
      002B40 41 00                 2587 	.byte #0x41, #0x00	; 65
      002B42 1E 00                 2588 	.byte #0x1e, #0x00	; 30
      002B44 09 00                 2589 	.byte #0x09, #0x00	; 9
      002B46 08 00                 2590 	.byte #0x08, #0x00	; 8
      002B48 25 00                 2591 	.byte #0x25, #0x00	; 37
      002B4A 07 00                 2592 	.byte #0x07, #0x00	; 7
      002B4C 05 00                 2593 	.byte #0x05, #0x00	; 5
      002B4E 01 00                 2594 	.byte #0x01, #0x00	; 1
      002B50 01 00                 2595 	.byte #0x01, #0x00	; 1
      002B52 2B 00                 2596 	.byte #0x2b, #0x00	; 43
      002B54 01 00                 2597 	.byte #0x01, #0x00	; 1
      002B56 24 00                 2598 	.byte #0x24, #0x00	; 36
      002B58 0A 00                 2599 	.byte #0x0a, #0x00	; 10
      002B5A 4A 00                 2600 	.byte #0x4a, #0x00	; 74
      002B5C 23 00                 2601 	.byte #0x23, #0x00	; 35
      002B5E 28 00                 2602 	.byte #0x28, #0x00	; 40
      002B60 13 00                 2603 	.byte #0x13, #0x00	; 19
      002B62 07 00                 2604 	.byte #0x07, #0x00	; 7
      002B64 10 00                 2605 	.byte #0x10, #0x00	; 16
      002B66 1D 00                 2606 	.byte #0x1d, #0x00	; 29
      002B68 55 00                 2607 	.byte #0x55, #0x00	; 85
      002B6A 0B 00                 2608 	.byte #0x0b, #0x00	; 11
      002B6C 47 00                 2609 	.byte #0x47, #0x00	; 71
      002B6E 14 00                 2610 	.byte #0x14, #0x00	; 20
      002B70 0B 00                 2611 	.byte #0x0b, #0x00	; 11
      002B72 48 00                 2612 	.byte #0x48, #0x00	; 72
      002B74 05 00                 2613 	.byte #0x05, #0x00	; 5
      002B76 29 00                 2614 	.byte #0x29, #0x00	; 41
      002B78 13 00                 2615 	.byte #0x13, #0x00	; 19
      002B7A 21 00                 2616 	.byte #0x21, #0x00	; 33
      002B7C 06 00                 2617 	.byte #0x06, #0x00	; 6
      002B7E 01 00                 2618 	.byte #0x01, #0x00	; 1
      002B80 06 00                 2619 	.byte #0x06, #0x00	; 6
      002B82 2C 00                 2620 	.byte #0x2c, #0x00	; 44
      002B84 02 00                 2621 	.byte #0x02, #0x00	; 2
      002B86 08 00                 2622 	.byte #0x08, #0x00	; 8
      002B88 01 00                 2623 	.byte #0x01, #0x00	; 1
      002B8A 34 00                 2624 	.byte #0x34, #0x00	; 52
      002B8C 04 00                 2625 	.byte #0x04, #0x00	; 4
      002B8E 14 00                 2626 	.byte #0x14, #0x00	; 20
      002B90 0C 00                 2627 	.byte #0x0c, #0x00	; 12
      002B92 14 00                 2628 	.byte #0x14, #0x00	; 20
      002B94 05 00                 2629 	.byte #0x05, #0x00	; 5
      002B96 15 00                 2630 	.byte #0x15, #0x00	; 21
      002B98 11 00                 2631 	.byte #0x11, #0x00	; 17
      002B9A 11 00                 2632 	.byte #0x11, #0x00	; 17
      002B9C 06 00                 2633 	.byte #0x06, #0x00	; 6
      002B9E 08 00                 2634 	.byte #0x08, #0x00	; 8
      002BA0 07 00                 2635 	.byte #0x07, #0x00	; 7
      002BA2 18 00                 2636 	.byte #0x18, #0x00	; 24
      002BA4 01 00                 2637 	.byte #0x01, #0x00	; 1
      002BA6 58 00                 2638 	.byte #0x58, #0x00	; 88
      002BA8 01 00                 2639 	.byte #0x01, #0x00	; 1
      002BAA 13 00                 2640 	.byte #0x13, #0x00	; 19
      002BAC 13 00                 2641 	.byte #0x13, #0x00	; 19
      002BAE 1F 00                 2642 	.byte #0x1f, #0x00	; 31
      002BB0 0C 00                 2643 	.byte #0x0c, #0x00	; 12
      002BB2 18 00                 2644 	.byte #0x18, #0x00	; 24
      002BB4 0D 00                 2645 	.byte #0x0d, #0x00	; 13
      002BB6 19 00                 2646 	.byte #0x19, #0x00	; 25
      002BB8 17 00                 2647 	.byte #0x17, #0x00	; 23
      002BBA 10 00                 2648 	.byte #0x10, #0x00	; 16
      002BBC 16 00                 2649 	.byte #0x16, #0x00	; 22
      002BBE 03 00                 2650 	.byte #0x03, #0x00	; 3
      002BC0 0A 00                 2651 	.byte #0x0a, #0x00	; 10
      002BC2 0A 00                 2652 	.byte #0x0a, #0x00	; 10
      002BC4 09 00                 2653 	.byte #0x09, #0x00	; 9
      002BC6 18 00                 2654 	.byte #0x18, #0x00	; 24
      002BC8 2C 00                 2655 	.byte #0x2c, #0x00	; 44
      002BCA 01 00                 2656 	.byte #0x01, #0x00	; 1
      002BCC 03 00                 2657 	.byte #0x03, #0x00	; 3
      002BCE 10 00                 2658 	.byte #0x10, #0x00	; 16
      002BD0 11 00                 2659 	.byte #0x11, #0x00	; 17
      002BD2 01 00                 2660 	.byte #0x01, #0x00	; 1
      002BD4 08 00                 2661 	.byte #0x08, #0x00	; 8
      002BD6 05 00                 2662 	.byte #0x05, #0x00	; 5
      002BD8 25 00                 2663 	.byte #0x25, #0x00	; 37
      002BDA 11 00                 2664 	.byte #0x11, #0x00	; 17
      002BDC 0B 00                 2665 	.byte #0x0b, #0x00	; 11
      002BDE 02 00                 2666 	.byte #0x02, #0x00	; 2
      002BE0 15 00                 2667 	.byte #0x15, #0x00	; 21
      002BE2 02 00                 2668 	.byte #0x02, #0x00	; 2
                                   2669 	.area CONST   (CODE)
      003D67                       2670 ___str_9:
      003D67 23 25 64              2671 	.ascii "#%d"
      003D6A 0D                    2672 	.db 0x0d
      003D6B 0A                    2673 	.db 0x0a
      003D6C 00                    2674 	.db 0x00
                                   2675 	.area CSEG    (CODE)
                                   2676 	.area CONST   (CODE)
      003D6D                       2677 ___str_10:
      003D6D 72 61 77 20 3A 20 20  2678 	.ascii "raw :  "
      003D74 00                    2679 	.db 0x00
                                   2680 	.area CSEG    (CODE)
                                   2681 	.area CONST   (CODE)
      003D75                       2682 ___str_11:
      003D75 25 32 64 20 20 20     2683 	.ascii "%2d   "
      003D7B 00                    2684 	.db 0x00
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area CONST   (CODE)
      003D7C                       2687 ___str_12:
      003D7C 64 61 74 61 3A        2688 	.ascii "data:"
      003D81 00                    2689 	.db 0x00
                                   2690 	.area CSEG    (CODE)
                                   2691 	.area CONST   (CODE)
      003D82                       2692 ___str_13:
      003D82 30 78 30 25 78 20     2693 	.ascii "0x0%x "
      003D88 00                    2694 	.db 0x00
                                   2695 	.area CSEG    (CODE)
                                   2696 	.area CONST   (CODE)
      003D89                       2697 ___str_14:
      003D89 54 79 70 65 5F 42 63  2698 	.ascii "Type_Bcast"
             61 73 74
      003D93 00                    2699 	.db 0x00
                                   2700 	.area CSEG    (CODE)
                                   2701 	.area CONST   (CODE)
      003D94                       2702 ___str_15:
      003D94 54 79 70 65 5F 55 63  2703 	.ascii "Type_Ucast"
             61 73 74
      003D9E 00                    2704 	.db 0x00
                                   2705 	.area CSEG    (CODE)
                                   2706 	.area CONST   (CODE)
      003D9F                       2707 ___str_16:
      003D9F 54 79 70 65 5F 4D 63  2708 	.ascii "Type_Mcast"
             61 73 74
      003DA9 00                    2709 	.db 0x00
                                   2710 	.area CSEG    (CODE)
                                   2711 	.area CONST   (CODE)
      003DAA                       2712 ___str_17:
      003DAA 54 79 70 65 5F 53 65  2713 	.ascii "Type_SetAddr"
             74 41 64 64 72
      003DB6 00                    2714 	.db 0x00
                                   2715 	.area CSEG    (CODE)
                                   2716 	.area CONST   (CODE)
      003DB7                       2717 ___str_18:
      003DB7 54 79 70 65 5F 53 65  2718 	.ascii "Type_SetLED"
             74 4C 45 44
      003DC2 00                    2719 	.db 0x00
                                   2720 	.area CSEG    (CODE)
                                   2721 	.area CONST   (CODE)
      003DC3                       2722 ___str_19:
      003DC3 54 79 70 65 5F 43 74  2723 	.ascii "Type_CtrlMotor"
             72 6C 4D 6F 74 6F 72
      003DD1 00                    2724 	.db 0x00
                                   2725 	.area CSEG    (CODE)
                                   2726 	.area CONST   (CODE)
      003DD2                       2727 ___str_20:
      003DD2 54 79 70 65 5F 52 65  2728 	.ascii "Type_ReadAddr"
             61 64 41 64 64 72
      003DDF 00                    2729 	.db 0x00
                                   2730 	.area CSEG    (CODE)
                                   2731 	.area CONST   (CODE)
      003DE0                       2732 ___str_21:
      003DE0 54 79 70 65 5F 41 43  2733 	.ascii "Type_ACK"
             4B
      003DE8 00                    2734 	.db 0x00
                                   2735 	.area CSEG    (CODE)
                                   2736 	.area CONST   (CODE)
      003DE9                       2737 ___str_22:
      003DE9 54 79 70 65 5F 4E 6F  2738 	.ascii "Type_None"
             6E 65
      003DF2 00                    2739 	.db 0x00
                                   2740 	.area CSEG    (CODE)
                                   2741 	.area CABS    (ABS,CODE)
