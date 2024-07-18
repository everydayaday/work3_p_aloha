#ifndef __DAC_PT8211__
#define __DAC_PT8211__

#if 0 // cc2541 용 GPIO
#include "cc254x_types.h"
#include "cc254x_map.h"
#include "util.h"

#define DAC_BCK		P1_5 	//OUT
#define DAC_WS		P1_4 	//OUT
#define DAC_DIN		P0_5 	//OUT
#endif

void set_gpio_dac_pt8211();
void set_dac_single(int aiValue);
void set_dac(int aiL, int aiR);
#endif
