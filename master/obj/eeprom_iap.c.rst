                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom_iap
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _iap_cmd_PARM_5
                                     12 	.globl _iap_cmd_PARM_4
                                     13 	.globl _iap_cmd_PARM_3
                                     14 	.globl _iap_cmd_PARM_2
                                     15 	.globl _read_uid
                                     16 	.globl _read_bandgap_value
                                     17 	.globl _Write_APROM_BYTE
                                     18 	.globl _Erase_APROM_Page
                                     19 	.globl _iap_cmd
                                     20 	.globl _MOSI
                                     21 	.globl _P00
                                     22 	.globl _MISO
                                     23 	.globl _P01
                                     24 	.globl _RXD_1
                                     25 	.globl _P02
                                     26 	.globl _P03
                                     27 	.globl _STADC
                                     28 	.globl _P04
                                     29 	.globl _P05
                                     30 	.globl _TXD
                                     31 	.globl _P06
                                     32 	.globl _RXD
                                     33 	.globl _P07
                                     34 	.globl _IT0
                                     35 	.globl _IE0
                                     36 	.globl _IT1
                                     37 	.globl _IE1
                                     38 	.globl _TR0
                                     39 	.globl _TF0
                                     40 	.globl _TR1
                                     41 	.globl _TF1
                                     42 	.globl _P10
                                     43 	.globl _P11
                                     44 	.globl _P12
                                     45 	.globl _SCL
                                     46 	.globl _P13
                                     47 	.globl _SDA
                                     48 	.globl _P14
                                     49 	.globl _P15
                                     50 	.globl _TXD_1
                                     51 	.globl _P16
                                     52 	.globl _P17
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _FE
                                     61 	.globl _SM0
                                     62 	.globl _P20
                                     63 	.globl _EX0
                                     64 	.globl _ET0
                                     65 	.globl _EX1
                                     66 	.globl _ET1
                                     67 	.globl _ES
                                     68 	.globl _EBOD
                                     69 	.globl _EADC
                                     70 	.globl _EA
                                     71 	.globl _P30
                                     72 	.globl _PX0
                                     73 	.globl _PT0
                                     74 	.globl _PX1
                                     75 	.globl _PT1
                                     76 	.globl _PS
                                     77 	.globl _PBOD
                                     78 	.globl _PADC
                                     79 	.globl _I2CPX
                                     80 	.globl _AA
                                     81 	.globl _SI
                                     82 	.globl _STO
                                     83 	.globl _STA
                                     84 	.globl _I2CEN
                                     85 	.globl _CM_RL2
                                     86 	.globl _TR2
                                     87 	.globl _TF2
                                     88 	.globl _P
                                     89 	.globl _OV
                                     90 	.globl _RS0
                                     91 	.globl _RS1
                                     92 	.globl _F0
                                     93 	.globl _AC
                                     94 	.globl _CY
                                     95 	.globl _CLRPWM
                                     96 	.globl _PWMF
                                     97 	.globl _LOAD
                                     98 	.globl _PWMRUN
                                     99 	.globl _ADCHS0
                                    100 	.globl _ADCHS1
                                    101 	.globl _ADCHS2
                                    102 	.globl _ADCHS3
                                    103 	.globl _ETGSEL0
                                    104 	.globl _ETGSEL1
                                    105 	.globl _ADCS
                                    106 	.globl _ADCF
                                    107 	.globl _RI_1
                                    108 	.globl _TI_1
                                    109 	.globl _RB8_1
                                    110 	.globl _TB8_1
                                    111 	.globl _REN_1
                                    112 	.globl _SM2_1
                                    113 	.globl _SM1_1
                                    114 	.globl _FE_1
                                    115 	.globl _SM0_1
                                    116 	.globl _EIPH1
                                    117 	.globl _EIP1
                                    118 	.globl _PMD
                                    119 	.globl _PMEN
                                    120 	.globl _PDTCNT
                                    121 	.globl _PDTEN
                                    122 	.globl _SCON_1
                                    123 	.globl _EIPH
                                    124 	.globl _AINDIDS
                                    125 	.globl _SPDR
                                    126 	.globl _SPSR
                                    127 	.globl _SPCR2
                                    128 	.globl _SPCR
                                    129 	.globl _CAPCON4
                                    130 	.globl _CAPCON3
                                    131 	.globl _B
                                    132 	.globl _EIP
                                    133 	.globl _C2H
                                    134 	.globl _C2L
                                    135 	.globl _PIF
                                    136 	.globl _PIPEN
                                    137 	.globl _PINEN
                                    138 	.globl _PICON
                                    139 	.globl _ADCCON0
                                    140 	.globl _C1H
                                    141 	.globl _C1L
                                    142 	.globl _C0H
                                    143 	.globl _C0L
                                    144 	.globl _ADCDLY
                                    145 	.globl _ADCCON2
                                    146 	.globl _ADCCON1
                                    147 	.globl _ACC
                                    148 	.globl _PWMCON1
                                    149 	.globl _PIOCON0
                                    150 	.globl _PWM3L
                                    151 	.globl _PWM2L
                                    152 	.globl _PWM1L
                                    153 	.globl _PWM0L
                                    154 	.globl _PWMPL
                                    155 	.globl _PWMCON0
                                    156 	.globl _FBD
                                    157 	.globl _PNP
                                    158 	.globl _PWM3H
                                    159 	.globl _PWM2H
                                    160 	.globl _PWM1H
                                    161 	.globl _PWM0H
                                    162 	.globl _PWMPH
                                    163 	.globl _PSW
                                    164 	.globl _ADCMPH
                                    165 	.globl _ADCMPL
                                    166 	.globl _PWM5L
                                    167 	.globl _TH2
                                    168 	.globl _PWM4L
                                    169 	.globl _TL2
                                    170 	.globl _RCMP2H
                                    171 	.globl _RCMP2L
                                    172 	.globl _T2MOD
                                    173 	.globl _T2CON
                                    174 	.globl _TA
                                    175 	.globl _PIOCON1
                                    176 	.globl _RH3
                                    177 	.globl _PWM5H
                                    178 	.globl _RL3
                                    179 	.globl _PWM4H
                                    180 	.globl _T3CON
                                    181 	.globl _ADCRH
                                    182 	.globl _ADCRL
                                    183 	.globl _I2ADDR
                                    184 	.globl _I2CON
                                    185 	.globl _I2TOC
                                    186 	.globl _I2CLK
                                    187 	.globl _I2STAT
                                    188 	.globl _I2DAT
                                    189 	.globl _SADDR_1
                                    190 	.globl _SADEN_1
                                    191 	.globl _SADEN
                                    192 	.globl _IP
                                    193 	.globl _PWMINTC
                                    194 	.globl _IPH
                                    195 	.globl _P2S
                                    196 	.globl _P1SR
                                    197 	.globl _P1M2
                                    198 	.globl _P1S
                                    199 	.globl _P1M1
                                    200 	.globl _P0SR
                                    201 	.globl _P0M2
                                    202 	.globl _P0S
                                    203 	.globl _P0M1
                                    204 	.globl _P3
                                    205 	.globl _IAPCN
                                    206 	.globl _IAPFD
                                    207 	.globl _P3SR
                                    208 	.globl _P3M2
                                    209 	.globl _P3S
                                    210 	.globl _P3M1
                                    211 	.globl _BODCON1
                                    212 	.globl _WDCON
                                    213 	.globl _SADDR
                                    214 	.globl _IE
                                    215 	.globl _IAPAH
                                    216 	.globl _IAPAL
                                    217 	.globl _IAPUEN
                                    218 	.globl _IAPTRG
                                    219 	.globl _BODCON0
                                    220 	.globl _AUXR1
                                    221 	.globl _P2
                                    222 	.globl _CHPCON
                                    223 	.globl _EIE1
                                    224 	.globl _EIE
                                    225 	.globl _SBUF_1
                                    226 	.globl _SBUF
                                    227 	.globl _SCON
                                    228 	.globl _CKEN
                                    229 	.globl _CKSWT
                                    230 	.globl _CKDIV
                                    231 	.globl _CAPCON2
                                    232 	.globl _CAPCON1
                                    233 	.globl _CAPCON0
                                    234 	.globl _SFRS
                                    235 	.globl _P1
                                    236 	.globl _WKCON
                                    237 	.globl _CKCON
                                    238 	.globl _TH1
                                    239 	.globl _TH0
                                    240 	.globl _TL1
                                    241 	.globl _TL0
                                    242 	.globl _TMOD
                                    243 	.globl _TCON
                                    244 	.globl _PCON
                                    245 	.globl _RWK
                                    246 	.globl _RCTRIM1
                                    247 	.globl _RCTRIM0
                                    248 	.globl _DPH
                                    249 	.globl _DPL
                                    250 	.globl _SP
                                    251 	.globl _P0
                                    252 	.globl _Write_APROM_BYTE_PARM_2
                                    253 ;--------------------------------------------------------
                                    254 ; special function registers
                                    255 ;--------------------------------------------------------
                                    256 	.area RSEG    (ABS,DATA)
      000000                        257 	.org 0x0000
                           000080   258 _P0	=	0x0080
                           000081   259 _SP	=	0x0081
                           000082   260 _DPL	=	0x0082
                           000083   261 _DPH	=	0x0083
                           000084   262 _RCTRIM0	=	0x0084
                           000085   263 _RCTRIM1	=	0x0085
                           000086   264 _RWK	=	0x0086
                           000087   265 _PCON	=	0x0087
                           000088   266 _TCON	=	0x0088
                           000089   267 _TMOD	=	0x0089
                           00008A   268 _TL0	=	0x008a
                           00008B   269 _TL1	=	0x008b
                           00008C   270 _TH0	=	0x008c
                           00008D   271 _TH1	=	0x008d
                           00008E   272 _CKCON	=	0x008e
                           00008F   273 _WKCON	=	0x008f
                           000090   274 _P1	=	0x0090
                           000091   275 _SFRS	=	0x0091
                           000092   276 _CAPCON0	=	0x0092
                           000093   277 _CAPCON1	=	0x0093
                           000094   278 _CAPCON2	=	0x0094
                           000095   279 _CKDIV	=	0x0095
                           000096   280 _CKSWT	=	0x0096
                           000097   281 _CKEN	=	0x0097
                           000098   282 _SCON	=	0x0098
                           000099   283 _SBUF	=	0x0099
                           00009A   284 _SBUF_1	=	0x009a
                           00009B   285 _EIE	=	0x009b
                           00009C   286 _EIE1	=	0x009c
                           00009F   287 _CHPCON	=	0x009f
                           0000A0   288 _P2	=	0x00a0
                           0000A2   289 _AUXR1	=	0x00a2
                           0000A3   290 _BODCON0	=	0x00a3
                           0000A4   291 _IAPTRG	=	0x00a4
                           0000A5   292 _IAPUEN	=	0x00a5
                           0000A6   293 _IAPAL	=	0x00a6
                           0000A7   294 _IAPAH	=	0x00a7
                           0000A8   295 _IE	=	0x00a8
                           0000A9   296 _SADDR	=	0x00a9
                           0000AA   297 _WDCON	=	0x00aa
                           0000AB   298 _BODCON1	=	0x00ab
                           0000AC   299 _P3M1	=	0x00ac
                           0000AC   300 _P3S	=	0x00ac
                           0000AD   301 _P3M2	=	0x00ad
                           0000AD   302 _P3SR	=	0x00ad
                           0000AE   303 _IAPFD	=	0x00ae
                           0000AF   304 _IAPCN	=	0x00af
                           0000B0   305 _P3	=	0x00b0
                           0000B1   306 _P0M1	=	0x00b1
                           0000B1   307 _P0S	=	0x00b1
                           0000B2   308 _P0M2	=	0x00b2
                           0000B2   309 _P0SR	=	0x00b2
                           0000B3   310 _P1M1	=	0x00b3
                           0000B3   311 _P1S	=	0x00b3
                           0000B4   312 _P1M2	=	0x00b4
                           0000B4   313 _P1SR	=	0x00b4
                           0000B5   314 _P2S	=	0x00b5
                           0000B7   315 _IPH	=	0x00b7
                           0000B7   316 _PWMINTC	=	0x00b7
                           0000B8   317 _IP	=	0x00b8
                           0000B9   318 _SADEN	=	0x00b9
                           0000BA   319 _SADEN_1	=	0x00ba
                           0000BB   320 _SADDR_1	=	0x00bb
                           0000BC   321 _I2DAT	=	0x00bc
                           0000BD   322 _I2STAT	=	0x00bd
                           0000BE   323 _I2CLK	=	0x00be
                           0000BF   324 _I2TOC	=	0x00bf
                           0000C0   325 _I2CON	=	0x00c0
                           0000C1   326 _I2ADDR	=	0x00c1
                           0000C2   327 _ADCRL	=	0x00c2
                           0000C3   328 _ADCRH	=	0x00c3
                           0000C4   329 _T3CON	=	0x00c4
                           0000C4   330 _PWM4H	=	0x00c4
                           0000C5   331 _RL3	=	0x00c5
                           0000C5   332 _PWM5H	=	0x00c5
                           0000C6   333 _RH3	=	0x00c6
                           0000C6   334 _PIOCON1	=	0x00c6
                           0000C7   335 _TA	=	0x00c7
                           0000C8   336 _T2CON	=	0x00c8
                           0000C9   337 _T2MOD	=	0x00c9
                           0000CA   338 _RCMP2L	=	0x00ca
                           0000CB   339 _RCMP2H	=	0x00cb
                           0000CC   340 _TL2	=	0x00cc
                           0000CC   341 _PWM4L	=	0x00cc
                           0000CD   342 _TH2	=	0x00cd
                           0000CD   343 _PWM5L	=	0x00cd
                           0000CE   344 _ADCMPL	=	0x00ce
                           0000CF   345 _ADCMPH	=	0x00cf
                           0000D0   346 _PSW	=	0x00d0
                           0000D1   347 _PWMPH	=	0x00d1
                           0000D2   348 _PWM0H	=	0x00d2
                           0000D3   349 _PWM1H	=	0x00d3
                           0000D4   350 _PWM2H	=	0x00d4
                           0000D5   351 _PWM3H	=	0x00d5
                           0000D6   352 _PNP	=	0x00d6
                           0000D7   353 _FBD	=	0x00d7
                           0000D8   354 _PWMCON0	=	0x00d8
                           0000D9   355 _PWMPL	=	0x00d9
                           0000DA   356 _PWM0L	=	0x00da
                           0000DB   357 _PWM1L	=	0x00db
                           0000DC   358 _PWM2L	=	0x00dc
                           0000DD   359 _PWM3L	=	0x00dd
                           0000DE   360 _PIOCON0	=	0x00de
                           0000DF   361 _PWMCON1	=	0x00df
                           0000E0   362 _ACC	=	0x00e0
                           0000E1   363 _ADCCON1	=	0x00e1
                           0000E2   364 _ADCCON2	=	0x00e2
                           0000E3   365 _ADCDLY	=	0x00e3
                           0000E4   366 _C0L	=	0x00e4
                           0000E5   367 _C0H	=	0x00e5
                           0000E6   368 _C1L	=	0x00e6
                           0000E7   369 _C1H	=	0x00e7
                           0000E8   370 _ADCCON0	=	0x00e8
                           0000E9   371 _PICON	=	0x00e9
                           0000EA   372 _PINEN	=	0x00ea
                           0000EB   373 _PIPEN	=	0x00eb
                           0000EC   374 _PIF	=	0x00ec
                           0000ED   375 _C2L	=	0x00ed
                           0000EE   376 _C2H	=	0x00ee
                           0000EF   377 _EIP	=	0x00ef
                           0000F0   378 _B	=	0x00f0
                           0000F1   379 _CAPCON3	=	0x00f1
                           0000F2   380 _CAPCON4	=	0x00f2
                           0000F3   381 _SPCR	=	0x00f3
                           0000F3   382 _SPCR2	=	0x00f3
                           0000F4   383 _SPSR	=	0x00f4
                           0000F5   384 _SPDR	=	0x00f5
                           0000F6   385 _AINDIDS	=	0x00f6
                           0000F7   386 _EIPH	=	0x00f7
                           0000F8   387 _SCON_1	=	0x00f8
                           0000F9   388 _PDTEN	=	0x00f9
                           0000FA   389 _PDTCNT	=	0x00fa
                           0000FB   390 _PMEN	=	0x00fb
                           0000FC   391 _PMD	=	0x00fc
                           0000FE   392 _EIP1	=	0x00fe
                           0000FF   393 _EIPH1	=	0x00ff
                                    394 ;--------------------------------------------------------
                                    395 ; special function bits
                                    396 ;--------------------------------------------------------
                                    397 	.area RSEG    (ABS,DATA)
      000000                        398 	.org 0x0000
                           0000FF   399 _SM0_1	=	0x00ff
                           0000FF   400 _FE_1	=	0x00ff
                           0000FE   401 _SM1_1	=	0x00fe
                           0000FD   402 _SM2_1	=	0x00fd
                           0000FC   403 _REN_1	=	0x00fc
                           0000FB   404 _TB8_1	=	0x00fb
                           0000FA   405 _RB8_1	=	0x00fa
                           0000F9   406 _TI_1	=	0x00f9
                           0000F8   407 _RI_1	=	0x00f8
                           0000EF   408 _ADCF	=	0x00ef
                           0000EE   409 _ADCS	=	0x00ee
                           0000ED   410 _ETGSEL1	=	0x00ed
                           0000EC   411 _ETGSEL0	=	0x00ec
                           0000EB   412 _ADCHS3	=	0x00eb
                           0000EA   413 _ADCHS2	=	0x00ea
                           0000E9   414 _ADCHS1	=	0x00e9
                           0000E8   415 _ADCHS0	=	0x00e8
                           0000DF   416 _PWMRUN	=	0x00df
                           0000DE   417 _LOAD	=	0x00de
                           0000DD   418 _PWMF	=	0x00dd
                           0000DC   419 _CLRPWM	=	0x00dc
                           0000D7   420 _CY	=	0x00d7
                           0000D6   421 _AC	=	0x00d6
                           0000D5   422 _F0	=	0x00d5
                           0000D4   423 _RS1	=	0x00d4
                           0000D3   424 _RS0	=	0x00d3
                           0000D2   425 _OV	=	0x00d2
                           0000D0   426 _P	=	0x00d0
                           0000CF   427 _TF2	=	0x00cf
                           0000CA   428 _TR2	=	0x00ca
                           0000C8   429 _CM_RL2	=	0x00c8
                           0000C6   430 _I2CEN	=	0x00c6
                           0000C5   431 _STA	=	0x00c5
                           0000C4   432 _STO	=	0x00c4
                           0000C3   433 _SI	=	0x00c3
                           0000C2   434 _AA	=	0x00c2
                           0000C0   435 _I2CPX	=	0x00c0
                           0000BE   436 _PADC	=	0x00be
                           0000BD   437 _PBOD	=	0x00bd
                           0000BC   438 _PS	=	0x00bc
                           0000BB   439 _PT1	=	0x00bb
                           0000BA   440 _PX1	=	0x00ba
                           0000B9   441 _PT0	=	0x00b9
                           0000B8   442 _PX0	=	0x00b8
                           0000B0   443 _P30	=	0x00b0
                           0000AF   444 _EA	=	0x00af
                           0000AE   445 _EADC	=	0x00ae
                           0000AD   446 _EBOD	=	0x00ad
                           0000AC   447 _ES	=	0x00ac
                           0000AB   448 _ET1	=	0x00ab
                           0000AA   449 _EX1	=	0x00aa
                           0000A9   450 _ET0	=	0x00a9
                           0000A8   451 _EX0	=	0x00a8
                           0000A0   452 _P20	=	0x00a0
                           00009F   453 _SM0	=	0x009f
                           00009F   454 _FE	=	0x009f
                           00009E   455 _SM1	=	0x009e
                           00009D   456 _SM2	=	0x009d
                           00009C   457 _REN	=	0x009c
                           00009B   458 _TB8	=	0x009b
                           00009A   459 _RB8	=	0x009a
                           000099   460 _TI	=	0x0099
                           000098   461 _RI	=	0x0098
                           000097   462 _P17	=	0x0097
                           000096   463 _P16	=	0x0096
                           000096   464 _TXD_1	=	0x0096
                           000095   465 _P15	=	0x0095
                           000094   466 _P14	=	0x0094
                           000094   467 _SDA	=	0x0094
                           000093   468 _P13	=	0x0093
                           000093   469 _SCL	=	0x0093
                           000092   470 _P12	=	0x0092
                           000091   471 _P11	=	0x0091
                           000090   472 _P10	=	0x0090
                           00008F   473 _TF1	=	0x008f
                           00008E   474 _TR1	=	0x008e
                           00008D   475 _TF0	=	0x008d
                           00008C   476 _TR0	=	0x008c
                           00008B   477 _IE1	=	0x008b
                           00008A   478 _IT1	=	0x008a
                           000089   479 _IE0	=	0x0089
                           000088   480 _IT0	=	0x0088
                           000087   481 _P07	=	0x0087
                           000087   482 _RXD	=	0x0087
                           000086   483 _P06	=	0x0086
                           000086   484 _TXD	=	0x0086
                           000085   485 _P05	=	0x0085
                           000084   486 _P04	=	0x0084
                           000084   487 _STADC	=	0x0084
                           000083   488 _P03	=	0x0083
                           000082   489 _P02	=	0x0082
                           000082   490 _RXD_1	=	0x0082
                           000081   491 _P01	=	0x0081
                           000081   492 _MISO	=	0x0081
                           000080   493 _P00	=	0x0080
                           000080   494 _MOSI	=	0x0080
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable register banks
                                    497 ;--------------------------------------------------------
                                    498 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        499 	.ds 8
                                    500 ;--------------------------------------------------------
                                    501 ; internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area DSEG    (DATA)
      000010                        504 _Write_APROM_BYTE_PARM_2:
      000010                        505 	.ds 1
                                    506 ;--------------------------------------------------------
                                    507 ; overlayable items in internal ram 
                                    508 ;--------------------------------------------------------
                                    509 	.area	OSEG    (OVR,DATA)
      00001A                        510 _iap_cmd_PARM_2:
      00001A                        511 	.ds 1
      00001B                        512 _iap_cmd_PARM_3:
      00001B                        513 	.ds 1
      00001C                        514 _iap_cmd_PARM_4:
      00001C                        515 	.ds 1
      00001D                        516 _iap_cmd_PARM_5:
      00001D                        517 	.ds 1
                                    518 ;--------------------------------------------------------
                                    519 ; indirectly addressable internal ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area ISEG    (DATA)
                                    522 ;--------------------------------------------------------
                                    523 ; absolute internal ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area IABS    (ABS,DATA)
                                    526 	.area IABS    (ABS,DATA)
                                    527 ;--------------------------------------------------------
                                    528 ; bit data
                                    529 ;--------------------------------------------------------
                                    530 	.area BSEG    (BIT)
                                    531 ;--------------------------------------------------------
                                    532 ; paged external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area PSEG    (PAG,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XSEG    (XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; absolute external ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XABS    (ABS,XDATA)
                                    543 ;--------------------------------------------------------
                                    544 ; external initialized ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
                                    547 	.area GSINIT0 (CODE)
                                    548 	.area GSINIT1 (CODE)
                                    549 	.area GSINIT2 (CODE)
                                    550 	.area GSINIT3 (CODE)
                                    551 	.area GSINIT4 (CODE)
                                    552 	.area GSINIT5 (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area CSEG    (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; global & static initialisations
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; Home
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area HOME    (CODE)
                                    568 ;--------------------------------------------------------
                                    569 ; code
                                    570 ;--------------------------------------------------------
                                    571 	.area CSEG    (CODE)
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'iap_cmd'
                                    574 ;------------------------------------------------------------
                                    575 ;au8IAPAH                  Allocated with name '_iap_cmd_PARM_2'
                                    576 ;au8IAPAL                  Allocated with name '_iap_cmd_PARM_3'
                                    577 ;au8IAPFD                  Allocated with name '_iap_cmd_PARM_4'
                                    578 ;au8Flag                   Allocated with name '_iap_cmd_PARM_5'
                                    579 ;au8IAPCN                  Allocated to registers r7 
                                    580 ;------------------------------------------------------------
                                    581 ;	../lib_master/eeprom_iap.c:9: void iap_cmd(char au8IAPCN, char au8IAPAH, char au8IAPAL, char au8IAPFD, char au8Flag)
                                    582 ;	-----------------------------------------
                                    583 ;	 function iap_cmd
                                    584 ;	-----------------------------------------
      001FD5                        585 _iap_cmd:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
      001FD5 AF 82            [24]  594 	mov	r7,dpl
                                    595 ;	../lib_master/eeprom_iap.c:11: set_IAPEN; // Enable IAPEN
                                    596 ;	assignBit
      001FD7 A2 AF            [12]  597 	mov	c,_EA
      001FD9 92 00            [24]  598 	mov	_BIT_TMP,c
                                    599 ;	assignBit
      001FDB C2 AF            [12]  600 	clr	_EA
      001FDD 75 C7 AA         [24]  601 	mov	_TA,#0xaa
      001FE0 75 C7 55         [24]  602 	mov	_TA,#0x55
      001FE3 43 9F 01         [24]  603 	orl	_CHPCON,#0x01
                                    604 ;	assignBit
      001FE6 A2 00            [12]  605 	mov	c,_BIT_TMP
      001FE8 92 AF            [24]  606 	mov	_EA,c
                                    607 ;	../lib_master/eeprom_iap.c:13: if (au8Flag) {
      001FEA E5 1D            [12]  608 	mov	a,_iap_cmd_PARM_5
      001FEC 60 13            [24]  609 	jz	00102$
                                    610 ;	../lib_master/eeprom_iap.c:14: set_APUEN;							//enable APROM update
                                    611 ;	assignBit
      001FEE A2 AF            [12]  612 	mov	c,_EA
      001FF0 92 00            [24]  613 	mov	_BIT_TMP,c
                                    614 ;	assignBit
      001FF2 C2 AF            [12]  615 	clr	_EA
      001FF4 75 C7 AA         [24]  616 	mov	_TA,#0xaa
      001FF7 75 C7 55         [24]  617 	mov	_TA,#0x55
      001FFA 43 A5 01         [24]  618 	orl	_IAPUEN,#0x01
                                    619 ;	assignBit
      001FFD A2 00            [12]  620 	mov	c,_BIT_TMP
      001FFF 92 AF            [24]  621 	mov	_EA,c
      002001                        622 00102$:
                                    623 ;	../lib_master/eeprom_iap.c:17: IAPAL = au8IAPAL;
      002001 85 1B A6         [24]  624 	mov	_IAPAL,_iap_cmd_PARM_3
                                    625 ;	../lib_master/eeprom_iap.c:18: IAPAH = au8IAPAH;
      002004 85 1A A7         [24]  626 	mov	_IAPAH,_iap_cmd_PARM_2
                                    627 ;	../lib_master/eeprom_iap.c:19: IAPFD = au8IAPFD;
      002007 85 1C AE         [24]  628 	mov	_IAPFD,_iap_cmd_PARM_4
                                    629 ;	../lib_master/eeprom_iap.c:20: IAPCN = au8IAPCN;
      00200A 8F AF            [24]  630 	mov	_IAPCN,r7
                                    631 ;	../lib_master/eeprom_iap.c:22: set_IAPGO; // Trig set IAPGO
                                    632 ;	assignBit
      00200C A2 AF            [12]  633 	mov	c,_EA
      00200E 92 00            [24]  634 	mov	_BIT_TMP,c
                                    635 ;	assignBit
      002010 C2 AF            [12]  636 	clr	_EA
      002012 75 C7 AA         [24]  637 	mov	_TA,#0xaa
      002015 75 C7 55         [24]  638 	mov	_TA,#0x55
      002018 43 A4 01         [24]  639 	orl	_IAPTRG,#0x01
                                    640 ;	assignBit
      00201B A2 00            [12]  641 	mov	c,_BIT_TMP
      00201D 92 AF            [24]  642 	mov	_EA,c
                                    643 ;	../lib_master/eeprom_iap.c:24: if (au8Flag) {
      00201F E5 1D            [12]  644 	mov	a,_iap_cmd_PARM_5
      002021 60 26            [24]  645 	jz	00105$
                                    646 ;	../lib_master/eeprom_iap.c:25: clr_APUEN;
                                    647 ;	assignBit
      002023 A2 AF            [12]  648 	mov	c,_EA
      002025 92 00            [24]  649 	mov	_BIT_TMP,c
                                    650 ;	assignBit
      002027 C2 AF            [12]  651 	clr	_EA
      002029 75 C7 AA         [24]  652 	mov	_TA,#0xaa
      00202C 75 C7 55         [24]  653 	mov	_TA,#0x55
      00202F 53 A5 FE         [24]  654 	anl	_IAPUEN,#0xfe
                                    655 ;	assignBit
      002032 A2 00            [12]  656 	mov	c,_BIT_TMP
      002034 92 AF            [24]  657 	mov	_EA,c
                                    658 ;	../lib_master/eeprom_iap.c:26: clr_IAPEN;
                                    659 ;	assignBit
      002036 A2 AF            [12]  660 	mov	c,_EA
      002038 92 00            [24]  661 	mov	_BIT_TMP,c
                                    662 ;	assignBit
      00203A C2 AF            [12]  663 	clr	_EA
      00203C 75 C7 AA         [24]  664 	mov	_TA,#0xaa
      00203F 75 C7 55         [24]  665 	mov	_TA,#0x55
      002042 53 9F FE         [24]  666 	anl	_CHPCON,#0xfe
                                    667 ;	assignBit
      002045 A2 00            [12]  668 	mov	c,_BIT_TMP
      002047 92 AF            [24]  669 	mov	_EA,c
      002049                        670 00105$:
                                    671 ;	../lib_master/eeprom_iap.c:28: }
      002049 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'Erase_APROM_Page'
                                    675 ;------------------------------------------------------------
                                    676 ;u16EPAddr                 Allocated to registers r6 r7 
                                    677 ;------------------------------------------------------------
                                    678 ;	../lib_master/eeprom_iap.c:31: void Erase_APROM_Page(unsigned int u16EPAddr)
                                    679 ;	-----------------------------------------
                                    680 ;	 function Erase_APROM_Page
                                    681 ;	-----------------------------------------
      00204A                        682 _Erase_APROM_Page:
      00204A AE 82            [24]  683 	mov	r6,dpl
      00204C AF 83            [24]  684 	mov	r7,dph
                                    685 ;	../lib_master/eeprom_iap.c:33: iap_cmd(0x22, (u16EPAddr>>8)&0xff, u16EPAddr&0xff, 0xFF, 1);
      00204E 8F 1A            [24]  686 	mov	_iap_cmd_PARM_2,r7
      002050 8E 1B            [24]  687 	mov	_iap_cmd_PARM_3,r6
      002052 75 1C FF         [24]  688 	mov	_iap_cmd_PARM_4,#0xff
      002055 75 1D 01         [24]  689 	mov	_iap_cmd_PARM_5,#0x01
      002058 75 82 22         [24]  690 	mov	dpl,#0x22
                                    691 ;	../lib_master/eeprom_iap.c:34: }
      00205B 02 1F D5         [24]  692 	ljmp	_iap_cmd
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'Write_APROM_BYTE'
                                    695 ;------------------------------------------------------------
                                    696 ;u8EPData                  Allocated with name '_Write_APROM_BYTE_PARM_2'
                                    697 ;u16EPAddr                 Allocated to registers r6 r7 
                                    698 ;------------------------------------------------------------
                                    699 ;	../lib_master/eeprom_iap.c:37: void Write_APROM_BYTE(unsigned int u16EPAddr,unsigned char u8EPData)
                                    700 ;	-----------------------------------------
                                    701 ;	 function Write_APROM_BYTE
                                    702 ;	-----------------------------------------
      00205E                        703 _Write_APROM_BYTE:
      00205E AE 82            [24]  704 	mov	r6,dpl
      002060 AF 83            [24]  705 	mov	r7,dph
                                    706 ;	../lib_master/eeprom_iap.c:39: iap_cmd(0x21, (u16EPAddr>>8)&0xff, u16EPAddr&0xff, u8EPData, 1);
      002062 8F 1A            [24]  707 	mov	_iap_cmd_PARM_2,r7
      002064 8E 1B            [24]  708 	mov	_iap_cmd_PARM_3,r6
      002066 85 10 1C         [24]  709 	mov	_iap_cmd_PARM_4,_Write_APROM_BYTE_PARM_2
      002069 75 1D 01         [24]  710 	mov	_iap_cmd_PARM_5,#0x01
      00206C 75 82 21         [24]  711 	mov	dpl,#0x21
                                    712 ;	../lib_master/eeprom_iap.c:40: }
      00206F 02 1F D5         [24]  713 	ljmp	_iap_cmd
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'read_bandgap_value'
                                    716 ;------------------------------------------------------------
                                    717 ;BandgapHigh               Allocated to registers r7 
                                    718 ;BandgapLow                Allocated to registers r6 
                                    719 ;------------------------------------------------------------
                                    720 ;	../lib_master/eeprom_iap.c:42: UINT16 read_bandgap_value()
                                    721 ;	-----------------------------------------
                                    722 ;	 function read_bandgap_value
                                    723 ;	-----------------------------------------
      002072                        724 _read_bandgap_value:
                                    725 ;	../lib_master/eeprom_iap.c:45: iap_cmd(0x04,0x00,0x0c,0,0);
      002072 75 1A 00         [24]  726 	mov	_iap_cmd_PARM_2,#0x00
      002075 75 1B 0C         [24]  727 	mov	_iap_cmd_PARM_3,#0x0c
      002078 75 1C 00         [24]  728 	mov	_iap_cmd_PARM_4,#0x00
      00207B 75 1D 00         [24]  729 	mov	_iap_cmd_PARM_5,#0x00
      00207E 75 82 04         [24]  730 	mov	dpl,#0x04
      002081 12 1F D5         [24]  731 	lcall	_iap_cmd
                                    732 ;	../lib_master/eeprom_iap.c:46: BandgapHigh = IAPFD;
      002084 AF AE            [24]  733 	mov	r7,_IAPFD
                                    734 ;	../lib_master/eeprom_iap.c:47: iap_cmd(0x04,0x00,0x0d,0,0);
      002086 75 1A 00         [24]  735 	mov	_iap_cmd_PARM_2,#0x00
      002089 75 1B 0D         [24]  736 	mov	_iap_cmd_PARM_3,#0x0d
      00208C 75 1C 00         [24]  737 	mov	_iap_cmd_PARM_4,#0x00
      00208F 75 1D 00         [24]  738 	mov	_iap_cmd_PARM_5,#0x00
      002092 75 82 04         [24]  739 	mov	dpl,#0x04
      002095 C0 07            [24]  740 	push	ar7
      002097 12 1F D5         [24]  741 	lcall	_iap_cmd
      00209A D0 07            [24]  742 	pop	ar7
                                    743 ;	../lib_master/eeprom_iap.c:48: BandgapLow = IAPFD;
      00209C E5 AE            [12]  744 	mov	a,_IAPFD
                                    745 ;	../lib_master/eeprom_iap.c:49: BandgapLow = BandgapLow&0x0F;
      00209E 54 0F            [12]  746 	anl	a,#0x0f
      0020A0 FE               [12]  747 	mov	r6,a
                                    748 ;	../lib_master/eeprom_iap.c:50: clr_IAPEN; // Disable IAPEN
                                    749 ;	assignBit
      0020A1 A2 AF            [12]  750 	mov	c,_EA
      0020A3 92 00            [24]  751 	mov	_BIT_TMP,c
                                    752 ;	assignBit
      0020A5 C2 AF            [12]  753 	clr	_EA
      0020A7 75 C7 AA         [24]  754 	mov	_TA,#0xaa
      0020AA 75 C7 55         [24]  755 	mov	_TA,#0x55
      0020AD 53 9F FE         [24]  756 	anl	_CHPCON,#0xfe
                                    757 ;	assignBit
      0020B0 A2 00            [12]  758 	mov	c,_BIT_TMP
      0020B2 92 AF            [24]  759 	mov	_EA,c
                                    760 ;	../lib_master/eeprom_iap.c:51: return (BandgapHigh<<4)+BandgapLow;
      0020B4 E4               [12]  761 	clr	a
      0020B5 C4               [12]  762 	swap	a
      0020B6 54 F0            [12]  763 	anl	a,#0xf0
      0020B8 CF               [12]  764 	xch	a,r7
      0020B9 C4               [12]  765 	swap	a
      0020BA CF               [12]  766 	xch	a,r7
      0020BB 6F               [12]  767 	xrl	a,r7
      0020BC CF               [12]  768 	xch	a,r7
      0020BD 54 F0            [12]  769 	anl	a,#0xf0
      0020BF CF               [12]  770 	xch	a,r7
      0020C0 6F               [12]  771 	xrl	a,r7
      0020C1 FD               [12]  772 	mov	r5,a
      0020C2 7C 00            [12]  773 	mov	r4,#0x00
      0020C4 EE               [12]  774 	mov	a,r6
      0020C5 2F               [12]  775 	add	a,r7
      0020C6 F5 82            [12]  776 	mov	dpl,a
      0020C8 EC               [12]  777 	mov	a,r4
      0020C9 3D               [12]  778 	addc	a,r5
      0020CA F5 83            [12]  779 	mov	dph,a
                                    780 ;	../lib_master/eeprom_iap.c:52: }
      0020CC 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'read_uid'
                                    784 ;------------------------------------------------------------
                                    785 ;au8Idx                    Allocated to registers 
                                    786 ;u8Uid                     Allocated to registers 
                                    787 ;------------------------------------------------------------
                                    788 ;	../lib_master/eeprom_iap.c:54: UINT8 read_uid(UINT8 au8Idx)
                                    789 ;	-----------------------------------------
                                    790 ;	 function read_uid
                                    791 ;	-----------------------------------------
      0020CD                        792 _read_uid:
      0020CD 85 82 1B         [24]  793 	mov	_iap_cmd_PARM_3,dpl
                                    794 ;	../lib_master/eeprom_iap.c:57: iap_cmd(0x04,0x00,au8Idx,0,0);
      0020D0 75 1A 00         [24]  795 	mov	_iap_cmd_PARM_2,#0x00
      0020D3 75 1C 00         [24]  796 	mov	_iap_cmd_PARM_4,#0x00
      0020D6 75 1D 00         [24]  797 	mov	_iap_cmd_PARM_5,#0x00
      0020D9 75 82 04         [24]  798 	mov	dpl,#0x04
      0020DC 12 1F D5         [24]  799 	lcall	_iap_cmd
                                    800 ;	../lib_master/eeprom_iap.c:58: u8Uid = IAPFD;
      0020DF 85 AE 82         [24]  801 	mov	dpl,_IAPFD
                                    802 ;	../lib_master/eeprom_iap.c:59: clr_IAPEN; // Disable IAPEN
                                    803 ;	assignBit
      0020E2 A2 AF            [12]  804 	mov	c,_EA
      0020E4 92 00            [24]  805 	mov	_BIT_TMP,c
                                    806 ;	assignBit
      0020E6 C2 AF            [12]  807 	clr	_EA
      0020E8 75 C7 AA         [24]  808 	mov	_TA,#0xaa
      0020EB 75 C7 55         [24]  809 	mov	_TA,#0x55
      0020EE 53 9F FE         [24]  810 	anl	_CHPCON,#0xfe
                                    811 ;	assignBit
      0020F1 A2 00            [12]  812 	mov	c,_BIT_TMP
      0020F3 92 AF            [24]  813 	mov	_EA,c
                                    814 ;	../lib_master/eeprom_iap.c:60: return u8Uid;
                                    815 ;	../lib_master/eeprom_iap.c:61: }
      0020F5 22               [24]  816 	ret
                                    817 	.area CSEG    (CODE)
                                    818 	.area CONST   (CODE)
                                    819 	.area CABS    (ABS,CODE)
