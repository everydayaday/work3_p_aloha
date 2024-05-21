#ifndef __COMMON__
#define __COMMON__
typedef __bit                   BIT;
typedef __bit                   bit;
typedef unsigned char         UINT8;
typedef unsigned char         uint8;
typedef unsigned int          UINT16;
typedef unsigned int          uint16;
typedef unsigned long         UINT32;
typedef unsigned long         uint32;

typedef unsigned char         uint8_t;
typedef unsigned int          uint16_t;
typedef unsigned long         uint32_t;


#define     CID_READ				0x0B
#define     DID_READ				0x0C

#define     ERASE_APROM				0x22
#define     READ_APROM				0x00
#define     PROGRAM_APROM			0x21
#define     ERASE_LDROM				
#define     READ_LDROM				
#define     PROGRAM_LDROM			
#define     READ_CFG				0xC0
#define     PROGRAM_CFG				0xE1
#define		READ_UID				0x04

#ifndef TOGGLE
#define TOGGLE(X) X=((X==1)?0:1);
#endif

#ifndef MAX
#define MAX(a, b) ((a < b) ? b : a)
#endif
#ifndef MIN
#define MIN(a, b) ((a > b) ? b : a)
#endif

extern __bit BIT_TMP;
#endif
