# Verilog Practice

A collection of Verilog HDL practice modules covering digital logic design, RTL concepts, testbench development, and simulation.
---

## Overview

This repository documents my hands-on practice with **Verilog HDL** and **RTL design**.

The focus is on implementing digital circuits, writing synthesizable RTL, developing testbenches, verifying functionality through simulation, analyzing waveforms, and exploring RTL synthesis.

The repository will be continuously updated as new digital design concepts and RTL modules are implemented.
---

## Topics Covered

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
│   ├── mux_4to1.v
│   ├── decoder.v
│   ├── encoder.v
│   └── ...
│
├── sequential/
│   ├── d_ff.v
│   ├── counter.v
│   ├── shift_register.v
│   └── ...
│
├── testbenches/
│   ├── mux_2to1_tb.v
│   ├── mux_4to1_tb.v
│   └── ...
│
└── README.md
```
---

## Design and Verification Workflow

The designs are developed using the following RTL workflow:

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
       VCD Waveform
             │
             ▼
          GTKWave
```
Where applicable, Verilator is used for additional RTL checking and Yosys is used to explore RTL synthesis.

---

## Tools and Technologies

| Tool / Technology | Purpose |
| ----------------- | ------- |
| Verilog HDL       | RTL design |
| Icarus Verilog    | RTL simulation |
| GTKWave           | Waveform analysis |
| Verilator         | RTL checking and verification |
| Yosys             | RTL synthesis |

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
- Explore synthesis where applicable

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

