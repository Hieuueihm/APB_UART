///*
// * main.c
// *
// *  Created on: Feb 29, 2024
// *      Author: Truong
// */
//
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include <stdio.h>
//#include "covid1.h"
#include "covid2.h"
#include "sleep.h"
#include "conv2d.h"
#include "max_pooling.h"

#define DMA_CONV_BASEADDR XPAR_AXI_DMA_0_BASEADDR
#define CONV_BASE_ADDRESS XPAR_CONV_UNIT_0_S_AXI_BASEADDR

#define DMA_MAXP_BASEADDR XPAR_AXI_DMA_1_BASEADDR
#define MAX_POOLING_BASE_ADDRESS XPAR_MAX_POOLING_0_S_AXI_BASEADDR;

#define IMAGE_BUFF_BASEADDR XPAR_IMAGE_BUFFER_0_BASEADDR

Con2D_Type *Con2D = (Con2D_Type*) CONV_BASE_ADDRESS;
Max_pooling_type* Max_pooling = (Max_pooling_type*) MAX_POOLING_BASE_ADDRESS;
/***************************** Include Files *********************************/

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif


#ifdef XPAR_INTC_0_DEVICE_ID
 #include "xintc.h"
#else
 #include "xscugic.h"
#endif

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
		DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define RX_INTR_ID		XPAR_INTC_0_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID		XPAR_INTC_0_AXIDMA_0_MM2S_INTROUT_VEC_ID
#else
#define RX_INTR_ID		XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID		XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC		XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
 #define INTC		XScuGic
 #define INTC_HANDLER	XScuGic_InterruptHandler
#endif


/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

#define TEST_START_VALUE	0xC
/*
 * Buffer and Buffer Descriptor related constant definition
 */
#define MAX_PKT_LEN		0x100

#define NUMBER_OF_TRANSFERS	10

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

static int CheckData(int Length, u8 StartValue);
static void TxIntrHandler(void *Callback);
static void RxIntrHandler(void *Callback);




static int SetupIntrSystem(INTC * IntcInstancePtr,
			   XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem(INTC * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId);



/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */


static XAxiDma AxiDma;		/* Instance of the XAxiDma */

static INTC Intc;	/* Instance of the Interrupt Controller */

/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile int TxDone;
volatile int RxDone;
volatile int Error;

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the interrupt test. It does the following:
*	Set up the output terminal if UART16550 is in the hardware build
*	Initialize the DMA engine
*	Set up Tx and Rx channels
*	Set up the interrupt system for the Tx and Rx interrupts
*	Submit a transfer
*	Wait for the transfer to finish
*	Check transfer status
*	Disable Tx and Rx interrupts
*	Print test status and exit
*
* @param	None
*
* @return
*		- XST_SUCCESS if example finishes successfully
*		- XST_FAILURE if example fails.
*
* @note		None.
*
******************************************************************************/

typedef struct Image_type {
	uint32_t Reset;
}Image_type;

#define IMAGE_BUFF_RESET (1<<0)

Image_type* Image_buf = (Image_type*) IMAGE_BUFF_BASEADDR;

#define MY_AXI_FIFO_BASE_ADDRESS 0x43C30000
#define FIFO_Reset 0x00000008
#define FIFO_Counter 0x00000004
#define FIFO_Threash_Hold 0x00000000

void fifo_reset(){
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Reset ,0x00000001);
}
void fifo_reset_init(uint32_t threashold){
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Reset ,0x00000001);
	while(XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter) != 0){}
	printf("Value of counter register after reset: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter));
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Reset ,0x00000000);
	printf("For check reset register: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Reset));
	// Write to threashold register
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Threash_Hold ,threashold);
	printf("Value of threashold register, for debug purpose: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Threash_Hold));
}
void image_buffer_reset() {
	Image_buf->Reset = 0;
	Image_buf->Reset |= IMAGE_BUFF_RESET;
}

void print_Con2d_registers() {
	print("Show AXI register \n");
	xil_printf("%d \n", Con2D->Status);
	xil_printf("%d \n", Con2D->Control);
	xil_printf("%d \n", Con2D->BCR);
	xil_printf("%d \n", Con2D->IAddr);
	xil_printf("%d \n", Con2D->M2minus1);
	xil_printf("%d \n", Con2D->Address_and_Coeff);
}

void conv2d_initial_fixed_paras() {
    uint32_t data = 0;

    Con2D->IAddr = 0;

    /*
     * Note: No need to turn on and off between times we put the parameter in Address_and_Coeff
     * Because both the weight and address be transmitted at the same time
     */
    Con2D->Control |= C_WE_IN;  // allow write to weight

    data = 0;
    data |= K_ADDR;
    data |= K << COEFF_IN_LOW;
    Con2D->Address_and_Coeff = data;

    data = 0;
    data |= K2_MINUS1_ADDR;
    data |= K2_MINUS1 << COEFF_IN_LOW;
    Con2D->Address_and_Coeff = data;

    data = 0;
    data |= K2_MINUSK_ADDR;
    data |= K2_MINUSK << COEFF_IN_LOW;
    Con2D->Address_and_Coeff = data;

	Con2D->Control &= ~C_WE_IN;
}

void conv2d_change_size_paras(con2d_size_paras paras) {
    uint32_t data = 0;
    // set BCR register
    data |= paras.B;
    data |= paras.C << C_LOW;
    data |= paras.R << R_LOW;
    Con2D->BCR = data;

    // set M^2 - 1
    Con2D->M2minus1 = paras.M2minus1;
}

/*
 * 	This function is only called one time at the beginning
 */
void conv2d_reset() {
    // reset all control paras
    Con2D->Control = 0;
    // Then turn on reset bit (negative reset occurs at previous command)
    Con2D->Control |= RESET;
}

void conv2d_start() {
    // Enable InputDmac & Convolution
    Con2D->Control |= INPUTDMAC_START;
    Con2D->Control |= CONV2D_START;
    Con2D->Control &= ~INPUTDMAC_START;
	Con2D->Control &= ~CONV2D_START;
}

/*
    Change weight only when compute inside a convolution layer
*/
void conv2d_change_weight(uint8_t* weight) {
    Con2D->Control |= C_WE_IN;
    for (uint8_t i = 0; i <= K2_MINUS1; i++) {
        uint32_t data = 0;
        data |= (WEIGHT_STR_ADDR + i);
        data |= weight[i] << COEFF_IN_LOW;
        Con2D->Address_and_Coeff = data;
    }
    Con2D->Control &= ~C_WE_IN;
}


u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}

/*
 * input_size, output_size : bytes
 * curently:
 * input_size = image_width * image_height * sizeof(uint8_t)
 * output_size = image_width * image_height * sizeof(uint32_t)
*/
#define LOG 1
uint8_t conv2d_compute(XAxiDma* Conv_Dma, XAxiDma_Config *Conv_Dma_Config, uint8_t* weight, uint8_t* input, uint32_t input_size, uint32_t* output, uint32_t output_size) {
	printf("412414141324\n");
	conv2d_reset();
	image_buffer_reset();
    conv2d_change_weight(weight);
    conv2d_start();
    fifo_reset_init((output_size/4)-1);
    printf("test\n");
    uint8_t status = XAxiDma_CfgInitialize(Conv_Dma, Conv_Dma_Config);
	if(status != XST_SUCCESS){
		print("Con2d compute: dma initialization failed\n");
		return 1;
	}

	Xil_DCacheFlushRange((u32)input, input_size);
	Xil_DCacheInvalidateRange((u32)input, input_size);
	Xil_DCacheFlushRange((u32)output, output_size);
	status = XAxiDma_SimpleTransfer(Conv_Dma, (u32)output, output_size, XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(Conv_Dma, (u32)input, input_size, XAXIDMA_DMA_TO_DEVICE);
	if(status != XST_SUCCESS){
		print("Con2d compute: dma transmisttance initialization failed\n");
		return 1;
	}
	/* status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
	while((status & 0x00000002) == 0){
		status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
	}
	status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
	while((status & 0x00000002) == 0){
		status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
	} */
	while (!TxDone && !RxDone && !Error) {
				/* NOP */
		}
	printf("Status of tx and rx channel: %x %x",XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x04),XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x34));
	printf("Number of tx and rx byte:  %x %x",XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x28),XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x58));
	Xil_DCacheInvalidateRange((u32)output, output_size);
	if (LOG) {
		print("conv2d_compute successes, log some entry: \n");
		xil_printf("[ ");
		for(uint8_t i=0; i<3; i++){
			xil_printf("[ ");
			for(uint8_t j=0; j<3; j++) {
				xil_printf("%d ,",output[i*3+j]);
			}
			if (i==2) {
				xil_printf("]]\n");
			} else {
				xil_printf("]\n");
			}
		}
	}
	printf("Start polling to wait for interurpt\n");
	return 0;
}

uint8_t conv_dma_initialize(XAxiDma* Conv_Dma, XAxiDma_Config *Conv_Dma_Config) {
	Conv_Dma_Config = XAxiDma_LookupConfigBaseAddr(DMA_CONV_BASEADDR);
	uint8_t status = XAxiDma_CfgInitialize(Conv_Dma, Conv_Dma_Config);
	if(status != XST_SUCCESS){
		xil_printf("CONV DMA initialization failed\n");
		return 1;
	}
	XAxiDma_IntrDisable(Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);
	xil_printf("CONV DMA initialization success..\n");
	return 0;
}

#define printf xil_printf

uint8_t chan_ind;
uint8_t ker_ind;
uint8_t i;
uint8_t j; // local
uint8_t debug = 0;

int32_t out_buf[MAX_ROW * MAX_COL];
int32_t added_buf[MAX_CHANNEL_NUM][MAX_ROW * MAX_COL];
//int32_t hardware_buf[IMG_ROW * IMG_COL];
int8_t layer_output[MAX_CHANNEL_NUM][IMG_ROW * IMG_COL];

int8_t quantize(int32_t value)
{
    // Perform quantization operation here
    float quant = value*quantize_scale[TEST_CHANEL] - 128;
    if (quant < -128) {
    	return -128;
    } else if(quant > 127) {
    	return 127;
    } else {
    	return (int8_t)(quant);
    }
}

void convolution(XAxiDma* Conv_Dma,
                 XAxiDma_Config* Conv_Dma_Config,
                 int row_in,
                 int col_in,
                 int row_ker,
                 int col_ker,
                 int8_t in[row_in*col_in],
                 int8_t kernel[row_ker*col_ker])
{
	uint32_t row_out = row_in - 2;
	uint32_t col_out = col_in - 2;
    uint32_t ouput_size = row_out*col_out*sizeof(uint32_t);

    conv2d_compute(Conv_Dma, Conv_Dma_Config, kernel, in, row_in*col_in*sizeof(uint8_t), out_buf, ouput_size);
}
void test_convolution(
				 XAxiDma* Conv_Dma,
				 XAxiDma_Config *Conv_Dma_Config,
				 int row_in,
                 int col_in,
                 int row_ker,
                 int col_ker,
                 int8_t in[row_in*col_in],
                 int8_t kernel[row_ker*col_ker])
{
    uint8_t m, n;
    uint16_t out_buf_ind = 0;
    int32_t sum;

    // Loop through each element in the input matrix
    for (i = 0; i <= row_in - row_ker; i++)
    {
        for (j = 0; j <= col_in - col_ker; j++)
        {
            sum = 0;
            // Perform convolution
            for (m = 0; m < row_ker; m++)
            {
                for (n = 0; n < col_ker; n++)
                {
                    sum += in[(i + m)*col_in + j + n] * kernel[n*row_ker + m];
                }
            }
            // Store the result
            out_buf[out_buf_ind++] = sum;
        }
    }
}
void printInt32Matrix(uint8_t row, uint8_t col, int32_t matrix[row * col])
{

    for (i = 0; i < row; i++)
    {
        printf("[");
        for (j = 0; j < col; j++)
        {
            printf("%d, ", matrix[i*col + j]);
        }
        printf("],\n");
    }
    printf("\n");
}
void printInt8Matrix(uint8_t row, uint8_t col, int8_t matrix[row * col])
{

    for (i = 0; i < row; i++)
    {
        printf("[");
        for (j = 0; j < col; j++)
        {
            printf("%d, ", matrix[i*col + j]);
        }
        printf("],\n");
    }
    printf("\n");
}

void printKernel(uint8_t row, uint8_t col, int8_t kernel[row * col])
{
    uint8_t m, n;
    for (m = 0; m < row; m++)
    {
        printf("[");
        for (n = 0; n < col; n++)
        {
            printf("%d, ", kernel[n*row + m]);
        }
        printf("],\n");
    }
    printf("\n");
}

void printLayerOutput(uint8_t channel, uint8_t row, uint8_t col)
{
    for (i = 0; i < row; i++)
    {
        printf("[");
        for (j = 0; j < col; j++)
        {
            printf("%d, ", layer_output[channel][i*col + j]);
        }
        printf("],\n");
    }
    printf("\n");
}

void writeToOutputLayer(uint8_t channel, uint8_t row_out, uint8_t col_out)
{
    for (i = 0; i < row_out; i++)
    {
        for (j = 0; j < col_out; j++)
        {
            layer_output[channel][i*col_out + j] = quantize(added_buf[channel][i*col_out + j]);
            //------------------[Perform quantization here]---------------
        }
    }
}

void addToBuffer(uint8_t channel, uint8_t row_out, uint8_t col_out)
{
    for (i = 0; i < row_out; i++)
    {
        for (j = 0; j < col_out; j++)
        {
            added_buf[channel][i*col_out + j] += out_buf[i * col_out + j];
        }
    }
}

void clearAddedBuffer(uint8_t channels, uint8_t row, uint8_t col) {
    for (i = 0; i < channels; i++) {
        for (j = 0; j < row; j++) {
            for (uint8_t k = 0; k < col; k++) {
                added_buf[i][j*col + k] = 0;
            }
        }
    }
}

void channelActivation(uint8_t channel, uint8_t row, uint8_t col, int32_t bias)
{
    for (i = 0; i < row; i++)
    {
        for (j = 0; j < row; j++)
        {
            added_buf[channel][i*col + j] += bias;

            // ReLU
            // if (added_buf[i][j] < 0) {
            //     added_buf[i][j] = 0;
            // }
        }
    }
}

void loadImage(uint8_t channels, uint8_t img_row, uint8_t img_col, int8_t in_img[channels][img_row*img_col])
{
    for (chan_ind = 0; chan_ind < channels; chan_ind++)
    {
        for (i = 0; i < img_row; i++)
        {
            for (j = 0; j < img_col; j++)
            {
                layer_output[chan_ind][i*img_col + j] = in_img[chan_ind][i*img_col + j];
            }
        }
    }
}

/*
    channel_num: number of input channels
    ker_num: number of kernels = output channels (in a layer)
    row_in, col_in: input size
    row_ker, col_ker: kernel size
    kernel: kernels for 1 layer
    bias: bias for 1 layer
*/
void convLayerPass(
				   XAxiDma* Conv_Dma,
				   XAxiDma_Config *Conv_Dma_Config,
				   uint8_t channel_num,
                   uint8_t ker_num,
                   uint8_t row_in,
                   uint8_t col_in,
                   uint8_t row_ker,
                   uint8_t col_ker,
                   int8_t kernel[channel_num][ker_num][row_ker * col_ker],
                   int32_t bias[])
{

    uint8_t row_out = row_in - 2;
    uint8_t col_out = col_in - 2;

    clearAddedBuffer(channel_num, row_out, col_out);

    con2d_size_paras paras;
	paras.B = row_in - 2;
	paras.C = col_in;
	paras.R = 3;
	paras.M2minus1 = (row_in - 2) * (col_in - 2) - 1;
    conv2d_change_size_paras(paras);



    for (chan_ind = 0; chan_ind < channel_num; chan_ind++)
    {
        for (ker_ind = 0; ker_ind < ker_num; ker_ind++)
        {
            convolution(Conv_Dma, Conv_Dma_Config, row_in, col_in, row_ker, col_ker, layer_output[chan_ind], kernel[chan_ind][ker_ind]);
//            test_convolution(Conv_Dma, Conv_Dma_Config, row_in, col_in, row_ker, col_ker, layer_output[chan_ind], kernel[chan_ind][ker_ind]);
            addToBuffer(ker_ind, row_out, col_out);
        }
    }

    for (ker_ind = 0; ker_ind < ker_num; ker_ind++)
    {
        channelActivation(ker_ind, row_out, col_out, bias[ker_ind]);
        writeToOutputLayer(ker_ind, row_out, col_out);
    }
}

u32 a[13] = {0x03020100, 0x07060504, 0x0b0a0908, 0x0f0e0d0c, 0x13121110, 0x17161514, 0x1b1a1918,
				0x1f1e1d1c, 0x23222120, 0x27262524, 0x2b2a2928, 0x2f2e2d2c, 0x33323130};
u32 b[25];

void max_polling_innitial(uint8_t width, uint8_t height) {
    // reset
    Max_pooling->Control = 0;
    // Disable reset
    Max_pooling->Control |= MP_RESET;

    uint32_t data = 0;
    data |= width << MP_W_LOW;
    data |= height << MP_H_LOW;
    data |= 2 << MP_X_POOL_LOW;
    data |= 2 << MP_Y_POOL_LOW;
    Max_pooling->Size_Paras = data;

    Max_pooling->Control |= MP_START;
    Max_pooling->Control &= ~MP_START;

}

/*
	Warning: W and H are sizes of output (NOT input)
*/
#define MAXP_TYPE int8_t
#define MAXP_LOG 1
uint8_t maxp_compute(XAxiDma* MaxP_Dma, XAxiDma_Config *MaxP_Dma_Config, uint8_t H, uint8_t W, MAXP_TYPE* input, MAXP_TYPE* output) {
	max_polling_innitial(W, H);

	uint32_t input_size = W * H * sizeof(MAXP_TYPE) * 4;
	uint32_t output_size = W * H * sizeof(MAXP_TYPE);

	uint8_t status = XAxiDma_CfgInitialize(MaxP_Dma, MaxP_Dma_Config);
	if(status != XST_SUCCESS){
		xil_printf("maxp_compute: dma initialization failed\n");
		return 1;
	}

	Xil_DCacheFlushRange((u32)input, input_size);
	status = XAxiDma_SimpleTransfer(MaxP_Dma, output, output_size, XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(MaxP_Dma, input, input_size, XAXIDMA_DMA_TO_DEVICE);
	if(status != XST_SUCCESS){
		xil_printf("maxp_compute: dma transmisttance initialization failed\n");
		return 1;
	}
	status = checkHalted(DMA_MAXP_BASEADDR, 0x4) == 1 && checkHalted(DMA_MAXP_BASEADDR, 0x34) == 1;
	while( status != 1) {
		status = checkHalted(DMA_MAXP_BASEADDR, 0x4) != 1 || checkHalted(DMA_MAXP_BASEADDR, 0x34);
	}

	Xil_DCacheFlushRange(output, output_size);
	Xil_DCacheInvalidateRange(output, output_size);

	if (MAXP_LOG) {
		xil_printf("maxp_compute successed: \n[");
		for(uint32_t i = 0; i < H; i++) {
			for (uint32_t j = 0; j < W; j++) {
				xil_printf("%d, ", output[i*W+j]);
			}
			xil_printf("\n");
		}
		xil_printf("]\n");
	}
	return 0;
}

int main()
{
		u32 status;
		uint32_t tempt;
		XAxiDma_Config *Conv_Dma_Config;
		XAxiDma Conv_Dma;
		XAxiDma_Config *MaxP_Dma_Config;
		XAxiDma MaxP_Dma;

		/*
		 * Initial conv dma
		 */
	    Conv_Dma_Config = XAxiDma_LookupConfigBaseAddr(DMA_CONV_BASEADDR);
		status = XAxiDma_CfgInitialize(&Conv_Dma, Conv_Dma_Config);

		if(status != XST_SUCCESS){
			print("CONV DMA initialization failed\n");
			return 1;
		}
		print("CONV DMA initialization success..\n");
		/* XAxiDma_IntrDisable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
								XAXIDMA_DEVICE_TO_DMA);
		XAxiDma_IntrDisable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE); */
		/* Set up Interrupt system  */
		status = SetupIntrSystem(&Intc, &Conv_Dma, TX_INTR_ID, RX_INTR_ID);
		if (status != XST_SUCCESS) {

			xil_printf("Failed interrupt setup\r\n");
			return XST_FAILURE;
		}

		/* Disable all interrupts before setup */

		XAxiDma_IntrDisable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);

		XAxiDma_IntrDisable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
					XAXIDMA_DEVICE_TO_DMA);

		/* Enable all interrupts */
		XAxiDma_IntrEnable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
								XAXIDMA_DMA_TO_DEVICE);


		XAxiDma_IntrEnable(&Conv_Dma, XAXIDMA_IRQ_ALL_MASK,
								XAXIDMA_DEVICE_TO_DMA);


		/* Initialize flags before start transfer test  */
		TxDone = 0;
		RxDone = 0;
		Error = 0;
		/*
		 * Initial conv IP
		 */
		conv2d_initial_fixed_paras();

//--------------------------------------- CONVOLUTION SIMPLE TEST ----------------------------------
		uint8_t w[] = {0,1,2,3,4,5,6,7,8};
//		uint8_t w2[] = {2,3,4,5,6,7,8,9,10};
//		uint8_t w3[] = {0, -1,-2,-3,-4,-5,-6,-7, -9};
//		uint8_t w4[] = {0, -1,-2,-3,-4,-5,-6,-7,-8};
//		uint8_t w5[] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
//		con2d_size_paras default_paras;
//		default_paras.B = 3;
//		default_paras.C = 5;
//		default_paras.R = 3;
//		default_paras.M2minus1 = 8;
//		conv2d_change_size_paras(default_paras);
//
//		conv2d_compute(&Conv_Dma, Conv_Dma_Config, w, a, 7*sizeof(u32), b, 9*sizeof(u32));
//--------------------------------------------------------------------------------------------------

//--------------------------------------- CALCULATE A CONVOLUTION LAYER THEN A MAXPOOLING -----------
/*
 * 3 input channel
 * 16 ouput channel
 * input image size : 50 * 70
 * input maxpooling size : 48 * 68
 * output maxpooling size : 24 * 34
 */
/*
 * Chu y:tinh toan dang dung cho 50*70 nhung cho kich thuoc lon hon dang gap van de (DMA or designed IP ?)
 * Max-pooling dang tinh toan tren so khong dau, nen de chinh xac can tinh max-pooling TRUOC khi cong them diem 0 (-128)
 * O day chi la demo max-pooling - tuc dang maxpooling SAU khi công them diem 0 (-128), -
 * 				khi so sanh voi so am, neu 4 so cung am, so sanh van dung -
 * 						nhung neu co so duong, so am lon nhat van se duoc chon.
 */
//    loadImage(CONV_1_INPUT_CHANEL_NUM, CONV_1_INPUT_HEIGHT, CONV_1_INPUT_WIDTH, conv_1_input);
//    convLayerPass(
//        			  &Conv_Dma,
//    				  Conv_Dma_Config,
//					  CONV_1_INPUT_CHANEL_NUM,
//					  CONV_1_OUTPUT_CHANNEL_NUM,
//					  CONV_1_INPUT_HEIGHT,
//					  CONV_1_INPUT_WIDTH,
//                      3,
//                      3, //kernel size
//					  conv_1_weights,
//					  bias);
//    printLayerOutput(TEST_CHANEL, CONV_1_INPUT_HEIGHT - 2, CONV_1_INPUT_WIDTH - 2);
//
//	MaxP_Dma_Config = XAxiDma_LookupConfigBaseAddr(DMA_MAXP_BASEADDR);
//	status = XAxiDma_CfgInitialize(&MaxP_Dma, MaxP_Dma_Config);
//
//	if(status != XST_SUCCESS){
//		print("MAXP DMA initialization failed\n");
//		return 1;
//	}
//	print("MAXP DMA initialization success..\n");
//	XAxiDma_IntrDisable(&MaxP_Dma, XAXIDMA_IRQ_ALL_MASK,
//							XAXIDMA_DEVICE_TO_DMA);
//	XAxiDma_IntrDisable(&MaxP_Dma, XAXIDMA_IRQ_ALL_MASK,
//						XAXIDMA_DMA_TO_DEVICE);
//
//	int32_t out[24*34];
////	maxp_compute(XAxiDma* MaxP_Dma, XAxiDma_Config *MaxP_Dma_Config, uint8_t H, uint8_t W, MAXP_TYPE* input, MAXP_TYPE* output)
//	maxp_compute(&MaxP_Dma, MaxP_Dma_Config, 24, 34, layer_output[TEST_CHANEL], out);
//--------------------------------------------------------------------------------------------------


//----------------------- FIXING: CAN'T CALCULATE CONVOLUTION FOR 62 * 80 IMAGE --------------------
/*
 * Input size:
 * 62 * 70 : yep
 * 63 * 70 : Nope
 * 62 * 71 : Nope
 * 65 * 65 : yep
 * 65 * 66 : yep
 * 66 * 66 : nope
 * 65 * 67 : yep
 * 65 * 68: nope
 * 67 * 65: yep
 * 68 * 65: nope
 */
	int32_t out[100*100];
	int8_t in[100*100];

	for(int i = 0; i< 10000; i++) {
		in[i] = i;
		out[i] = 1;
	}

	uint16_t input_height = 10;
	uint16_t input_width = 10;

	con2d_size_paras default_paras;
	default_paras.B = input_height - 2;  // 2 = KERNEL_SIZE - 1
	default_paras.C = input_width;
	default_paras.R = 3;
	default_paras.M2minus1 = (input_width - 2) * (input_height - 2) - 1;
	conv2d_change_size_paras(default_paras);
    //conv2d_compute(&Conv_Dma, Conv_Dma_Config, w, in, input_width*input_height, out, (input_width - 2) * (input_height - 2)*4);

//	    loadImage(CONV_1_INPUT_CHANEL_NUM, 62, 70, conv_1_input);
//	    convLayerPass(
//	        			  &Conv_Dma,
//	    				  Conv_Dma_Config,
//						  CONV_1_INPUT_CHANEL_NUM,
//						  CONV_1_OUTPUT_CHANNEL_NUM,
//						  62,
//						  70,
//	                      3,
//	                      3, //kernel size
//						  conv_1_weights,
//						  bias);
//	    printLayerOutput(9, 62 - 2, 70 - 2);
//--------------------------------------------------------------------------------------------------
	conv2d_reset();
	image_buffer_reset();
    conv2d_change_weight(w);
    conv2d_start();
    printf("Value of counter register before: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter));
    //fifo_reset_init(((input_width - 2) * (input_height - 2)*4)/4 - 1 );
	 XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Reset ,0x0000FFFF);
	while(XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter) != 0){}
	printf("Value of counter register after reset: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter));
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Reset ,0x00000000);
	printf("For check reset register: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Reset));
	// Write to threashold register
	XAxiDma_WriteReg(MY_AXI_FIFO_BASE_ADDRESS, FIFO_Threash_Hold ,(((input_width - 2) * (input_height - 2)*4)/4 - 1));
	printf("Value of threashold register, for debug purpose: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Threash_Hold));
    /* uint8_t status = XAxiDma_CfgInitialize(&Conv_Dma, Conv_Dma_Config);
	if(status != XST_SUCCESS){
		print("Con2d compute: dma initialization failed\n");
		return 1;
	} */

	Xil_DCacheFlushRange((u32)in, input_width*input_height);
	Xil_DCacheInvalidateRange((u32)in, input_width*input_height);
	Xil_DCacheFlushRange((u32)out, (input_width - 2) * (input_height - 2)*4);
	Xil_DCacheInvalidateRange((u32)((uint32_t*)out), (input_width - 2) * (input_height - 2)*4);
	status = XAxiDma_SimpleTransfer(&Conv_Dma, (u32)((uint32_t*)out), (input_width - 2) * (input_height - 2)*4, XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&Conv_Dma, (u32)((uint8_t*)in), input_width*input_height, XAXIDMA_DMA_TO_DEVICE);

	if(status != XST_SUCCESS){
		print("Con2d compute: dma transmisttance initialization failed\n");
		return 1;
	}
	/* status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
	while((status & 0x00000002) == 0){
		status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
	}
	status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
	while((status & 0x00000002) == 0){
		status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
	} */
	int t = 0;
	while (!TxDone && !RxDone) {
		 if(XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter) != t){
			  t = XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter);
			  printf("Counter value: %d",t);
		 }
				/* NOP */
		}
	status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
		while((status & 0x00000002) == 0){
			status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x4);
		}
		status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
		while((status & 0x00000002) == 0){
			status = XAxiDma_ReadReg(DMA_CONV_BASEADDR, 0x34);
		}
	printf("Status of tx and rx channel: %x %x\n",XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x04),XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x34));
	printf("Number of tx and rx byte:  %x %x\n",XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x28),XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x58));
	if (LOG) {
		print("conv2d_compute successes, log some entry: \n");
		xil_printf("[ ");
		for(uint8_t i=0; i<3; i++){
			xil_printf("[ ");
			for(uint8_t j=0; j<3; j++) {
				xil_printf("%d ,",out[i*3+j]);
			}
			if (i==2) {
				xil_printf("]]\n");
			} else {
				xil_printf("]\n");
			}
		}
		/* for(int i=0;i<10;i++){
			printf("%d",out[i]);
		} */
	}
	printf("Value of counter register after finish: %x\n",XAxiDma_ReadReg(MY_AXI_FIFO_BASE_ADDRESS,FIFO_Counter));
	//fifo_reset();
	tempt = XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x00);
	tempt &= (~(1u << 0));
	XAxiDma_WriteReg(DMA_CONV_BASEADDR,0x00,tempt);
	tempt = XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x30);
	tempt &= (~(1u << 0));
	XAxiDma_WriteReg(DMA_CONV_BASEADDR,0x30,tempt);

	printf("Status of Tx and Rx channel when fisnishing program: %x %x",XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x04),XAxiDma_ReadReg(DMA_CONV_BASEADDR,0x34));
    return 0;
}
#ifdef XPAR_UARTNS550_0_BASEADDR
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600 and data bits to 8
*
* @param	None
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void Uart550_Setup(void)
{

	XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
			XPAR_XUARTNS550_CLOCK_HZ, 9600);

	XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
			XUN_LCR_8_DATA_BITS);
}
#endif

/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* We use the static tx/rx buffers.
*
* @param	Length is the length to check
* @param	StartValue is the starting value of the first byte
*
* @return
*		- XST_SUCCESS if validation is successful
*		- XST_FAILURE if validation is failure.
*
* @note		None.
*
******************************************************************************/
static int CheckData(int Length, u8 StartValue)
{
	u8 *RxPacket;
	int Index = 0;
	u8 Value;

	RxPacket = (u8 *) RX_BUFFER_BASE;
	Value = StartValue;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
#ifndef __aarch64__
	Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif

	for(Index = 0; Index < Length; Index++) {
		if (RxPacket[Index] != Value) {
			xil_printf("Data error %d: %x/%x\r\n",
			    Index, RxPacket[Index], Value);

			return XST_FAILURE;
		}
		Value = (Value + 1) & 0xFF;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This is the DMA TX Interrupt handler function.
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then sets the TxDone.flag
*
* @param	Callback is a pointer to TX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void TxIntrHandler(void *Callback)
{

	printf("Got interrupt in tx channel\n");
	u32 IrqStatus;
	int TimeOut;
	XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

	/* Acknowledge pending interrupts */


	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {
		printf("Got error in tx channel");
		Error = 1;

		/*
		 * Reset should never fail for transmit channel
		 */
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(AxiDmaInst)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If Completion interrupt is asserted, then set the TxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
		printf("Got complete transfer in tx channel");

		TxDone = 1;
	}
}

/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then it sets the RxDone flag.
*
* @param	Callback is a pointer to RX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void RxIntrHandler(void *Callback)
{
	printf("Got interrupt from Rx channel\n");
	u32 IrqStatus;
	int TimeOut;
	XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if(XAxiDma_ResetIsDone(AxiDmaInst)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

		RxDone = 1;
	}
	fifo_reset();

}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA, it assumes INTC component exists in the hardware system.
*
* @param	IntcInstancePtr is a pointer to the instance of the INTC.
* @param	AxiDmaPtr is a pointer to the instance of the DMA engine
* @param	TxIntrId is the TX channel Interrupt ID.
* @param	RxIntrId is the RX channel Interrupt ID.
*
* @return
*		- XST_SUCCESS if successful,
*		- XST_FAILURE.if not succesful
*
* @note		None.
*
******************************************************************************/
static int SetupIntrSystem(INTC * IntcInstancePtr,
			   XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
	int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

	/* Initialize the interrupt controller and connect the ISRs */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed init intc\r\n");
		return XST_FAILURE;
	}

	Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
			       (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed tx connect intc\r\n");
		return XST_FAILURE;
	}

	Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
			       (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed rx connect intc\r\n");
		return XST_FAILURE;
	}

	/* Start the interrupt controller */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed to start intc\r\n");
		return XST_FAILURE;
	}

	XIntc_Enable(IntcInstancePtr, TxIntrId);
	XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

	XScuGic_Config *IntcConfig;


	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
				(Xil_InterruptHandler)TxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
				(Xil_InterruptHandler)RxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	XScuGic_Enable(IntcInstancePtr, TxIntrId);
	XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

	/* Enable interrupts from the hardware */

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)INTC_HANDLER,
			(void *)IntcInstancePtr);

	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts for DMA engine.
*
* @param	IntcInstancePtr is the pointer to the INTC component instance
* @param	TxIntrId is interrupt ID associated w/ DMA TX channel
* @param	RxIntrId is interrupt ID associated w/ DMA RX channel
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void DisableIntrSystem(INTC * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
	/* Disconnect the interrupts for the DMA TX and RX channels */
	XIntc_Disconnect(IntcInstancePtr, TxIntrId);
	XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
	XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
	XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}
