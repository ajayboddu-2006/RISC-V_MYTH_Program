# **RV32 Single-Cycle RISC-V CPU Core**

A single-cycle RISC-V CPU core is a fundamental implementation of the RISC-V instruction set architecture (ISA) designed to execute each instruction in a single clock cycle. This architecture prioritizes simplicity, making it an excellent starting point for understanding processor design.

In a single-cycle processor, all components—including instruction fetch, decode, execute, memory access, and write-back—operate in parallel within one cycle. While this simplifies control logic, it also results in increased critical path delay, limiting clock speed.

This design serves as a foundation for more advanced architectures like pipelined and superscalar processors. 

## Microarchitecture of RISCV CPU(RV32) :

The microarchitecture of a RISC-V CPU defines the internal structure and data flow required to execute instructions efficiently. It consists of several key components that work together to fetch, decode, execute, and store results. The microarchitecture follows the principles of the RISC-V ISA.


| ![RISC_CPU](./../Images/riscv_cpu_architecture.png) |
| :--------------------------------------------------: |
|           RISC-V CPU Micro Architecture     |

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


## **RISCV Assembly code :**
On our designed RISCV CPU core in TL-Verilog, we are going to execute below M4 Assembly code

```asm

   //External to function

   m4_asm(ADD, r10, r0, r0)             // Initialize r10 (a0) to 0.

   // Function:

   m4_asm(ADD, r14, r10, r0)            // Initialize sum register a4 with 0x0
   m4_asm(ADDI, r12, r10, 1010)         // Store count of 10 in register a2.
   m4_asm(ADD, r13, r10, r0)            // Initialize intermediate sum register a3 with 0

   // Loop:

   m4_asm(ADD, r14, r13, r14)           // Incremental addition
   m4_asm(ADDI, r13, r13, 1)            // Increment intermediate register by 1
   m4_asm(BLT, r13, r12, 1111111111000) // If a3 is less than a2, branch to label named <loop>
   m4_asm(ADD, r10, r14, r0)            // Store final result to register a0 so that it can be read by main program
   

```

This **M4 assembly code** calculates the sum of numbers from **0 to 9** using a loop. Here’s a **step-by-step breakdown**:

### **External Initialization**
1. `m4_asm(ADD, r10, r0, r0) `  
   - Initializes **register `r10` (a0) to 0**.  
   - This will hold the final result.

### **Function Execution**
2. `m4_asm(ADD, r14, r10, r0)`  
   - Initializes **register `r14` (a4) to 0**, which stores the **sum**.

3. `m4_asm(ADDI, r12, r10, 1010)`  
   - **Stores `10` in `r12` (a2)**, which acts as the **loop limit (count = 10)**.

4. `m4_asm(ADD, r13, r10, r0)`  
   - Initializes **register `r13` (a3) to 0**, which is the **loop counter**.

### **Loop Execution**
5. `m4_asm(ADD, r14, r13, r14)`  
   - **Adds the current loop counter (`r13`) to `r14`**, updating the sum.

6. `m4_asm(ADDI, r13, r13, 1)`  
   - **Increments `r13` by 1** (loop counter increment).

7. `m4_asm(BLT, r13, r12, 1111111111000)`  
   - **Branches back to the loop if `r13` < `r12` (i.e., 10)**.  
   - This ensures **10 iterations** (adding 0+1+2+...+9).

### **Final Result Storage**
8. `m4_asm(ADD, r10, r14, r0)`  
   - **Stores the final sum (`r14 = 45`) in `r10` (a0)**, so the main program can access it.

### **Final Output**
- After execution, `r10 (a0) = 45`, which is the **sum of numbers from 0 to 9**.


This assembly program initializes registers, runs a loop **10 times** to sum numbers **0 to 9**, stores the final sum in `r10`.


Starter Code :
To accesss the strater  code(RISCV Shell), get into the below Github repository and get the starter code in Makerchip IDE.

`https://github.com/stevehoover/RISC-V_MYTH_Workshop`

Access the starter code as shown in below image

| ![Types_of_ISA](./../Images/starter_code.png) |
| :--------------------------------------------------: |
|           Starter Code      |


Now, we can start designing various components of RV32 RISCV CPU Core...

### **Program Counter**
 
```tlv
//Program Counter
$pc[31:0] = (>>1$reset) ? '0 : >>1$taken_br ? >>1$br_tgt_pc : >>1$pc + 32'h4;
```
- If `reset` is active → Set `pc = 0`.  
- If a branch is taken → Set `pc = br_tgt_pc`.  
- Otherwise            → Increment `pc` by `4` (next instruction).  

### **Instruction Memory :**

In the started code, uncomment `m4+imem(@1)` for Instruction memory Interface, and alsi uncomment `m4+cpu_viz(@4)` for Visualization.
```tlv
 //Instruction Memory
$imem_rd_en = !$reset ? 1 : 0;
$imem_rd_addr[31:0] = $pc[M4_IMEM_INDEX_CNT+1:2];
```

- imem_rd_en → Enabled (1) when reset = 0, disabled (0) on reset.
- imem_rd_addr → Address derived from PC, ensuring word-aligned access.

### **Instruction Decode Logic**

Below is the table describing the Type of Instructions based on the opcode

| instr[6:5] \ instr[4:2] | 000  | 001  | 010  | 011  | 100  | 101  | 110  | 111  |
|--------------------------|------|------|------|------|------|------|------|------|
| **00**                  | I    | I    | -    | -    | I    | U    | I    | -    |
| **01**                  | S    | S    | -    | R    | R    | U    | R    | -    |
| **10**                  | R4   | R4   | R4   | R4   | R    | -    | -    | -    |
| **11**                  | B    | I    | -    | J    | *I (unused)* | - | - | - |


```tlv
//Fetch Instruction Data
         $instr[31:0] = $imem_rd_data[31:0];

         //Instruction Type Decode
         $is_i_instr = $instr[6:2] ==? 5'b0000x || $instr[6:2] ==? 5'b001x0 || $instr[6:2] ==? 5'b11001;
         $is_r_instr = $instr[6:2] ==? 5'b01011 || $instr[6:2] ==? 5'b011x0 || $instr[6:2] ==? 5'b10100;
         $is_s_instr = $instr[6:2] == 5'b0100x;
         $is_u_instr = $instr[6:2] == 5'b0x101;
         $is_b_instr = $instr[6:2] == 5'b11000;
         $is_j_instr = $instr[6:2] == 5'b11011;
```

**Fetch Instruction:** $instr = $imem_rd_data (loads instruction from memory).

Identify Instruction Types Based on `Opcode (instr[6:2])`:

| **Instruction Type** | **Opcode (`instr[6:2]`)** |
|----------------------|-------------------------|
| **I-type** (`is_i_instr`) | `0000x`, `001x0`, `11001` |
| **R-type** (`is_r_instr`) | `01011`, `011x0`, `10100` |
| **S-type** (`is_s_instr`) | `0100x` |
| **U-type** (`is_u_instr`) | `0x101` |
| **B-type** (`is_b_instr`) | `11000` |
| **J-type** (`is_j_instr`) | `11011` |



