# Synchronous RAM Design Using Verilog

## 📌 Project Overview

This project implements a **16 × 8-bit synchronous RAM (Random Access Memory)** using Verilog HDL.

The RAM supports both **write and read operations**, synchronized with the rising edge of the clock. The design is verified using a Verilog testbench and simulated using **Xilinx Vivado Simulator**.

This project was completed as part of the **VLSI Internship Program – Task 2: RAM Design**.

## 🎯 Objective

The objective of this project is to design and simulate a simple synchronous RAM module that demonstrates:

- Synchronous write operation
- Synchronous read operation
- Address-based memory access
- Clock-controlled memory operations
- Functional verification using simulation

## ⚙️ Specifications

| Parameter | Value |
|---|---|
| RAM Type | Synchronous RAM |
| Memory Depth | 16 locations |
| Data Width | 8 bits |
| Address Width | 4 bits |
| Total Memory | 128 bits |
| HDL | Verilog |
| Simulation Tool | Xilinx Vivado 2026.1 |

## 🏗️ Design

The RAM contains **16 memory locations**, with each location capable of storing **8 bits of data**.

A 4-bit address is used to select one of the 16 memory locations.

### Input Signals

- `clk` – Clock signal
- `we` – Write Enable
- `addr[3:0]` – Memory address
- `data_in[7:0]` – Data to be written

### Output Signal

- `data_out[7:0]` – Data read from memory

## 🔄 Working Principle

### Write Operation

When `we = 1`, the input data is written into the selected memory location on the **rising edge of the clock**.

Example:

```text
Address = 3
Data In = 25
Write Enable = 1
```

At the rising clock edge:

```text
Memory[3] = 25
```

### Read Operation

When `we = 0`, the data stored at the selected address is read synchronously and appears at `data_out`.

For example:

```text
Address = 3
Memory[3] = 25
```

The output becomes:

```text
Data Out = 25
```

## 🧪 Verification

A Verilog testbench is used to verify the RAM functionality.

The testbench performs:

1. Write data to different memory addresses.
2. Disable writing.
3. Read the previously stored data.
4. Observe the output through simulation.
5. Verify that the read data matches the data previously written.

The simulation waveform demonstrates the relationship between:

```text
Clock
Write Enable
Address
Data Input
Data Output
```

## 📁 Project Files

```text
Synchronous_RAM/
├── Synchronous_ram.v
├── tb_synchronous_ram.v
├── block_diagram.png
├── waveform.png
└── README.md
```

### File Description

**`synchronous_ram.v`**  
Contains the RTL implementation of the synchronous RAM.

**`tb_synchronous_ram.v`**  
Contains the testbench used to verify read and write operations.

**`ram_block_diagram.png`**  
Shows the Vivado elaborated/block diagram of the RAM design.

**`ram_simulation_waveform.png`**  
Shows the Vivado simulation waveform demonstrating RAM functionality.

## 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado 2026.1
- Vivado XSim Simulator

## 📚 Key Concepts Learned

- RAM architecture
- Synchronous memory design
- Verilog RTL coding
- Clocked `always` blocks
- Read and write operations
- Verilog testbench development
- Functional simulation
- Waveform analysis
- FPGA/VLSI design workflow

## 👩‍💻 Author

**Kashish Garg**

B.Tech – Electronics and VLSI Engineering

## 📌 Internship Task

**Task 2 – RAM Design**

Designed and simulated a simple synchronous RAM with read and write operations using Verilog HDL and Xilinx Vivado.
