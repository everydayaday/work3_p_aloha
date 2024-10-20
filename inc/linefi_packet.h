#ifndef __LINEFI_PACKET__
#define __LINEFI_PACKET__

#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "uart.h"
#include "linefi_packet.h"

#define CRC_START_8 	0xFF

enum {
	CRC_NOT_OK,
	CRC_OK,
	CONV_OK,
	CONV_ERR_TOO_SMALLSIZE,
	CONV_ERR_CRC
};

enum {
	Type_Bcast,
	Type_Ucast,
	Type_Mcast,
	Type_SetAddr,
	Type_SetLED,
	Type_CtrlMotor,
	Type_ReadAddr,
	Type_UpLinkTest,
	Type_None
};

typedef enum {
	ULTMODE_INIT,
	ULTMODE_PREAMBLE,
	ULTMODE_DATA,
	ULTMODE_NO_MANCHESTER,
	ULTMODE_NONE
} uplink_mode_t;

typedef enum {
	ULTxState_INIT,
	ULTxState_START,
	ULTxState_H,
	ULTxState_L,
	ULTxState_Tx,
	ULTxState_NONE
} uplink_tx_state_t;

typedef struct {
	uint8 u8Ver;
	uint8 u8Type;
	uint8 u8Addr;
	uint8 u8Size; // 헤더 포함 총 길이, 5이면 페이로드 없음.
	uint8 u8CRC;
	uint8 * pu8Data; // 길이 [u8Size-5]인 옥텟 스트링
} linefi_packet_t;

uint8 size_linefi_packet(linefi_packet_t * apstLineFiPkt);
UINT8 get_octet_from_linefi(UINT8 * apu8Tmp);
void send_octet_to_linefi(UINT8 au8Data);
void send_linefi_packet(linefi_packet_t * apstLineFiPkt);
uint8 cp_buf2linefipacket(uint8 au8Size, uint8 * apu8RxBuf, linefi_packet_t * apstLineFiPkt);
void print_linefipacket(linefi_packet_t * apstLineFiPkt);
uint8 crc8( uint8 *input_str, uint8 num_bytes, uint8 au8CRC);
void print_raw_packet(uint8 au8Size, uint8 * apu8Data);

#endif
