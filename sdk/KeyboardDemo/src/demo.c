/*MIT License
*
*
* Copyright (c) 2018 Digilent
*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the "Software"), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:

*The above copyright notice and this permission notice shall be included in all
*copies or substantial portions of the Software.
*
*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
*AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
*
*LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
*OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*SOFTWARE.
*/
/*
* This file contains a design example using the driver functions of the AXI PS/2
* driver. The project shows the usage of the driver/device in interrupt mode
* to send data to a PS/2 keyboard and also to receive data from a PS/2 keyboard.
*
* This example assumes that no operating system is being used. This example
* also assumes that there is a UART Device and an interrupt controller
* in the hardware system.
*
* The PS/2 driver does not implement the PS/2 command set, the application using
* the driver should implement the required PS/2 commands.
* This example will only work with a PS/2 keyboard. This example will not work
* with a PS/2 mouse, the user needs to implement the required PS/2 command set
* to make it to work with a PS/2 mouse.
*
*
* MODIFICATION HISTORY:
*
 * Ver   Who            Date         Changes
 * ----- -------------- ------------ -----------------------------------------------
 * 1.00  Sergiu Arpadi  2018-Feb-13  First release
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "xstatus.h"
#include "xintc.h"
#include "stdio.h"
#include "axi_ps2.h"
#include "xil_exception.h"
#include "sleep.h"

/************************** Constant Definitions ****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define PS2_DEVICE_ID		XPAR_AXI_PS2_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_AXI_INTC_0_DEVICE_ID
#define INTR_ID				XPAR_AXI_INTC_0_AXI_PS2_0_PS2_INTERRUPT_INTR

#define Ps2Ack 		0xfa
#define Ps2Break 	0xf0

#define KbCapsLed 		0x04
#define KbScrollLed 	0x01
#define KbNumLed 		0x02

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/************************** Function Prototypes *****************************/
u8 KbByteDecode(u8 NewChar);
u8 KeyboardInit (void);
u8 KbWaitReply(u8 Reply);
u8 KbLeds (u8 swLed, u8 swOp);
u8 KbMain(void);
void MB_Sleep(u32 MilliSeconds);
int Ps2IntrExample(XIntc* IntcInstPtr, axi_ps2* Ps2InstPtr,	u16 Ps2DeviceId, u16 Ps2IntrId);
static void Ps2IntrHandler(void *CallBackRef, u32 Event, u32 EventData);
static int Ps2SetupIntrSystem(XIntc* IntcInstPtr, axi_ps2 *Ps2Ptr, u16 IntrId);

/************************** Variable Definitions ****************************/

static axi_ps2 Ps2Inst; 		/* Ps2 driver instance */
static XIntc IntcInst; 		/* Instance of the XIntc driver. */

/*
 * Shared variables used to test the callbacks.
 */
volatile static int RxDataRecv = FALSE; /* Flag to indicate Receive Data */
volatile static int RxError = FALSE; 	/* Flag to indicate Receive Error */
volatile static int RxOverFlow = FALSE; /* Flag to indicate Receive Overflow */
volatile static int TxDataSent = FALSE; /* Flag to indicate Tx Data sent */
volatile static int TxNoAck = FALSE;    /* Flag to indicate Tx No Ack */
volatile static int TimeOut = FALSE;    /* Flag to indicate Watchdog Timeout */
volatile static int TxNumBytes = 0;	/* Number of bytes transmitted */
volatile static int RxNumBytes = 0;     /* Number of bytes received */

u8 KeysDown = 0;
u8 KbInit = TRUE;
u32 buff;

typedef struct {
	volatile u8 Key;
	u8 Break;

	u8 LShift;
	u8 HoldLShift;

	u8 RShift;
	u8 HoldRShift;

	u8 CapsLock;
	u8 HoldCaps;

	u8 ScrollLock;
	u8 HoldScroll;

	u8 NumLock;
	u8 HoldNum;

	u8 KbInitStage;
	u8 KbLeds;

} DispKey;

const  u8 make[] = {	0xAA, 	0xF0, 	0xFA,	0x1C,	0x32,	0x21,	0x23,	0x24,	0x2B,	0x34,	0x33,	0x43,	0x3B,	0x42,	0x4B,
				0x3A,	0x31,	0x44,	0x4D,	0x15,	0x2D,	0x1B,	0x2C,	0x3C,	0x2A,	0x1D,	0x22,	0x35,	0x1A,	0x45,	0x16,
				0x1E,	0x26,	0x25,	0x2E,	0x36,	0x3D,	0x3E,	0x46,	0x0E,	0x4E,	0x55,	0x5D,	0x66,	0x29,	0x0D,	0x58,
				0x12,	0x14,	0x11,	0x59,	0x5A,	0x76,	0x05,	0x06,	0x04,	0x0C,	0x03,	0x0B,	0x83,	0x0A,	0x01,	0x09,
				0x78,	0x07,	0x7E,	0x54,	0x5B,	0x77,	0x7C,	0x71,	0x70,	0x69,	0x72,	0x7A,	0x6B,	0x73,	0x74,	0x6C,
				0x75,	0x7D,	0x7B,	0x79,	0x4C,	0x52,	0x41,	0x49,	0x4A	};

const char * keys[] = {	"init",	"brk",	"ack",	"A",	"B",	"C",	"D",	"E",	"F",	"G",	"H",	"I",	"J",	"K",	"L",
				"M",	"N",	"O",	"P",	"Q",	"R",	"S",	"T",	"U",	"V",	"W",	"X",	"Y",	"Z",	"0",	"1",
				"2",	"3",	"4", 	"5",	"6",	"7",	"8",	"9",	"`",	"-",	"=",	"\\",  "\b \b", " ", "\t", "CAPS",
			"LSHFT", "LCTRL", "LALT", "RSHFT", "\r\n", "ESC",	"F1",	"F2",	"F3",	"F4",	"F5",	"F6",	"F7",	"F8",	"F9",	"F10",
				"F11", "F12", "SCROLL", "[",	"]", 	"NUM",	"KP*",	"KP.",	"KP0",	"KP1",	"KP2",	"KP3",	"KP4",	"KP5",	"KP6",	"KP7",
				"KP8",	"KP9",	"KP-",	"KP+",	";",	"'",	",",	".",	"/",	"a",	"b",	"c",	"d",	"e",	"f",	"g",
				"h",	"i",	"j",    "k",	"l",	"m",	"n",	"o",	"p",	"q",	"r",	"s",	"t",	"u",	"v",	"w",
				"x",	"y",	"z", 	"0",	"1",	"2",	"3",	"4", 	"5",	"6",	"7",	"8",	"9",	"`",	"-",	"=",
			  "\\",  "\b \b", " ", "\t", "CAPS", "LSHFT", "LCTRL", "LALT", "RSHFT", "\r\n", "ESC", "F1",	"F2",	"F3",	"F4",	"F5",
				"F6",	"F7",	"F8",	"F9",	"F10", "F11", "F12",  "SCROLL", "[",	"]", 	"NUM",	"KP*",	"KP.",	"KP0",	"KP1",	"KP2",
				"KP3",	"KP4",	"KP5",	"KP6",	"KP7", "KP8",  "KP9",	"KP-",	"KP+",	";",	"'",	",",	".",	"/",
				};

volatile DispKey KeyInst;

/****************************************************************************
*
* Main function that invokes the PS/2 Interrupt example.
*
*
*****************************************************************************/
int main(void)
{
	int Status;
	axi_ps2_Config *ConfigPtr;

	/*
	 * Initialize the PS/2 driver.
	 */
	ConfigPtr = axi_ps2_LookupConfig(XPAR_AXI_PS2_0_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	axi_ps2_CfgInitialize(&Ps2Inst, ConfigPtr, ConfigPtr->BaseAddress);

	/*
	 * Self Test the PS/2 device.
	 */
	Status = axi_ps2_SelfTest(&Ps2Inst);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the interrupt system.
	 */
	Status = Ps2SetupIntrSystem(&IntcInst, &Ps2Inst, INTR_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Handler.
	 */
	axi_ps2_SetHandler(&Ps2Inst, (axi_ps2_Handler)Ps2IntrHandler, &Ps2Inst);

	/*
	 * Enable the Receive interrupts and the global interrupt in the PS/2
	 * device.
	 */
	axi_ps2_IntrEnable(&Ps2Inst, axi_ps2_IPIXR_RX_ALL);
	axi_ps2_IntrGlobalEnable(&Ps2Inst);

	xil_printf("\r\nPS/2 Keyboard Demo using Interrupt Mode\r\n");

	/*
	 * Initialize the flags that are set in the Interrupt Callback
	 * function.
	 */
	TxDataSent = FALSE;
	TxNumBytes = 0;

	KeyboardInit();

	while (1)
	{
		if (RxDataRecv == TRUE)
			{
			KbMain();
			}
		else ;
	}
	/*
	 * Disable all the PS/2 interrupts and Disable the Global Interrupt.
	 */
	axi_ps2_IntrDisable(&Ps2Inst, axi_ps2_IPIXR_ALL);
	axi_ps2_IntrGlobalDisable(&Ps2Inst);

	return XST_SUCCESS;
}

/****************************************************************************
*
* This function is built around a switch-case statement that decodes the scan
* codes received from the PS/2 device. It calls the init function, toggles
* the PS/2 keyboard LEDs and prints to UART the characters it has interpreted.
*
*
****************************************************************************/

u8 KbMain(void){

	u8 Index = 0;

	Index = KbByteDecode(KeyInst.Key);
	if (Index == 0xff){
		RxDataRecv = FALSE;
		xil_printf("\r\nUnknown Key!!");
		return 0;
	}

	switch (Index) {

		case 0	: KeyboardInit(); break;

		case 1	: { //ps2break
			KeyInst.Break = TRUE;
			RxDataRecv = FALSE;
			KeyInst.HoldCaps = FALSE;
			KeyInst.HoldScroll = FALSE;
			KeyInst.HoldNum = FALSE;
			KeyInst.HoldLShift = FALSE;
			KeyInst.HoldRShift = FALSE;
			return 0;
		} break;

		case 2	: { //ps2ack
			RxDataRecv = FALSE;
			return 0;
		}break;

		case 46 : { //capslock
			if ( KeyInst.HoldCaps == FALSE && KeyInst.Break == FALSE )
			{
				if (KeyInst.CapsLock == TRUE)
					{
					KeyInst.CapsLock = FALSE;
					KbLeds(KbCapsLed, 0);
					KeyInst.HoldCaps = TRUE;
					break;
					}
				else
					{
					KeyInst.CapsLock = TRUE;
					KbLeds(KbCapsLed, 1);
					KeyInst.HoldCaps = TRUE;
					break;
					}
			}
			break;
		}

		case 65 : { //scrolllock
			if ( KeyInst.HoldScroll == FALSE && KeyInst.Break == FALSE )
			{
				if (KeyInst.ScrollLock == TRUE)
					{
					KeyInst.ScrollLock = FALSE;
					KbLeds(KbScrollLed, 0);
					KeyInst.HoldScroll = TRUE;
					break;
					}
				else
					{
					KeyInst.ScrollLock = TRUE;
					KbLeds(KbScrollLed, 1);
					KeyInst.HoldScroll = TRUE;
					break;
					}
			}
			break;
		}

		case 68 : { //numlock
			if ( KeyInst.HoldNum == FALSE && KeyInst.Break == FALSE )
			{
				if (KeyInst.NumLock == TRUE)
					{
					KeyInst.NumLock = FALSE;
					KbLeds(KbNumLed, 0);
					KeyInst.HoldNum = TRUE;
					break;
					}
				else
					{
					KeyInst.NumLock = TRUE;
					KbLeds(KbNumLed, 1);
					KeyInst.HoldNum = TRUE;
					break;
					}
			}
			break;
		}

		case 47 : { //lshift
			if (KeyInst.HoldLShift == FALSE)
			{
				if (KeyInst.LShift == FALSE  )
					{
					KeyInst.LShift = TRUE;
					KeyInst.HoldLShift = TRUE;
					break;
					}
				else
					{
					KeyInst.LShift = FALSE;
					break;
					}
			}
			break;
		}

		case 50 : { //rshift
			if (KeyInst.HoldRShift == FALSE)
			{
				if (KeyInst.RShift == FALSE  )
					{
					KeyInst.RShift = TRUE;
					KeyInst.HoldRShift = TRUE;
					break;
					}
				else
					{
					KeyInst.RShift = FALSE;
					break;
					}
			}
			break;
		}

		default : {
			if (KeyInst.Break == FALSE)
				xil_printf(keys[Index+(85*!((KeyInst.RShift || KeyInst.LShift) != (KeyInst.CapsLock)))]);
			//F1..F12
		}
	}
	KeyInst.Break = FALSE;
	RxDataRecv = FALSE;

	return 0;
}

/****************************************************************************
*
*This function returns the index of the character that matches the scan code
*received as a parameter
*
****************************************************************************/

u8 KbByteDecode(u8 NewChar){
	u8 Index = 0;
	while(Index < 200){
	 if (make[Index] == NewChar)
		 break;
	 else Index++;

	 if (Index == 200-1)
		 return 0xff;
	}
	return Index;
}

/****************************************************************************
*
*Keyboard initialization function. Reads device ID, sets type rate (500ms),
*turns off LEDs
*
****************************************************************************/

u8 KeyboardInit (void){

	KeyInst.Key = 0;
	KeyInst.KbInitStage = 0;
	KeyInst.Break = 0;

	KeyInst.LShift = FALSE;
	KeyInst.HoldLShift = FALSE;

	KeyInst.RShift = FALSE;
	KeyInst.HoldRShift = FALSE;

	KeyInst.CapsLock = FALSE;
	KeyInst.HoldCaps = FALSE;

	KeyInst.ScrollLock = FALSE;
	KeyInst.HoldScroll = FALSE;

	KeyInst.NumLock = FALSE;
	KeyInst.HoldNum = FALSE;

	KeyInst.KbLeds = 0;
	KeysDown = 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xED);
	if(KbWaitReply(Ps2Ack))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, KeyInst.KbLeds);
	if(KbWaitReply(Ps2Ack))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	MB_Sleep(500);

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xF2);
	if(KbWaitReply(Ps2Ack))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	if(KbWaitReply(0xAB))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	if(KbWaitReply(0x83))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xED);
	if(KbWaitReply(Ps2Ack))
		KeyInst.KbInitStage++;
	else
		return 0;

	RxDataRecv = FALSE;

	KeyInst.KbLeds = KbNumLed | KbCapsLed | KbScrollLed;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, KeyInst.KbLeds);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	MB_Sleep(500);

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xED);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	KeyInst.KbLeds = 0;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, KeyInst.KbLeds);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xF3);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0x20);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xF4);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xF3);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0);
	if(KbWaitReply(Ps2Ack))
			KeyInst.KbInitStage++;
	else
		return 0;
	RxDataRecv = FALSE;

	return 1;
}

/****************************************************************************
*
*This function waits for the PS/2 keyboard to reply with a certain code, given
*as parameter.
*
****************************************************************************/

u8 KbWaitReply(u8 Reply){
	while (RxDataRecv == FALSE) {;}
	if (KeyInst.Key != Reply)
		return 0;
	else
		return 1;
}

/****************************************************************************
*
* This funciton turns on or off an LED on the PS/2 keyboard. The LED can be
* selected by using one of the following defines:
*
* #define KbCapsLed 		0x04
* #define KbScrollLed 		0x01
* #define KbNumLed 			0x02
*
* The second parameter specifies the action:
*
* 0 turns off the LED
* 1 turns on the LED
*
****************************************************************************/

u8 KbLeds (u8 swLed, u8 swOp){
	if (swOp == 1){
		KeyInst.KbLeds |= swLed;
		axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xED);
		axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, KeyInst.KbLeds);
	}
	else
		if (swOp == 0){
			KeyInst.KbLeds &= ~swLed;
			KeyInst.KbLeds &= 7;
			axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, 0xED);
			axi_ps2_SendByte(Ps2Inst.Ps2Config.BaseAddress, KeyInst.KbLeds);
		}
	return 1;
}

/*****************************************************************************/
/**
*
* This function is the Callback for the PS/2 device.
* It will be called by the processor whenever an interrupt is asserted
* by the device to handle the following interrupts :
*	- Receive Data Interrupt
*	- Receive Error Interrupt
*	- Receive Overflow Interrupt
*	- Transmit Data Interrupt
*	- Transmit No ACK Interrupt
*	- Watchdog Timeout Interrupt
*
* @param 	CallBackRef is a callback reference passed in by the upper layer
*		when setting the handler, and is passed back to the upper layer
* 		when the handler is called.
* @param	IntrMask is a bit mask indicating the event interrupts that have
*		occurred. Use the defines AxiPs2_IPIXR_* in AxiPs2_l.h to interpret
*		the interrupts that have occurred:
*		- AxiPs2_IPIXR_RX_FULL for Receive Data Interrupt
*		- AxiPs2_IPIXR_RX_ERR for Receive Error Interrupt
*		- AxiPs2_IPIXR_RX_OVF for Receive Overflow Interrupt
*		- AxiPs2_IPIXR_TX_ACK for Transmit Data Interrupt
*		- AxiPs2_IPIXR_TX_NOACK for Transmit No ACK Interrupt
* @param 	ByteCount contains the number of bytes sent or received at the
* 		time of the call.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void Ps2IntrHandler(void *CallBackRef, u32 IntrMask, u32 ByteCount)
{
	axi_ps2 *Ps2Ptr = NULL;

	Ps2Ptr = (axi_ps2 *) CallBackRef;

	if (IntrMask & axi_ps2_IPIXR_RX_FULL) {
		/*
		 * Data is Received.
		 */
		if (RxDataRecv == FALSE)
		{
			KeyInst.Key = axi_ps2_RecvByte(Ps2Ptr->Ps2Config.BaseAddress);
			RxDataRecv = TRUE;
		}
	}

	if (IntrMask & axi_ps2_IPIXR_RX_ERR) {
		/*
		 * Receive Error.
		 */
		xil_printf ("\r\nRxError");
		RxError = TRUE;
	}

	if (IntrMask & axi_ps2_IPIXR_RX_OVF) {
		/*
		 * Receive overflow.
		 */
		xil_printf ("\r\nRxOverFlow");
		RxOverFlow = TRUE;
	}

	if (IntrMask & axi_ps2_IPIXR_TX_ACK) {
		/*
		 * Transmission of the specified data is completed.
		 */
//		xil_printf ("\r\nBytesSent");
		TxDataSent = TRUE;
		TxNumBytes = ByteCount;
	}

	if (IntrMask & axi_ps2_IPIXR_TX_NOACK) {
		/*
		 * Transmit NO ACK.
		 */
		xil_printf ("\r\nNACK");
		TxNoAck = TRUE;
	}

	if (IntrMask & axi_ps2_IPIXR_WDT_TOUT) {
		/*
		 * Transmit Timeout.
		 */
		TimeOut = TRUE;
	}
}

/****************************************************************************/
/**
*
* This function sets up the interrupt system so interrupts can occur for the
* Ps2. The function is application specific since the actual system may or may
* not have an interrupt controller. The Ps2 device could be directly connected
* to a processor without an interrupt controller.
* The user should modify this function to fit the application.
*
* @param	IntcInstPtr is a pointer to the Interrupt Controller
*		driver Instance.
* @param	Ps2Ptr is a pointer to the driver instance of the Ps2 device.
*		which is going to be connected to the interrupt controller
* @param	IntrId is XPAR_<INTC_instance>_<PS2_instance>_VEC_ID value
*		from xparameters.h.
*
* @return	XST_SUCCESS if successful, or XST_FAILURE.
*
* @note		None.
*
*
****************************************************************************/
static int Ps2SetupIntrSystem(XIntc* IntcInstPtr, axi_ps2 *Ps2Ptr, u16 IntrId )
{
	int Status;

	/*
	 * Initialize the interrupt controller driver so that it's ready to use.
	 */
	Status = XIntc_Initialize(IntcInstPtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the handler that will be called when an interrupt
	 * for the device occurs, the handler defined above performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(IntcInstPtr,
		 		IntrId,
				(XInterruptHandler) axi_ps2_IntrHandler,
				Ps2Ptr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller so interrupts are enabled for all
	 * devices that cause interrupts. Specify real mode so that the PS/2
	 * device can cause interrupts through the interrupt controller.
	 */
	Status = XIntc_Start(IntcInstPtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for the Ps2 device.
	 */
	XIntc_Enable(IntcInstPtr, IntrId);

	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler) XIntc_InterruptHandler,
				IntcInstPtr);

	/*
	 * Enable the exceptions.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

