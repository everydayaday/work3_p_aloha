#ifndef __EEPROM_IAP__
#define __EEPROM_IAP__

#define BASE_ADDRESS            0x3700

//extern char gpcEEPROM[];

// In-Application-Programming
void iap_cmd(char au8IAPCN, char au8IAPAH, char au8IAPAL, char au8IAPFD, char au8Flag);
void Erase_APROM_Page(unsigned int);
void Write_APROM_BYTE(unsigned int, unsigned char);
UINT16 read_bandgap_value();
UINT8 read_uid(UINT8 au8Idx);

#endif
