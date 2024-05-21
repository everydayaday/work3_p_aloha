/*--------------------------------------------------------------------------
N76E003.H

Header file for Nuvoton N76E003 (SDCC version)
--------------------------------------------------------------------------*/
#ifndef N76E003_H
#define N76E003_H

#ifdef __VSCODE__
#define __VSCODE__
#define SFR(a, b) volatile unsigned char b
#define SBIT(a, b) volatile unsigned char b
#define interrupt(NUM)
#define bool unsigned char
#else
#define SFR(a, b) __sfr __at (a) b
#define SBIT(a, b) __sbit __at (a) b
#define interrupt(NUM) __interrupt NUM __using 1
#define bool __bit
#endif

SFR(0x80, P0);
SFR(0x81, SP);
SFR(0x82, DPL);
SFR(0x83, DPH);
SFR(0x84, RCTRIM0);
SFR(0x85, RCTRIM1);
SFR(0x86, RWK);
SFR(0x87, PCON);

SFR(0x88, TCON);
SFR(0x89, TMOD);
SFR(0x8A, TL0);
SFR(0x8B, TL1);
SFR(0x8C, TH0);
SFR(0x8D, TH1);
SFR(0x8E, CKCON);
SFR(0x8F, WKCON);

SFR(0x90, P1);
SFR(0x91, SFRS);  // TA Protection
SFR(0x92, CAPCON0);
SFR(0x93, CAPCON1);
SFR(0x94, CAPCON2);
SFR(0x95, CKDIV);
SFR(0x96, CKSWT);  // TA Protection
SFR(0x97, CKEN);   // TA Protection

SFR(0x98, SCON);
SFR(0x99, SBUF);
SFR(0x9A, SBUF_1);
SFR(0x9B, EIE);
SFR(0x9C, EIE1);
SFR(0x9F, CHPCON);  // TA Protection

SFR(0xA0, P2);
SFR(0xA2, AUXR1);
SFR(0xA3, BODCON0);  // TA Protection
SFR(0xA4, IAPTRG);   // TA Protection
SFR(0xA5, IAPUEN);   // TA Protection
SFR(0xA6, IAPAL);
SFR(0xA7, IAPAH);

SFR(0xA8, IE);
SFR(0xA9, SADDR);
SFR(0xAA, WDCON);    // TA Protection
SFR(0xAB, BODCON1);  // TA Protection
SFR(0xAC, P3M1);
SFR(0xAC, P3S);  // Page1
SFR(0xAD, P3M2);
SFR(0xAD, P3SR);  // Page1
SFR(0xAE, IAPFD);
SFR(0xAF, IAPCN);

SFR(0xB0, P3);
SFR(0xB1, P0M1);
SFR(0xB1, P0S);  // Page1
SFR(0xB2, P0M2);
SFR(0xB2, P0SR);  // Page1
SFR(0xB3, P1M1);
SFR(0xB3, P1S);  // Page1
SFR(0xB4, P1M2);
SFR(0xB4, P1SR);  // Page1
SFR(0xB5, P2S);
SFR(0xB7, IPH);
SFR(0xB7, PWMINTC);  // Page1

SFR(0xB8, IP);
SFR(0xB9, SADEN);
SFR(0xBA, SADEN_1);
SFR(0xBB, SADDR_1);
SFR(0xBC, I2DAT);
SFR(0xBD, I2STAT);
SFR(0xBE, I2CLK);
SFR(0xBF, I2TOC);

SFR(0xC0, I2CON);
SFR(0xC1, I2ADDR);
SFR(0xC2, ADCRL);
SFR(0xC3, ADCRH);
SFR(0xC4, T3CON);
SFR(0xC4, PWM4H);  // Page1
SFR(0xC5, RL3);
SFR(0xC5, PWM5H);  // Page1
SFR(0xC6, RH3);
SFR(0xC6, PIOCON1);  // Page1
SFR(0xC7, TA);

SFR(0xC8, T2CON);
SFR(0xC9, T2MOD);
SFR(0xCA, RCMP2L);
SFR(0xCB, RCMP2H);
SFR(0xCC, TL2);
SFR(0xCC, PWM4L);  // Page1
SFR(0xCD, TH2);
SFR(0xCD, PWM5L);  // Page1
SFR(0xCE, ADCMPL);
SFR(0xCF, ADCMPH);

SFR(0xD0, PSW);
SFR(0xD1, PWMPH);
SFR(0xD2, PWM0H);
SFR(0xD3, PWM1H);
SFR(0xD4, PWM2H);
SFR(0xD5, PWM3H);
SFR(0xD6, PNP);
SFR(0xD7, FBD);

SFR(0xD8, PWMCON0);
SFR(0xD9, PWMPL);
SFR(0xDA, PWM0L);
SFR(0xDB, PWM1L);
SFR(0xDC, PWM2L);
SFR(0xDD, PWM3L);
SFR(0xDE, PIOCON0);
SFR(0xDF, PWMCON1);

SFR(0xE0, ACC);
SFR(0xE1, ADCCON1);
SFR(0xE2, ADCCON2);
SFR(0xE3, ADCDLY);
SFR(0xE4, C0L);
SFR(0xE5, C0H);
SFR(0xE6, C1L);
SFR(0xE7, C1H);

SFR(0xE8, ADCCON0);
SFR(0xE9, PICON);
SFR(0xEA, PINEN);
SFR(0xEB, PIPEN);
SFR(0xEC, PIF);
SFR(0xED, C2L);
SFR(0xEE, C2H);
SFR(0xEF, EIP);

SFR(0xF0, B);
SFR(0xF1, CAPCON3);
SFR(0xF2, CAPCON4);
SFR(0xF3, SPCR);
SFR(0xF3, SPCR2);  // Page1
SFR(0xF4, SPSR);
SFR(0xF5, SPDR);
SFR(0xF6, AINDIDS);
SFR(0xF7, EIPH);

SFR(0xF8, SCON_1);
SFR(0xF9, PDTEN);   // TA Protection
SFR(0xFA, PDTCNT);  // TA Protection
SFR(0xFB, PMEN);
SFR(0xFC, PMD);
SFR(0xFE, EIP1);
SFR(0xFF, EIPH1);

/*  BIT Registers  */
/*  SCON_1  */
SBIT(0xFF, SM0_1);  // SCON_1^7;
SBIT(0xFF, FE_1);   // SCON_1^7;
SBIT(0xFE, SM1_1);  // SCON_1^6;
SBIT(0xFD, SM2_1);  // SCON_1^5;
SBIT(0xFC, REN_1);  // SCON_1^4;
SBIT(0xFB, TB8_1);  // SCON_1^3;
SBIT(0xFA, RB8_1);  // SCON_1^2;
SBIT(0xF9, TI_1);   // SCON_1^1;
SBIT(0xF8, RI_1);   // SCON_1^0;

/*  ADCCON0  */
SBIT(0xEF, ADCF);     // ADCCON0^7;
SBIT(0xEE, ADCS);     // ADCCON0^6;
SBIT(0xED, ETGSEL1);  // ADCCON0^5;
SBIT(0xEC, ETGSEL0);  // ADCCON0^4;
SBIT(0xEB, ADCHS3);   // ADCCON0^3;
SBIT(0xEA, ADCHS2);   // ADCCON0^2;
SBIT(0xE9, ADCHS1);   // ADCCON0^1;
SBIT(0xE8, ADCHS0);   // ADCCON0^0;

/*  PWMCON0  */
SBIT(0xDF, PWMRUN);  // PWMCON0^7;
SBIT(0xDE, LOAD);    // PWMCON0^6;
SBIT(0xDD, PWMF);    // PWMCON0^5;
SBIT(0xDC, CLRPWM);  // PWMCON0^4;

/*  PSW */
SBIT(0xD7, CY);   // PSW^7;
SBIT(0xD6, AC);   // PSW^6;
SBIT(0xD5, F0);   // PSW^5;
SBIT(0xD4, RS1);  // PSW^4;
SBIT(0xD3, RS0);  // PSW^3;
SBIT(0xD2, OV);   // PSW^2;
SBIT(0xD0, P);    // PSW^0;

/*  T2CON  */
SBIT(0xCF, TF2);     // T2CON^7;
SBIT(0xCA, TR2);     // T2CON^2;
SBIT(0xC8, CM_RL2);  // T2CON^0;

/*  I2CON  */
SBIT(0xC6, I2CEN);  // I2CON^6;
SBIT(0xC5, STA);    // I2CON^5;
SBIT(0xC4, STO);    // I2CON^4;
SBIT(0xC3, SI);     // I2CON^3;
SBIT(0xC2, AA);     // I2CON^2;
SBIT(0xC0, I2CPX);  // I2CON^0;

/*  IP  */
SBIT(0xBE, PADC);  // IP^6;
SBIT(0xBD, PBOD);  // IP^5;
SBIT(0xBC, PS);    // IP^4;
SBIT(0xBB, PT1);   // IP^3;
SBIT(0xBA, PX1);   // IP^2;
SBIT(0xB9, PT0);   // IP^1;
SBIT(0xB8, PX0);   // IP^0;

/*  P3  */
SBIT(0xB0, P30);  // P3^0;

/*  IE  */
SBIT(0xAF, EA);    // IE^7;
SBIT(0xAE, EADC);  // IE^6;
SBIT(0xAD, EBOD);  // IE^5;
SBIT(0xAC, ES);    // IE^4;
SBIT(0xAB, ET1);   // IE^3;
SBIT(0xAA, EX1);   // IE^2;
SBIT(0xA9, ET0);   // IE^1;
SBIT(0xA8, EX0);   // IE^0;

/*  P2  */
SBIT(0xA0, P20);  // P2^0;

/*  SCON  */
SBIT(0x9F, SM0);  // SCON^7;
SBIT(0x9F, FE);   // SCON^7;
SBIT(0x9E, SM1);  // SCON^6;
SBIT(0x9D, SM2);  // SCON^5;
SBIT(0x9C, REN);  // SCON^4;
SBIT(0x9B, TB8);  // SCON^3;
SBIT(0x9A, RB8);  // SCON^2;
SBIT(0x99, TI);   // SCON^1;
SBIT(0x98, RI);   // SCON^0;

/*  P1  */
SBIT(0x97, P17);    // P1^7;
SBIT(0x96, P16);    // P1^6;
SBIT(0x96, TXD_1);  // P1^6;
SBIT(0x95, P15);    // P1^5;
SBIT(0x94, P14);    // P1^4;
SBIT(0x94, SDA);    // P1^4;
SBIT(0x93, P13);    // P1^3;
SBIT(0x93, SCL);    // P1^3;
SBIT(0x92, P12);    // P1^2;
SBIT(0x91, P11);    // P1^1;
SBIT(0x90, P10);    // P1^0;

/*  TCON  */
SBIT(0x8F, TF1);  // TCON^7;
SBIT(0x8E, TR1);  // TCON^6;
SBIT(0x8D, TF0);  // TCON^5;
SBIT(0x8C, TR0);  // TCON^4;
SBIT(0x8B, IE1);  // TCON^3;
SBIT(0x8A, IT1);  // TCON^2;
SBIT(0x89, IE0);  // TCON^1;
SBIT(0x88, IT0);  // TCON^0;

/*  P0  */

SBIT(0x87, P07);    // P0^7;
SBIT(0x87, RXD);    // P0^7;
SBIT(0x86, P06);    // P0^6;
SBIT(0x86, TXD);    // P0^6;
SBIT(0x85, P05);    // P0^5;
SBIT(0x84, P04);    // P0^4;
SBIT(0x84, STADC);  // P0^4;
SBIT(0x83, P03);    // P0^3;
SBIT(0x82, P02);    // P0^2;
SBIT(0x82, RXD_1);  // P0^2;
SBIT(0x81, P01);    // P0^1;
SBIT(0x81, MISO);   // P0^1;
SBIT(0x80, P00);    // P0^0;
SBIT(0x80, MOSI);   // P0^0;

#endif
