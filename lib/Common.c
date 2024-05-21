/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* Copyright(c) 2016 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  Nuvoton Technoledge Corp. 
//  Website: http://www.nuvoton.com
//  E-Mail : MicroC-8bit@nuvoton.com
//  Date   : Apr/21/2016
//***********************************************************************************************************

#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"

#ifdef SW_Reset
void SW_Reset(void)
{
	TA = 0xAA;
	TA = 0x55;
	set_SWRST;
}
#endif

	unsigned char
_sdcc_external_startup (void)
{
	__asm
		mov	0xC7, #0xAA
		mov	0xC7, #0x55
		mov	0xFD, #0x5A
		mov	0xC7, #0xAA
		mov	0xC7, #0x55
		mov	0xFD, #0xA5
		__endasm;
	return 0;
}

