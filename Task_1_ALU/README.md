# 8-Bit ALU (Arithmetic Logic Unit) in Verilog

## Project Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs various arithmetic and logical operations based on the selected control signal. The design was simulated using Icarus Verilog and verified using GTKWave.

## Features

* 8-bit data width
* Arithmetic operations:  
  * Addition
  * Subtraction
  
* Logical operations:
  * AND
  * OR
  * XOR
  * NOT
* Combinational design
* Simulation and waveform verification

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* Visual Studio Code
* Git & GitHub

## Project Structure

```text
8bit_ALU_Verilog/
│
├── alu.v
├── tb_alu.v
├── waveform.png
└── README.md
```

## Supported Operations

| Select Signal | Operation           |
| ------------- | ------------------- |
| 000           | Addition (A + B)    |
| 001           | Subtraction (A - B) |
| 010           | AND                 |
| 011           | OR                  |
| 100           | XOR                 |
| 101           | NOT A               |

## Simulation

The ALU functionality was verified using a Verilog testbench and simulated using Icarus Verilog. Waveforms were observed in GTKWave to confirm correct operation for all supported functions.

## Waveform Output

![Waveform](waveform.png)

## How to Run

Compile the design:

```bash
iverilog -o alu_tb alu.v tb_alu.v
```

Run the simulation:

```bash
vvp alu_tb
```

View waveforms:

```bash
gtkwave dump.vcd
```

## Learning Outcomes

* Understanding of combinational circuit design
* Verilog HDL coding and simulation
* Testbench development
* Waveform analysis using GTKWave
* Version control using Git and GitHub

## Author

**Kashish**

B.Tech Electronics & VLSI Engineering
