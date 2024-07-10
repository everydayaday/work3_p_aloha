/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  Date   : Apr/21/2016
//
//
//***********************************************************************************************************

#include "linefi_packet.h"
#include "uart.h"

uint16 gu16Cnt = 0;

const char * __xdata gpcTypeStr[] = {
	"Type_Bcast",
	"Type_Ucast",
	"Type_Mcast",
	"Type_SetAddr",
	"Type_SetLED",
	"Type_CtrlMotor",
	"Type_ReadAddr",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None",
	"Type_None"
};

uint8 size_linefi_packet(linefi_packet_t * apstLineFiPkt)
{
	return apstLineFiPkt->u8Size + sizeof(linefi_packet_t) - sizeof(uint8 *);
}

uint8 calc_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
{
	uint8 u8CRC = crc8((uint8 *)apstLineFiPkt, 4, 0xFF);
	u8CRC = crc8((uint8 *)(apstLineFiPkt->pu8Data), apstLineFiPkt->u8Size, u8CRC);

	return u8CRC;
}

void add_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
{
	uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);
	apstLineFiPkt->u8CRC = u8CRC;
}

uint8 chk_crc_linefi_packet_packet(linefi_packet_t * apstLineFiPkt)
{
	uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);

	if (apstLineFiPkt->u8CRC == u8CRC) {
		return CRC_OK;
	}
	return CRC_NOT_OK;
}

// just wrapper function
UINT8 get_octet_from_linefi(UINT8 * apu8Tmp)
{
	return Receive_Data_From_UART1_nb(apu8Tmp);
}

void send_octet_to_linefi(UINT8 au8Data)
{
	return Send_Data_To_UART1(au8Data);
}

void send_linefi_packet(linefi_packet_t * apstLineFiPkt)
{
	uint8 u8CRC = calc_crc_linefi_packet_packet(apstLineFiPkt);

	uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
	send_octet_to_linefi(*pu8Buf++);
	send_octet_to_linefi(*pu8Buf++);
	send_octet_to_linefi(*pu8Buf++);
	send_octet_to_linefi(*pu8Buf++);
	//send_octet_to_linefi(*pu8Buf++); //CRC
	send_octet_to_linefi(u8CRC); //CRC
	uint8 i;
	for (i=0;i<apstLineFiPkt->u8Size;i++) {
		send_octet_to_linefi(*(apstLineFiPkt->pu8Data+i));
	}
}

uint8 cp_buf2linefipacket(uint8 au8Size, uint8 * apu8RxBuf, linefi_packet_t * apstLineFiPkt)
{
	if (au8Size < 5) {
		return CONV_ERR_TOO_SMALLSIZE;
	}

	uint8 * pu8Buf = (uint8 *) apstLineFiPkt;
	*pu8Buf++ = *apu8RxBuf++;
	*pu8Buf++ = *apu8RxBuf++;
	*pu8Buf++ = *apu8RxBuf++;
	*pu8Buf++ = *apu8RxBuf++;
	*pu8Buf++ = *apu8RxBuf++;
	uint8 i;
	for (i=0;i<apstLineFiPkt->u8Size;i++) {
		apstLineFiPkt->pu8Data[i] = *apu8RxBuf++;
	}

	if (chk_crc_linefi_packet_packet(apstLineFiPkt) == CRC_NOT_OK) {
		return CONV_ERR_CRC;
	}
	return CONV_OK;
}

void print_linefipacket(linefi_packet_t * apstLineFiPkt)
{
	printf_fast_f("-------------------------------\r\n");
	printf_fast_f("Ver : %d\r\n", apstLineFiPkt->u8Ver);
	printf_fast_f("Type: %d(%s)\r\n", apstLineFiPkt->u8Type, gpcTypeStr[apstLineFiPkt->u8Type]);
	//printf_fast_f("Type: %d(%s)\r\n", apstLineFiPkt->u8Type, "kkk");
	//printf_fast_f("Type: %d\r\n", apstLineFiPkt->u8Type);
	printf_fast_f("Addr: %d\r\n", apstLineFiPkt->u8Addr);
	printf_fast_f("Size: %d\r\n", apstLineFiPkt->u8Size);
	printf_fast_f("CRC comp : %d %d\r\n", apstLineFiPkt->u8CRC, calc_crc_linefi_packet_packet(apstLineFiPkt));
	printf_fast_f("DATA: ");
	uint8 i;
	for (i=0;i<apstLineFiPkt->u8Size;i++) {
		printf_fast_f("0x%x ", apstLineFiPkt->pu8Data[i]);
	}
	printf_fast_f("\r\n");
	printf_fast_f("-------------------------------\r\n");
}

const uint8 sht75_crc_table[] = {
    0,   49,  98,  83,  196, 245, 166, 151, 185, 136, 219, 234, 125, 76,  31,  46,
    67,  114, 33,  16,  135, 182, 229, 212, 250, 203, 152, 169, 62,  15,  92,  109,
    134, 183, 228, 213, 66,  115, 32,  17,  63,  14,  93,  108, 251, 202, 153, 168,
    197, 244, 167, 150, 1,   48,  99,  82,  124, 77,  30,  47,  184, 137, 218, 235,
    61,  12,  95,  110, 249, 200, 155, 170, 132, 181, 230, 215, 64,  113, 34,  19,
    126, 79,  28,  45,  186, 139, 216, 233, 199, 246, 165, 148, 3,   50,  97,  80,
    187, 138, 217, 232, 127, 78,  29,  44,  2,   51,  96,  81,  198, 247, 164, 149,
    248, 201, 154, 171, 60,  13,  94,  111, 65,  112, 35,  18,  133, 180, 231, 214,
    122, 75,  24,  41,  190, 143, 220, 237, 195, 242, 161, 144, 7,   54,  101, 84,
    57,  8,   91,  106, 253, 204, 159, 174, 128, 177, 226, 211, 68,  117, 38,  23,
    252, 205, 158, 175, 56,  9,   90,  107, 69,  116, 39,  22,  129, 176, 227, 210,
    191, 142, 221, 236, 123, 74,  25,  40,  6,   55,  100, 85,  194, 243, 160, 145,
    71,  118, 37,  20,  131, 178, 225, 208, 254, 207, 156, 173, 58,  11,  88,  105,
    4,   53,  102, 87,  192, 241, 162, 147, 189, 140, 223, 238, 121, 72,  27,  42,
    193, 240, 163, 146, 5,   52,  103, 86,  120, 73,  26,  43,  188, 141, 222, 239,
    130, 179, 224, 209, 70,  119, 36,  21,  59,  10,  89,  104, 255, 206, 157, 172
};

uint8 crc8( uint8 *input_str, uint8 num_bytes, uint8 au8CRC) 
{
    uint8 a;
    uint8 crc;
	uint8 *ptr;

    crc = au8CRC;
    ptr = input_str;

    if ( ptr != NULL )
        for (a=0; a<num_bytes; a++) {

            crc = sht75_crc_table[(*ptr++) ^ crc];
        }

    return crc;
}  /* crc_8 */

void print_raw_packet(uint8 au8Size, uint8 * apu8Data)
{
	uint8 i;
	printf_fast_f("#%d\r\n", gu16Cnt++);
	printf_fast_f("raw :  ");
	for (i=0;i<au8Size;i++) {
		printf_fast_f("%2d   ", i);
	}
	printf_fast_f("\r\n");
	printf_fast_f("data:");
	for (i=0;i<au8Size;i++) {
		if (*apu8Data < 0x10) {
			printf_fast_f("0x0%x ", *apu8Data++);
		}
		else {
			printf_fast_f("0x%x ", *apu8Data++);
		}
	}
	printf_fast_f("\r\n");
}
