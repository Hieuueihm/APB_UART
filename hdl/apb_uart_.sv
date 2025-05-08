
// import apb_package::*;
// //import uart_package::*;

// module apb_uart (
//     apb_interface.slave apb_if
// );

//   typedef enum logic [1:0] {
//     IDLE   = 2'b00,
//     SETUP  = 2'b01,
//     ACCESS = 2'b10
//   } state_e;


//   logic [31:0] tdr;
//   logic [31:0] rdr;
//   logic [31:0] lcr;
//   logic [31:0] ocr;
//   logic [31:0] lsr;
//   logic [31:0] fcr;
//   logic [31:0] msr;
//   logic [31:0] mcr;
//   logic [31:0] ier;
//   logic [31:0] iir;

//   // Internal signals
//   logic int_pslverr;
//   logic [31:0] int_prdata;

//   state_e current_state, next_state;

//   // Next state logic
//   always_ff @(posedge apb_if.pclk) begin
//     if (~apb_if.preset_n) begin
//       current_state <= IDLE;
//     end else begin
//       current_state <= next_state;
//     end
//   end

//   // Combinational state transition logic
//   always_comb begin
//     next_state = IDLE;
//     case (current_state)
//       IDLE: begin
//         if (apb_if.psel & !apb_if.apb_slv.penable) begin
//           next_state = SETUP;
//         end
//       end

//       SETUP: begin
//         if (apb_if.psel & apb_if.apb_slv.penable) begin
//           next_state = ACCESS;
//         end else if (!apb_if.psel) begin
//           next_state = IDLE;
//         end
//       end

//       ACCESS: begin
//         if (!apb_if.psel | !apb_if.apb_slv.penable) begin
//           next_state = IDLE;
//         end
//       end

//       default: next_state = IDLE;
//     endcase
//   end

//   always_ff @(posedge apb_if.pclk) begin
//     if (~apb_if.preset_n) begin
//       tdr <= 32'h0;
//       lcr <= 32'h0;
//       ocr <= 32'h0;
//       fcr <= 32'h0;
//       mcr <= 32'h0;
//       ier <= 32'h0;
//       iir <= 32'h0;
//     end else if (current_state == SETUP & apb_if.apb_slv.pwrite) begin
//       case (apb_if.apb_slv.paddr)
//         ADDR_TDR:
//         tdr <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], tdr[23:0]} : tdr) |
//                        (apb_if.apb_slv.pstrb[2] ? {tdr[31:24], apb_if.apb_slv.pwdata[23:16], tdr[15:0]} : tdr) |
//                        (apb_if.apb_slv.pstrb[1] ? {tdr[31:16], apb_if.apb_slv.pwdata[15:8], tdr[7:0]} : tdr) |
//                        (apb_if.apb_slv.pstrb[0] ? {tdr[31:8], apb_if.apb_slv.pwdata[7:0]} : tdr);
//         ADDR_LCR:
//         lcr <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], lcr[23:0]} : lcr) |
//                        (apb_if.apb_slv.pstrb[2] ? {lcr[31:24], apb_if.apb_slv.pwdata[23:16], lcr[15:0]} : lcr) |
//                        (apb_if.apb_slv.pstrb[1] ? {lcr[31:16], apb_if.apb_slv.pwdata[15:8], lcr[7:0]} : lcr) |
//                        (apb_if.apb_slv.pstrb[0] ? {lcr[31:8], apb_if.apb_slv.pwdata[7:0]} : lcr);
//         ADDR_OCR:
//         ocr <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], ocr[23:0]} : ocr) |
//                        (apb_if.apb_slv.pstrb[2] ? {ocr[31:24], apb_if.apb_slv.pwdata[23:16], ocr[15:0]} : ocr) |
//                        (apb_if.apb_slv.pstrb[1] ? {ocr[31:16], apb_if.apb_slv.pwdata[15:8], ocr[7:0]} : ocr) |
//                        (apb_if.apb_slv.pstrb[0] ? {ocr[31:8], apb_if.apb_slv.pwdata[7:0]} : ocr);
//         ADDR_FCR:
//         fcr <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], fcr[23:0]} : fcr) |
//                        (apb_if.apb_slv.pstrb[2] ? {fcr[31:24], apb_if.apb_slv.pwdata[23:16], fcr[15:0]} : fcr) |
//                        (apb_if.apb_slv.pstrb[1] ? {fcr[31:16], apb_if.apb_slv.pwdata[15:8], fcr[7:0]} : fcr) |
//                        (apb_if.apb_slv.pstrb[0] ? {fcr[31:8], apb_if.apb_slv.pwdata[7:0]} : fcr);
//         ADDR_MCR:
//         mcr <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], mcr[23:0]} : mcr) |
//            (apb_if.apb_slv.pstrb[2] ? {mcr[31:24], apb_if.apb_slv.pwdata[23:16], mcr[15:0]} : mcr) |
//            (apb_if.apb_slv.pstrb[1] ? {mcr[31:16], apb_if.apb_slv.pwdata[15:8], mcr[7:0]} : mcr) |
//            (apb_if.apb_slv.pstrb[0] ? {mcr[31:8], apb_if.apb_slv.pwdata[7:0]} : mcr);

//         ADDR_IER:
//         ier <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], ier[23:0]} : ier) |
//            (apb_if.apb_slv.pstrb[2] ? {ier[31:24], apb_if.apb_slv.pwdata[23:16], ier[15:0]} : ier) |
//            (apb_if.apb_slv.pstrb[1] ? {ier[31:16], apb_if.apb_slv.pwdata[15:8], ier[7:0]} : ier) |
//            (apb_if.apb_slv.pstrb[0] ? {ier[31:8], apb_if.apb_slv.pwdata[7:0]} : ier);

//         ADDR_IIR:
//         iir <= (apb_if.apb_slv.pstrb[3] ? {apb_if.apb_slv.pwdata[31:24], iir[23:0]} : iir) |
//            (apb_if.apb_slv.pstrb[2] ? {iir[31:24], apb_if.apb_slv.pwdata[23:16], iir[15:0]} : iir) |
//            (apb_if.apb_slv.pstrb[1] ? {iir[31:16], apb_if.apb_slv.pwdata[15:8], iir[7:0]} : iir) |
//            (apb_if.apb_slv.pstrb[0] ? {iir[31:8], apb_if.apb_slv.pwdata[7:0]} : iir);

//         default: ;
//       endcase
//     end
//   end

//   always_comb begin
//     int_pslverr = 1'b0;
//     int_prdata  = 32'h0;

//     case (current_state)
//       IDLE: begin
//       end
//       SETUP: begin
//         if (!apb_if.apb_slv.pwrite) begin
//           case (apb_if.apb_slv.paddr)
//             ADDR_TDR: int_prdata = tdr;
//             ADDR_RDR: int_prdata = rdr;
//             ADDR_LCR: int_prdata = lcr;
//             ADDR_OCR: int_prdata = ocr;
//             ADDR_LSR: int_prdata = lsr;
//             ADDR_FCR: int_prdata = fcr;
//             ADDR_MSR: int_prdata = msr;
//             ADDR_MCR: int_prdata = mcr;
//             ADDR_IER: int_prdata = ier;
//             ADDR_IIR: int_prdata = iir;
//             default: begin
//               int_prdata  = 32'h0;
//               int_pslverr = 1'b1;
//             end
//           endcase
//         end
//       end
//       ACCESS: begin
//       end

//       default: begin
//       end
//     endcase
//   end

//   assign apb_if.apb_mas.pready = apb_if.psel & apb_if.apb_slv.penable;

//   always_ff @(posedge apb_if.pclk) begin
//     if (~apb_if.preset_n) begin
//       apb_if.apb_mas.pslverr <= 1'b0;
//       apb_if.apb_mas.prdata  <= 32'h0;
//     end else begin
//       apb_if.apb_mas.pslverr <= int_pslverr;
//       apb_if.apb_mas.prdata  <= int_prdata;
//     end
//   end

// endmodule
