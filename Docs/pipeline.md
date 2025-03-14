# **Pipelined RISC-V CPU Core**  
This project implements a **5-stage pipelined RISC-V CPU core** using **TL-Verilog** in **Makerchip IDE**.  
It is an optimized version of the **single-cycle CPU** by introducing **instruction pipelining** for higher efficiency and better performance.  

---

## **Why Pipelining?**
### **Limitations of Single-Cycle CPU:**
- **Every instruction completes in one cycle** → Requires a long cycle time.  
- **No instruction overlap** → One instruction at a time → Wasted resources.  
- **Limited clock speed** → Slows overall execution.  

### **Advantages of Pipelining:**
- **Instruction overlap** → Increases instruction throughput.  
- **Shorter cycle time** → Faster execution per instruction.  
- **Higher efficiency** → Utilizes CPU resources optimally.  
- **One instruction completes every cycle** (after filling the pipeline).  

---

## **🚀 Single-Cycle vs. Pipelined RISC-V CPU Core :**
  

| **Aspect**          | **Single-Cycle CPU** | **Pipelined CPU** |
|---------------------|---------------------|-------------------|
| **Execution Model** | Completes **one instruction per cycle** | **Overlaps execution** of multiple instructions |
| **Clock Cycle Per Instruction (CPI)** | CPI **≥ 1** (depends on instruction complexity) | Ideal CPI **≈ 1** (one instruction finishes per cycle) |
| **Instruction Latency** | **One cycle** for each stage | **Five cycles per instruction**, but pipeline allows overlap |
| **Performance** | **Slow** (must complete entire instruction in one cycle) | **Fast** (multiple instructions processed at once) |
| **Hardware Utilization** | **Inefficient** (ALU and memory sit idle for most of the time) | **Efficient** (Each pipeline stage works every cycle) |
| **Hazard Handling** | Not required | Requires **Data Forwarding, Stalls, Branch Prediction** |

<br>





## **Pipeline Stages & Execution**
A **5-stage pipeline** is used in this RISC-V CPU implementation:  

| **Pipeline Stage** | **Function** | **Key Blocks** |
|--------------------|-------------|----------------|
| **IF (Instruction Fetch)** | Fetches instruction from memory | `$pc`, `$imem_rd_en`, `$imem_rd_addr`, `$inc_pc` |
| **ID (Instruction Decode)** | Decodes opcode, registers, immediate values | `$instr`, `$is_*_instr`, `$imm`, `$rs1_valid`, `$rs2_valid`, `$rd_valid`, `$funct3_valid`, `$funct7_valid`, `$opcode` |
| **EX (Execute)** | Performs ALU operations | `$src1_value`, `$src2_value`, `$result`, `$sltu_result`, `$sltiu_result` |
| **MEM (Memory Access)** | Reads/Writes from data memory | `$dmem_rd_en`, `$dmem_wr_en`, `$dmem_addr`, `$dmem_wr_data` |
| **WB (Write Back)** | Stores ALU or memory result in the register file | `$rf_wr_en`, `$rf_wr_index`, `$rf_wr_data` |

---

## **How Instructions Flow in a Pipeline**  
Let’s assume we execute these **5 instructions**:  

```asm
ADD x3, x1, x2  
SUB x4, x3, x2  
LW  x5, 0(x3)  
SW  x5, 0(x4)  
BEQ x1, x2, LABEL
```
Each instruction moves through the pipeline like this:

| **Cycle** | **IF**  | **ID**  | **EX**  | **MEM** | **WB**  |
|-----------|--------|--------|--------|--------|--------|
| 1         | ADD    |        |        |        |        |
| 2         | SUB    | ADD    |        |        |        |
| 3         | LW     | SUB    | ADD    |        |        |
| 4         | SW     | LW     | SUB    | ADD    |        |
| 5         | BEQ    | SW     | LW     | SUB    | ADD    |
| 6         | ...    | BEQ    | SW     | LW     | SUB    |


## **Pipeline Hazards in Pipelined RISC-V CPU**

| **Hazard Type**        | **Cause** | **Effect** | **Solution** |
|------------------------|----------|------------|--------------|
| **Data Hazard**        | One instruction depends on the result of a previous instruction | Incorrect execution order | Forwarding (Bypassing), Pipeline Stall |
| **Read-After-Write (RAW)** | Instruction reads a register before the previous instruction writes to it | Uses incorrect/old data | Forwarding, Stall if needed |
| **Write-After-Read (WAR)** | Instruction writes to a register before the previous instruction reads it | Incorrect register value | Register Renaming (Used in OoO CPUs) |
| **Write-After-Write (WAW)** | Two instructions write to the same register in the wrong order | Incorrect register update | Register Renaming, Instruction Reordering |
| **Control Hazard (Branch Hazard)** | Branch or jump instruction changes the flow | Pipeline executes the wrong instruction | Branch Prediction, Stall, Flush |
| **Structural Hazard** | Two instructions compete for the same hardware resource (e.g., memory or ALU) | Cannot execute both in the same cycle | Separate Memory (Harvard Architecture), Caching |


## **Pipelined CPU Implementation**

For the implementation of Pipelined RISCV CPU Core, let's see what changes we have to make to [Single Cycle RISCV Core](
