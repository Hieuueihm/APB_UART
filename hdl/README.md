# Verilog Convention Guide
This repository provides guidelines on how to set names for **modules**, **instances**, **macros**, and other components in SystemVerilog projects.
## 📖 Overview
The guidelines in this project follow the [Verilog Coding Style](https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md#default-to-c-like-formatting).
## Naming Rules

- **Declarations (module, class, package, interfacee):** Use lowercase with underscores `lower_snake_case`.  
  Example: `my_module`, `my_class`

- **Instances:** Use lowercase with underscores (`lower_snake_case`). Always append _inst after `name_`.
  Example: `data_processor_inst`, `memory_ctrl_inst`

- **Macros:** Use uppercase with underscores.  
  Example: `RESET_SIGNAL`, `ENABLE_FLAG`

- **Signals:** Use clear and concise names indicating the signal's role.  
  Example: `clk`, `reset_n`, `data_ready`
- **Enumeration types and Other typedef types:** Use lowercase with underscores. Always append _e (_t) after `name_` for enumeration (typedef).
  Example: `led_rgb_e`, `led_rgb_t`
- **Variables, functions, tasks`:** Use lowercase with underscores.
  Example: task read_bmp;
- **Module Parameters:** `UpperCamelCase` 
- **Enum set member:** `ALL_CAPS`. 
  Example: `typedef enum {GREEN, BLUE, ...}`

## Clock and Reset
***All clock signals must begin with `clk`.***
If the module contains multiple clocks that are not the system clock should be named with a unique identifier, preceeded by the `clk_` prefix. For example, `clk_dram`, `clk_apb`...
***Reset is active-low and asynchronous. The default name is `rst_n`.***



## Procedural Block
```systemverilog {.good}
// Always
// Wrapped procedural block requires begin and end.
always_ff @(posedge clk) begin
  q <= d;
end
// Single-line procedural assignment without begin-end. 
always_ff @(posedge clk) q <= d;
```


```systemverilog {.good}
// Case
// Consistent use of begin and end for each case item
unique case (state_q)
  StIdle: begin
    state_d = StA;
  end
  StA: begin
    state_d = StB;
  end
  StB: begin
    state_d = StIdle;
    foo = bar;
  end
  default: begin
    state_d = StIdle;
  end
endcase
// Don't write as follows:

unique case (state_q)
  StIdle:           // These lines are incorrect because we should not wrap
    state_d = StA;  // case items at a block boundary without using begin
  StA:              // and end.  Case items should fit on a single line, or
    state_d = StB;  // else the procedural block must have begin and end.
  StB: begin
    foo = bar;
    state_d = StIdle;
  end
  default: begin
    state_d = StIdle;
  end
endcase
```
## Comments

```systemverilog {.good}
// begin: iterate over foobar
for (...) begin

end
// end: iterate over foobar
```

## Basic Template
```systemverilog {.good}
// Describes the functionality of the module


module my_module #(
  parameter Width = 80,
  parameter Height = 24
) (
  input              clk,
  input              rst_n,
  input              req_valid_i,
  input  [Width-1:0] req_data_i,
  output             req_ready_o,
  ...
);

  logic [Width-1:0] req_data_masked;

  submodule u_submodule (
    .clk(clk),
    .rst_n(rst_n),
    .req_valid_i(req_valid_i),
    .req_data_i (req_data_masked),
    .req_ready_o(req_ready),
    ...
  );

  always_comb begin
    req_data_masked = req_data_i;
    case (fsm_state_q)
      ST_IDLE: begin
        req_data_masked = req_data_i & MASK_IDLE;
        ...
  end

  ...

endmodule
```

## FSM
In this project, we use the 4-always block coding style with registered outputs. This coding style improve the synthesis results to match the results observed with 1-always block style and reduce the verbose of code. 
Using default X for next state consistently gave better synthesis results over the pre-default `next = state` assignment style. 
Placing default output assignments before the output-assignment case statements. 
```systemverilog {.good}
module always_4 (
    input logic clk,
    input logic rst_n

);

  localparam IDLE = 1'b0;
  reg [W - 1 : 0] current_state, next_state;
  // present state logic
  always_ff @(posedge clk) begin 
      if(~rst_n) begin
           current_state <= IDLE;
      end else begin
           current_state <= next_state;
      end
  end


  always_comb begin
    next_state = XXX;
    case (current_state) 

        IDLE: if(go) next_state = READ;
    endcase
  end

  always_comb begin
    n_rd = '0;
    n_ds = '0;

    case (current_state) 
        READ: n_rd = 1;
    endcase

  end

  always_ff @(posedge clk ) begin 
      if(~rst_n) begin
            rd <= 0;
      end else begin
            rd <= n_rd;
      end
  end
endmodule

```