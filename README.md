# Verilog Practice

A hands-on collection of Verilog HDL designs and RTL experiments focused on
digital logic design, simulation, synthesis, and static timing analysis.

This repository documents my progression from writing RTL to analyzing
synthesized designs and timing results using an open-source ASIC design flow.

---

## Overview

This repository contains Verilog RTL implementations, testbenches,
simulation results, synthesized netlists, and static timing analysis files.

The current work focuses on small digital designs such as multiplexers,
with each design progressing through different stages of the RTL-to-ASIC
design flow.

---

## Current Design Flow

```text
             Verilog RTL
                  │
                  ▼
             Testbench
                  │
                  ▼
          Icarus Verilog
                  │
                  ▼
              Simulation
                  │
                  ▼
             GTKWave
                  │
                  ▼
               Yosys
                  │
                  ▼
             Synthesis
                  │
                  ▼
          NanGate 45nm
         Technology Library
                  │
                  ▼
             OpenSTA
                  │
                  ▼
        Static Timing Analysis
```
---

## Current Work

### 2-to-1 Multiplexer

The 2-to-1 multiplexer is currently taken through the most complete flow
in this repository:

- Verilog RTL implementation
- Testbench development
- Functional simulation
- VCD waveform generation
- GTKWave waveform analysis
- RTL synthesis using Yosys
- Technology mapping using the NanGate 45nm Open Cell Library
- Static Timing Analysis using OpenSTA
- Timing reports including WNS and TNS

### 4-to-1 Multiplexer

The 4-to-1 multiplexer currently includes:

- Verilog RTL implementation
- Testbench development
- Functional simulation
- VCD waveform generation
- GTKWave waveform analysis
- RTL synthesis using Yosys
- Synthesized netlist exploration

Further timing analysis will be added as the design flow develops.

---

## Topics & Planned Practice

- Combinational Logic
- Sequential Logic
- Multiplexers and Demultiplexers
- Encoders and Decoders
- Adders and Subtractors
- Comparators
- Flip-Flops
- Registers and Shift Registers
- Counters
- Finite State Machines (FSMs)
- RTL Design Concepts
- Testbench Development
- Functional Verification
- RTL Synthesis
---

## Repository Structure

```text
Verilog-Practice/
│
├── combinational/
│   ├── mux_2to1.v
│   └── mux_4to1.v
│
├── simulation/
│   ├── 2_to_1_mux/
│   │   ├── mux_2to1_tb.v
│   │   ├── mux_2to1.vcd
│   │   ├── iverilog_output.png
│   │   └── waveform_from_GTKWave.png
│   │
│   └── 4to1mux/
│       ├── mux_4to1_tb.v
│       ├── mux_4to1.vcd
│       ├── iverilog_output.png
│       └── waveform_from_GTKWave.png
│
├── synthesis/
│   ├── 2_to_1_mux_syn/
│   │   ├── mux_2to1.ys
│   │   ├── mux_2to1_45nm.v
│   │   ├── MUX2_X1.v
│   │   ├── mux_schematic.dot
│   │   └── mux_schematic.png
│   │
│   └── 4to1mux/
│       ├── mux_4to1.ys
│       ├── mux_4to1_45nm.v
│       ├── MUX2_X1.v
│       ├── mux_4to1_schematic.dot
│       └── mux_4to1_schematic.png
│
├── sta/
│   └── 2to1mux/
│       ├── mux_2to1.sdc
│       ├── run_sta.tcl
│       ├── max_timing.rpt
│       ├── min_timing.rpt
│       ├── wns.rpt
│       └── tns.rpt
│
├── testbenches/
│   ├── mux_2to1_tb.v
│   └── mux_4to1_tb.v
│
└── README.md
```
---

## Tools and Technologies

| Tool / Technology | Purpose |
| ----------------- | ------- |
| Verilog HDL       | RTL design |
| Icarus Verilog    | RTL simulation |
| GTKWave           | Waveform analysis |
| Verilator         | RTL checking and verification |
| Yosys             | RTL synthesis |
| OpenSTA           | Static Timing Analysis |

---

## Learning Approach

Each design is approached through the following steps:

- Understand the digital logic concept
- Design the required logic
- Write the Verilog RTL
- Develop a testbench
- Simulate the design
- Analyze the simulation waveform
- Debug and improve the RTL
- Explore RTL synthesis
- Analyze synthesized netlists
- Apply timing constraints
- Perform static timing analysis where applicable

---

## Practice Progress

### Combinational Logic
1. 2-to-1 Multiplexer
2. 4-to-1 Multiplexer
3. Decoder
4. Encoder
5. Comparator
6. Half Adder
7. Full Adder
8. Subtractor

### Sequential Logic
- D Flip-Flop
- JK Flip-Flop
- Registers
- Shift Registers
- Up Counter
- Down Counter

### RTL Design
- Parameterized Modules
- Hierarchical Design
- Finite State Machines
- Synchronous Design Concepts

### Verification
- Basic Testbenches
- Self-Checking Testbenches
- Waveform Analysis
- Verilator-Based Checking

### Synthesis
- Basic RTL Synthesis
- Logic Utilization Analysis
- Synthesized Netlist Exploration

The checklist will be updated as each topic is implemented and verified.

---

## Purpose

This repository is part of my continuous learning and preparation for careers in:

- RTL Design
- ASIC Design
- VLSI Design
- Digital Design
- Functional Verification

The goal is to develop practical skills by moving from digital logic concepts → RTL implementation → simulation → verification → synthesis.

---

## Future Direction

As my RTL skills develop, the practice work will progress toward more advanced designs such as:

- Arithmetic Units
- ALUs
- Memory Interfaces
- UART
- SPI
- FSM-Based Controllers
- Pipelined RTL Designs
- Parameterized RTL Modules

These exercises will provide a foundation for larger ASIC and RTL design projects.

## Author

**Sudeep T. Gotur**

Electronics and Communication Engineering
KLS Vishwanath Rao Deshpande Institute of Technology

