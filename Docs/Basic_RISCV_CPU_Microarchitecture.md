# **RV32 Single-Cycle RISC-V CPU Core**

A single-cycle RISC-V CPU core is a fundamental implementation of the RISC-V instruction set architecture (ISA) designed to execute each instruction in a single clock cycle. This architecture prioritizes simplicity, making it an excellent starting point for understanding processor design.

In a single-cycle processor, all components—including instruction fetch, decode, execute, memory access, and write-back—operate in parallel within one cycle. While this simplifies control logic, it also results in increased critical path delay, limiting clock speed.

This design serves as a foundation for more advanced architectures like pipelined and superscalar processors. 

## Microarchitecture of RISCV CPU :

The microarchitecture of a RISC-V CPU defines the internal structure and data flow required to execute instructions efficiently. It consists of several key components that work together to fetch, decode, execute, and store results. The microarchitecture follows the principles of the RISC-V ISA.

### **Microarchitecture of RISC-V CPU**  

The **microarchitecture** of a **RISC-V CPU** defines the internal structure and data flow required to execute instructions efficiently. It consists of several key components that work together to fetch, decode, execute, and store results. The microarchitecture follows the principles of the **RISC-V ISA**, which is based on a **load-store architecture** with a simple and modular instruction set.  

#### **Key Components of RISC-V CPU Microarchitecture**  


7️⃣ **Program Counter (PC) & Branch Unit**  
   - Maintains the address of the **current instruction**.  
   - Updates based on sequential execution or **branch/jump instructions**.  
   - Works with the ALU to determine branch conditions (BEQ, BNE, JAL).
     
1️⃣ **Instruction Fetch Unit (IFU)**  
   - Fetches instructions from memory based on the **Program Counter (PC)**.  
   - Uses an **Instruction Memory** to store and retrieve instructions.  
   - Increments the PC to point to the next instruction.  

2️⃣ **Instruction Decode Unit (IDU)**  
   - Decodes the fetched instruction into its operation and operands.  
   - Extracts register addresses, immediate values, and control signals.  
   - Generates necessary control signals for the **ALU, registers, and memory**.  

3️⃣ **Register File**  
   - Consists of **32 registers (x0 to x31)**, where x0 is hardwired to zero.  
   - Provides source operands to the ALU and stores results back after execution.  

4️⃣ **Arithmetic Logic Unit (ALU)**  
   - Performs arithmetic (ADD, SUB, MUL) and logical (AND, OR, XOR) operations.  
   - Evaluates branch conditions for **conditional jumps**.  
   - Supports shift operations (SLL, SRL, SRA).  

5️⃣ **Memory Access Unit (Load/Store Unit)**  
   - Accesses data memory for **load (LW, LB) and store (SW, SB) instructions**.  
   - Implements byte and word addressing based on instruction type.  
   - Works with cache (if implemented) to optimize memory transactions.  

6️⃣ **Control Unit**  
   - Generates control signals to coordinate different components.  
   - Handles **branch and jump** execution by modifying the PC.  
   - Ensures proper data flow between units based on instruction type.  

  

### **Execution Flow in RISC-V Microarchitecture**  
1️⃣ **Instruction Fetch (IF):** Fetch instruction from memory.  
2️⃣ **Instruction Decode (ID):** Decode instruction and prepare control signals.  
3️⃣ **Execute (EX):** Perform ALU operation or compute memory address.  
4️⃣ **Memory Access (MEM):** Load from or store data to memory.  
5️⃣ **Write Back (WB):** Store the result into the register file.  

This modular **single-cycle microarchitecture** provides a foundation for more advanced implementations like **pipelining and superscalar processing**, optimizing execution efficiency in modern RISC-V processors.
