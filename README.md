# APB_UART

## Introduction

**APB_UART** is a UART (Universal Asynchronous Receiver Transmitter) module that adheres to the AMBA APB (Advanced Peripheral Bus) protocol.

The project includes:
- APB-compliant UART interface
- Transmit and receive FIFOs
- Interrupt support
- Testbench with UVM
- Shell script for easy simulation run

---

## Project Structure
```
APB_UART/
├── doc/ # Documentation & diagrams
│ ├── spec/ # Specification documents
│ │ ├── APB_UART_Specification.pdf
|
├── hdl/ # RTL Design files
│ ├── apb/ # APB interface modules
│ │ ├── apb_controller.sv
│ │ ├── apb_slave.sv
│ │ └── register_file.sv
│ │
│ ├── fifo/ # FIFO modules
│ │ ├── receiver_fifo.sv
│ │ └── transmitter_fifo.sv
│ │
│ ├── receiver/ # UART Receiver side
│ │ ├── receiver_controller.sv
│ │ ├── shift_register.sv
│ │ └── uart_receiver.sv
│ │
│ ├── transmitter/ # UART Transmitter side
│ │ ├── ff.sv
│ │ ├── parity.sv
│ │ ├── piso.sv
│ │ ├── transmitter_controller.sv
│ │ └── uart_transmitter.sv
│ │
│ ├── apb_uart.sv # Top-level integration
│ ├── baud_generator.sv
│ ├── synchronizer.sv
│ ├── uart_rx_top.sv
│ └── uart_tx_top.sv
│
├── inc/ # Interface and package files
│ ├── apb_if.sv
│ ├── common_pkg.sv
│ ├── interrupt_if.sv
│ └── serial_if.sv
├── sim/ # Simulation & testbench
│ ├── src/uvm_tb/ # UVM testbench components
│ │ ├── apb_agent_pkg.sv
│ │ ├── apb_sequence_pkg.sv
│ │ ├── common_defines.sv
│ │ ├── testbench.sv
│ │ ├── uart_agent_pkg.sv
│ │ ├── uart_env_pkg.sv
│ │ ├── uart_reg_pkg.sv
│ │ ├── uart_test_pkg.sv
│ │ └── uart_vsequence_pkg.sv
│ │
│ ├── work/ # Simulation output/scripts
│ │ ├── run_batch.tcl
│ │ ├── vsim_uvm.sh
│ │ ├── xrun_uvm.sh
```
## How to run

Before running the simulation, make sure you have:
- Read and understood the UART specification (`doc/spec/APB_UART_Specification.pdf`)
- Reviewed the UVM-based testbench components (`sim/src/uvm_tb`)
- Installed and configured one of the supported simulators: **QuestaSim** or **Cadence Xcelium**

*If you use any other EDA tool, you must create your own compilation and simulation scripts manually.*

---

### 📥 Clone the repository

```bash
git clone https://github.com/Hieuueihm/APB_UART.git
cd APB_UART
```

### 🛠 Using QuestaSim

```bash
cd sim/work
./vsim_uvm.sh
```
### 🛠 Cadence Xcelium
```
cd sim/work
./xrun_uvm.sh
```