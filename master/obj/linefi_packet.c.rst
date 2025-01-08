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
                                     13 	.globl _sht75_crc_table
                                     14 	.globl _getchar_uart1
                                     15 	.globl _putchar_uart1
                                     16 	.globl _printf_fast_f
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
                                    249 	.globl _gpcTypeStr
                                    250 	.globl _print_raw_packet_PARM_2
                                    251 	.globl _cp_buf2linefipacket_PARM_3
                                    252 	.globl _cp_buf2linefipacket_PARM_2
                                    253 	.globl _gu16Cnt
                                    254 	.globl _size_linefi_packet
                                    255 	.globl _calc_crc_linefi_packet_packet
                                    256 	.globl _add_crc_linefi_packet_packet
                                    257 	.globl _chk_crc_linefi_packet_packet
                                    258 	.globl _get_octet_from_linefi
                                    259 	.globl _send_octet_to_linefi
                                    260 	.globl _send_linefi_packet
                                    261 	.globl _cp_buf2linefipacket
                                    262 	.globl _print_linefipacket
                                    263 	.globl _crc8
                                    264 	.globl _print_raw_packet
                                    265 ;--------------------------------------------------------
                                    266 ; special function registers
                                    267 ;--------------------------------------------------------
                                    268 	.area RSEG    (ABS,DATA)
      000000                        269 	.org 0x0000
                           000080   270 _P0	=	0x0080
                           000081   271 _SP	=	0x0081
                           000082   272 _DPL	=	0x0082
                           000083   273 _DPH	=	0x0083
                           000084   274 _RCTRIM0	=	0x0084
                           000085   275 _RCTRIM1	=	0x0085
                           000086   276 _RWK	=	0x0086
                           000087   277 _PCON	=	0x0087
                           000088   278 _TCON	=	0x0088
                           000089   279 _TMOD	=	0x0089
                           00008A   280 _TL0	=	0x008a
                           00008B   281 _TL1	=	0x008b
                           00008C   282 _TH0	=	0x008c
                           00008D   283 _TH1	=	0x008d
                           00008E   284 _CKCON	=	0x008e
                           00008F   285 _WKCON	=	0x008f
                           000090   286 _P1	=	0x0090
                           000091   287 _SFRS	=	0x0091
                           000092   288 _CAPCON0	=	0x0092
                           000093   289 _CAPCON1	=	0x0093
                           000094   290 _CAPCON2	=	0x0094
                           000095   291 _CKDIV	=	0x0095
                           000096   292 _CKSWT	=	0x0096
                           000097   293 _CKEN	=	0x0097
                           000098   294 _SCON	=	0x0098
                           000099   295 _SBUF	=	0x0099
                           00009A   296 _SBUF_1	=	0x009a
                           00009B   297 _EIE	=	0x009b
                           00009C   298 _EIE1	=	0x009c
                           00009F   299 _CHPCON	=	0x009f
                           0000A0   300 _P2	=	0x00a0
                           0000A2   301 _AUXR1	=	0x00a2
                           0000A3   302 _BODCON0	=	0x00a3
                           0000A4   303 _IAPTRG	=	0x00a4
                           0000A5   304 _IAPUEN	=	0x00a5
                           0000A6   305 _IAPAL	=	0x00a6
                           0000A7   306 _IAPAH	=	0x00a7
                           0000A8   307 _IE	=	0x00a8
                           0000A9   308 _SADDR	=	0x00a9
                           0000AA   309 _WDCON	=	0x00aa
                           0000AB   310 _BODCON1	=	0x00ab
                           0000AC   311 _P3M1	=	0x00ac
                           0000AC   312 _P3S	=	0x00ac
                           0000AD   313 _P3M2	=	0x00ad
                           0000AD   314 _P3SR	=	0x00ad
                           0000AE   315 _IAPFD	=	0x00ae
                           0000AF   316 _IAPCN	=	0x00af
                           0000B0   317 _P3	=	0x00b0
                           0000B1   318 _P0M1	=	0x00b1
                           0000B1   319 _P0S	=	0x00b1
                           0000B2   320 _P0M2	=	0x00b2
                           0000B2   321 _P0SR	=	0x00b2
                           0000B3   322 _P1M1	=	0x00b3
                           0000B3   323 _P1S	=	0x00b3
                           0000B4   324 _P1M2	=	0x00b4
                           0000B4   325 _P1SR	=	0x00b4
                           0000B5   326 _P2S	=	0x00b5
                           0000B7   327 _IPH	=	0x00b7
                           0000B7   328 _PWMINTC	=	0x00b7
                           0000B8   329 _IP	=	0x00b8
                           0000B9   330 _SADEN	=	0x00b9
                           0000BA   331 _SADEN_1	=	0x00ba
                           0000BB   332 _SADDR_1	=	0x00bb
                           0000BC   333 _I2DAT	=	0x00bc
                           0000BD   334 _I2STAT	=	0x00bd
                           0000BE   335 _I2CLK	=	0x00be
                           0000BF   336 _I2TOC	=	0x00bf
                           0000C0   337 _I2CON	=	0x00c0
                           0000C1   338 _I2ADDR	=	0x00c1
                           0000C2   339 _ADCRL	=	0x00c2
                           0000C3   340 _ADCRH	=	0x00c3
                           0000C4   341 _T3CON	=	0x00c4
                           0000C4   342 _PWM4H	=	0x00c4
                           0000C5   343 _RL3	=	0x00c5
                           0000C5   344 _PWM5H	=	0x00c5
                           0000C6   345 _RH3	=	0x00c6
                           0000C6   346 _PIOCON1	=	0x00c6
                           0000C7   347 _TA	=	0x00c7
                           0000C8   348 _T2CON	=	0x00c8
                           0000C9   349 _T2MOD	=	0x00c9
                           0000CA   350 _RCMP2L	=	0x00ca
                           0000CB   351 _RCMP2H	=	0x00cb
                           0000CC   352 _TL2	=	0x00cc
                           0000CC   353 _PWM4L	=	0x00cc
                           0000CD   354 _TH2	=	0x00cd
                           0000CD   355 _PWM5L	=	0x00cd
                           0000CE   356 _ADCMPL	=	0x00ce
                           0000CF   357 _ADCMPH	=	0x00cf
                           0000D0   358 _PSW	=	0x00d0
                           0000D1   359 _PWMPH	=	0x00d1
                           0000D2   360 _PWM0H	=	0x00d2
                           0000D3   361 _PWM1H	=	0x00d3
                           0000D4   362 _PWM2H	=	0x00d4
                           0000D5   363 _PWM3H	=	0x00d5
                           0000D6   364 _PNP	=	0x00d6
                           0000D7   365 _FBD	=	0x00d7
                           0000D8   366 _PWMCON0	=	0x00d8
                           0000D9   367 _PWMPL	=	0x00d9
                           0000DA   368 _PWM0L	=	0x00da
                           0000DB   369 _PWM1L	=	0x00db
                           0000DC   370 _PWM2L	=	0x00dc
                           0000DD   371 _PWM3L	=	0x00dd
                           0000DE   372 _PIOCON0	=	0x00de
                           0000DF   373 _PWMCON1	=	0x00df
                           0000E0   374 _ACC	=	0x00e0
                           0000E1   375 _ADCCON1	=	0x00e1
                           0000E2   376 _ADCCON2	=	0x00e2
                           0000E3   377 _ADCDLY	=	0x00e3
                           0000E4   378 _C0L	=	0x00e4
                           0000E5   379 _C0H	=	0x00e5
                           0000E6   380 _C1L	=	0x00e6
                           0000E7   381 _C1H	=	0x00e7
                           0000E8   382 _ADCCON0	=	0x00e8
                           0000E9   383 _PICON	=	0x00e9
                           0000EA   384 _PINEN	=	0x00ea
                           0000EB   385 _PIPEN	=	0x00eb
                           0000EC   386 _PIF	=	0x00ec
                           0000ED   387 _C2L	=	0x00ed
                           0000EE   388 _C2H	=	0x00ee
                           0000EF   389 _EIP	=	0x00ef
                           0000F0   390 _B	=	0x00f0
                           0000F1   391 _CAPCON3	=	0x00f1
                           0000F2   392 _CAPCON4	=	0x00f2
                           0000F3   393 _SPCR	=	0x00f3
                           0000F3   394 _SPCR2	=	0x00f3
                           0000F4   395 _SPSR	=	0x00f4
                           0000F5   396 _SPDR	=	0x00f5
                           0000F6   397 _AINDIDS	=	0x00f6
                           0000F7   398 _EIPH	=	0x00f7
                           0000F8   399 _SCON_1	=	0x00f8
                           0000F9   400 _PDTEN	=	0x00f9
                           0000FA   401 _PDTCNT	=	0x00fa
                           0000FB   402 _PMEN	=	0x00fb
                           0000FC   403 _PMD	=	0x00fc
                           0000FE   404 _EIP1	=	0x00fe
                           0000FF   405 _EIPH1	=	0x00ff
                                    406 ;--------------------------------------------------------
                                    407 ; special function bits
                                    408 ;--------------------------------------------------------
                                    409 	.area RSEG    (ABS,DATA)
      000000                        410 	.org 0x0000
                           0000FF   411 _SM0_1	=	0x00ff
                           0000FF   412 _FE_1	=	0x00ff
                           0000FE   413 _SM1_1	=	0x00fe
                           0000FD   414 _SM2_1	=	0x00fd
                           0000FC   415 _REN_1	=	0x00fc
                           0000FB   416 _TB8_1	=	0x00fb
                           0000FA   417 _RB8_1	=	0x00fa
                           0000F9   418 _TI_1	=	0x00f9
                           0000F8   419 _RI_1	=	0x00f8
                           0000EF   420 _ADCF	=	0x00ef
                           0000EE   421 _ADCS	=	0x00ee
                           0000ED   422 _ETGSEL1	=	0x00ed
                           0000EC   423 _ETGSEL0	=	0x00ec
                           0000EB   424 _ADCHS3	=	0x00eb
                           0000EA   425 _ADCHS2	=	0x00ea
                           0000E9   426 _ADCHS1	=	0x00e9
                           0000E8   427 _ADCHS0	=	0x00e8
                           0000DF   428 _PWMRUN	=	0x00df
                           0000DE   429 _LOAD	=	0x00de
                           0000DD   430 _PWMF	=	0x00dd
                           0000DC   431 _CLRPWM	=	0x00dc
                           0000D7   432 _CY	=	0x00d7
                           0000D6   433 _AC	=	0x00d6
                           0000D5   434 _F0	=	0x00d5
                           0000D4   435 _RS1	=	0x00d4
                           0000D3   436 _RS0	=	0x00d3
                           0000D2   437 _OV	=	0x00d2
                           0000D0   438 _P	=	0x00d0
                           0000CF   439 _TF2	=	0x00cf
                           0000CA   440 _TR2	=	0x00ca
                           0000C8   441 _CM_RL2	=	0x00c8
                           0000C6   442 _I2CEN	=	0x00c6
                           0000C5   443 _STA	=	0x00c5
                           0000C4   444 _STO	=	0x00c4
                           0000C3   445 _SI	=	0x00c3
                           0000C2   446 _AA	=	0x00c2
                           0000C0   447 _I2CPX	=	0x00c0
                           0000BE   448 _PADC	=	0x00be
                           0000BD   449 _PBOD	=	0x00bd
                           0000BC   450 _PS	=	0x00bc
                           0000BB   451 _PT1	=	0x00bb
                           0000BA   452 _PX1	=	0x00ba
                           0000B9   453 _PT0	=	0x00b9
                           0000B8   454 _PX0	=	0x00b8
                           0000B0   455 _P30	=	0x00b0
                           0000AF   456 _EA	=	0x00af
                           0000AE   457 _EADC	=	0x00ae
                           0000AD   458 _EBOD	=	0x00ad
                           0000AC   459 _ES	=	0x00ac
                           0000AB   460 _ET1	=	0x00ab
                           0000AA   461 _EX1	=	0x00aa
                           0000A9   462 _ET0	=	0x00a9
                           0000A8   463 _EX0	=	0x00a8
                           0000A0   464 _P20	=	0x00a0
                           00009F   465 _SM0	=	0x009f
                           00009F   466 _FE	=	0x009f
                           00009E   467 _SM1	=	0x009e
                           00009D   468 _SM2	=	0x009d
                           00009C   469 _REN	=	0x009c
                           00009B   470 _TB8	=	0x009b
                           00009A   471 _RB8	=	0x009a
                           000099   472 _TI	=	0x0099
                           000098   473 _RI	=	0x0098
                           000097   474 _P17	=	0x0097
                           000096   475 _P16	=	0x0096
                           000096   476 _TXD_1	=	0x0096
                           000095   477 _P15	=	0x0095
                           000094   478 _P14	=	0x0094
                           000094   479 _SDA	=	0x0094
                           000093   480 _P13	=	0x0093
                           000093   481 _SCL	=	0x0093
                           000092   482 _P12	=	0x0092
                           000091   483 _P11	=	0x0091
                           000090   484 _P10	=	0x0090
                           00008F   485 _TF1	=	0x008f
                           00008E   486 _TR1	=	0x008e
                           00008D   487 _TF0	=	0x008d
                           00008C   488 _TR0	=	0x008c
                           00008B   489 _IE1	=	0x008b
                           00008A   490 _IT1	=	0x008a
                           000089   491 _IE0	=	0x0089
                           000088   492 _IT0	=	0x0088
                           000087   493 _P07	=	0x0087
                           000087   494 _RXD	=	0x0087
                           000086   495 _P06	=	0x0086
                           000086   496 _TXD	=	0x0086
                           000085   497 _P05	=	0x0085
                           000084   498 _P04	=	0x0084
                           000084   499 _STADC	=	0x0084
                           000083   500 _P03	=	0x0083
                           000082   501 _P02	=	0x0082
                           000082   502 _RXD_1	=	0x0082
                           000081   503 _P01	=	0x0081
                           000081   504 _MISO	=	0x0081
                           000080   505 _P00	=	0x0080
                           000080   506 _MOSI	=	0x0080
                                    507 ;--------------------------------------------------------
                                    508 ; overlayable register banks
                                    509 ;--------------------------------------------------------
                                    510 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        511 	.ds 8
                                    512 ;--------------------------------------------------------
                                    513 ; internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area DSEG    (DATA)
      000040                        516 _gu16Cnt::
      000040                        517 	.ds 2
      000042                        518 _cp_buf2linefipacket_PARM_2:
      000042                        519 	.ds 3
      000045                        520 _cp_buf2linefipacket_PARM_3:
      000045                        521 	.ds 3
      000048                        522 _cp_buf2linefipacket_i_65538_73:
      000048                        523 	.ds 1
      000049                        524 _cp_buf2linefipacket_sloc0_1_0:
      000049                        525 	.ds 3
      00004C                        526 _print_linefipacket_i_65537_79:
      00004C                        527 	.ds 1
      00004D                        528 _print_raw_packet_PARM_2:
      00004D                        529 	.ds 3
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable items in internal ram 
                                    532 ;--------------------------------------------------------
                                    533 	.area	OSEG    (OVR,DATA)
                                    534 	.area	OSEG    (OVR,DATA)
      00001A                        535 _crc8_PARM_2:
      00001A                        536 	.ds 1
      00001B                        537 _crc8_PARM_3:
      00001B                        538 	.ds 1
                                    539 ;--------------------------------------------------------
                                    540 ; indirectly addressable internal ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area ISEG    (DATA)
                                    543 ;--------------------------------------------------------
                                    544 ; absolute internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area IABS    (ABS,DATA)
                                    547 	.area IABS    (ABS,DATA)
                                    548 ;--------------------------------------------------------
                                    549 ; bit data
                                    550 ;--------------------------------------------------------
                                    551 	.area BSEG    (BIT)
                                    552 ;--------------------------------------------------------
                                    553 ; paged external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area PSEG    (PAG,XDATA)
                                    556 ;--------------------------------------------------------
                                    557 ; external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XSEG    (XDATA)
      000118                        560 _gpcTypeStr::
      000118                        561 	.ds 84
                                    562 ;--------------------------------------------------------
                                    563 ; absolute external ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area XABS    (ABS,XDATA)
                                    566 ;--------------------------------------------------------
                                    567 ; external initialized ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT0 (CODE)
                                    571 	.area GSINIT1 (CODE)
                                    572 	.area GSINIT2 (CODE)
                                    573 	.area GSINIT3 (CODE)
                                    574 	.area GSINIT4 (CODE)
                                    575 	.area GSINIT5 (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area CSEG    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; global & static initialisations
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area GSINIT  (CODE)
                                    584 	.area GSFINAL (CODE)
                                    585 	.area GSINIT  (CODE)
                                    586 ;	../lib_master/linefi_packet.c:15: uint16 gu16Cnt = 0;
      0002A9 E4               [12]  587 	clr	a
      0002AA F5 40            [12]  588 	mov	_gu16Cnt,a
      0002AC F5 41            [12]  589 	mov	(_gu16Cnt + 1),a
                                    590 ;	../lib_master/linefi_packet.c:17: const char * __xdata gpcTypeStr[] = {
      0002AE 90 01 18         [24]  591 	mov	dptr,#_gpcTypeStr
      0002B1 74 8E            [12]  592 	mov	a,#___str_14
      0002B3 F0               [24]  593 	movx	@dptr,a
      0002B4 74 43            [12]  594 	mov	a,#(___str_14 >> 8)
      0002B6 A3               [24]  595 	inc	dptr
      0002B7 F0               [24]  596 	movx	@dptr,a
      0002B8 74 80            [12]  597 	mov	a,#0x80
      0002BA A3               [24]  598 	inc	dptr
      0002BB F0               [24]  599 	movx	@dptr,a
      0002BC 90 01 1B         [24]  600 	mov	dptr,#(_gpcTypeStr + 0x0003)
      0002BF 74 99            [12]  601 	mov	a,#___str_15
      0002C1 F0               [24]  602 	movx	@dptr,a
      0002C2 74 43            [12]  603 	mov	a,#(___str_15 >> 8)
      0002C4 A3               [24]  604 	inc	dptr
      0002C5 F0               [24]  605 	movx	@dptr,a
      0002C6 74 80            [12]  606 	mov	a,#0x80
      0002C8 A3               [24]  607 	inc	dptr
      0002C9 F0               [24]  608 	movx	@dptr,a
      0002CA 90 01 1E         [24]  609 	mov	dptr,#(_gpcTypeStr + 0x0006)
      0002CD 74 A4            [12]  610 	mov	a,#___str_16
      0002CF F0               [24]  611 	movx	@dptr,a
      0002D0 74 43            [12]  612 	mov	a,#(___str_16 >> 8)
      0002D2 A3               [24]  613 	inc	dptr
      0002D3 F0               [24]  614 	movx	@dptr,a
      0002D4 74 80            [12]  615 	mov	a,#0x80
      0002D6 A3               [24]  616 	inc	dptr
      0002D7 F0               [24]  617 	movx	@dptr,a
      0002D8 90 01 21         [24]  618 	mov	dptr,#(_gpcTypeStr + 0x0009)
      0002DB 74 AF            [12]  619 	mov	a,#___str_17
      0002DD F0               [24]  620 	movx	@dptr,a
      0002DE 74 43            [12]  621 	mov	a,#(___str_17 >> 8)
      0002E0 A3               [24]  622 	inc	dptr
      0002E1 F0               [24]  623 	movx	@dptr,a
      0002E2 74 80            [12]  624 	mov	a,#0x80
      0002E4 A3               [24]  625 	inc	dptr
      0002E5 F0               [24]  626 	movx	@dptr,a
      0002E6 90 01 24         [24]  627 	mov	dptr,#(_gpcTypeStr + 0x000c)
      0002E9 74 BC            [12]  628 	mov	a,#___str_18
      0002EB F0               [24]  629 	movx	@dptr,a
      0002EC 74 43            [12]  630 	mov	a,#(___str_18 >> 8)
      0002EE A3               [24]  631 	inc	dptr
      0002EF F0               [24]  632 	movx	@dptr,a
      0002F0 74 80            [12]  633 	mov	a,#0x80
      0002F2 A3               [24]  634 	inc	dptr
      0002F3 F0               [24]  635 	movx	@dptr,a
      0002F4 90 01 27         [24]  636 	mov	dptr,#(_gpcTypeStr + 0x000f)
      0002F7 74 C8            [12]  637 	mov	a,#___str_19
      0002F9 F0               [24]  638 	movx	@dptr,a
      0002FA 74 43            [12]  639 	mov	a,#(___str_19 >> 8)
      0002FC A3               [24]  640 	inc	dptr
      0002FD F0               [24]  641 	movx	@dptr,a
      0002FE 74 80            [12]  642 	mov	a,#0x80
      000300 A3               [24]  643 	inc	dptr
      000301 F0               [24]  644 	movx	@dptr,a
      000302 90 01 2A         [24]  645 	mov	dptr,#(_gpcTypeStr + 0x0012)
      000305 74 D7            [12]  646 	mov	a,#___str_20
      000307 F0               [24]  647 	movx	@dptr,a
      000308 74 43            [12]  648 	mov	a,#(___str_20 >> 8)
      00030A A3               [24]  649 	inc	dptr
      00030B F0               [24]  650 	movx	@dptr,a
      00030C 74 80            [12]  651 	mov	a,#0x80
      00030E A3               [24]  652 	inc	dptr
      00030F F0               [24]  653 	movx	@dptr,a
      000310 90 01 2D         [24]  654 	mov	dptr,#(_gpcTypeStr + 0x0015)
      000313 74 E5            [12]  655 	mov	a,#___str_21
      000315 F0               [24]  656 	movx	@dptr,a
      000316 74 43            [12]  657 	mov	a,#(___str_21 >> 8)
      000318 A3               [24]  658 	inc	dptr
      000319 F0               [24]  659 	movx	@dptr,a
      00031A 74 80            [12]  660 	mov	a,#0x80
      00031C A3               [24]  661 	inc	dptr
      00031D F0               [24]  662 	movx	@dptr,a
      00031E 90 01 30         [24]  663 	mov	dptr,#(_gpcTypeStr + 0x0018)
      000321 74 EE            [12]  664 	mov	a,#___str_22
      000323 F0               [24]  665 	movx	@dptr,a
      000324 74 43            [12]  666 	mov	a,#(___str_22 >> 8)
      000326 A3               [24]  667 	inc	dptr
      000327 F0               [24]  668 	movx	@dptr,a
      000328 74 80            [12]  669 	mov	a,#0x80
      00032A A3               [24]  670 	inc	dptr
      00032B F0               [24]  671 	movx	@dptr,a
      00032C 90 01 33         [24]  672 	mov	dptr,#(_gpcTypeStr + 0x001b)
      00032F 74 EE            [12]  673 	mov	a,#___str_22
      000331 F0               [24]  674 	movx	@dptr,a
      000332 74 43            [12]  675 	mov	a,#(___str_22 >> 8)
      000334 A3               [24]  676 	inc	dptr
      000335 F0               [24]  677 	movx	@dptr,a
      000336 74 80            [12]  678 	mov	a,#0x80
      000338 A3               [24]  679 	inc	dptr
      000339 F0               [24]  680 	movx	@dptr,a
      00033A 90 01 36         [24]  681 	mov	dptr,#(_gpcTypeStr + 0x001e)
      00033D 74 EE            [12]  682 	mov	a,#___str_22
      00033F F0               [24]  683 	movx	@dptr,a
      000340 74 43            [12]  684 	mov	a,#(___str_22 >> 8)
      000342 A3               [24]  685 	inc	dptr
      000343 F0               [24]  686 	movx	@dptr,a
      000344 74 80            [12]  687 	mov	a,#0x80
      000346 A3               [24]  688 	inc	dptr
      000347 F0               [24]  689 	movx	@dptr,a
      000348 90 01 39         [24]  690 	mov	dptr,#(_gpcTypeStr + 0x0021)
      00034B 74 EE            [12]  691 	mov	a,#___str_22
      00034D F0               [24]  692 	movx	@dptr,a
      00034E 74 43            [12]  693 	mov	a,#(___str_22 >> 8)
      000350 A3               [24]  694 	inc	dptr
      000351 F0               [24]  695 	movx	@dptr,a
      000352 74 80            [12]  696 	mov	a,#0x80
      000354 A3               [24]  697 	inc	dptr
      000355 F0               [24]  698 	movx	@dptr,a
      000356 90 01 3C         [24]  699 	mov	dptr,#(_gpcTypeStr + 0x0024)
      000359 74 EE            [12]  700 	mov	a,#___str_22
      00035B F0               [24]  701 	movx	@dptr,a
      00035C 74 43            [12]  702 	mov	a,#(___str_22 >> 8)
      00035E A3               [24]  703 	inc	dptr
      00035F F0               [24]  704 	movx	@dptr,a
      000360 74 80            [12]  705 	mov	a,#0x80
      000362 A3               [24]  706 	inc	dptr
      000363 F0               [24]  707 	movx	@dptr,a
      000364 90 01 3F         [24]  708 	mov	dptr,#(_gpcTypeStr + 0x0027)
      000367 74 EE            [12]  709 	mov	a,#___str_22
      000369 F0               [24]  710 	movx	@dptr,a
      00036A 74 43            [12]  711 	mov	a,#(___str_22 >> 8)
      00036C A3               [24]  712 	inc	dptr
      00036D F0               [24]  713 	movx	@dptr,a
      00036E 74 80            [12]  714 	mov	a,#0x80
      000370 A3               [24]  715 	inc	dptr
      000371 F0               [24]  716 	movx	@dptr,a
      000372 90 01 42         [24]  717 	mov	dptr,#(_gpcTypeStr + 0x002a)
      000375 74 EE            [12]  718 	mov	a,#___str_22
      000377 F0               [24]  719 	movx	@dptr,a
      000378 74 43            [12]  720 	mov	a,#(___str_22 >> 8)
      00037A A3               [24]  721 	inc	dptr
      00037B F0               [24]  722 	movx	@dptr,a
      00037C 74 80            [12]  723 	mov	a,#0x80
      00037E A3               [24]  724 	inc	dptr
      00037F F0               [24]  725 	movx	@dptr,a
      000380 90 01 45         [24]  726 	mov	dptr,#(_gpcTypeStr + 0x002d)
      000383 74 EE            [12]  727 	mov	a,#___str_22
      000385 F0               [24]  728 	movx	@dptr,a
      000386 74 43            [12]  729 	mov	a,#(___str_22 >> 8)
      000388 A3               [24]  730 	inc	dptr
      000389 F0               [24]  731 	movx	@dptr,a
      00038A 74 80            [12]  732 	mov	a,#0x80
      00038C A3               [24]  733 	inc	dptr
      00038D F0               [24]  734 	movx	@dptr,a
      00038E 90 01 48         [24]  735 	mov	dptr,#(_gpcTypeStr + 0x0030)
      000391 74 EE            [12]  736 	mov	a,#___str_22
      000393 F0               [24]  737 	movx	@dptr,a
      000394 74 43            [12]  738 	mov	a,#(___str_22 >> 8)
      000396 A3               [24]  739 	inc	dptr
      000397 F0               [24]  740 	movx	@dptr,a
      000398 74 80            [12]  741 	mov	a,#0x80
      00039A A3               [24]  742 	inc	dptr
      00039B F0               [24]  743 	movx	@dptr,a
      00039C 90 01 4B         [24]  744 	mov	dptr,#(_gpcTypeStr + 0x0033)
      00039F 74 EE            [12]  745 	mov	a,#___str_22
      0003A1 F0               [24]  746 	movx	@dptr,a
      0003A2 74 43            [12]  747 	mov	a,#(___str_22 >> 8)
      0003A4 A3               [24]  748 	inc	dptr
      0003A5 F0               [24]  749 	movx	@dptr,a
      0003A6 74 80            [12]  750 	mov	a,#0x80
      0003A8 A3               [24]  751 	inc	dptr
      0003A9 F0               [24]  752 	movx	@dptr,a
      0003AA 90 01 4E         [24]  753 	mov	dptr,#(_gpcTypeStr + 0x0036)
      0003AD 74 EE            [12]  754 	mov	a,#___str_22
      0003AF F0               [24]  755 	movx	@dptr,a
      0003B0 74 43            [12]  756 	mov	a,#(___str_22 >> 8)
      0003B2 A3               [24]  757 	inc	dptr
      0003B3 F0               [24]  758 	movx	@dptr,a
      0003B4 74 80            [12]  759 	mov	a,#0x80
      0003B6 A3               [24]  760 	inc	dptr
      0003B7 F0               [24]  761 	movx	@dptr,a
      0003B8 90 01 51         [24]  762 	mov	dptr,#(_gpcTypeStr + 0x0039)
      0003BB 74 EE            [12]  763 	mov	a,#___str_22
      0003BD F0               [24]  764 	movx	@dptr,a
      0003BE 74 43            [12]  765 	mov	a,#(___str_22 >> 8)
      0003C0 A3               [24]  766 	inc	dptr
      0003C1 F0               [24]  767 	movx	@dptr,a
      0003C2 74 80            [12]  768 	mov	a,#0x80
      0003C4 A3               [24]  769 	inc	dptr
      0003C5 F0               [24]  770 	movx	@dptr,a
      0003C6 90 01 54         [24]  771 	mov	dptr,#(_gpcTypeStr + 0x003c)
      0003C9 74 EE            [12]  772 	mov	a,#___str_22
      0003CB F0               [24]  773 	movx	@dptr,a
      0003CC 74 43            [12]  774 	mov	a,#(___str_22 >> 8)
      0003CE A3               [24]  775 	inc	dptr
      0003CF F0               [24]  776 	movx	@dptr,a
      0003D0 74 80            [12]  777 	mov	a,#0x80
      0003D2 A3               [24]  778 	inc	dptr
      0003D3 F0               [24]  779 	movx	@dptr,a
      0003D4 90 01 57         [24]  780 	mov	dptr,#(_gpcTypeStr + 0x003f)
      0003D7 74 EE            [12]  781 	mov	a,#___str_22
      0003D9 F0               [24]  782 	movx	@dptr,a
      0003DA 74 43            [12]  783 	mov	a,#(___str_22 >> 8)
      0003DC A3               [24]  784 	inc	dptr
      0003DD F0               [24]  785 	movx	@dptr,a
      0003DE 74 80            [12]  786 	mov	a,#0x80
      0003E0 A3               [24]  787 	inc	dptr
      0003E1 F0               [24]  788 	movx	@dptr,a
      0003E2 90 01 5A         [24]  789 	mov	dptr,#(_gpcTypeStr + 0x0042)
      0003E5 74 EE            [12]  790 	mov	a,#___str_22
      0003E7 F0               [24]  791 	movx	@dptr,a
      0003E8 74 43            [12]  792 	mov	a,#(___str_22 >> 8)
      0003EA A3               [24]  793 	inc	dptr
      0003EB F0               [24]  794 	movx	@dptr,a
      0003EC 74 80            [12]  795 	mov	a,#0x80
      0003EE A3               [24]  796 	inc	dptr
      0003EF F0               [24]  797 	movx	@dptr,a
      0003F0 90 01 5D         [24]  798 	mov	dptr,#(_gpcTypeStr + 0x0045)
      0003F3 74 EE            [12]  799 	mov	a,#___str_22
      0003F5 F0               [24]  800 	movx	@dptr,a
      0003F6 74 43            [12]  801 	mov	a,#(___str_22 >> 8)
      0003F8 A3               [24]  802 	inc	dptr
      0003F9 F0               [24]  803 	movx	@dptr,a
      0003FA 74 80            [12]  804 	mov	a,#0x80
      0003FC A3               [24]  805 	inc	dptr
      0003FD F0               [24]  806 	movx	@dptr,a
      0003FE 90 01 60         [24]  807 	mov	dptr,#(_gpcTypeStr + 0x0048)
      000401 74 EE            [12]  808 	mov	a,#___str_22
      000403 F0               [24]  809 	movx	@dptr,a
      000404 74 43            [12]  810 	mov	a,#(___str_22 >> 8)
      000406 A3               [24]  811 	inc	dptr
      000407 F0               [24]  812 	movx	@dptr,a
      000408 74 80            [12]  813 	mov	a,#0x80
      00040A A3               [24]  814 	inc	dptr
      00040B F0               [24]  815 	movx	@dptr,a
      00040C 90 01 63         [24]  816 	mov	dptr,#(_gpcTypeStr + 0x004b)
      00040F 74 EE            [12]  817 	mov	a,#___str_22
      000411 F0               [24]  818 	movx	@dptr,a
      000412 74 43            [12]  819 	mov	a,#(___str_22 >> 8)
      000414 A3               [24]  820 	inc	dptr
      000415 F0               [24]  821 	movx	@dptr,a
      000416 74 80            [12]  822 	mov	a,#0x80
      000418 A3               [24]  823 	inc	dptr
      000419 F0               [24]  824 	movx	@dptr,a
      00041A 90 01 66         [24]  825 	mov	dptr,#(_gpcTypeStr + 0x004e)
      00041D 74 EE            [12]  826 	mov	a,#___str_22
      00041F F0               [24]  827 	movx	@dptr,a
      000420 74 43            [12]  828 	mov	a,#(___str_22 >> 8)
      000422 A3               [24]  829 	inc	dptr
      000423 F0               [24]  830 	movx	@dptr,a
      000424 74 80            [12]  831 	mov	a,#0x80
      000426 A3               [24]  832 	inc	dptr
      000427 F0               [24]  833 	movx	@dptr,a
      000428 90 01 69         [24]  834 	mov	dptr,#(_gpcTypeStr + 0x0051)
      00042B 74 EE            [12]  835 	mov	a,#___str_22
      00042D F0               [24]  836 	movx	@dptr,a
      00042E 74 43            [12]  837 	mov	a,#(___str_22 >> 8)
      000430 A3               [24]  838 	inc	dptr
      000431 F0               [24]  839 	movx	@dptr,a
      000432 74 80            [12]  840 	mov	a,#0x80
      000434 A3               [24]  841 	inc	dptr
      000435 F0               [24]  842 	movx	@dptr,a
                                    843 ;--------------------------------------------------------
                                    844 ; Home
                                    845 ;--------------------------------------------------------
                                    846 	.area HOME    (CODE)
                                    847 	.area HOME    (CODE)
                                    848 ;--------------------------------------------------------
                                    849 ; code
                                    850 ;--------------------------------------------------------
                                    851 	.area CSEG    (CODE)
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'size_linefi_packet'
                                    854 ;------------------------------------------------------------
                                    855 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    856 ;------------------------------------------------------------
                                    857 ;	../lib_master/linefi_packet.c:48: uint8 size_linefi_packet(linefi_packet_t * apstLineFiPkt)
                                    858 ;	-----------------------------------------
                                    859 ;	 function size_linefi_packet
                                    860 ;	-----------------------------------------
      0020F6                        861 _size_linefi_packet:
                           000007   862 	ar7 = 0x07
                           000006   863 	ar6 = 0x06
                           000005   864 	ar5 = 0x05
                           000004   865 	ar4 = 0x04
                           000003   866 	ar3 = 0x03
                           000002   867 	ar2 = 0x02
                           000001   868 	ar1 = 0x01
                           000000   869 	ar0 = 0x00
      0020F6 AD 82            [24]  870 	mov	r5,dpl
      0020F8 AE 83            [24]  871 	mov	r6,dph
      0020FA AF F0            [24]  872 	mov	r7,b
                                    873 ;	../lib_master/linefi_packet.c:50: return apstLineFiPkt->u8Size + sizeof(linefi_packet_t) - sizeof(uint8 *);
      0020FC 74 03            [12]  874 	mov	a,#0x03
      0020FE 2D               [12]  875 	add	a,r5
      0020FF FD               [12]  876 	mov	r5,a
      002100 E4               [12]  877 	clr	a
      002101 3E               [12]  878 	addc	a,r6
      002102 FE               [12]  879 	mov	r6,a
      002103 8D 82            [24]  880 	mov	dpl,r5
      002105 8E 83            [24]  881 	mov	dph,r6
      002107 8F F0            [24]  882 	mov	b,r7
      002109 12 3D 2C         [24]  883 	lcall	__gptrget
      00210C 24 05            [12]  884 	add	a,#0x05
      00210E F5 82            [12]  885 	mov	dpl,a
                                    886 ;	../lib_master/linefi_packet.c:51: }
      002110 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'calc_crc_linefi_packet_packet'
                                    890 ;------------------------------------------------------------
                                    891 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    892 ;u8CRC                     Allocated to registers 
                                    893 ;------------------------------------------------------------
                                    894 ;	../lib_master/linefi_packet.c:53: uint8 calc_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                    895 ;	-----------------------------------------
                                    896 ;	 function calc_crc_linefi_packet_packet
                                    897 ;	-----------------------------------------
      002111                        898 _calc_crc_linefi_packet_packet:
      002111 AD 82            [24]  899 	mov	r5,dpl
      002113 AE 83            [24]  900 	mov	r6,dph
      002115 AF F0            [24]  901 	mov	r7,b
                                    902 ;	../lib_master/linefi_packet.c:55: uint8 u8CRC = crc8((uint8 *)apstLineFiPkt, 4, 0xFF);
      002117 8D 02            [24]  903 	mov	ar2,r5
      002119 8E 03            [24]  904 	mov	ar3,r6
      00211B 8F 04            [24]  905 	mov	ar4,r7
      00211D 75 1A 04         [24]  906 	mov	_crc8_PARM_2,#0x04
      002120 75 1B FF         [24]  907 	mov	_crc8_PARM_3,#0xff
      002123 8A 82            [24]  908 	mov	dpl,r2
      002125 8B 83            [24]  909 	mov	dph,r3
      002127 8C F0            [24]  910 	mov	b,r4
      002129 C0 07            [24]  911 	push	ar7
      00212B C0 06            [24]  912 	push	ar6
      00212D C0 05            [24]  913 	push	ar5
      00212F 12 27 0D         [24]  914 	lcall	_crc8
      002132 85 82 1B         [24]  915 	mov	_crc8_PARM_3,dpl
      002135 D0 05            [24]  916 	pop	ar5
      002137 D0 06            [24]  917 	pop	ar6
      002139 D0 07            [24]  918 	pop	ar7
                                    919 ;	../lib_master/linefi_packet.c:56: u8CRC = crc8((uint8 *)(apstLineFiPkt->pu8Data), apstLineFiPkt->u8Size-5, u8CRC);
      00213B 74 05            [12]  920 	mov	a,#0x05
      00213D 2D               [12]  921 	add	a,r5
      00213E FA               [12]  922 	mov	r2,a
      00213F E4               [12]  923 	clr	a
      002140 3E               [12]  924 	addc	a,r6
      002141 FB               [12]  925 	mov	r3,a
      002142 8F 04            [24]  926 	mov	ar4,r7
      002144 8A 82            [24]  927 	mov	dpl,r2
      002146 8B 83            [24]  928 	mov	dph,r3
      002148 8C F0            [24]  929 	mov	b,r4
      00214A 12 3D 2C         [24]  930 	lcall	__gptrget
      00214D FA               [12]  931 	mov	r2,a
      00214E A3               [24]  932 	inc	dptr
      00214F 12 3D 2C         [24]  933 	lcall	__gptrget
      002152 FB               [12]  934 	mov	r3,a
      002153 A3               [24]  935 	inc	dptr
      002154 12 3D 2C         [24]  936 	lcall	__gptrget
      002157 FC               [12]  937 	mov	r4,a
      002158 74 03            [12]  938 	mov	a,#0x03
      00215A 2D               [12]  939 	add	a,r5
      00215B FD               [12]  940 	mov	r5,a
      00215C E4               [12]  941 	clr	a
      00215D 3E               [12]  942 	addc	a,r6
      00215E FE               [12]  943 	mov	r6,a
      00215F 8D 82            [24]  944 	mov	dpl,r5
      002161 8E 83            [24]  945 	mov	dph,r6
      002163 8F F0            [24]  946 	mov	b,r7
      002165 12 3D 2C         [24]  947 	lcall	__gptrget
      002168 24 FB            [12]  948 	add	a,#0xfb
      00216A F5 1A            [12]  949 	mov	_crc8_PARM_2,a
      00216C 8A 82            [24]  950 	mov	dpl,r2
      00216E 8B 83            [24]  951 	mov	dph,r3
      002170 8C F0            [24]  952 	mov	b,r4
                                    953 ;	../lib_master/linefi_packet.c:58: return u8CRC;
                                    954 ;	../lib_master/linefi_packet.c:59: }
      002172 02 27 0D         [24]  955 	ljmp	_crc8
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'add_crc_linefi_packet_packet'
                                    958 ;------------------------------------------------------------
                                    959 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    960 ;u8CRC                     Allocated to registers r4 
                                    961 ;------------------------------------------------------------
                                    962 ;	../lib_master/linefi_packet.c:61: void add_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                    963 ;	-----------------------------------------
                                    964 ;	 function add_crc_linefi_packet_packet
                                    965 ;	-----------------------------------------
      002175                        966 _add_crc_linefi_packet_packet:
                                    967 ;	../lib_master/linefi_packet.c:63: uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      002175 AD 82            [24]  968 	mov	r5,dpl
      002177 AE 83            [24]  969 	mov	r6,dph
      002179 AF F0            [24]  970 	mov	r7,b
      00217B C0 07            [24]  971 	push	ar7
      00217D C0 06            [24]  972 	push	ar6
      00217F C0 05            [24]  973 	push	ar5
      002181 12 21 11         [24]  974 	lcall	_calc_crc_linefi_packet_packet
      002184 AC 82            [24]  975 	mov	r4,dpl
      002186 D0 05            [24]  976 	pop	ar5
      002188 D0 06            [24]  977 	pop	ar6
      00218A D0 07            [24]  978 	pop	ar7
                                    979 ;	../lib_master/linefi_packet.c:64: apstLineFiPkt->u8CRC = u8CRC;
      00218C 74 04            [12]  980 	mov	a,#0x04
      00218E 2D               [12]  981 	add	a,r5
      00218F FD               [12]  982 	mov	r5,a
      002190 E4               [12]  983 	clr	a
      002191 3E               [12]  984 	addc	a,r6
      002192 FE               [12]  985 	mov	r6,a
      002193 8D 82            [24]  986 	mov	dpl,r5
      002195 8E 83            [24]  987 	mov	dph,r6
      002197 8F F0            [24]  988 	mov	b,r7
      002199 EC               [12]  989 	mov	a,r4
                                    990 ;	../lib_master/linefi_packet.c:65: }
      00219A 02 34 06         [24]  991 	ljmp	__gptrput
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'chk_crc_linefi_packet_packet'
                                    994 ;------------------------------------------------------------
                                    995 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                    996 ;u8CRC                     Allocated to registers r4 
                                    997 ;------------------------------------------------------------
                                    998 ;	../lib_master/linefi_packet.c:67: uint8 chk_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
                                    999 ;	-----------------------------------------
                                   1000 ;	 function chk_crc_linefi_packet_packet
                                   1001 ;	-----------------------------------------
      00219D                       1002 _chk_crc_linefi_packet_packet:
                                   1003 ;	../lib_master/linefi_packet.c:69: uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      00219D AD 82            [24] 1004 	mov	r5,dpl
      00219F AE 83            [24] 1005 	mov	r6,dph
      0021A1 AF F0            [24] 1006 	mov	r7,b
      0021A3 C0 07            [24] 1007 	push	ar7
      0021A5 C0 06            [24] 1008 	push	ar6
      0021A7 C0 05            [24] 1009 	push	ar5
      0021A9 12 21 11         [24] 1010 	lcall	_calc_crc_linefi_packet_packet
      0021AC AC 82            [24] 1011 	mov	r4,dpl
      0021AE D0 05            [24] 1012 	pop	ar5
      0021B0 D0 06            [24] 1013 	pop	ar6
      0021B2 D0 07            [24] 1014 	pop	ar7
                                   1015 ;	../lib_master/linefi_packet.c:71: if (apstLineFiPkt->u8CRC == u8CRC) {
      0021B4 74 04            [12] 1016 	mov	a,#0x04
      0021B6 2D               [12] 1017 	add	a,r5
      0021B7 FD               [12] 1018 	mov	r5,a
      0021B8 E4               [12] 1019 	clr	a
      0021B9 3E               [12] 1020 	addc	a,r6
      0021BA FE               [12] 1021 	mov	r6,a
      0021BB 8D 82            [24] 1022 	mov	dpl,r5
      0021BD 8E 83            [24] 1023 	mov	dph,r6
      0021BF 8F F0            [24] 1024 	mov	b,r7
      0021C1 12 3D 2C         [24] 1025 	lcall	__gptrget
      0021C4 B5 04 04         [24] 1026 	cjne	a,ar4,00102$
                                   1027 ;	../lib_master/linefi_packet.c:72: return CRC_OK;
      0021C7 75 82 01         [24] 1028 	mov	dpl,#0x01
      0021CA 22               [24] 1029 	ret
      0021CB                       1030 00102$:
                                   1031 ;	../lib_master/linefi_packet.c:74: return CRC_NOT_OK;
      0021CB 75 82 00         [24] 1032 	mov	dpl,#0x00
                                   1033 ;	../lib_master/linefi_packet.c:75: }
      0021CE 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'get_octet_from_linefi'
                                   1037 ;------------------------------------------------------------
                                   1038 ;apu8Tmp                   Allocated to registers r5 r6 r7 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	../lib_master/linefi_packet.c:78: UINT8 get_octet_from_linefi(UINT8 * apu8Tmp)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function get_octet_from_linefi
                                   1043 ;	-----------------------------------------
      0021CF                       1044 _get_octet_from_linefi:
                                   1045 ;	../lib_master/linefi_packet.c:81: return getchar_uart1(apu8Tmp);
                                   1046 ;	../lib_master/linefi_packet.c:82: }
      0021CF 02 2C B3         [24] 1047 	ljmp	_getchar_uart1
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'send_octet_to_linefi'
                                   1050 ;------------------------------------------------------------
                                   1051 ;au8Data                   Allocated to registers 
                                   1052 ;------------------------------------------------------------
                                   1053 ;	../lib_master/linefi_packet.c:84: void send_octet_to_linefi(UINT8 au8Data)
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function send_octet_to_linefi
                                   1056 ;	-----------------------------------------
      0021D2                       1057 _send_octet_to_linefi:
                                   1058 ;	../lib_master/linefi_packet.c:87: return putchar_uart1(au8Data);
                                   1059 ;	../lib_master/linefi_packet.c:88: }
      0021D2 02 2D 8D         [24] 1060 	ljmp	_putchar_uart1
                                   1061 ;------------------------------------------------------------
                                   1062 ;Allocation info for local variables in function 'send_linefi_packet'
                                   1063 ;------------------------------------------------------------
                                   1064 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   1065 ;pu8Buf                    Allocated to registers r2 r3 r4 
                                   1066 ;u8CRC                     Allocated with name '_send_linefi_packet_u8CRC_65536_65'
                                   1067 ;i                         Allocated with name '_send_linefi_packet_i_65537_66'
                                   1068 ;------------------------------------------------------------
                                   1069 ;	../lib_master/linefi_packet.c:90: void send_linefi_packet(linefi_packet_t * apstLineFiPkt)
                                   1070 ;	-----------------------------------------
                                   1071 ;	 function send_linefi_packet
                                   1072 ;	-----------------------------------------
      0021D5                       1073 _send_linefi_packet:
                                   1074 ;	../lib_master/linefi_packet.c:92: uint8 __xdata u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
      0021D5 AD 82            [24] 1075 	mov	r5,dpl
      0021D7 AE 83            [24] 1076 	mov	r6,dph
      0021D9 AF F0            [24] 1077 	mov	r7,b
      0021DB C0 07            [24] 1078 	push	ar7
      0021DD C0 06            [24] 1079 	push	ar6
      0021DF C0 05            [24] 1080 	push	ar5
      0021E1 12 21 11         [24] 1081 	lcall	_calc_crc_linefi_packet_packet
      0021E4 D0 05            [24] 1082 	pop	ar5
      0021E6 D0 06            [24] 1083 	pop	ar6
      0021E8 D0 07            [24] 1084 	pop	ar7
                                   1085 ;	../lib_master/linefi_packet.c:94: uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
      0021EA 8D 02            [24] 1086 	mov	ar2,r5
      0021EC 8E 03            [24] 1087 	mov	ar3,r6
      0021EE 8F 04            [24] 1088 	mov	ar4,r7
                                   1089 ;	../lib_master/linefi_packet.c:95: send_octet_to_linefi(*pu8Buf++);
      0021F0 8A 82            [24] 1090 	mov	dpl,r2
      0021F2 8B 83            [24] 1091 	mov	dph,r3
      0021F4 8C F0            [24] 1092 	mov	b,r4
      0021F6 12 3D 2C         [24] 1093 	lcall	__gptrget
      0021F9 F5 82            [12] 1094 	mov	dpl,a
      0021FB 0A               [12] 1095 	inc	r2
      0021FC BA 00 01         [24] 1096 	cjne	r2,#0x00,00118$
      0021FF 0B               [12] 1097 	inc	r3
      002200                       1098 00118$:
      002200 C0 07            [24] 1099 	push	ar7
      002202 C0 06            [24] 1100 	push	ar6
      002204 C0 05            [24] 1101 	push	ar5
      002206 C0 04            [24] 1102 	push	ar4
      002208 C0 03            [24] 1103 	push	ar3
      00220A C0 02            [24] 1104 	push	ar2
      00220C 12 21 D2         [24] 1105 	lcall	_send_octet_to_linefi
      00220F D0 02            [24] 1106 	pop	ar2
      002211 D0 03            [24] 1107 	pop	ar3
      002213 D0 04            [24] 1108 	pop	ar4
      002215 D0 05            [24] 1109 	pop	ar5
      002217 D0 06            [24] 1110 	pop	ar6
      002219 D0 07            [24] 1111 	pop	ar7
                                   1112 ;	../lib_master/linefi_packet.c:96: send_octet_to_linefi(*pu8Buf++);
      00221B 8A 82            [24] 1113 	mov	dpl,r2
      00221D 8B 83            [24] 1114 	mov	dph,r3
      00221F 8C F0            [24] 1115 	mov	b,r4
      002221 12 3D 2C         [24] 1116 	lcall	__gptrget
      002224 F5 82            [12] 1117 	mov	dpl,a
      002226 0A               [12] 1118 	inc	r2
      002227 BA 00 01         [24] 1119 	cjne	r2,#0x00,00119$
      00222A 0B               [12] 1120 	inc	r3
      00222B                       1121 00119$:
      00222B C0 07            [24] 1122 	push	ar7
      00222D C0 06            [24] 1123 	push	ar6
      00222F C0 05            [24] 1124 	push	ar5
      002231 C0 04            [24] 1125 	push	ar4
      002233 C0 03            [24] 1126 	push	ar3
      002235 C0 02            [24] 1127 	push	ar2
      002237 12 21 D2         [24] 1128 	lcall	_send_octet_to_linefi
      00223A D0 02            [24] 1129 	pop	ar2
      00223C D0 03            [24] 1130 	pop	ar3
      00223E D0 04            [24] 1131 	pop	ar4
      002240 D0 05            [24] 1132 	pop	ar5
      002242 D0 06            [24] 1133 	pop	ar6
      002244 D0 07            [24] 1134 	pop	ar7
                                   1135 ;	../lib_master/linefi_packet.c:97: send_octet_to_linefi(*pu8Buf++);
      002246 8A 82            [24] 1136 	mov	dpl,r2
      002248 8B 83            [24] 1137 	mov	dph,r3
      00224A 8C F0            [24] 1138 	mov	b,r4
      00224C 12 3D 2C         [24] 1139 	lcall	__gptrget
      00224F F9               [12] 1140 	mov	r1,a
      002250 0A               [12] 1141 	inc	r2
      002251 BA 00 01         [24] 1142 	cjne	r2,#0x00,00120$
      002254 0B               [12] 1143 	inc	r3
      002255                       1144 00120$:
      002255 89 82            [24] 1145 	mov	dpl,r1
      002257 C0 07            [24] 1146 	push	ar7
      002259 C0 06            [24] 1147 	push	ar6
      00225B C0 05            [24] 1148 	push	ar5
      00225D C0 04            [24] 1149 	push	ar4
      00225F C0 03            [24] 1150 	push	ar3
      002261 C0 02            [24] 1151 	push	ar2
      002263 12 21 D2         [24] 1152 	lcall	_send_octet_to_linefi
      002266 D0 02            [24] 1153 	pop	ar2
      002268 D0 03            [24] 1154 	pop	ar3
      00226A D0 04            [24] 1155 	pop	ar4
      00226C D0 05            [24] 1156 	pop	ar5
      00226E D0 06            [24] 1157 	pop	ar6
      002270 D0 07            [24] 1158 	pop	ar7
                                   1159 ;	../lib_master/linefi_packet.c:98: send_octet_to_linefi(*pu8Buf++);
      002272 8A 82            [24] 1160 	mov	dpl,r2
      002274 8B 83            [24] 1161 	mov	dph,r3
      002276 8C F0            [24] 1162 	mov	b,r4
      002278 12 3D 2C         [24] 1163 	lcall	__gptrget
      00227B F5 82            [12] 1164 	mov	dpl,a
      00227D 0A               [12] 1165 	inc	r2
      00227E BA 00 01         [24] 1166 	cjne	r2,#0x00,00121$
      002281 0B               [12] 1167 	inc	r3
      002282                       1168 00121$:
      002282 C0 07            [24] 1169 	push	ar7
      002284 C0 06            [24] 1170 	push	ar6
      002286 C0 05            [24] 1171 	push	ar5
      002288 C0 04            [24] 1172 	push	ar4
      00228A C0 03            [24] 1173 	push	ar3
      00228C C0 02            [24] 1174 	push	ar2
      00228E 12 21 D2         [24] 1175 	lcall	_send_octet_to_linefi
      002291 D0 02            [24] 1176 	pop	ar2
      002293 D0 03            [24] 1177 	pop	ar3
      002295 D0 04            [24] 1178 	pop	ar4
                                   1179 ;	../lib_master/linefi_packet.c:99: send_octet_to_linefi(*pu8Buf++); //CRC
      002297 8A 82            [24] 1180 	mov	dpl,r2
      002299 8B 83            [24] 1181 	mov	dph,r3
      00229B 8C F0            [24] 1182 	mov	b,r4
      00229D 12 3D 2C         [24] 1183 	lcall	__gptrget
      0022A0 F5 82            [12] 1184 	mov	dpl,a
      0022A2 12 21 D2         [24] 1185 	lcall	_send_octet_to_linefi
      0022A5 D0 05            [24] 1186 	pop	ar5
      0022A7 D0 06            [24] 1187 	pop	ar6
      0022A9 D0 07            [24] 1188 	pop	ar7
                                   1189 ;	../lib_master/linefi_packet.c:102: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      0022AB 74 05            [12] 1190 	mov	a,#0x05
      0022AD 2D               [12] 1191 	add	a,r5
      0022AE FA               [12] 1192 	mov	r2,a
      0022AF E4               [12] 1193 	clr	a
      0022B0 3E               [12] 1194 	addc	a,r6
      0022B1 FB               [12] 1195 	mov	r3,a
      0022B2 8F 04            [24] 1196 	mov	ar4,r7
      0022B4 74 03            [12] 1197 	mov	a,#0x03
      0022B6 2D               [12] 1198 	add	a,r5
      0022B7 FD               [12] 1199 	mov	r5,a
      0022B8 E4               [12] 1200 	clr	a
      0022B9 3E               [12] 1201 	addc	a,r6
      0022BA FE               [12] 1202 	mov	r6,a
      0022BB 79 00            [12] 1203 	mov	r1,#0x00
      0022BD                       1204 00103$:
      0022BD C0 02            [24] 1205 	push	ar2
      0022BF C0 03            [24] 1206 	push	ar3
      0022C1 C0 04            [24] 1207 	push	ar4
      0022C3 8D 82            [24] 1208 	mov	dpl,r5
      0022C5 8E 83            [24] 1209 	mov	dph,r6
      0022C7 8F F0            [24] 1210 	mov	b,r7
      0022C9 12 3D 2C         [24] 1211 	lcall	__gptrget
      0022CC 7C 00            [12] 1212 	mov	r4,#0x00
      0022CE 24 FB            [12] 1213 	add	a,#0xfb
      0022D0 F8               [12] 1214 	mov	r0,a
      0022D1 EC               [12] 1215 	mov	a,r4
      0022D2 34 FF            [12] 1216 	addc	a,#0xff
      0022D4 FC               [12] 1217 	mov	r4,a
      0022D5 89 02            [24] 1218 	mov	ar2,r1
      0022D7 7B 00            [12] 1219 	mov	r3,#0x00
      0022D9 C3               [12] 1220 	clr	c
      0022DA EA               [12] 1221 	mov	a,r2
      0022DB 98               [12] 1222 	subb	a,r0
      0022DC EB               [12] 1223 	mov	a,r3
      0022DD 64 80            [12] 1224 	xrl	a,#0x80
      0022DF 8C F0            [24] 1225 	mov	b,r4
      0022E1 63 F0 80         [24] 1226 	xrl	b,#0x80
      0022E4 95 F0            [12] 1227 	subb	a,b
      0022E6 D0 04            [24] 1228 	pop	ar4
      0022E8 D0 03            [24] 1229 	pop	ar3
      0022EA D0 02            [24] 1230 	pop	ar2
      0022EC 50 54            [24] 1231 	jnc	00105$
                                   1232 ;	../lib_master/linefi_packet.c:103: send_octet_to_linefi(*(apstLineFiPkt->pu8Data+i));
      0022EE C0 05            [24] 1233 	push	ar5
      0022F0 C0 06            [24] 1234 	push	ar6
      0022F2 C0 07            [24] 1235 	push	ar7
      0022F4 8A 82            [24] 1236 	mov	dpl,r2
      0022F6 8B 83            [24] 1237 	mov	dph,r3
      0022F8 8C F0            [24] 1238 	mov	b,r4
      0022FA 12 3D 2C         [24] 1239 	lcall	__gptrget
      0022FD F8               [12] 1240 	mov	r0,a
      0022FE A3               [24] 1241 	inc	dptr
      0022FF 12 3D 2C         [24] 1242 	lcall	__gptrget
      002302 FE               [12] 1243 	mov	r6,a
      002303 A3               [24] 1244 	inc	dptr
      002304 12 3D 2C         [24] 1245 	lcall	__gptrget
      002307 FF               [12] 1246 	mov	r7,a
      002308 E9               [12] 1247 	mov	a,r1
      002309 28               [12] 1248 	add	a,r0
      00230A F8               [12] 1249 	mov	r0,a
      00230B E4               [12] 1250 	clr	a
      00230C 3E               [12] 1251 	addc	a,r6
      00230D FE               [12] 1252 	mov	r6,a
      00230E 88 82            [24] 1253 	mov	dpl,r0
      002310 8E 83            [24] 1254 	mov	dph,r6
      002312 8F F0            [24] 1255 	mov	b,r7
      002314 12 3D 2C         [24] 1256 	lcall	__gptrget
      002317 F5 82            [12] 1257 	mov	dpl,a
      002319 C0 07            [24] 1258 	push	ar7
      00231B C0 06            [24] 1259 	push	ar6
      00231D C0 05            [24] 1260 	push	ar5
      00231F C0 04            [24] 1261 	push	ar4
      002321 C0 03            [24] 1262 	push	ar3
      002323 C0 02            [24] 1263 	push	ar2
      002325 C0 01            [24] 1264 	push	ar1
      002327 12 21 D2         [24] 1265 	lcall	_send_octet_to_linefi
      00232A D0 01            [24] 1266 	pop	ar1
      00232C D0 02            [24] 1267 	pop	ar2
      00232E D0 03            [24] 1268 	pop	ar3
      002330 D0 04            [24] 1269 	pop	ar4
      002332 D0 05            [24] 1270 	pop	ar5
      002334 D0 06            [24] 1271 	pop	ar6
      002336 D0 07            [24] 1272 	pop	ar7
                                   1273 ;	../lib_master/linefi_packet.c:102: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      002338 09               [12] 1274 	inc	r1
      002339 D0 07            [24] 1275 	pop	ar7
      00233B D0 06            [24] 1276 	pop	ar6
      00233D D0 05            [24] 1277 	pop	ar5
      00233F 02 22 BD         [24] 1278 	ljmp	00103$
      002342                       1279 00105$:
                                   1280 ;	../lib_master/linefi_packet.c:117: }
      002342 22               [24] 1281 	ret
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'cp_buf2linefipacket'
                                   1284 ;------------------------------------------------------------
                                   1285 ;apu8RxBuf                 Allocated with name '_cp_buf2linefipacket_PARM_2'
                                   1286 ;apstLineFiPkt             Allocated with name '_cp_buf2linefipacket_PARM_3'
                                   1287 ;au8Size                   Allocated to registers r7 
                                   1288 ;pu8Buf                    Allocated to registers r5 r6 r7 
                                   1289 ;i                         Allocated with name '_cp_buf2linefipacket_i_65538_73'
                                   1290 ;sloc0                     Allocated with name '_cp_buf2linefipacket_sloc0_1_0'
                                   1291 ;------------------------------------------------------------
                                   1292 ;	../lib_master/linefi_packet.c:119: uint8 cp_buf2linefipacket(uint8 au8Size, uint8 * apu8RxBuf, linefi_packet_t * apstLineFiPkt)
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function cp_buf2linefipacket
                                   1295 ;	-----------------------------------------
      002343                       1296 _cp_buf2linefipacket:
      002343 AF 82            [24] 1297 	mov	r7,dpl
                                   1298 ;	../lib_master/linefi_packet.c:124: if (au8Size < 5) {
      002345 BF 05 00         [24] 1299 	cjne	r7,#0x05,00132$
      002348                       1300 00132$:
      002348 50 04            [24] 1301 	jnc	00102$
                                   1302 ;	../lib_master/linefi_packet.c:126: return CONV_ERR_TOO_SMALLSIZE;
      00234A 75 82 03         [24] 1303 	mov	dpl,#0x03
      00234D 22               [24] 1304 	ret
      00234E                       1305 00102$:
                                   1306 ;	../lib_master/linefi_packet.c:129: uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
      00234E AD 45            [24] 1307 	mov	r5,_cp_buf2linefipacket_PARM_3
      002350 AE 46            [24] 1308 	mov	r6,(_cp_buf2linefipacket_PARM_3 + 1)
      002352 AF 47            [24] 1309 	mov	r7,(_cp_buf2linefipacket_PARM_3 + 2)
                                   1310 ;	../lib_master/linefi_packet.c:132: *pu8Buf++ = *apu8RxBuf++;
      002354 AA 42            [24] 1311 	mov	r2,_cp_buf2linefipacket_PARM_2
      002356 AB 43            [24] 1312 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      002358 AC 44            [24] 1313 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      00235A 8A 82            [24] 1314 	mov	dpl,r2
      00235C 8B 83            [24] 1315 	mov	dph,r3
      00235E 8C F0            [24] 1316 	mov	b,r4
      002360 12 3D 2C         [24] 1317 	lcall	__gptrget
      002363 F9               [12] 1318 	mov	r1,a
      002364 74 01            [12] 1319 	mov	a,#0x01
      002366 2A               [12] 1320 	add	a,r2
      002367 F5 42            [12] 1321 	mov	_cp_buf2linefipacket_PARM_2,a
      002369 E4               [12] 1322 	clr	a
      00236A 3B               [12] 1323 	addc	a,r3
      00236B F5 43            [12] 1324 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      00236D 8C 44            [24] 1325 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      00236F 8D 82            [24] 1326 	mov	dpl,r5
      002371 8E 83            [24] 1327 	mov	dph,r6
      002373 8F F0            [24] 1328 	mov	b,r7
      002375 E9               [12] 1329 	mov	a,r1
      002376 12 34 06         [24] 1330 	lcall	__gptrput
      002379 0D               [12] 1331 	inc	r5
      00237A BD 00 01         [24] 1332 	cjne	r5,#0x00,00134$
      00237D 0E               [12] 1333 	inc	r6
      00237E                       1334 00134$:
                                   1335 ;	../lib_master/linefi_packet.c:133: *pu8Buf++ = *apu8RxBuf++;
      00237E AA 42            [24] 1336 	mov	r2,_cp_buf2linefipacket_PARM_2
      002380 AB 43            [24] 1337 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      002382 AC 44            [24] 1338 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      002384 8A 82            [24] 1339 	mov	dpl,r2
      002386 8B 83            [24] 1340 	mov	dph,r3
      002388 8C F0            [24] 1341 	mov	b,r4
      00238A 12 3D 2C         [24] 1342 	lcall	__gptrget
      00238D F9               [12] 1343 	mov	r1,a
      00238E 74 01            [12] 1344 	mov	a,#0x01
      002390 2A               [12] 1345 	add	a,r2
      002391 F5 42            [12] 1346 	mov	_cp_buf2linefipacket_PARM_2,a
      002393 E4               [12] 1347 	clr	a
      002394 3B               [12] 1348 	addc	a,r3
      002395 F5 43            [12] 1349 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      002397 8C 44            [24] 1350 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      002399 8D 82            [24] 1351 	mov	dpl,r5
      00239B 8E 83            [24] 1352 	mov	dph,r6
      00239D 8F F0            [24] 1353 	mov	b,r7
      00239F E9               [12] 1354 	mov	a,r1
      0023A0 12 34 06         [24] 1355 	lcall	__gptrput
      0023A3 0D               [12] 1356 	inc	r5
      0023A4 BD 00 01         [24] 1357 	cjne	r5,#0x00,00135$
      0023A7 0E               [12] 1358 	inc	r6
      0023A8                       1359 00135$:
                                   1360 ;	../lib_master/linefi_packet.c:134: *pu8Buf++ = *apu8RxBuf++;
      0023A8 AA 42            [24] 1361 	mov	r2,_cp_buf2linefipacket_PARM_2
      0023AA AB 43            [24] 1362 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      0023AC AC 44            [24] 1363 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      0023AE 8A 82            [24] 1364 	mov	dpl,r2
      0023B0 8B 83            [24] 1365 	mov	dph,r3
      0023B2 8C F0            [24] 1366 	mov	b,r4
      0023B4 12 3D 2C         [24] 1367 	lcall	__gptrget
      0023B7 F9               [12] 1368 	mov	r1,a
      0023B8 74 01            [12] 1369 	mov	a,#0x01
      0023BA 2A               [12] 1370 	add	a,r2
      0023BB F5 42            [12] 1371 	mov	_cp_buf2linefipacket_PARM_2,a
      0023BD E4               [12] 1372 	clr	a
      0023BE 3B               [12] 1373 	addc	a,r3
      0023BF F5 43            [12] 1374 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      0023C1 8C 44            [24] 1375 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      0023C3 8D 82            [24] 1376 	mov	dpl,r5
      0023C5 8E 83            [24] 1377 	mov	dph,r6
      0023C7 8F F0            [24] 1378 	mov	b,r7
      0023C9 E9               [12] 1379 	mov	a,r1
      0023CA 12 34 06         [24] 1380 	lcall	__gptrput
      0023CD 0D               [12] 1381 	inc	r5
      0023CE BD 00 01         [24] 1382 	cjne	r5,#0x00,00136$
      0023D1 0E               [12] 1383 	inc	r6
      0023D2                       1384 00136$:
                                   1385 ;	../lib_master/linefi_packet.c:135: *pu8Buf++ = *apu8RxBuf++;
      0023D2 AA 42            [24] 1386 	mov	r2,_cp_buf2linefipacket_PARM_2
      0023D4 AB 43            [24] 1387 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      0023D6 AC 44            [24] 1388 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      0023D8 8A 82            [24] 1389 	mov	dpl,r2
      0023DA 8B 83            [24] 1390 	mov	dph,r3
      0023DC 8C F0            [24] 1391 	mov	b,r4
      0023DE 12 3D 2C         [24] 1392 	lcall	__gptrget
      0023E1 F9               [12] 1393 	mov	r1,a
      0023E2 74 01            [12] 1394 	mov	a,#0x01
      0023E4 2A               [12] 1395 	add	a,r2
      0023E5 F5 42            [12] 1396 	mov	_cp_buf2linefipacket_PARM_2,a
      0023E7 E4               [12] 1397 	clr	a
      0023E8 3B               [12] 1398 	addc	a,r3
      0023E9 F5 43            [12] 1399 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      0023EB 8C 44            [24] 1400 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      0023ED 8D 82            [24] 1401 	mov	dpl,r5
      0023EF 8E 83            [24] 1402 	mov	dph,r6
      0023F1 8F F0            [24] 1403 	mov	b,r7
      0023F3 E9               [12] 1404 	mov	a,r1
      0023F4 12 34 06         [24] 1405 	lcall	__gptrput
      0023F7 0D               [12] 1406 	inc	r5
      0023F8 BD 00 01         [24] 1407 	cjne	r5,#0x00,00137$
      0023FB 0E               [12] 1408 	inc	r6
      0023FC                       1409 00137$:
                                   1410 ;	../lib_master/linefi_packet.c:136: *pu8Buf++ = *apu8RxBuf++;
      0023FC AA 42            [24] 1411 	mov	r2,_cp_buf2linefipacket_PARM_2
      0023FE AB 43            [24] 1412 	mov	r3,(_cp_buf2linefipacket_PARM_2 + 1)
      002400 AC 44            [24] 1413 	mov	r4,(_cp_buf2linefipacket_PARM_2 + 2)
      002402 8A 82            [24] 1414 	mov	dpl,r2
      002404 8B 83            [24] 1415 	mov	dph,r3
      002406 8C F0            [24] 1416 	mov	b,r4
      002408 12 3D 2C         [24] 1417 	lcall	__gptrget
      00240B F9               [12] 1418 	mov	r1,a
      00240C 74 01            [12] 1419 	mov	a,#0x01
      00240E 2A               [12] 1420 	add	a,r2
      00240F F5 42            [12] 1421 	mov	_cp_buf2linefipacket_PARM_2,a
      002411 E4               [12] 1422 	clr	a
      002412 3B               [12] 1423 	addc	a,r3
      002413 F5 43            [12] 1424 	mov	(_cp_buf2linefipacket_PARM_2 + 1),a
      002415 8C 44            [24] 1425 	mov	(_cp_buf2linefipacket_PARM_2 + 2),r4
      002417 8D 82            [24] 1426 	mov	dpl,r5
      002419 8E 83            [24] 1427 	mov	dph,r6
      00241B 8F F0            [24] 1428 	mov	b,r7
      00241D E9               [12] 1429 	mov	a,r1
      00241E 12 34 06         [24] 1430 	lcall	__gptrput
                                   1431 ;	../lib_master/linefi_packet.c:140: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      002421 AD 45            [24] 1432 	mov	r5,_cp_buf2linefipacket_PARM_3
      002423 AE 46            [24] 1433 	mov	r6,(_cp_buf2linefipacket_PARM_3 + 1)
      002425 AF 47            [24] 1434 	mov	r7,(_cp_buf2linefipacket_PARM_3 + 2)
      002427 74 03            [12] 1435 	mov	a,#0x03
      002429 2D               [12] 1436 	add	a,r5
      00242A FA               [12] 1437 	mov	r2,a
      00242B E4               [12] 1438 	clr	a
      00242C 3E               [12] 1439 	addc	a,r6
      00242D FB               [12] 1440 	mov	r3,a
      00242E 8F 04            [24] 1441 	mov	ar4,r7
      002430 85 42 49         [24] 1442 	mov	_cp_buf2linefipacket_sloc0_1_0,_cp_buf2linefipacket_PARM_2
      002433 85 43 4A         [24] 1443 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 1),(_cp_buf2linefipacket_PARM_2 + 1)
      002436 85 44 4B         [24] 1444 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 2),(_cp_buf2linefipacket_PARM_2 + 2)
      002439 75 48 00         [24] 1445 	mov	_cp_buf2linefipacket_i_65538_73,#0x00
      00243C                       1446 00107$:
      00243C C0 05            [24] 1447 	push	ar5
      00243E C0 06            [24] 1448 	push	ar6
      002440 C0 07            [24] 1449 	push	ar7
      002442 8A 82            [24] 1450 	mov	dpl,r2
      002444 8B 83            [24] 1451 	mov	dph,r3
      002446 8C F0            [24] 1452 	mov	b,r4
      002448 12 3D 2C         [24] 1453 	lcall	__gptrget
      00244B 79 00            [12] 1454 	mov	r1,#0x00
      00244D 24 FB            [12] 1455 	add	a,#0xfb
      00244F F8               [12] 1456 	mov	r0,a
      002450 E9               [12] 1457 	mov	a,r1
      002451 34 FF            [12] 1458 	addc	a,#0xff
      002453 F9               [12] 1459 	mov	r1,a
      002454 AE 48            [24] 1460 	mov	r6,_cp_buf2linefipacket_i_65538_73
      002456 7F 00            [12] 1461 	mov	r7,#0x00
      002458 C3               [12] 1462 	clr	c
      002459 EE               [12] 1463 	mov	a,r6
      00245A 98               [12] 1464 	subb	a,r0
      00245B EF               [12] 1465 	mov	a,r7
      00245C 64 80            [12] 1466 	xrl	a,#0x80
      00245E 89 F0            [24] 1467 	mov	b,r1
      002460 63 F0 80         [24] 1468 	xrl	b,#0x80
      002463 95 F0            [12] 1469 	subb	a,b
      002465 D0 07            [24] 1470 	pop	ar7
      002467 D0 06            [24] 1471 	pop	ar6
      002469 D0 05            [24] 1472 	pop	ar5
      00246B 50 53            [24] 1473 	jnc	00103$
                                   1474 ;	../lib_master/linefi_packet.c:141: apstLineFiPkt->pu8Data[i] = *apu8RxBuf++;
      00246D C0 02            [24] 1475 	push	ar2
      00246F C0 03            [24] 1476 	push	ar3
      002471 C0 04            [24] 1477 	push	ar4
      002473 74 05            [12] 1478 	mov	a,#0x05
      002475 2D               [12] 1479 	add	a,r5
      002476 F8               [12] 1480 	mov	r0,a
      002477 E4               [12] 1481 	clr	a
      002478 3E               [12] 1482 	addc	a,r6
      002479 F9               [12] 1483 	mov	r1,a
      00247A 8F 04            [24] 1484 	mov	ar4,r7
      00247C 88 82            [24] 1485 	mov	dpl,r0
      00247E 89 83            [24] 1486 	mov	dph,r1
      002480 8C F0            [24] 1487 	mov	b,r4
      002482 12 3D 2C         [24] 1488 	lcall	__gptrget
      002485 F8               [12] 1489 	mov	r0,a
      002486 A3               [24] 1490 	inc	dptr
      002487 12 3D 2C         [24] 1491 	lcall	__gptrget
      00248A F9               [12] 1492 	mov	r1,a
      00248B A3               [24] 1493 	inc	dptr
      00248C 12 3D 2C         [24] 1494 	lcall	__gptrget
      00248F FC               [12] 1495 	mov	r4,a
      002490 E5 48            [12] 1496 	mov	a,_cp_buf2linefipacket_i_65538_73
      002492 28               [12] 1497 	add	a,r0
      002493 F8               [12] 1498 	mov	r0,a
      002494 E4               [12] 1499 	clr	a
      002495 39               [12] 1500 	addc	a,r1
      002496 F9               [12] 1501 	mov	r1,a
      002497 85 49 82         [24] 1502 	mov	dpl,_cp_buf2linefipacket_sloc0_1_0
      00249A 85 4A 83         [24] 1503 	mov	dph,(_cp_buf2linefipacket_sloc0_1_0 + 1)
      00249D 85 4B F0         [24] 1504 	mov	b,(_cp_buf2linefipacket_sloc0_1_0 + 2)
      0024A0 12 3D 2C         [24] 1505 	lcall	__gptrget
      0024A3 FB               [12] 1506 	mov	r3,a
      0024A4 A3               [24] 1507 	inc	dptr
      0024A5 85 82 49         [24] 1508 	mov	_cp_buf2linefipacket_sloc0_1_0,dpl
      0024A8 85 83 4A         [24] 1509 	mov	(_cp_buf2linefipacket_sloc0_1_0 + 1),dph
      0024AB 88 82            [24] 1510 	mov	dpl,r0
      0024AD 89 83            [24] 1511 	mov	dph,r1
      0024AF 8C F0            [24] 1512 	mov	b,r4
      0024B1 EB               [12] 1513 	mov	a,r3
      0024B2 12 34 06         [24] 1514 	lcall	__gptrput
                                   1515 ;	../lib_master/linefi_packet.c:140: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      0024B5 05 48            [12] 1516 	inc	_cp_buf2linefipacket_i_65538_73
      0024B7 D0 04            [24] 1517 	pop	ar4
      0024B9 D0 03            [24] 1518 	pop	ar3
      0024BB D0 02            [24] 1519 	pop	ar2
      0024BD 02 24 3C         [24] 1520 	ljmp	00107$
      0024C0                       1521 00103$:
                                   1522 ;	../lib_master/linefi_packet.c:144: if (chk_crc_linefi_packet_packet(apstLineFiPkt) == CRC_NOT_OK) {
      0024C0 8D 82            [24] 1523 	mov	dpl,r5
      0024C2 8E 83            [24] 1524 	mov	dph,r6
      0024C4 8F F0            [24] 1525 	mov	b,r7
      0024C6 12 21 9D         [24] 1526 	lcall	_chk_crc_linefi_packet_packet
      0024C9 E5 82            [12] 1527 	mov	a,dpl
      0024CB 70 04            [24] 1528 	jnz	00105$
                                   1529 ;	../lib_master/linefi_packet.c:145: return CONV_ERR_CRC;
      0024CD 75 82 04         [24] 1530 	mov	dpl,#0x04
      0024D0 22               [24] 1531 	ret
      0024D1                       1532 00105$:
                                   1533 ;	../lib_master/linefi_packet.c:147: return CONV_OK;
      0024D1 75 82 02         [24] 1534 	mov	dpl,#0x02
                                   1535 ;	../lib_master/linefi_packet.c:148: }
      0024D4 22               [24] 1536 	ret
                                   1537 ;------------------------------------------------------------
                                   1538 ;Allocation info for local variables in function 'print_linefipacket'
                                   1539 ;------------------------------------------------------------
                                   1540 ;apstLineFiPkt             Allocated to registers r5 r6 r7 
                                   1541 ;i                         Allocated with name '_print_linefipacket_i_65537_79'
                                   1542 ;------------------------------------------------------------
                                   1543 ;	../lib_master/linefi_packet.c:150: void print_linefipacket(linefi_packet_t * apstLineFiPkt)
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function print_linefipacket
                                   1546 ;	-----------------------------------------
      0024D5                       1547 _print_linefipacket:
      0024D5 AD 82            [24] 1548 	mov	r5,dpl
      0024D7 AE 83            [24] 1549 	mov	r6,dph
      0024D9 AF F0            [24] 1550 	mov	r7,b
                                   1551 ;	../lib_master/linefi_packet.c:152: printf_fast_f("-------------------------------\r\n");
      0024DB C0 07            [24] 1552 	push	ar7
      0024DD C0 06            [24] 1553 	push	ar6
      0024DF C0 05            [24] 1554 	push	ar5
      0024E1 74 F6            [12] 1555 	mov	a,#___str_0
      0024E3 C0 E0            [24] 1556 	push	acc
      0024E5 74 42            [12] 1557 	mov	a,#(___str_0 >> 8)
      0024E7 C0 E0            [24] 1558 	push	acc
      0024E9 12 2E DD         [24] 1559 	lcall	_printf_fast_f
      0024EC 15 81            [12] 1560 	dec	sp
      0024EE 15 81            [12] 1561 	dec	sp
      0024F0 D0 05            [24] 1562 	pop	ar5
      0024F2 D0 06            [24] 1563 	pop	ar6
      0024F4 D0 07            [24] 1564 	pop	ar7
                                   1565 ;	../lib_master/linefi_packet.c:153: printf_fast_f("Ver : %d\r\n", apstLineFiPkt->u8Ver);
      0024F6 8D 82            [24] 1566 	mov	dpl,r5
      0024F8 8E 83            [24] 1567 	mov	dph,r6
      0024FA 8F F0            [24] 1568 	mov	b,r7
      0024FC 12 3D 2C         [24] 1569 	lcall	__gptrget
      0024FF FC               [12] 1570 	mov	r4,a
      002500 7B 00            [12] 1571 	mov	r3,#0x00
      002502 C0 07            [24] 1572 	push	ar7
      002504 C0 06            [24] 1573 	push	ar6
      002506 C0 05            [24] 1574 	push	ar5
      002508 C0 04            [24] 1575 	push	ar4
      00250A C0 03            [24] 1576 	push	ar3
      00250C 74 18            [12] 1577 	mov	a,#___str_1
      00250E C0 E0            [24] 1578 	push	acc
      002510 74 43            [12] 1579 	mov	a,#(___str_1 >> 8)
      002512 C0 E0            [24] 1580 	push	acc
      002514 12 2E DD         [24] 1581 	lcall	_printf_fast_f
      002517 E5 81            [12] 1582 	mov	a,sp
      002519 24 FC            [12] 1583 	add	a,#0xfc
      00251B F5 81            [12] 1584 	mov	sp,a
      00251D D0 05            [24] 1585 	pop	ar5
      00251F D0 06            [24] 1586 	pop	ar6
      002521 D0 07            [24] 1587 	pop	ar7
                                   1588 ;	../lib_master/linefi_packet.c:154: printf_fast_f("Type: %d(%s)\r\n", apstLineFiPkt->u8Type, gpcTypeStr[apstLineFiPkt->u8Type]);
      002523 74 01            [12] 1589 	mov	a,#0x01
      002525 2D               [12] 1590 	add	a,r5
      002526 FA               [12] 1591 	mov	r2,a
      002527 E4               [12] 1592 	clr	a
      002528 3E               [12] 1593 	addc	a,r6
      002529 FB               [12] 1594 	mov	r3,a
      00252A 8F 04            [24] 1595 	mov	ar4,r7
      00252C 8A 82            [24] 1596 	mov	dpl,r2
      00252E 8B 83            [24] 1597 	mov	dph,r3
      002530 8C F0            [24] 1598 	mov	b,r4
      002532 12 3D 2C         [24] 1599 	lcall	__gptrget
      002535 FA               [12] 1600 	mov	r2,a
      002536 75 F0 03         [24] 1601 	mov	b,#0x03
      002539 A4               [48] 1602 	mul	ab
      00253A 24 18            [12] 1603 	add	a,#_gpcTypeStr
      00253C F5 82            [12] 1604 	mov	dpl,a
      00253E 74 01            [12] 1605 	mov	a,#(_gpcTypeStr >> 8)
      002540 35 F0            [12] 1606 	addc	a,b
      002542 F5 83            [12] 1607 	mov	dph,a
      002544 E0               [24] 1608 	movx	a,@dptr
      002545 F9               [12] 1609 	mov	r1,a
      002546 A3               [24] 1610 	inc	dptr
      002547 E0               [24] 1611 	movx	a,@dptr
      002548 FB               [12] 1612 	mov	r3,a
      002549 A3               [24] 1613 	inc	dptr
      00254A E0               [24] 1614 	movx	a,@dptr
      00254B FC               [12] 1615 	mov	r4,a
      00254C 8A 00            [24] 1616 	mov	ar0,r2
      00254E 7A 00            [12] 1617 	mov	r2,#0x00
      002550 C0 07            [24] 1618 	push	ar7
      002552 C0 06            [24] 1619 	push	ar6
      002554 C0 05            [24] 1620 	push	ar5
      002556 C0 01            [24] 1621 	push	ar1
      002558 C0 03            [24] 1622 	push	ar3
      00255A C0 04            [24] 1623 	push	ar4
      00255C C0 00            [24] 1624 	push	ar0
      00255E C0 02            [24] 1625 	push	ar2
      002560 74 23            [12] 1626 	mov	a,#___str_2
      002562 C0 E0            [24] 1627 	push	acc
      002564 74 43            [12] 1628 	mov	a,#(___str_2 >> 8)
      002566 C0 E0            [24] 1629 	push	acc
      002568 12 2E DD         [24] 1630 	lcall	_printf_fast_f
      00256B E5 81            [12] 1631 	mov	a,sp
      00256D 24 F9            [12] 1632 	add	a,#0xf9
      00256F F5 81            [12] 1633 	mov	sp,a
      002571 D0 05            [24] 1634 	pop	ar5
      002573 D0 06            [24] 1635 	pop	ar6
      002575 D0 07            [24] 1636 	pop	ar7
                                   1637 ;	../lib_master/linefi_packet.c:157: printf_fast_f("Addr: %d\r\n", apstLineFiPkt->u8Addr);
      002577 74 02            [12] 1638 	mov	a,#0x02
      002579 2D               [12] 1639 	add	a,r5
      00257A FA               [12] 1640 	mov	r2,a
      00257B E4               [12] 1641 	clr	a
      00257C 3E               [12] 1642 	addc	a,r6
      00257D FB               [12] 1643 	mov	r3,a
      00257E 8F 04            [24] 1644 	mov	ar4,r7
      002580 8A 82            [24] 1645 	mov	dpl,r2
      002582 8B 83            [24] 1646 	mov	dph,r3
      002584 8C F0            [24] 1647 	mov	b,r4
      002586 12 3D 2C         [24] 1648 	lcall	__gptrget
      002589 FA               [12] 1649 	mov	r2,a
      00258A 7C 00            [12] 1650 	mov	r4,#0x00
      00258C C0 07            [24] 1651 	push	ar7
      00258E C0 06            [24] 1652 	push	ar6
      002590 C0 05            [24] 1653 	push	ar5
      002592 C0 02            [24] 1654 	push	ar2
      002594 C0 04            [24] 1655 	push	ar4
      002596 74 32            [12] 1656 	mov	a,#___str_3
      002598 C0 E0            [24] 1657 	push	acc
      00259A 74 43            [12] 1658 	mov	a,#(___str_3 >> 8)
      00259C C0 E0            [24] 1659 	push	acc
      00259E 12 2E DD         [24] 1660 	lcall	_printf_fast_f
      0025A1 E5 81            [12] 1661 	mov	a,sp
      0025A3 24 FC            [12] 1662 	add	a,#0xfc
      0025A5 F5 81            [12] 1663 	mov	sp,a
      0025A7 D0 05            [24] 1664 	pop	ar5
      0025A9 D0 06            [24] 1665 	pop	ar6
      0025AB D0 07            [24] 1666 	pop	ar7
                                   1667 ;	../lib_master/linefi_packet.c:158: printf_fast_f("Size: %d\r\n", apstLineFiPkt->u8Size);
      0025AD 74 03            [12] 1668 	mov	a,#0x03
      0025AF 2D               [12] 1669 	add	a,r5
      0025B0 FA               [12] 1670 	mov	r2,a
      0025B1 E4               [12] 1671 	clr	a
      0025B2 3E               [12] 1672 	addc	a,r6
      0025B3 FB               [12] 1673 	mov	r3,a
      0025B4 8F 04            [24] 1674 	mov	ar4,r7
      0025B6 8A 82            [24] 1675 	mov	dpl,r2
      0025B8 8B 83            [24] 1676 	mov	dph,r3
      0025BA 8C F0            [24] 1677 	mov	b,r4
      0025BC 12 3D 2C         [24] 1678 	lcall	__gptrget
      0025BF FA               [12] 1679 	mov	r2,a
      0025C0 7C 00            [12] 1680 	mov	r4,#0x00
      0025C2 C0 07            [24] 1681 	push	ar7
      0025C4 C0 06            [24] 1682 	push	ar6
      0025C6 C0 05            [24] 1683 	push	ar5
      0025C8 C0 02            [24] 1684 	push	ar2
      0025CA C0 04            [24] 1685 	push	ar4
      0025CC 74 3D            [12] 1686 	mov	a,#___str_4
      0025CE C0 E0            [24] 1687 	push	acc
      0025D0 74 43            [12] 1688 	mov	a,#(___str_4 >> 8)
      0025D2 C0 E0            [24] 1689 	push	acc
      0025D4 12 2E DD         [24] 1690 	lcall	_printf_fast_f
      0025D7 E5 81            [12] 1691 	mov	a,sp
      0025D9 24 FC            [12] 1692 	add	a,#0xfc
      0025DB F5 81            [12] 1693 	mov	sp,a
      0025DD D0 05            [24] 1694 	pop	ar5
      0025DF D0 06            [24] 1695 	pop	ar6
      0025E1 D0 07            [24] 1696 	pop	ar7
                                   1697 ;	../lib_master/linefi_packet.c:159: printf_fast_f("CRC comp : %d %d \r\n", apstLineFiPkt->u8CRC, calc_crc_linefi_packet_packet(apstLineFiPkt));
      0025E3 8D 82            [24] 1698 	mov	dpl,r5
      0025E5 8E 83            [24] 1699 	mov	dph,r6
      0025E7 8F F0            [24] 1700 	mov	b,r7
      0025E9 C0 07            [24] 1701 	push	ar7
      0025EB C0 06            [24] 1702 	push	ar6
      0025ED C0 05            [24] 1703 	push	ar5
      0025EF 12 21 11         [24] 1704 	lcall	_calc_crc_linefi_packet_packet
      0025F2 AC 82            [24] 1705 	mov	r4,dpl
      0025F4 D0 05            [24] 1706 	pop	ar5
      0025F6 D0 06            [24] 1707 	pop	ar6
      0025F8 D0 07            [24] 1708 	pop	ar7
      0025FA 7B 00            [12] 1709 	mov	r3,#0x00
      0025FC 74 04            [12] 1710 	mov	a,#0x04
      0025FE 2D               [12] 1711 	add	a,r5
      0025FF F8               [12] 1712 	mov	r0,a
      002600 E4               [12] 1713 	clr	a
      002601 3E               [12] 1714 	addc	a,r6
      002602 F9               [12] 1715 	mov	r1,a
      002603 8F 02            [24] 1716 	mov	ar2,r7
      002605 88 82            [24] 1717 	mov	dpl,r0
      002607 89 83            [24] 1718 	mov	dph,r1
      002609 8A F0            [24] 1719 	mov	b,r2
      00260B 12 3D 2C         [24] 1720 	lcall	__gptrget
      00260E F8               [12] 1721 	mov	r0,a
      00260F 7A 00            [12] 1722 	mov	r2,#0x00
      002611 C0 07            [24] 1723 	push	ar7
      002613 C0 06            [24] 1724 	push	ar6
      002615 C0 05            [24] 1725 	push	ar5
      002617 C0 04            [24] 1726 	push	ar4
      002619 C0 03            [24] 1727 	push	ar3
      00261B C0 00            [24] 1728 	push	ar0
      00261D C0 02            [24] 1729 	push	ar2
      00261F 74 48            [12] 1730 	mov	a,#___str_5
      002621 C0 E0            [24] 1731 	push	acc
      002623 74 43            [12] 1732 	mov	a,#(___str_5 >> 8)
      002625 C0 E0            [24] 1733 	push	acc
      002627 12 2E DD         [24] 1734 	lcall	_printf_fast_f
      00262A E5 81            [12] 1735 	mov	a,sp
      00262C 24 FA            [12] 1736 	add	a,#0xfa
      00262E F5 81            [12] 1737 	mov	sp,a
                                   1738 ;	../lib_master/linefi_packet.c:160: printf_fast_f("DATA: ");
      002630 74 5C            [12] 1739 	mov	a,#___str_6
      002632 C0 E0            [24] 1740 	push	acc
      002634 74 43            [12] 1741 	mov	a,#(___str_6 >> 8)
      002636 C0 E0            [24] 1742 	push	acc
      002638 12 2E DD         [24] 1743 	lcall	_printf_fast_f
      00263B 15 81            [12] 1744 	dec	sp
      00263D 15 81            [12] 1745 	dec	sp
      00263F D0 05            [24] 1746 	pop	ar5
      002641 D0 06            [24] 1747 	pop	ar6
      002643 D0 07            [24] 1748 	pop	ar7
                                   1749 ;	../lib_master/linefi_packet.c:162: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      002645 74 05            [12] 1750 	mov	a,#0x05
      002647 2D               [12] 1751 	add	a,r5
      002648 FA               [12] 1752 	mov	r2,a
      002649 E4               [12] 1753 	clr	a
      00264A 3E               [12] 1754 	addc	a,r6
      00264B FB               [12] 1755 	mov	r3,a
      00264C 8F 04            [24] 1756 	mov	ar4,r7
      00264E 74 03            [12] 1757 	mov	a,#0x03
      002650 2D               [12] 1758 	add	a,r5
      002651 FD               [12] 1759 	mov	r5,a
      002652 E4               [12] 1760 	clr	a
      002653 3E               [12] 1761 	addc	a,r6
      002654 FE               [12] 1762 	mov	r6,a
      002655 75 4C 00         [24] 1763 	mov	_print_linefipacket_i_65537_79,#0x00
      002658                       1764 00103$:
      002658 C0 02            [24] 1765 	push	ar2
      00265A C0 03            [24] 1766 	push	ar3
      00265C C0 04            [24] 1767 	push	ar4
      00265E 8D 82            [24] 1768 	mov	dpl,r5
      002660 8E 83            [24] 1769 	mov	dph,r6
      002662 8F F0            [24] 1770 	mov	b,r7
      002664 12 3D 2C         [24] 1771 	lcall	__gptrget
      002667 79 00            [12] 1772 	mov	r1,#0x00
      002669 24 FB            [12] 1773 	add	a,#0xfb
      00266B F8               [12] 1774 	mov	r0,a
      00266C E9               [12] 1775 	mov	a,r1
      00266D 34 FF            [12] 1776 	addc	a,#0xff
      00266F F9               [12] 1777 	mov	r1,a
      002670 AB 4C            [24] 1778 	mov	r3,_print_linefipacket_i_65537_79
      002672 7C 00            [12] 1779 	mov	r4,#0x00
      002674 C3               [12] 1780 	clr	c
      002675 EB               [12] 1781 	mov	a,r3
      002676 98               [12] 1782 	subb	a,r0
      002677 EC               [12] 1783 	mov	a,r4
      002678 64 80            [12] 1784 	xrl	a,#0x80
      00267A 89 F0            [24] 1785 	mov	b,r1
      00267C 63 F0 80         [24] 1786 	xrl	b,#0x80
      00267F 95 F0            [12] 1787 	subb	a,b
      002681 D0 04            [24] 1788 	pop	ar4
      002683 D0 03            [24] 1789 	pop	ar3
      002685 D0 02            [24] 1790 	pop	ar2
      002687 50 65            [24] 1791 	jnc	00101$
                                   1792 ;	../lib_master/linefi_packet.c:163: printf_fast_f("0x%x ", apstLineFiPkt->pu8Data[i]);
      002689 C0 05            [24] 1793 	push	ar5
      00268B C0 06            [24] 1794 	push	ar6
      00268D C0 07            [24] 1795 	push	ar7
      00268F 8A 82            [24] 1796 	mov	dpl,r2
      002691 8B 83            [24] 1797 	mov	dph,r3
      002693 8C F0            [24] 1798 	mov	b,r4
      002695 12 3D 2C         [24] 1799 	lcall	__gptrget
      002698 F8               [12] 1800 	mov	r0,a
      002699 A3               [24] 1801 	inc	dptr
      00269A 12 3D 2C         [24] 1802 	lcall	__gptrget
      00269D F9               [12] 1803 	mov	r1,a
      00269E A3               [24] 1804 	inc	dptr
      00269F 12 3D 2C         [24] 1805 	lcall	__gptrget
      0026A2 FF               [12] 1806 	mov	r7,a
      0026A3 E5 4C            [12] 1807 	mov	a,_print_linefipacket_i_65537_79
      0026A5 28               [12] 1808 	add	a,r0
      0026A6 F8               [12] 1809 	mov	r0,a
      0026A7 E4               [12] 1810 	clr	a
      0026A8 39               [12] 1811 	addc	a,r1
      0026A9 F9               [12] 1812 	mov	r1,a
      0026AA 88 82            [24] 1813 	mov	dpl,r0
      0026AC 89 83            [24] 1814 	mov	dph,r1
      0026AE 8F F0            [24] 1815 	mov	b,r7
      0026B0 12 3D 2C         [24] 1816 	lcall	__gptrget
      0026B3 F8               [12] 1817 	mov	r0,a
      0026B4 7F 00            [12] 1818 	mov	r7,#0x00
      0026B6 C0 07            [24] 1819 	push	ar7
      0026B8 C0 06            [24] 1820 	push	ar6
      0026BA C0 05            [24] 1821 	push	ar5
      0026BC C0 04            [24] 1822 	push	ar4
      0026BE C0 03            [24] 1823 	push	ar3
      0026C0 C0 02            [24] 1824 	push	ar2
      0026C2 C0 00            [24] 1825 	push	ar0
      0026C4 C0 07            [24] 1826 	push	ar7
      0026C6 74 63            [12] 1827 	mov	a,#___str_7
      0026C8 C0 E0            [24] 1828 	push	acc
      0026CA 74 43            [12] 1829 	mov	a,#(___str_7 >> 8)
      0026CC C0 E0            [24] 1830 	push	acc
      0026CE 12 2E DD         [24] 1831 	lcall	_printf_fast_f
      0026D1 E5 81            [12] 1832 	mov	a,sp
      0026D3 24 FC            [12] 1833 	add	a,#0xfc
      0026D5 F5 81            [12] 1834 	mov	sp,a
      0026D7 D0 02            [24] 1835 	pop	ar2
      0026D9 D0 03            [24] 1836 	pop	ar3
      0026DB D0 04            [24] 1837 	pop	ar4
      0026DD D0 05            [24] 1838 	pop	ar5
      0026DF D0 06            [24] 1839 	pop	ar6
      0026E1 D0 07            [24] 1840 	pop	ar7
                                   1841 ;	../lib_master/linefi_packet.c:162: for (i=0;i<apstLineFiPkt->u8Size-5;i++) {
      0026E3 05 4C            [12] 1842 	inc	_print_linefipacket_i_65537_79
      0026E5 D0 07            [24] 1843 	pop	ar7
      0026E7 D0 06            [24] 1844 	pop	ar6
      0026E9 D0 05            [24] 1845 	pop	ar5
      0026EB 02 26 58         [24] 1846 	ljmp	00103$
      0026EE                       1847 00101$:
                                   1848 ;	../lib_master/linefi_packet.c:165: printf_fast_f("\r\n");
      0026EE 74 69            [12] 1849 	mov	a,#___str_8
      0026F0 C0 E0            [24] 1850 	push	acc
      0026F2 74 43            [12] 1851 	mov	a,#(___str_8 >> 8)
      0026F4 C0 E0            [24] 1852 	push	acc
      0026F6 12 2E DD         [24] 1853 	lcall	_printf_fast_f
      0026F9 15 81            [12] 1854 	dec	sp
      0026FB 15 81            [12] 1855 	dec	sp
                                   1856 ;	../lib_master/linefi_packet.c:166: printf_fast_f("-------------------------------\r\n");
      0026FD 74 F6            [12] 1857 	mov	a,#___str_0
      0026FF C0 E0            [24] 1858 	push	acc
      002701 74 42            [12] 1859 	mov	a,#(___str_0 >> 8)
      002703 C0 E0            [24] 1860 	push	acc
      002705 12 2E DD         [24] 1861 	lcall	_printf_fast_f
      002708 15 81            [12] 1862 	dec	sp
      00270A 15 81            [12] 1863 	dec	sp
                                   1864 ;	../lib_master/linefi_packet.c:167: }
      00270C 22               [24] 1865 	ret
                                   1866 ;------------------------------------------------------------
                                   1867 ;Allocation info for local variables in function 'crc8'
                                   1868 ;------------------------------------------------------------
                                   1869 ;num_bytes                 Allocated with name '_crc8_PARM_2'
                                   1870 ;au8CRC                    Allocated with name '_crc8_PARM_3'
                                   1871 ;input_str                 Allocated to registers r5 r6 r7 
                                   1872 ;a                         Allocated to registers r3 
                                   1873 ;crc                       Allocated to registers r4 
                                   1874 ;ptr                       Allocated to registers r5 r6 r7 
                                   1875 ;------------------------------------------------------------
                                   1876 ;	../lib_master/linefi_packet.c:188: uint8 crc8( uint8 *input_str, uint8 num_bytes, uint8 au8CRC) 
                                   1877 ;	-----------------------------------------
                                   1878 ;	 function crc8
                                   1879 ;	-----------------------------------------
      00270D                       1880 _crc8:
      00270D AD 82            [24] 1881 	mov	r5,dpl
      00270F AE 83            [24] 1882 	mov	r6,dph
      002711 AF F0            [24] 1883 	mov	r7,b
                                   1884 ;	../lib_master/linefi_packet.c:194: crc = au8CRC;
      002713 AC 1B            [24] 1885 	mov	r4,_crc8_PARM_3
                                   1886 ;	../lib_master/linefi_packet.c:197: if ( ptr != NULL )
      002715 ED               [12] 1887 	mov	a,r5
      002716 4E               [12] 1888 	orl	a,r6
      002717 60 21            [24] 1889 	jz	00103$
                                   1890 ;	../lib_master/linefi_packet.c:198: for (a=0; a<num_bytes; a++) {
      002719 7B 00            [12] 1891 	mov	r3,#0x00
      00271B                       1892 00105$:
      00271B C3               [12] 1893 	clr	c
      00271C EB               [12] 1894 	mov	a,r3
      00271D 95 1A            [12] 1895 	subb	a,_crc8_PARM_2
      00271F 50 19            [24] 1896 	jnc	00103$
                                   1897 ;	../lib_master/linefi_packet.c:200: crc = sht75_crc_table[(*ptr++) ^ crc];
      002721 8D 82            [24] 1898 	mov	dpl,r5
      002723 8E 83            [24] 1899 	mov	dph,r6
      002725 8F F0            [24] 1900 	mov	b,r7
      002727 12 3D 2C         [24] 1901 	lcall	__gptrget
      00272A FA               [12] 1902 	mov	r2,a
      00272B A3               [24] 1903 	inc	dptr
      00272C AD 82            [24] 1904 	mov	r5,dpl
      00272E AE 83            [24] 1905 	mov	r6,dph
      002730 EC               [12] 1906 	mov	a,r4
      002731 6A               [12] 1907 	xrl	a,r2
      002732 90 28 49         [24] 1908 	mov	dptr,#_sht75_crc_table
      002735 93               [24] 1909 	movc	a,@a+dptr
      002736 FC               [12] 1910 	mov	r4,a
                                   1911 ;	../lib_master/linefi_packet.c:198: for (a=0; a<num_bytes; a++) {
      002737 0B               [12] 1912 	inc	r3
      002738 80 E1            [24] 1913 	sjmp	00105$
      00273A                       1914 00103$:
                                   1915 ;	../lib_master/linefi_packet.c:203: return crc;
      00273A 8C 82            [24] 1916 	mov	dpl,r4
                                   1917 ;	../lib_master/linefi_packet.c:204: }  /* crc_8 */
      00273C 22               [24] 1918 	ret
                                   1919 ;------------------------------------------------------------
                                   1920 ;Allocation info for local variables in function 'print_raw_packet'
                                   1921 ;------------------------------------------------------------
                                   1922 ;apu8Data                  Allocated with name '_print_raw_packet_PARM_2'
                                   1923 ;au8Size                   Allocated to registers r7 
                                   1924 ;i                         Allocated to registers r6 
                                   1925 ;------------------------------------------------------------
                                   1926 ;	../lib_master/linefi_packet.c:206: void print_raw_packet(uint8 au8Size, uint8 * apu8Data)
                                   1927 ;	-----------------------------------------
                                   1928 ;	 function print_raw_packet
                                   1929 ;	-----------------------------------------
      00273D                       1930 _print_raw_packet:
      00273D AF 82            [24] 1931 	mov	r7,dpl
                                   1932 ;	../lib_master/linefi_packet.c:209: printf_fast_f("#%d\r\n", gu16Cnt++);
      00273F AD 40            [24] 1933 	mov	r5,_gu16Cnt
      002741 AE 41            [24] 1934 	mov	r6,(_gu16Cnt + 1)
      002743 05 40            [12] 1935 	inc	_gu16Cnt
      002745 E4               [12] 1936 	clr	a
      002746 B5 40 02         [24] 1937 	cjne	a,_gu16Cnt,00136$
      002749 05 41            [12] 1938 	inc	(_gu16Cnt + 1)
      00274B                       1939 00136$:
      00274B C0 07            [24] 1940 	push	ar7
      00274D C0 05            [24] 1941 	push	ar5
      00274F C0 06            [24] 1942 	push	ar6
      002751 74 6C            [12] 1943 	mov	a,#___str_9
      002753 C0 E0            [24] 1944 	push	acc
      002755 74 43            [12] 1945 	mov	a,#(___str_9 >> 8)
      002757 C0 E0            [24] 1946 	push	acc
      002759 12 2E DD         [24] 1947 	lcall	_printf_fast_f
      00275C E5 81            [12] 1948 	mov	a,sp
      00275E 24 FC            [12] 1949 	add	a,#0xfc
      002760 F5 81            [12] 1950 	mov	sp,a
                                   1951 ;	../lib_master/linefi_packet.c:210: printf_fast_f("raw :  ");
      002762 74 72            [12] 1952 	mov	a,#___str_10
      002764 C0 E0            [24] 1953 	push	acc
      002766 74 43            [12] 1954 	mov	a,#(___str_10 >> 8)
      002768 C0 E0            [24] 1955 	push	acc
      00276A 12 2E DD         [24] 1956 	lcall	_printf_fast_f
      00276D 15 81            [12] 1957 	dec	sp
      00276F 15 81            [12] 1958 	dec	sp
      002771 D0 07            [24] 1959 	pop	ar7
                                   1960 ;	../lib_master/linefi_packet.c:211: for (i=0;i<au8Size;i++) {
      002773 7E 00            [12] 1961 	mov	r6,#0x00
      002775                       1962 00107$:
      002775 C3               [12] 1963 	clr	c
      002776 EE               [12] 1964 	mov	a,r6
      002777 9F               [12] 1965 	subb	a,r7
      002778 50 24            [24] 1966 	jnc	00101$
                                   1967 ;	../lib_master/linefi_packet.c:212: printf_fast_f("%2d   ", i);
      00277A 8E 04            [24] 1968 	mov	ar4,r6
      00277C 7D 00            [12] 1969 	mov	r5,#0x00
      00277E C0 07            [24] 1970 	push	ar7
      002780 C0 06            [24] 1971 	push	ar6
      002782 C0 04            [24] 1972 	push	ar4
      002784 C0 05            [24] 1973 	push	ar5
      002786 74 7A            [12] 1974 	mov	a,#___str_11
      002788 C0 E0            [24] 1975 	push	acc
      00278A 74 43            [12] 1976 	mov	a,#(___str_11 >> 8)
      00278C C0 E0            [24] 1977 	push	acc
      00278E 12 2E DD         [24] 1978 	lcall	_printf_fast_f
      002791 E5 81            [12] 1979 	mov	a,sp
      002793 24 FC            [12] 1980 	add	a,#0xfc
      002795 F5 81            [12] 1981 	mov	sp,a
      002797 D0 06            [24] 1982 	pop	ar6
      002799 D0 07            [24] 1983 	pop	ar7
                                   1984 ;	../lib_master/linefi_packet.c:211: for (i=0;i<au8Size;i++) {
      00279B 0E               [12] 1985 	inc	r6
      00279C 80 D7            [24] 1986 	sjmp	00107$
      00279E                       1987 00101$:
                                   1988 ;	../lib_master/linefi_packet.c:214: printf_fast_f("\r\n");
      00279E C0 07            [24] 1989 	push	ar7
      0027A0 74 69            [12] 1990 	mov	a,#___str_8
      0027A2 C0 E0            [24] 1991 	push	acc
      0027A4 74 43            [12] 1992 	mov	a,#(___str_8 >> 8)
      0027A6 C0 E0            [24] 1993 	push	acc
      0027A8 12 2E DD         [24] 1994 	lcall	_printf_fast_f
      0027AB 15 81            [12] 1995 	dec	sp
      0027AD 15 81            [12] 1996 	dec	sp
                                   1997 ;	../lib_master/linefi_packet.c:215: printf_fast_f("data:");
      0027AF 74 81            [12] 1998 	mov	a,#___str_12
      0027B1 C0 E0            [24] 1999 	push	acc
      0027B3 74 43            [12] 2000 	mov	a,#(___str_12 >> 8)
      0027B5 C0 E0            [24] 2001 	push	acc
      0027B7 12 2E DD         [24] 2002 	lcall	_printf_fast_f
      0027BA 15 81            [12] 2003 	dec	sp
      0027BC 15 81            [12] 2004 	dec	sp
      0027BE D0 07            [24] 2005 	pop	ar7
                                   2006 ;	../lib_master/linefi_packet.c:216: for (i=0;i<au8Size;i++) {
      0027C0 7E 00            [12] 2007 	mov	r6,#0x00
      0027C2                       2008 00110$:
      0027C2 C3               [12] 2009 	clr	c
      0027C3 EE               [12] 2010 	mov	a,r6
      0027C4 9F               [12] 2011 	subb	a,r7
      0027C5 50 72            [24] 2012 	jnc	00105$
                                   2013 ;	../lib_master/linefi_packet.c:217: if (*apu8Data < 0x10) {
      0027C7 AB 4D            [24] 2014 	mov	r3,_print_raw_packet_PARM_2
      0027C9 AC 4E            [24] 2015 	mov	r4,(_print_raw_packet_PARM_2 + 1)
      0027CB AD 4F            [24] 2016 	mov	r5,(_print_raw_packet_PARM_2 + 2)
      0027CD 8B 82            [24] 2017 	mov	dpl,r3
      0027CF 8C 83            [24] 2018 	mov	dph,r4
      0027D1 8D F0            [24] 2019 	mov	b,r5
      0027D3 12 3D 2C         [24] 2020 	lcall	__gptrget
      0027D6 FA               [12] 2021 	mov	r2,a
      0027D7 BA 10 00         [24] 2022 	cjne	r2,#0x10,00139$
      0027DA                       2023 00139$:
      0027DA 50 30            [24] 2024 	jnc	00103$
                                   2025 ;	../lib_master/linefi_packet.c:218: printf_fast_f("0x0%x ", *apu8Data++);
      0027DC 8A 01            [24] 2026 	mov	ar1,r2
      0027DE 74 01            [12] 2027 	mov	a,#0x01
      0027E0 2B               [12] 2028 	add	a,r3
      0027E1 F5 4D            [12] 2029 	mov	_print_raw_packet_PARM_2,a
      0027E3 E4               [12] 2030 	clr	a
      0027E4 3C               [12] 2031 	addc	a,r4
      0027E5 F5 4E            [12] 2032 	mov	(_print_raw_packet_PARM_2 + 1),a
      0027E7 8D 4F            [24] 2033 	mov	(_print_raw_packet_PARM_2 + 2),r5
      0027E9 89 00            [24] 2034 	mov	ar0,r1
      0027EB 79 00            [12] 2035 	mov	r1,#0x00
      0027ED C0 07            [24] 2036 	push	ar7
      0027EF C0 06            [24] 2037 	push	ar6
      0027F1 C0 00            [24] 2038 	push	ar0
      0027F3 C0 01            [24] 2039 	push	ar1
      0027F5 74 87            [12] 2040 	mov	a,#___str_13
      0027F7 C0 E0            [24] 2041 	push	acc
      0027F9 74 43            [12] 2042 	mov	a,#(___str_13 >> 8)
      0027FB C0 E0            [24] 2043 	push	acc
      0027FD 12 2E DD         [24] 2044 	lcall	_printf_fast_f
      002800 E5 81            [12] 2045 	mov	a,sp
      002802 24 FC            [12] 2046 	add	a,#0xfc
      002804 F5 81            [12] 2047 	mov	sp,a
      002806 D0 06            [24] 2048 	pop	ar6
      002808 D0 07            [24] 2049 	pop	ar7
      00280A 80 2A            [24] 2050 	sjmp	00111$
      00280C                       2051 00103$:
                                   2052 ;	../lib_master/linefi_packet.c:221: printf_fast_f("0x%x ", *apu8Data++);
      00280C 74 01            [12] 2053 	mov	a,#0x01
      00280E 2B               [12] 2054 	add	a,r3
      00280F F5 4D            [12] 2055 	mov	_print_raw_packet_PARM_2,a
      002811 E4               [12] 2056 	clr	a
      002812 3C               [12] 2057 	addc	a,r4
      002813 F5 4E            [12] 2058 	mov	(_print_raw_packet_PARM_2 + 1),a
      002815 8D 4F            [24] 2059 	mov	(_print_raw_packet_PARM_2 + 2),r5
      002817 7D 00            [12] 2060 	mov	r5,#0x00
      002819 C0 07            [24] 2061 	push	ar7
      00281B C0 06            [24] 2062 	push	ar6
      00281D C0 02            [24] 2063 	push	ar2
      00281F C0 05            [24] 2064 	push	ar5
      002821 74 63            [12] 2065 	mov	a,#___str_7
      002823 C0 E0            [24] 2066 	push	acc
      002825 74 43            [12] 2067 	mov	a,#(___str_7 >> 8)
      002827 C0 E0            [24] 2068 	push	acc
      002829 12 2E DD         [24] 2069 	lcall	_printf_fast_f
      00282C E5 81            [12] 2070 	mov	a,sp
      00282E 24 FC            [12] 2071 	add	a,#0xfc
      002830 F5 81            [12] 2072 	mov	sp,a
      002832 D0 06            [24] 2073 	pop	ar6
      002834 D0 07            [24] 2074 	pop	ar7
      002836                       2075 00111$:
                                   2076 ;	../lib_master/linefi_packet.c:216: for (i=0;i<au8Size;i++) {
      002836 0E               [12] 2077 	inc	r6
      002837 80 89            [24] 2078 	sjmp	00110$
      002839                       2079 00105$:
                                   2080 ;	../lib_master/linefi_packet.c:224: printf_fast_f("\r\n");
      002839 74 69            [12] 2081 	mov	a,#___str_8
      00283B C0 E0            [24] 2082 	push	acc
      00283D 74 43            [12] 2083 	mov	a,#(___str_8 >> 8)
      00283F C0 E0            [24] 2084 	push	acc
      002841 12 2E DD         [24] 2085 	lcall	_printf_fast_f
      002844 15 81            [12] 2086 	dec	sp
      002846 15 81            [12] 2087 	dec	sp
                                   2088 ;	../lib_master/linefi_packet.c:225: }
      002848 22               [24] 2089 	ret
                                   2090 	.area CSEG    (CODE)
                                   2091 	.area CONST   (CODE)
                                   2092 	.area CONST   (CODE)
      0042F6                       2093 ___str_0:
      0042F6 2D 2D 2D 2D 2D 2D 2D  2094 	.ascii "-------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D
      004315 0D                    2095 	.db 0x0d
      004316 0A                    2096 	.db 0x0a
      004317 00                    2097 	.db 0x00
                                   2098 	.area CSEG    (CODE)
                                   2099 	.area CONST   (CODE)
      004318                       2100 ___str_1:
      004318 56 65 72 20 3A 20 25  2101 	.ascii "Ver : %d"
             64
      004320 0D                    2102 	.db 0x0d
      004321 0A                    2103 	.db 0x0a
      004322 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      004323                       2107 ___str_2:
      004323 54 79 70 65 3A 20 25  2108 	.ascii "Type: %d(%s)"
             64 28 25 73 29
      00432F 0D                    2109 	.db 0x0d
      004330 0A                    2110 	.db 0x0a
      004331 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area CONST   (CODE)
      004332                       2114 ___str_3:
      004332 41 64 64 72 3A 20 25  2115 	.ascii "Addr: %d"
             64
      00433A 0D                    2116 	.db 0x0d
      00433B 0A                    2117 	.db 0x0a
      00433C 00                    2118 	.db 0x00
                                   2119 	.area CSEG    (CODE)
                                   2120 	.area CONST   (CODE)
      00433D                       2121 ___str_4:
      00433D 53 69 7A 65 3A 20 25  2122 	.ascii "Size: %d"
             64
      004345 0D                    2123 	.db 0x0d
      004346 0A                    2124 	.db 0x0a
      004347 00                    2125 	.db 0x00
                                   2126 	.area CSEG    (CODE)
                                   2127 	.area CONST   (CODE)
      004348                       2128 ___str_5:
      004348 43 52 43 20 63 6F 6D  2129 	.ascii "CRC comp : %d %d "
             70 20 3A 20 25 64 20
             25 64 20
      004359 0D                    2130 	.db 0x0d
      00435A 0A                    2131 	.db 0x0a
      00435B 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area CONST   (CODE)
      00435C                       2135 ___str_6:
      00435C 44 41 54 41 3A 20     2136 	.ascii "DATA: "
      004362 00                    2137 	.db 0x00
                                   2138 	.area CSEG    (CODE)
                                   2139 	.area CONST   (CODE)
      004363                       2140 ___str_7:
      004363 30 78 25 78 20        2141 	.ascii "0x%x "
      004368 00                    2142 	.db 0x00
                                   2143 	.area CSEG    (CODE)
                                   2144 	.area CONST   (CODE)
      004369                       2145 ___str_8:
      004369 0D                    2146 	.db 0x0d
      00436A 0A                    2147 	.db 0x0a
      00436B 00                    2148 	.db 0x00
                                   2149 	.area CSEG    (CODE)
      002849                       2150 _sht75_crc_table:
      002849 00                    2151 	.db #0x00	; 0
      00284A 31                    2152 	.db #0x31	; 49	'1'
      00284B 62                    2153 	.db #0x62	; 98	'b'
      00284C 53                    2154 	.db #0x53	; 83	'S'
      00284D C4                    2155 	.db #0xc4	; 196
      00284E F5                    2156 	.db #0xf5	; 245
      00284F A6                    2157 	.db #0xa6	; 166
      002850 97                    2158 	.db #0x97	; 151
      002851 B9                    2159 	.db #0xb9	; 185
      002852 88                    2160 	.db #0x88	; 136
      002853 DB                    2161 	.db #0xdb	; 219
      002854 EA                    2162 	.db #0xea	; 234
      002855 7D                    2163 	.db #0x7d	; 125
      002856 4C                    2164 	.db #0x4c	; 76	'L'
      002857 1F                    2165 	.db #0x1f	; 31
      002858 2E                    2166 	.db #0x2e	; 46
      002859 43                    2167 	.db #0x43	; 67	'C'
      00285A 72                    2168 	.db #0x72	; 114	'r'
      00285B 21                    2169 	.db #0x21	; 33
      00285C 10                    2170 	.db #0x10	; 16
      00285D 87                    2171 	.db #0x87	; 135
      00285E B6                    2172 	.db #0xb6	; 182
      00285F E5                    2173 	.db #0xe5	; 229
      002860 D4                    2174 	.db #0xd4	; 212
      002861 FA                    2175 	.db #0xfa	; 250
      002862 CB                    2176 	.db #0xcb	; 203
      002863 98                    2177 	.db #0x98	; 152
      002864 A9                    2178 	.db #0xa9	; 169
      002865 3E                    2179 	.db #0x3e	; 62
      002866 0F                    2180 	.db #0x0f	; 15
      002867 5C                    2181 	.db #0x5c	; 92
      002868 6D                    2182 	.db #0x6d	; 109	'm'
      002869 86                    2183 	.db #0x86	; 134
      00286A B7                    2184 	.db #0xb7	; 183
      00286B E4                    2185 	.db #0xe4	; 228
      00286C D5                    2186 	.db #0xd5	; 213
      00286D 42                    2187 	.db #0x42	; 66	'B'
      00286E 73                    2188 	.db #0x73	; 115	's'
      00286F 20                    2189 	.db #0x20	; 32
      002870 11                    2190 	.db #0x11	; 17
      002871 3F                    2191 	.db #0x3f	; 63
      002872 0E                    2192 	.db #0x0e	; 14
      002873 5D                    2193 	.db #0x5d	; 93
      002874 6C                    2194 	.db #0x6c	; 108	'l'
      002875 FB                    2195 	.db #0xfb	; 251
      002876 CA                    2196 	.db #0xca	; 202
      002877 99                    2197 	.db #0x99	; 153
      002878 A8                    2198 	.db #0xa8	; 168
      002879 C5                    2199 	.db #0xc5	; 197
      00287A F4                    2200 	.db #0xf4	; 244
      00287B A7                    2201 	.db #0xa7	; 167
      00287C 96                    2202 	.db #0x96	; 150
      00287D 01                    2203 	.db #0x01	; 1
      00287E 30                    2204 	.db #0x30	; 48	'0'
      00287F 63                    2205 	.db #0x63	; 99	'c'
      002880 52                    2206 	.db #0x52	; 82	'R'
      002881 7C                    2207 	.db #0x7c	; 124
      002882 4D                    2208 	.db #0x4d	; 77	'M'
      002883 1E                    2209 	.db #0x1e	; 30
      002884 2F                    2210 	.db #0x2f	; 47
      002885 B8                    2211 	.db #0xb8	; 184
      002886 89                    2212 	.db #0x89	; 137
      002887 DA                    2213 	.db #0xda	; 218
      002888 EB                    2214 	.db #0xeb	; 235
      002889 3D                    2215 	.db #0x3d	; 61
      00288A 0C                    2216 	.db #0x0c	; 12
      00288B 5F                    2217 	.db #0x5f	; 95
      00288C 6E                    2218 	.db #0x6e	; 110	'n'
      00288D F9                    2219 	.db #0xf9	; 249
      00288E C8                    2220 	.db #0xc8	; 200
      00288F 9B                    2221 	.db #0x9b	; 155
      002890 AA                    2222 	.db #0xaa	; 170
      002891 84                    2223 	.db #0x84	; 132
      002892 B5                    2224 	.db #0xb5	; 181
      002893 E6                    2225 	.db #0xe6	; 230
      002894 D7                    2226 	.db #0xd7	; 215
      002895 40                    2227 	.db #0x40	; 64
      002896 71                    2228 	.db #0x71	; 113	'q'
      002897 22                    2229 	.db #0x22	; 34
      002898 13                    2230 	.db #0x13	; 19
      002899 7E                    2231 	.db #0x7e	; 126
      00289A 4F                    2232 	.db #0x4f	; 79	'O'
      00289B 1C                    2233 	.db #0x1c	; 28
      00289C 2D                    2234 	.db #0x2d	; 45
      00289D BA                    2235 	.db #0xba	; 186
      00289E 8B                    2236 	.db #0x8b	; 139
      00289F D8                    2237 	.db #0xd8	; 216
      0028A0 E9                    2238 	.db #0xe9	; 233
      0028A1 C7                    2239 	.db #0xc7	; 199
      0028A2 F6                    2240 	.db #0xf6	; 246
      0028A3 A5                    2241 	.db #0xa5	; 165
      0028A4 94                    2242 	.db #0x94	; 148
      0028A5 03                    2243 	.db #0x03	; 3
      0028A6 32                    2244 	.db #0x32	; 50	'2'
      0028A7 61                    2245 	.db #0x61	; 97	'a'
      0028A8 50                    2246 	.db #0x50	; 80	'P'
      0028A9 BB                    2247 	.db #0xbb	; 187
      0028AA 8A                    2248 	.db #0x8a	; 138
      0028AB D9                    2249 	.db #0xd9	; 217
      0028AC E8                    2250 	.db #0xe8	; 232
      0028AD 7F                    2251 	.db #0x7f	; 127
      0028AE 4E                    2252 	.db #0x4e	; 78	'N'
      0028AF 1D                    2253 	.db #0x1d	; 29
      0028B0 2C                    2254 	.db #0x2c	; 44
      0028B1 02                    2255 	.db #0x02	; 2
      0028B2 33                    2256 	.db #0x33	; 51	'3'
      0028B3 60                    2257 	.db #0x60	; 96
      0028B4 51                    2258 	.db #0x51	; 81	'Q'
      0028B5 C6                    2259 	.db #0xc6	; 198
      0028B6 F7                    2260 	.db #0xf7	; 247
      0028B7 A4                    2261 	.db #0xa4	; 164
      0028B8 95                    2262 	.db #0x95	; 149
      0028B9 F8                    2263 	.db #0xf8	; 248
      0028BA C9                    2264 	.db #0xc9	; 201
      0028BB 9A                    2265 	.db #0x9a	; 154
      0028BC AB                    2266 	.db #0xab	; 171
      0028BD 3C                    2267 	.db #0x3c	; 60
      0028BE 0D                    2268 	.db #0x0d	; 13
      0028BF 5E                    2269 	.db #0x5e	; 94
      0028C0 6F                    2270 	.db #0x6f	; 111	'o'
      0028C1 41                    2271 	.db #0x41	; 65	'A'
      0028C2 70                    2272 	.db #0x70	; 112	'p'
      0028C3 23                    2273 	.db #0x23	; 35
      0028C4 12                    2274 	.db #0x12	; 18
      0028C5 85                    2275 	.db #0x85	; 133
      0028C6 B4                    2276 	.db #0xb4	; 180
      0028C7 E7                    2277 	.db #0xe7	; 231
      0028C8 D6                    2278 	.db #0xd6	; 214
      0028C9 7A                    2279 	.db #0x7a	; 122	'z'
      0028CA 4B                    2280 	.db #0x4b	; 75	'K'
      0028CB 18                    2281 	.db #0x18	; 24
      0028CC 29                    2282 	.db #0x29	; 41
      0028CD BE                    2283 	.db #0xbe	; 190
      0028CE 8F                    2284 	.db #0x8f	; 143
      0028CF DC                    2285 	.db #0xdc	; 220
      0028D0 ED                    2286 	.db #0xed	; 237
      0028D1 C3                    2287 	.db #0xc3	; 195
      0028D2 F2                    2288 	.db #0xf2	; 242
      0028D3 A1                    2289 	.db #0xa1	; 161
      0028D4 90                    2290 	.db #0x90	; 144
      0028D5 07                    2291 	.db #0x07	; 7
      0028D6 36                    2292 	.db #0x36	; 54	'6'
      0028D7 65                    2293 	.db #0x65	; 101	'e'
      0028D8 54                    2294 	.db #0x54	; 84	'T'
      0028D9 39                    2295 	.db #0x39	; 57	'9'
      0028DA 08                    2296 	.db #0x08	; 8
      0028DB 5B                    2297 	.db #0x5b	; 91
      0028DC 6A                    2298 	.db #0x6a	; 106	'j'
      0028DD FD                    2299 	.db #0xfd	; 253
      0028DE CC                    2300 	.db #0xcc	; 204
      0028DF 9F                    2301 	.db #0x9f	; 159
      0028E0 AE                    2302 	.db #0xae	; 174
      0028E1 80                    2303 	.db #0x80	; 128
      0028E2 B1                    2304 	.db #0xb1	; 177
      0028E3 E2                    2305 	.db #0xe2	; 226
      0028E4 D3                    2306 	.db #0xd3	; 211
      0028E5 44                    2307 	.db #0x44	; 68	'D'
      0028E6 75                    2308 	.db #0x75	; 117	'u'
      0028E7 26                    2309 	.db #0x26	; 38
      0028E8 17                    2310 	.db #0x17	; 23
      0028E9 FC                    2311 	.db #0xfc	; 252
      0028EA CD                    2312 	.db #0xcd	; 205
      0028EB 9E                    2313 	.db #0x9e	; 158
      0028EC AF                    2314 	.db #0xaf	; 175
      0028ED 38                    2315 	.db #0x38	; 56	'8'
      0028EE 09                    2316 	.db #0x09	; 9
      0028EF 5A                    2317 	.db #0x5a	; 90	'Z'
      0028F0 6B                    2318 	.db #0x6b	; 107	'k'
      0028F1 45                    2319 	.db #0x45	; 69	'E'
      0028F2 74                    2320 	.db #0x74	; 116	't'
      0028F3 27                    2321 	.db #0x27	; 39
      0028F4 16                    2322 	.db #0x16	; 22
      0028F5 81                    2323 	.db #0x81	; 129
      0028F6 B0                    2324 	.db #0xb0	; 176
      0028F7 E3                    2325 	.db #0xe3	; 227
      0028F8 D2                    2326 	.db #0xd2	; 210
      0028F9 BF                    2327 	.db #0xbf	; 191
      0028FA 8E                    2328 	.db #0x8e	; 142
      0028FB DD                    2329 	.db #0xdd	; 221
      0028FC EC                    2330 	.db #0xec	; 236
      0028FD 7B                    2331 	.db #0x7b	; 123
      0028FE 4A                    2332 	.db #0x4a	; 74	'J'
      0028FF 19                    2333 	.db #0x19	; 25
      002900 28                    2334 	.db #0x28	; 40
      002901 06                    2335 	.db #0x06	; 6
      002902 37                    2336 	.db #0x37	; 55	'7'
      002903 64                    2337 	.db #0x64	; 100	'd'
      002904 55                    2338 	.db #0x55	; 85	'U'
      002905 C2                    2339 	.db #0xc2	; 194
      002906 F3                    2340 	.db #0xf3	; 243
      002907 A0                    2341 	.db #0xa0	; 160
      002908 91                    2342 	.db #0x91	; 145
      002909 47                    2343 	.db #0x47	; 71	'G'
      00290A 76                    2344 	.db #0x76	; 118	'v'
      00290B 25                    2345 	.db #0x25	; 37
      00290C 14                    2346 	.db #0x14	; 20
      00290D 83                    2347 	.db #0x83	; 131
      00290E B2                    2348 	.db #0xb2	; 178
      00290F E1                    2349 	.db #0xe1	; 225
      002910 D0                    2350 	.db #0xd0	; 208
      002911 FE                    2351 	.db #0xfe	; 254
      002912 CF                    2352 	.db #0xcf	; 207
      002913 9C                    2353 	.db #0x9c	; 156
      002914 AD                    2354 	.db #0xad	; 173
      002915 3A                    2355 	.db #0x3a	; 58
      002916 0B                    2356 	.db #0x0b	; 11
      002917 58                    2357 	.db #0x58	; 88	'X'
      002918 69                    2358 	.db #0x69	; 105	'i'
      002919 04                    2359 	.db #0x04	; 4
      00291A 35                    2360 	.db #0x35	; 53	'5'
      00291B 66                    2361 	.db #0x66	; 102	'f'
      00291C 57                    2362 	.db #0x57	; 87	'W'
      00291D C0                    2363 	.db #0xc0	; 192
      00291E F1                    2364 	.db #0xf1	; 241
      00291F A2                    2365 	.db #0xa2	; 162
      002920 93                    2366 	.db #0x93	; 147
      002921 BD                    2367 	.db #0xbd	; 189
      002922 8C                    2368 	.db #0x8c	; 140
      002923 DF                    2369 	.db #0xdf	; 223
      002924 EE                    2370 	.db #0xee	; 238
      002925 79                    2371 	.db #0x79	; 121	'y'
      002926 48                    2372 	.db #0x48	; 72	'H'
      002927 1B                    2373 	.db #0x1b	; 27
      002928 2A                    2374 	.db #0x2a	; 42
      002929 C1                    2375 	.db #0xc1	; 193
      00292A F0                    2376 	.db #0xf0	; 240
      00292B A3                    2377 	.db #0xa3	; 163
      00292C 92                    2378 	.db #0x92	; 146
      00292D 05                    2379 	.db #0x05	; 5
      00292E 34                    2380 	.db #0x34	; 52	'4'
      00292F 67                    2381 	.db #0x67	; 103	'g'
      002930 56                    2382 	.db #0x56	; 86	'V'
      002931 78                    2383 	.db #0x78	; 120	'x'
      002932 49                    2384 	.db #0x49	; 73	'I'
      002933 1A                    2385 	.db #0x1a	; 26
      002934 2B                    2386 	.db #0x2b	; 43
      002935 BC                    2387 	.db #0xbc	; 188
      002936 8D                    2388 	.db #0x8d	; 141
      002937 DE                    2389 	.db #0xde	; 222
      002938 EF                    2390 	.db #0xef	; 239
      002939 82                    2391 	.db #0x82	; 130
      00293A B3                    2392 	.db #0xb3	; 179
      00293B E0                    2393 	.db #0xe0	; 224
      00293C D1                    2394 	.db #0xd1	; 209
      00293D 46                    2395 	.db #0x46	; 70	'F'
      00293E 77                    2396 	.db #0x77	; 119	'w'
      00293F 24                    2397 	.db #0x24	; 36
      002940 15                    2398 	.db #0x15	; 21
      002941 3B                    2399 	.db #0x3b	; 59
      002942 0A                    2400 	.db #0x0a	; 10
      002943 59                    2401 	.db #0x59	; 89	'Y'
      002944 68                    2402 	.db #0x68	; 104	'h'
      002945 FF                    2403 	.db #0xff	; 255
      002946 CE                    2404 	.db #0xce	; 206
      002947 9D                    2405 	.db #0x9d	; 157
      002948 AC                    2406 	.db #0xac	; 172
                                   2407 	.area CONST   (CODE)
      00436C                       2408 ___str_9:
      00436C 23 25 64              2409 	.ascii "#%d"
      00436F 0D                    2410 	.db 0x0d
      004370 0A                    2411 	.db 0x0a
      004371 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      004372                       2415 ___str_10:
      004372 72 61 77 20 3A 20 20  2416 	.ascii "raw :  "
      004379 00                    2417 	.db 0x00
                                   2418 	.area CSEG    (CODE)
                                   2419 	.area CONST   (CODE)
      00437A                       2420 ___str_11:
      00437A 25 32 64 20 20 20     2421 	.ascii "%2d   "
      004380 00                    2422 	.db 0x00
                                   2423 	.area CSEG    (CODE)
                                   2424 	.area CONST   (CODE)
      004381                       2425 ___str_12:
      004381 64 61 74 61 3A        2426 	.ascii "data:"
      004386 00                    2427 	.db 0x00
                                   2428 	.area CSEG    (CODE)
                                   2429 	.area CONST   (CODE)
      004387                       2430 ___str_13:
      004387 30 78 30 25 78 20     2431 	.ascii "0x0%x "
      00438D 00                    2432 	.db 0x00
                                   2433 	.area CSEG    (CODE)
                                   2434 	.area CONST   (CODE)
      00438E                       2435 ___str_14:
      00438E 54 79 70 65 5F 42 63  2436 	.ascii "Type_Bcast"
             61 73 74
      004398 00                    2437 	.db 0x00
                                   2438 	.area CSEG    (CODE)
                                   2439 	.area CONST   (CODE)
      004399                       2440 ___str_15:
      004399 54 79 70 65 5F 55 63  2441 	.ascii "Type_Ucast"
             61 73 74
      0043A3 00                    2442 	.db 0x00
                                   2443 	.area CSEG    (CODE)
                                   2444 	.area CONST   (CODE)
      0043A4                       2445 ___str_16:
      0043A4 54 79 70 65 5F 4D 63  2446 	.ascii "Type_Mcast"
             61 73 74
      0043AE 00                    2447 	.db 0x00
                                   2448 	.area CSEG    (CODE)
                                   2449 	.area CONST   (CODE)
      0043AF                       2450 ___str_17:
      0043AF 54 79 70 65 5F 53 65  2451 	.ascii "Type_SetAddr"
             74 41 64 64 72
      0043BB 00                    2452 	.db 0x00
                                   2453 	.area CSEG    (CODE)
                                   2454 	.area CONST   (CODE)
      0043BC                       2455 ___str_18:
      0043BC 54 79 70 65 5F 53 65  2456 	.ascii "Type_SetLED"
             74 4C 45 44
      0043C7 00                    2457 	.db 0x00
                                   2458 	.area CSEG    (CODE)
                                   2459 	.area CONST   (CODE)
      0043C8                       2460 ___str_19:
      0043C8 54 79 70 65 5F 43 74  2461 	.ascii "Type_CtrlMotor"
             72 6C 4D 6F 74 6F 72
      0043D6 00                    2462 	.db 0x00
                                   2463 	.area CSEG    (CODE)
                                   2464 	.area CONST   (CODE)
      0043D7                       2465 ___str_20:
      0043D7 54 79 70 65 5F 52 65  2466 	.ascii "Type_ReadAddr"
             61 64 41 64 64 72
      0043E4 00                    2467 	.db 0x00
                                   2468 	.area CSEG    (CODE)
                                   2469 	.area CONST   (CODE)
      0043E5                       2470 ___str_21:
      0043E5 54 79 70 65 5F 41 43  2471 	.ascii "Type_ACK"
             4B
      0043ED 00                    2472 	.db 0x00
                                   2473 	.area CSEG    (CODE)
                                   2474 	.area CONST   (CODE)
      0043EE                       2475 ___str_22:
      0043EE 54 79 70 65 5F 4E 6F  2476 	.ascii "Type_None"
             6E 65
      0043F7 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CABS    (ABS,CODE)
