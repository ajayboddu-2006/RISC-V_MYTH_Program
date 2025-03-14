# RISC-V MYTH Workshop  

## Overview  
This repository contains the projects and learnings from the RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop, conducted under the guidance of Kunal Ghosh (VLSI System Design - VSD) and Steve Hoover (Redwood EDA).  

The workshop covered:  
- [RISC-V ISA (Instruction Set Architecture)](./Docs/RISC-V_ISA.md)
- [Introduction to Transaction-Level (TL) Verilog](./Docs/TL-Verilog.md)
- [Design and Simulation of a Single-Cycle RISC-V CPU Core](./Docs/Single_Cycle_RISCV_CPU_Core_design.md) 
- [Design and Implementation of a Pipelined RISC-V CPU Core](./Docs/Pipelined_RISCV_CPU_Core_design.md) 

## Topics Covered  

### RISC-V ISA (Instruction Set Architecture)  
- Understanding the RISC-V instruction formats including R-type, I-type, S-type, B-type, U-type, and J-type  
- Implementing RISC-V assembly programs  
- Executing instructions on a simulated CPU environment  

### Introduction to TL-Verilog  
- Learning Transaction-Level Verilog (TL-Verilog) for efficient digital design  
- Hands-on experience with Makerchip IDE for coding and simulation  
- Implementing simple RISC-V operations in TL-Verilog  

### Single-Cycle RISC-V CPU Core  
- Designing a basic RISC-V CPU that executes one instruction per clock cycle  
- Implementing key components:  
  - Instruction Fetch (IF)  
  - Instruction Decode (ID)  
  - Execution (EX)  
  - Memory Access (MEM)  
  - Write Back (WB)  
- Simulating the single-cycle processor using TL-Verilog  

### Pipelined RISC-V CPU Core  
- Enhancing the single-cycle CPU into a pipelined architecture for higher efficiency  
- Dividing execution into five stages (IF, ID, EX, MEM, WB)  
- Handling data hazards, control hazards, and forwarding mechanisms  
- Implementing branch handling, register forwarding, and load-use hazard resolution  



