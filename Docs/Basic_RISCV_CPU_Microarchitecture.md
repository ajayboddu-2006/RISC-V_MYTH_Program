# **RV32 Single-Cycle RISC-V CPU Core**

A single-cycle RISC-V CPU core is a fundamental implementation of the RISC-V instruction set architecture (ISA) designed to execute each instruction in a single clock cycle. This architecture prioritizes simplicity, making it an excellent starting point for understanding processor design.

In a single-cycle processor, all components—including instruction fetch, decode, execute, memory access, and write-back—operate in parallel within one cycle. While this simplifies control logic, it also results in increased critical path delay, limiting clock speed.

This design serves as a foundation for more advanced architectures like pipelined and superscalar processors. 

## Microarchitecture of RISCV CPU :

The microarchitecture of a RISC-V CPU defines the internal structure and data flow required to execute instructions efficiently. It consists of several key components that work together to fetch, decode, execute, and store results. The microarchitecture follows the principles of the RISC-V ISA.


### **Key Components of RISC-V CPU Microarchitecture**  


#### **Program Counter (PC) & Branch Unit**  
   - Maintains the address of the **current instruction**.  
   - Updates based on sequential execution or **branch/jump instructions**.  
   - Works with the ALU to determine branch conditions (BEQ, BNE, JAL).
     
#### **Instruction Fetch Unit (IFU)**  
   - Fetches instructions from memory based on the **Program Counter (PC)**.  
   - Uses an **Instruction Memory** to store and retrieve instructions.  
   - Increments the PC to point to the next instruction.  

#### **Instruction Decode Unit (IDU)**  
   - Decodes the fetched instruction into its operation and operands.  
   - Extracts register addresses, immediate values, and control signals.  
   - Generates necessary control signals for the **ALU, registers, and memory**.  

#### **Register File**  
   - Consists of **32 registers (x0 to x31)**, where x0 is hardwired to zero.  
   - Provides source operands to the ALU and stores results back after execution.  

#### **Arithmetic Logic Unit (ALU)**  
   - Performs arithmetic (ADD, SUB, MUL) and logical (AND, OR, XOR) operations.  
   - Evaluates branch conditions for **conditional jumps**.  
   - Supports shift operations (SLL, SRL, SRA).  


