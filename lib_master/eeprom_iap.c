#include "N76E003.h"
#include "Common.h"
#include "SFR_Macro.h"
#include "Function_define.h"

#define BASE_ADDRESS            0x3700


void iap_cmd(char au8IAPCN, char au8IAPAH, char au8IAPAL, char au8IAPFD, char au8Flag)
{
	set_IAPEN; // Enable IAPEN

	if (au8Flag) {
		set_APUEN;							//enable APROM update
	}

	IAPAL = au8IAPAL;
	IAPAH = au8IAPAH;
	IAPFD = au8IAPFD;
	IAPCN = au8IAPCN;
	
	set_IAPGO; // Trig set IAPGO

	if (au8Flag) {
		clr_APUEN;
		clr_IAPEN;
	}
}

/* Erase 128 bytes page */
void Erase_APROM_Page(unsigned int u16EPAddr)
{
	iap_cmd(0x22, (u16EPAddr>>8)&0xff, u16EPAddr&0xff, 0xFF, 1);
}

/* Write 1 byte to APROM flash memory */
void Write_APROM_BYTE(unsigned int u16EPAddr,unsigned char u8EPData)
{
	iap_cmd(0x21, (u16EPAddr>>8)&0xff, u16EPAddr&0xff, u8EPData, 1);
}

UINT16 read_bandgap_value()
{
	UINT8 BandgapHigh,BandgapLow;
	iap_cmd(0x04,0x00,0x0c,0,0);
	BandgapHigh = IAPFD;
	iap_cmd(0x04,0x00,0x0d,0,0);
	BandgapLow = IAPFD;
	BandgapLow = BandgapLow&0x0F;
	clr_IAPEN; // Disable IAPEN
	return (BandgapHigh<<4)+BandgapLow;
}

UINT8 read_uid(UINT8 au8Idx)
{
	UINT8 u8Uid;
	iap_cmd(0x04,0x00,au8Idx,0,0);
	u8Uid = IAPFD;
	clr_IAPEN; // Disable IAPEN
	return u8Uid;
}
