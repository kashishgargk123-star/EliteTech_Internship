#  VLSI Internship — ELiteTEch Intern

Repository for the 4 internship tasks: ALU design, RAM design, a
4-stage pipelined processor, and a digital FIR filter. Each task is
implemented in Verilog with an accompanying testbench.

## Repository Structure

```
.
├── task1_alu/
│   ├── alu.v
│   ├── tb_alu.v
│   └── README.md            (or simulation notes)
├── task2_ram/
│   ├── ram.v
│   ├── tb_ram.v
│   └── README.md
├── task3_pipeline_processor/
│   ├── pipeline_processor.v
│   ├── tb_pipeline_processor.v
│   └── README.md
├── task4_fir_filter/
│   ├── fir_filter.v
│   ├── tb_fir_filter.v
│   ├── performance_analysis.md
│   └── README.md
└── README.md                 (this file)
```

> Adjust folder/file names above to match how you've actually organized
> your repo — this shows the intended layout matching the task order.

## Task Summaries

### Task 1 — Arithmetic Logic Unit (ALU)
Design of a basic ALU supporting addition, subtraction, AND, OR, and
NOT operations.
**Deliverables:** Verilog/VHDL code, testbench, simulation report.
**Status:** ✅ Completed

### Task 2 — RAM Design
A simple synchronous RAM module supporting read and write operations.
**Deliverables:** code, testbench, simulation demonstrating RAM
functionality.
**Status:** ✅ Completed

### Task 3 — Pipeline Processor Design
A 4-stage pipelined processor supporting basic instructions: ADD, SUB,
and LOAD.
**Deliverables:** functional design with simulation showing each
pipeline stage's operation.
**Status:** ✅ Completed

### Task 4 — Digital Filter Design (FIR)
A 4-tap FIR (Finite Impulse Response) low-pass filter with fixed
coefficients [1, 3, 3, 1]/8, implemented in Verilog.
**Deliverables:** Verilog code, simulation results, performance
analysis.
**Status:** ✅ Completed — see `task4_fir_filter/` for full details
(RTL, testbench, and a written performance analysis covering impulse,
step, and frequency-response behavior).

## How to Run Any Task

All tasks use [Icarus Verilog](http://iverilog.icarus.com/) for
simulation:

```bash
cd task<N>_<name>/
iverilog -o sim_out <design>.v tb_<design>.v
vvp sim_out
```

Optionally view waveforms with [GTKWave](http://gtkwave.sourceforge.net/)
if the testbench generates a `.vcd` file:

```bash
gtkwave <design>.vcd
```

## Internship Guidelines Followed

- All work-related code and files are version-controlled in this
  GitHub repository.
- Code is commented throughout for readability.
- Each task includes a testbench and simulation evidence of correct
  functionality.
- Submitted within the internship deadline.

## About

Internship: **ELiteTEch Intern — VLSI Internship Program**
("Learn — Innovate — Thrive")
Program purpose: hands-on learning in digital design fundamentals
(ALU, memory, pipelining, and signal processing) using Verilog/VHDL.
