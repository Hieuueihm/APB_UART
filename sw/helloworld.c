#include <stdio.h>
#include "platform.h"
#include "xil_io.h"

#define UART_BASE_ADDR       0x40000000

#define TX_DATA_REG          (UART_BASE_ADDR + 0x0)
#define RX_DATA_REG          (UART_BASE_ADDR + 0x4)
#define LINE_CFG_REG         (UART_BASE_ADDR + 0x8)
#define O_CTRL_REG           (UART_BASE_ADDR + 0xC)
#define LINE_STT_REG         (UART_BASE_ADDR + 0x10)
#define FIFO_CTR_REG         (UART_BASE_ADDR + 0x14)
#define INTR_EN_REG          (UART_BASE_ADDR + 0x18)
#define INTR_IDEN_REG        (UART_BASE_ADDR + 0x1C)
#define HWFLOW_CTRL_REG      (UART_BASE_ADDR + 0x20)

void uart_init() {
    u32 line_cfg = 0;
    line_cfg |= (0x3 << 0);  // 8 data bit: DBN = 11
    line_cfg |= (0x0 << 2);  // 1 stop bit: SBN = 0
    line_cfg |= (0x0 << 3);  // parity disable: PE = 0
    line_cfg |= (0x0 << 4);  // parity type odd: PT = 0
    Xil_Out32(LINE_CFG_REG, line_cfg);

    u32 fifo_cfg = 0;
    fifo_cfg |= (1 << 0);    // FIFO enable
    fifo_cfg |= (0 << 1);    // Rx FIFO reset
    fifo_cfg |= (0 << 2);    // Tx FIFO reset
    Xil_Out32(FIFO_CTR_REG, fifo_cfg);

    // Enable transmitter and receiver
    u32 ctrl_cfg = 0;
    ctrl_cfg |= (1 << 0);    // tx_en
    ctrl_cfg |= (1 << 2);    // rx_en
    Xil_Out32(O_CTRL_REG, ctrl_cfg);
}

// Hàm truyền 1 byte
void uart_send(u8 data) {
    // Đợi TDR empty
    while (!(Xil_In32(LINE_STT_REG) & (1 << 4))) {
        // Wait until TDRE = 1
    }
    // start
    Xil_Out32(TX_DATA_REG, data);
	u32 ctrl_cfg = 0;

    ctrl_cfg |= (1 << 0);    // tx_en
     ctrl_cfg |= (1 << 2);    // rx_en
     ctrl_cfg |= (1 << 1);    // start_tx
     Xil_Out32(O_CTRL_REG, ctrl_cfg);



}


// Hàm nhận 1 byte
u8 uart_recv() {
    // Đợi dữ liệu sẵn sàng
    while (!(Xil_In32(LINE_STT_REG) & (1 << 1))) {
        // Wait until RDRDY = 1
    }
    return (u8)(Xil_In32(RX_DATA_REG) & 0xFF);
}

int main() {
    init_platform();

    print("UART Test Start\n\r");

    uart_init();

//    char *msg = "a";
//    uart_send(msg[0]);
        uart_send('H');
        uart_send('E');
        uart_send('H');

    u8 c = uart_recv();
    xil_printf("receive: %c", c);
    c = uart_recv();
    xil_printf("%c", c);
    c = uart_recv();
    xil_printf("%c", c);

    cleanup_platform();
    return 0;
}
