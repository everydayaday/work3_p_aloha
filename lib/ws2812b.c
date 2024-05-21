#include "ws2812b.h"
#include "Function_define.h"
#include "N76E003.h"

#define LED_Data P11
/*
 * Assumes a 12MHz clock.
 */

void LED__SendZero_(void)
{
	LED_Data = 1;
	nop; nop; nop;
	LED_Data = 0;
	nop; nop; nop; nop; nop; nop; nop; nop;
	nop; nop; nop; nop; nop; nop; nop; nop;
}

void LED__SendOne_(void)
{
	LED_Data = 1;
	nop; nop; nop; nop; nop; nop; nop; nop;
	nop; nop; nop; nop; nop; nop; nop; nop;
	LED_Data = 0;
	nop; nop; nop; nop; nop; nop; nop; nop;
	nop; nop; nop; nop; nop; nop; nop; nop;
}

void LED_Latch(void)
{
	short a = 10000;
	LED_Data = 0;
	//Each loop should produce 3 instructions: decrement, comparison, and jmp.
	//At least 600 instructions are needed for 50us.
	while(a--);
}

void LED__SendByte_(unsigned char dat)
{
	if(dat & 0x80) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x40) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x20) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x10) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x08) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x04) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x02) LED__SendOne_(); else LED__SendZero_();
	if(dat & 0x01) LED__SendOne_(); else LED__SendZero_();
}

void LED_SendRGBColor(rgb_color_t *color)
{
	LED__SendByte_((*color).R);
	LED__SendByte_((*color).G);
	LED__SendByte_((*color).B);
}

void LED_SendRGBWColor(rgbw_color_t *color)
{
	LED__SendByte_((*color).R);
	LED__SendByte_((*color).G);
	LED__SendByte_((*color).B);
	LED__SendByte_((*color).W);
}

void LED_SendColor(unsigned char R, unsigned char G, unsigned char B)
{
	LED__SendByte_(R);
	LED__SendByte_(G);
	LED__SendByte_(B);
}

void LED_SendColorRGBW(unsigned char R, unsigned char G, unsigned char B, unsigned char W)
{
	LED__SendByte_(R);
	LED__SendByte_(G);
	LED__SendByte_(B);
	LED__SendByte_(W);
}

void LED_SendRGBData(rgb_color_t *colors, unsigned short count)
{
	while(count--) {
		LED_SendRGBColor(colors++);
	}
	LED_Latch();
}

void LED_SendRGBWData(rgbw_color_t *colors, unsigned short count)
{
	while(count--) {
		LED_SendRGBWColor(colors++);
	}
	LED_Latch();
}
