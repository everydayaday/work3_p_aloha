#ifndef __WS2812B_H__
#define __WS2812B_H__

//sbit LED_Data = P1 ^ 0;
//__sbit __at	(0x80)	LED_Data		;	// P0^0;

typedef struct _RGBColor {
	unsigned char R;
	unsigned char G;
	unsigned char B;
} rgb_color_t;

typedef struct {
	unsigned char R;
	unsigned char G;
	unsigned char B;
	unsigned char W;
} rgbw_color_t;

void LED__SendZero__(void);
void LED__SendOne__(void);
void LED__SendByte__(unsigned char);
void LED_Latch(void);

void LED_SendRGBColor(rgb_color_t*);
void LED_SendRGBWColor(rgbw_color_t *color);
void LED_SendColor(unsigned char, unsigned char, unsigned char);
void LED_SendColorRGBW(unsigned char R, unsigned char G, unsigned char B, unsigned char W);
void LED_SendRGBData(rgb_color_t*, unsigned short);
void LED_SendRGBWData(rgbw_color_t *colors, unsigned short count);

#endif
