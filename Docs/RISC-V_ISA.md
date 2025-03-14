# **Introduction to RISC-V ISA and GNU Compiler Toolchain**  

The **RISC-V Instruction Set Architecture (ISA)** is an **open-source, modular, and scalable** ISA designed for a wide range of computing applications, from embedded systems to high-performance computing. Unlike proprietary ISAs, **RISC-V** is freely available, allowing for innovation and customization in processor design. It follows a **Reduced Instruction Set Computing (RISC)** approach, enabling **simpler, faster, and more efficient instruction execution**.  

The **GNU Compiler Toolchain (GCC)** plays a crucial role in **compiling and optimizing** programs written in high-level languages like **C and C++** into **RISC-V assembly and machine code**. It consists of several tools, including:  
- **GNU Compiler Collection (GCC):** Converts high-level code into assembly.  
- **GNU Assembler (GAS):** Translates assembly into machine code.  
- **GNU Linker (LD):** Links compiled code to create executable programs.  
- **GNU Debugger (GDB):** Assists in debugging RISC-V applications.  

Together, the **RISC-V ISA and GNU Toolchain** enable **efficient software development and execution** on RISC-V processors, bridging the gap between **software applications and underlying hardware**.

<br>

## **Hardware and Software Interaction in RISC Computing**  

In modern computing, **hardware and software** work together to efficiently execute instructions. Hardware consists of **processors, memory, and input-output devices**, while software provides the **instructions** that control hardware operations. The **Reduced Instruction Set Computing (RISC)** architecture enhances this interaction by utilizing a **simplified set of instructions** that execute in a **single clock cycle**, improving **speed and efficiency**.  

RISC programming focuses on writing **low-level code** that interacts directly with the **processor**, enabling **better performance** in **embedded systems, microcontrollers, and high-speed computing applications**. The connection between **hardware and software** in **RISC systems** ensures:  
- **Streamlined execution**  
- **Reduced power consumption**  
- **Efficient resource utilization**  

This makes **RISC architecture** ideal for **real-time applications, operating systems, and performance-critical tasks**.  

<br>

## **Instruction Set Architecture (ISA)**  

An Instruction Set Architecture (ISA) is part of the abstract model of a computer that defines how the CPU is controlled by the software. The ISA acts as an interface between the hardware and the software, specifying both what the processor is capable of doing as well as how it gets done.
The ISA provides the only way through which a user is able to interact with the hardware. It can be viewed as a programmer’s manual because it’s the portion of the machine that’s visible to the assembly language programmer, the compiler writer, and the application programmer.
The ISA defines the supported data types, the registers, how the hardware manages main memory, key features (such as virtual memory), which instructions a microprocessor can execute, and the input/output model of multiple ISA implementations. The ISA can be extended by adding instructions or other capabilities, or by adding support for larger addresses and data values.


| ![Types_of_ISA](./../Images/Types_of_ISA.png) |
| :--------------------------------------------------: |
|           Types of ISA       |


<br>

## **RISC-V Instruction set Architecture**

RISC-V is an open-source instruction set architecture used to develop custom processors for a variety of applications, from embedded designs to supercomputers. 
Unlike proprietary processor architectures, RISC-V is an open-source instruction set architecture (ISA) used for the development of custom processors targeting a variety of end applications. Originally developed at the University of California, Berkeley, the RISC-V ISA is considered the fifth generation of processors built on the concept of the reduced instruction set computer (RISC). Due to its openness and its technical merits, it has become very popular in recent years 

| ![RISCV](./../Images/RISCV_logo.png) |
| :--------------------------------------------------: |
|           RISCV - An Open Source ISA       |


<br>

## **Translation between Software to Hardware :**

| ![Types_of_ISA](./../Images/software_to_hardware.png) |
| :--------------------------------------------------: |
|           Translation from Software to Hardware      |



<br>

## **Role of RISC-V in Hardware and Software Integration**
RISC-V acts as a common language between software applications (like operating systems, compilers, and user programs) and the processor hardware that executes instructions. This connection allows efficient instruction execution, optimizing performance, power, and cost.

### How RISC-V Bridges the Gap?

#### Standardized ISA:
- Defines a universal instruction set that software can rely on, regardless of the hardware implementation.
- Allows different processors to execute the same software without modification.
      
#### Compiler and OS Support:
- Software compilers (e.g., GCC, LLVM) translate high-level code (C, C++) into RISC-V assembly.
- Operating systems like Linux and RTOS manage RISC-V hardware resources for software execution.
      
#### Modular and Scalable:
- RISC-V offers custom extensions, allowing designers to tailor hardware for specific applications (AI, IoT, Embedded, HPC).
- Ensures compatibility between different software layers and hardware designs.

#### Efficient Execution of Instructions:
- RISC-V simplifies hardware design with a reduced instruction set, improving power efficiency and performance.
- Software developers can write optimized code leveraging RISC-V’s load/store architecture.

<br>

## **Role of Hardware Description Language in bridging the gap between RISC Assembly language and Hardware :**

Hardware Description Languages (HDLs) like Verilog, SystemVerilog, and VHDL play a crucial role in bridging the gap between RISC assembly language and hardware implementation. While RISC assembly defines a set of instructions that software uses to communicate with the processor, HDL is used to design the underlying hardware that executes these instructions efficiently. HDL enables the implementation of processor components such as the arithmetic logic unit (ALU), registers, control unit, and memory interfaces, ensuring proper execution of the instruction pipeline, including fetch, decode, execute, memory access, and write-back stages. By defining the datapath and control logic, HDL allows designers to create optimized microarchitectures, such as pipelined, superscalar, or out-of-order execution units, enhancing processor performance. 

<br>

## **How Application Softwares are implemmented on Hardware?**

| ![Types_of_ISA](./../Images/App_to_Hardware.png) |
| :--------------------------------------------------: |
|           Application Software to Hardware       |

Application software is executed on hardware through the use of system software, which acts as an intermediary between the two. System software, such as operating systems, device drivers, and firmware, provides essential services that allow application programs to interact with hardware components efficiently. 


<br>

## **System Software:**

| ![Types_of_ISA](./../Images/system_software.png) |
| :--------------------------------------------------: |
|          System Software     | 

### Operating System :
In system software, the operating system (OS) acts as a bridge between application software and hardware. When an application runs, the OS translates its high-level operations into corresponding C/C++/Java functions or system calls. These functions interact with the OS kernel, which manages resources like memory, CPU scheduling, file systems, and input/output operations. 


### Compiler :
The compiler translates these C/C++/Java functions into corresponding RISC-V ISA (Instruction Set Architecture) instructions. This conversion process involves compilation, assembly, and linking, where high-level code is broken down into RISC-V machine instructions that the processor can execute. 

### Assembler :
The assembler converts RISC-V assembly instructions into machine language, which is a binary format that the hardware can directly execute. This process is called assembly, where human-readable assembly instructions are translated into opcode and operand representations understood by the processor. 

<br>

## **RISC Instructions: The Abstract Interface Between C Language and Physical Hardware**
RISC (Reduced Instruction Set Computing) instructions serve as an abstract interface between high-level languages like C and the underlying physical hardware. When a C program is written, it is compiled into RISC-V assembly instructions, which are then converted into machine code that the hardware can execute.
This abstraction allows software developers to write programs without needing to understand the intricate details of hardware implementation. At the same time, the hardware executes standardized RISC instructions, ensuring efficiency, portability, and performance optimization. This makes RISC architectures, such as RISC-V, a key bridge between software and hardware in modern computing systems.

<br>

## **Role of Hardware Description Language (HDL) Between System Software and Hardware**

Between system software and hardware, Hardware Description Language (HDL) acts as a bridge that enables the implementation of software instructions into physical hardware behavior. 
While system software, including compilers, assemblers, and operating systems, translates high-level application code into machine instructions, these instructions need to be executed efficiently by the underlying hardware. 
HDLs are used to design and describe the digital circuits and processor architectures that execute system software instructions. 

| ![Types_of_ISA](./../Images/SystemSoftware_HDL_Hardware.png) |
| :--------------------------------------------------: |
|          HDL - Bridge between System Software and Hardware     |


<br>

## **RISC-V Instructions :**

RISC-V instructions are a set of machine-level commands that control the execution of programs on RISC-V processors. They follow the Reduced Instruction Set Computing (RISC) architecture, which emphasizes simplicity, efficiency, and modularity. 

Let’s take a simple C program for Addition...

```c

#include <stdio.h>
int main(){
	int num1, num2;
	register int sum;
	printf("\nEnter the Number 1 : ");
	scanf("%d", &num1);
	printf("\nEnter the Number 2 : ");
	scanf("%d", &num2);
	sum = num1 + num2;
	printf("\nSum of Numbers : %d", sum);
	printf("\n");
	return 0;
}

```

Below are the RISC-V Instructions implementing the above C program for Addition...

| ![Types_of_ISA](./../Images/Pseudo_Base_integer_instr.png) |
| :--------------------------------------------------: |
|           Pseudo Instructions & Base Integer Instructions     |

Now, Let’s take a simple C program for Multiplication and Division...

```c

#include <stdio.h>
int main(){
	int num1, num2;
	register int mul, div;
	printf("\nEnter the Number 1 : ");
	scanf("%d", &num1);
	printf("\nEnter the Number 2 : ");
	scanf("%d", &num2);
	mul = num1 * num2;
	div = num1 / num2;
	printf("\nInt Multiplication of Numbers : %d", mul);
	printf("\nInt Division of Numbers : %d", div);
	printf("\n");
	return 0;
}

```

Below are the RISC-V Instructions implementing the above C program for Multiplication and Division...

| ![Types_of_ISA](./../Images/./../Images/Pseudo_Base_integer_instr_2.png) |
| :--------------------------------------------------: |
|           Pseudo & Base Integeer Instructions      |



| ![Types_of_ISA](./../Images/Pseudo_Base_integer__mul_ext_instr.png) |
| :--------------------------------------------------: |
|           Pseudo, Base Integer & Multiply Extension Instructions       |

From the above RISC Instructions to implement the above C programs for Addition, Multiplication and Division, are categorized into special groups of Instructions as follows :

<br>

### **Pseudo Instructions :**
Pseudo instructions in RISC-V are simplified assembly instructions that make programming easier but do not directly correspond to actual machine instructions. The assembler translates them into one or more actual RISC-V instructions. They help improve code readability and reduce programming complexity. 
`**Eg :** mv, li, ret etc...`

<br>

### **Base Integer Instructions :(RV64I)**
The Base Integer Instruction Set in RISC-V serves as the foundation of the architecture, supporting essential operations such as arithmetic, logic, memory access, and control flow. It follows a load-store architecture, where computations are performed using registers while memory is accessed only through explicit load and store instructions. These instructions enable efficient processing and modularity, making them suitable for various applications ranging from embedded systems to high-performance computing. The base instruction set includes fundamental arithmetic and logical operations, as well as branch and jump instructions for program control. 
Nomenclature for these kind of Instructions is `RV64I`
`**Eg:** ld, addi, lw, sd, lu etc...`
<br>

### **Multiply Extension : (RV64M)**
The Multiply Extension (RV64M) in RISC-V adds hardware support for multiplication and division operations, enhancing performance for arithmetic-intensive applications. It includes instructions for signed and unsigned multiplication, division, and remainder calculations on 64-bit integers. The multiplication operations produce both lower and upper 64-bit results, while division instructions handle signed and unsigned division with proper handling of division by zero. 
Nomenclature for these kind of Instructions is `RV64M`.
Processor which supports both operations related to Base Integer and Multiply Extension Instructions is known as `RV64IM CPU Core`
`**Eg:** divw, mulw etc.`


Now, Let’s take a simple C program for Floating point Addition...

```c

#include <stdio.h>
int main(){ 
	float num1, num2;
	register float sum;
	printf("\nEnter the Number 1 : ");
	scanf("%f", &num1);
	printf("\nEnter the Number 2 : ");
	scanf("%f", &num2);
	sum = num1 + num2;
	printf("\nSum of Numbers : %f", sum);
	printf("\n");
	return 0;
}

```

Below are the RISC-V Instructions implementing the above C program for Floating point Addition...

| ![Types_of_ISA](./../Images/single_double_floating_instr.png) |
| :--------------------------------------------------: |
|           Single and Double Floating Point Extension       |


Now, Let’s take a simple C program for Floating point Multiplication and Division...

```c

#include <stdio.h>
int main(){
	float num1, num2;
	register float mul, div;
	printf("\nEnter the Number 1 : ");
	scanf("%f", &num1);
	printf("\nEnter the Number 2 : ");
	scanf("%f", &num2);
	mul = num1 * num2;
	div = num1 / num2;
	printf("\nInt Multiplication of Numbers : %f", mul);
	printf("\nInt Division of Numbers : %f", div);
	printf("\n");
	return 0;
}

```

Below are the RISC-V Instructions implementing the above C program for Floating point Multiplication and Division...

| ![Types_of_ISA](./../Images/fl_point_mul_div_instr.png) |
| :--------------------------------------------------: |
|           Single and Double Floating Point Extension      |

| ![Types_of_ISA](./../Images/fl_point_mul_div_instr_2.png) |
| :--------------------------------------------------: |
|           Single and Double Floating Point Extension       |


<br>

### **Single and Double Precision Floating point extension (RV64F & RV64D) :**

The Single (RV64F) and Double Precision (RV64D) Floating-Point Extensions in RISC-V provide hardware support for floating-point arithmetic, enabling efficient computation for scientific, graphics, and AI applications. RV64F supports 32-bit (single-precision) floating-point operations, while RV64D extends this to 64-bit (double-precision) calculations. These extensions include addition, subtraction, multiplication, division, fused multiply-add (FMA), comparisons, and type conversions between integer and floating-point formats. 
Nomenclature for Single Precision Floating Point Extension Instructionsis `RV64F.`
Nomenclature for Double Precision Floating Point Extension Instructionsis `RV64D.`
Processor which supports operations related to `Base Integer Instructions, Multiply Extension Instructions, Single Precision Floating Point Extension Instructionsis and Double Precision Floating point Extension Instructions` is known as `RV64IMFD CPU Core`.
`**Eg:** flw, fmv, fmul, fdiv etc...`

Let’s consider the followinf RISC  Instructions....

| ![Types_of_ISA](./../Images/ABI.png) |
| :--------------------------------------------------: |
|           Application Binary Interface       |


<br>


### **Application Binary Interface (ABI) :**

The Application Binary Interface (ABI) defines the conventions for how software interacts with the underlying hardware and system software at the binary level. It specifies details such as register usage, function calling conventions, system calls, memory layout, and data type sizes. The ABI ensures compatibility between compiled programs, operating systems, and libraries, allowing executables to run seamlessly on different implementations of the same architecture. In RISC-V, the ABI standardizes how registers are assigned for function arguments, return values, and temporary storage, enabling efficient execution and interoperability across software components. Applications Bianry Interface enables users to directly interact with the memory registers to perform RISC-V operations.

| ![Types_of_ISA](./../Images/memory_alloc_stack_ptr.png) |
| :--------------------------------------------------: |
|           Memory Allocation and Stack Pointer      |

<br>

### **Memory Allocation and Stack Pointer :**
In RISC-V, memory allocation is managed using both the stack and heap memory regions. The stack pointer (sp) plays a crucial role in maintaining the top of the stack, which grows downward in memory. It is responsible for storing local variables, function arguments, and return addresses during function calls. Each function invocation pushes data onto the stack, and once the function completes, the stack pointer is adjusted to free the allocated space. 

<br>


## **Lab work  on RISC-V Software Toolchain :**

In this lab, we will compile and disassemble a C program on Sum of N numbers intp RISC-V instructions using GCC Compiler and we will simulate and debug the RISC Instructions using Spike Simulator.

Below is the C program for Sum of Numbers from 1 to N...

```c

#include <stdio.h>

int main() {
	int i, sum = 0, n = 100;
	for(i=1; i <= n; ++i) {
		sum += i;
	}
	printf("Sum of numbers from 1 to %d is %d\n", n, sum);
	return 0;
}

```

Now open the terminal and compile the above C program using the gcc C compiler by using the below command

```
gcc sum1ton.c
```

Now type the below command to view the results

```
./a.out
```

You can view the result as follows...

```sh
Sum of numbers from 1 to 100 is 5050
```

| ![Types_of_ISA](./../Images/gcc_c_program_op.png) |
| :--------------------------------------------------: |
|           Output for C program on sum of 1 to N numbers      |

Now to compile the above program using GCC RISC compiler, run the below commmand in terminal

```
riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
```

To disassemble the code, run the below command

```
risc64-unknown-elf-objdump -d sum1ton.o
```

Now you can view the Disassemble section of `<main>` as follows :

```asm

Disassembly of section .text:

00000000000100b0 <main>:
   100b0:       00001637                lui     a2,0x1
   100b4:       00021537                lui     a0,0x21
   100b8:       ff010113                addi    sp,sp,-16
   100bc:       3ba60613                addi    a2,a2,954 # 13ba <main-0xecf6>
   100c0:       06400593                li      a1,100
   100c4:       18050513                addi    a0,a0,384 # 21180 <__clzdi2+0x44>
   100c8:       00113423                sd      ra,8(sp)
   100cc:       340000ef                jal     ra,1040c <printf>
   100d0:       00813083                ld      ra,8(sp)
   100d4:       00000513                li      a0,0
   100d8:       01010113                addi    sp,sp,16
   100dc:       00008067                ret

```

Here, we can see that, for the above C program to computer sum of N numbers, total no. Of instructions required is 12...

Now to compile the program based on RISC instructions, type the below command in terminal.

```
spike pk sum1ton.o
```

| ![Types_of_ISA](./../Images/gcc_riscv_c_program_op.png) |
| :--------------------------------------------------: |
|           Output for C program on sum of 1 to N numbers using Spike Simulator       |

Now, you can see the output as follows...

Now, using Spike Simular we can also debug the program based on RISC-V Instructions...
To open the debug mode, type the below command, then you can view the debug mode with a prompt as (spike)

```
spike -d pk sum1ton.o
```

In the debug mode, to run the Instructions upto 100b0, type the below command..

```
(spike) until pc 0 100b0
```

Now, to view the contents of register a2, type the below commands

```
(spike) reg 0 a2
```

Now to execute the instruction, simple click “Enter”. You will see the next Instructioon being executed. Now again, view the contents of regsiter a2 

```
(spike) reg 0 a2
```

You can see the content of register a2 is changes after the execution of the Instruction.
Similarly, you can implement furthur Instructions as follows...

| ![Types_of_ISA](./../Images/spike_debug.png) |
| :--------------------------------------------------: |
|           RISC-V Instructions Debug using Spike Simulator       |

<br>

## **Representation of 64-bit Number System :**

The conversion of decimal to binary is a fundamental process in digital computing, as computers operate using binary (base-2) rather than decimal (base-10). 
The coversion from Decimal to Binary is crucial because computers process and store data in binary format, enabling efficient circuit design, memory storage, and programming. Digital logic circuits, such as registers and logic gates, rely on binary signals, and low-level programming languages like Assembly directly use binary representation for execution. Additionally, binary encoding is fundamental in data transmission, networking protocols, and error detection mechanisms. By converting decimal to binary, human-readable numbers can be seamlessly interpreted and processed by computer systems, ensuring smooth operation and communication between software and hardware. 

For example, consider the following number...

```
(17446744073708551615) -----> Decimal
```
```
(1111001000011111010010010100110001011000100011001011110110111111)-----> Binary
```

Above is the binary representation of the above 64-bit decimal number...

Here we need to know some Specs related to number system which are as follows:


|              |              |
|--------------|--------------|
| 8-bytes or 2-words |  Double Word/8-bytes |
| 4-bytes | Word |
| 8-bits | 1-byte |


 No. of patterns we can represent using n-bit representation is `(2n – 1)`

So, using 64-bit number Representation, we can represent (2<sup>64</sup> - 1) patterns.


Maximum number that we can represent using 64-bit is `18,446,744,073,709,551,615.`
Minimum number that we can represent using 64-bit is 0.

Here, 64-bit number system is considered as `RV64 system.`

<br>

## **RV64 representation for Unsigned and Signed Numbers :**

We represent a RV64 number into signed representation using 2’s-complement.
To convert a RV64 number into its negative form, first we have to to invert the bits and adding “1” to it.

Let’s take an example as follows:

| ![Types_of_ISA](./../Images/2s_complement.png) |
| :--------------------------------------------------: |
|          2's complement of a number      |

#### Sign-bit :

```

For Positive Numbers
		MSB ----> 0(Sign-bit)
For Negative Numbers 
		MSB -----> 1(Sign-bit)

```

#### Range of RV64 Signed and Unsigned Numbers :

Range of RV64 Unsigned number is 0 to (2<sup>64</sup> -1)
Range of RV64 Signed number is -2<sup>63</sup> to 2<sup>63</sup>-1

<br>


## **LAB : C program for RV64 Signed and Unsigned Numbers**

### **C program for Unsigned Numbers :**

```c

#include <stdio.h>
#include <math.h>
int main(){
	unsigned long long int max_value = (unsigned long long int) (pow(2, 64) - 1);
	printf("HIghest value of Unsigned Integer value in 64-bit format is %llu\n", max_value);
	return 0;
}

```

#### Output :

| ![Types_of_ISA](./../Images/unsigned_c_program_op.png) |
| :--------------------------------------------------: |
|           Output of C program for the range defined for RV64 Unsigned Numbers       |

### **C program for Signed Numbers :**

```c

#include <stdio.h>
#include <math.h>
int main() {
	long long int max_value = (long long int) (pow(2, 63)-1);
	long long int min_value = (long long int) ((pow(2, 63)-1)*(-1));
	printf("Max value of Signed integer for 64 bit format is %lld\n", max_value);
	printf("Min value of Signed integer for 64 bit format is %lld\n", min_value);
	return 0;
}

```

#### Output :

| ![Types_of_ISA](./../Images/signed_c_program_op.png) |
| :--------------------------------------------------: |
|           Output of C program for the range defined for RV64 Signed Numbers       |


<br>

## **Application Binary Interface :**

The Application Binary Interface (ABI) serves as a crucial bridge between application programs and the underlying system, defining how software interacts with hardware at the binary level. It specifies conventions for function calls, register usage, memory access, and system call mechanisms, ensuring seamless communication between user applications and the operating system. In the context of RISC-V, the ABI standardizes how registers are used, enabling application programs to access registers via system calls, without needing direct hardware control. This abstraction allows software to run efficiently on different RISC-V implementations while maintaining compatibility across systems. 
Application Binary Interface also known as the System Call Interface.
User can access the Hardware resources through ABI via Registers.


| ![Types_of_ISA](./../Images/ABI_reg.png) |
| :--------------------------------------------------: |
|            Application Binary Interface       |


In RISC-V Specifications we have total of 32 Registers. The width of Registers is specified by the Keyword “XLEN”.

| RISC-V Architecture | XLEN |
|----------|----------|
| RV64 | 64 |
| RV32 | 32 |


Here, we have to note one point, that RISC-V belongs to little-endian Memory addressign System 

### Memory Addressing Systems :
There are two types of Memory Addressing systems
    • Big-endian memory addressing system
    • Little-endian memory addressign system

We refer the memory in terms of Bytes. These two memory addressing systems differ in Byte ordering.


| ![Types_of_ISA](./../Images/byte_ordering.png) |
| :--------------------------------------------------: |
|           Types of Memory Addressing System      |

<br>

### Memory addressing according RISC-V(RV64) specifications :


| ![Types_of_ISA](./../Images/rv64_memory_addressing.png) |
| :--------------------------------------------------: |
|           Memory Addressing based on RV64 Specifications      |


According to the specifications, the address of the above doubleword is m[0]
Similarly, 
          Address of second doubleword is m[8]
	  Address of third doubleword is m[16]

<br>

### **Why 32 registers in RISC-V Architecture :**

The reason for this is that the registers used in RISC-V instructions are of 5-bit wide, And using 5-bits, we can represent 32-patterns. So, there are 32 registers in RISC-V.

The significance of all 32 registers are as follows :


| ![Types_of_ISA](./../Images/reg_32.png) |
| :--------------------------------------------------: |
|           Significance of 32 Rgeisters for RISCV-Architecture      |

<br>

### **RISC-V Instructions :**

#### 1. Load Instruction :

The `ld (Load Double-Word)` instruction in RISC-V is used to load a 64-bit (double-word) value from memory into a register. It is part of the RV64I base instruction set and is primarily used in 64-bit RISC-V architectures. 


| ![Types_of_ISA](./../Images/ld.png) |
| :--------------------------------------------------: |
|           "ld"(load doubleword)     |


The way the Instruction is stored in the memory is as follows:


| ![Types_of_ISA](./../Images/ld_instr.png) |
| :--------------------------------------------------: |
|          'ld' Instruction    |


- rd          → Destination register where the loaded value is stored. 
- offset(rs1) → Memory address computed by adding the offset to the value in rs1. 
- Opcode      → Defines the Instruction.In this case “ld”
- funct3      → Additional bits that defines the Instructions
- immediate   → Represent the immediate number.


#### 2. add Instruction :
The ADD instruction in RISC-V is used to perform integer addition between two registers. It follows the R-type instruction format.


| ![Types_of_ISA](./../Images/add.png) |
| :--------------------------------------------------: |
|           "add" Instruction |


The way the Instruction is stored in the memory is as follows:


| ![Types_of_ISA](./../Images/add_instr.png) |
| :--------------------------------------------------: |
|           'add' Instruction      |


- rd               → Destination register where the result is stored. 
- rs1              → First source register. 
- rs2              → Second source register. 
- immediate        → Represent the immediate number.
- funct3 & funct7  → Additional bits that defines the Instructions

#### 3. sd Instruction :

The SD (Store Doubleword) instruction in RISC-V stores a 64-bit value from a register into memory. It is available in the RV64I base ISA.


| ![Types_of_ISA](./../Images/sd.png) |
| :--------------------------------------------------: |
|          "sd" (Store Doubleword)     |


The way the Instruction is stored in the memory is as follows:


| ![Types_of_ISA](./../Images/sd_instr.png) |
| :--------------------------------------------------: |
|           'sd' Instruction     |


- immediate[11:5] → Represents the upper bits (11 to 5) of the immediate value used in the instruction. 
- rs2             → Second source register used in the instruction. 
- rs1             → First source register used in the instruction. 
- funct3          → Defines the specific operation within the instruction category. 
- immediate[4:0]  → Represents the lower bits (4 to 0) of the immediate value used in the instruction. 
- opcode          → Specifies the type of instruction being executed.


<br>

### **Types of RISC-V Instructions :**

RISC-V instructions are categorized into different types based on their functionality and encoding format:

**1. R-Type (Register-Register Instructions)**
- Used for arithmetic and logical operations. 
- Example: add rd, rs1, rs2 (Addition of two registers). 
	
**2. I-Type (Immediate Instructions)**
- Used for operations involving immediate values and load instructions. 
- Example: addi rd, rs1, imm (Addition with an immediate value). 
	
**3. S-Type (Store Instructions)**

- Used for storing data from registers to memory. 
-  Example: sw rs2, imm(rs1) (Store word to memory). 
	
**4. B-Type (Branch Instructions)**
- Used for conditional branching based on comparisons. 
-  Example: beq rs1, rs2, offset (Branch if equal). 
	
**5. U-Type (Upper Immediate Instructions)**
- Example: lui rd, imm (Load upper immediate). 
	
**6. J-Type (Jump Instructions)**
- Used for jump operations. 
- Example: jal rd, offset (Jump and link)


<br>
 
### **Execution of C program using ABI function calls :**

In this lab, we are going to execute a C program using ABI function calls.


| ![Types_of_ISA](./../Images/abi_function_call.png) |
| :--------------------------------------------------: |
|        Execution of C program through ABI function calls     |


As we can see above, we are going to write a C program for computaion of sum of 1 to N numbers and from C program ABI function calls are made from Assembly language written in RISC-V ISA. ASM Language will execute them, and then, the results are returned back to the Main C program.

Below is our original C program that we are going to execute using ASM function calls.

```c

#include <stdio.h>

int main() {
	int i, sum = 0, n = 9;
	for(i=1; i <= n; ++i) {
		sum += i;
	}
	printf("Sum of numbers from 1 to %d is %d\n", n, sum);
	return 0;
}

```

Below is the algorithm for the above C program which we will take as reference for the ASM code.


| ![Types_of_ISA](./../Images/asm_chart.png) |
| :--------------------------------------------------: |
|           ASM Diagram for C program      |



Now we have to modify the above C program to make ABI function calls as below :

```c

#include <stdio.h>

extern int load(int x, int y); 

int main() {
	int result = 0;
       	int count = 2;
    	result = load(0x0, count+1);
    	printf("Sum of number from 1 to %d is %d\n", count, result); 
}

```

For the above program the Assembly language code is as follows :

```asm

.section .text
.global load
.type load, @function

load:
	add 	a4, a0, zero //Initialize sum register a4 with 0x0
	add 	a2, a0, a1   // store count of 10 in register a2. Register a1 is loaded with 0xa 
                                             (decimal 10) from main program
	add	a3, a0, zero // initialize intermediate sum register a3 by 0
loop:	add 	a4, a3, a4   // Incremental addition
	addi 	a3, a3, 1    // Increment intermediate register by 1	
	blt 	a3, a2, loop // If a3 is less than a2, branch to label named <loop>
	add	a0, a4, zero // Store final result to register a0 so that it can be read by main 
                                               program
	ret

```

Now, to compile the program, using Spike Simulator run the commands as shown  below :


| ![Types_of_ISA](./../Images/function_call_c_op.png) |
| :--------------------------------------------------: |
|          Output of C program through ABI function Calls    |



Now you can see the RISC-V Instructions as below

```asm

00000000000100b0 <main>:
   100b0:       ff010113                addi    sp,sp,-16
   100b4:       00a00593                li      a1,10
   100b8:       00000513                li      a0,0
   100bc:       00113423                sd      ra,8(sp)
   100c0:       0fc000ef                jal     ra,101bc <load>
   100c4:       00050613                mv      a2,a0
   100c8:       00021537                lui     a0,0x21
   100cc:       00900593                li      a1,9
   100d0:       1a050513                addi    a0,a0,416 # 211a0 <__clzdi2+0x3c>
   100d4:       360000ef                jal     ra,10434 <printf>
   100d8:       00813083                ld      ra,8(sp)
   100dc:       00000513                li      a0,0
   100e0:       01010113                addi    sp,sp,16
   100e4:       00008067                ret

```

Upto now, we compiled our C program using ABI function calls on the ASM program.
Now its time to compile our C program on a picorv32a CPU Core.

<br>

### **LAB : Execution of C program on a RISC-V CPU Core** 

To perform this lab, first of all, clone a github repository, which consists of our RISCV CPU Core written in Verilog using the below command.

```bash
git clone https://github.com/kunalg123/riscv_workshop_collaterals.git
```

Now, Inside the repository you will find all files related to this lab inside the `labs` directory.


For this execution, we have the verilog code for the picorv32a RISC-V cpu core

The methodology of this Implementation is as follows:


| ![Types_of_ISA](./../Images/c_exec_riscv_core.png) |
| :--------------------------------------------------: |
|          Methodology for the Execution of C program on a RISCV CPU Core      |


Below are the C program and ASM code that we are going to execute...

#### C Program :

```C

#include <stdio.h>

extern int load(int x, int y); 

int main() {
	int result = 0;
       	int count = 2;
    	result = load(0x0, count+1);
    	printf("Sum of number from 1 to %d is %d\n", count, result); 
}

```

#### ASM Code :

```asm

.section .text
.global load
.type load, @function

load:
	add 	a4, a0, zero //Initialize sum register a4 with 0x0
	add 	a2, a0, a1   // store count of 10 in register a2. Register a1 is loaded with 0xa 
                                             (decimal 10) from main program
	add	a3, a0, zero // initialize intermediate sum register a3 by 0
loop:	add 	a4, a3, a4   // Incremental addition
	addi 	a3, a3, 1    // Increment intermediate register by 1	
	blt 	a3, a2, loop // If a3 is less than a2, branch to label named <loop>
	add	a0, a4, zero // Store final result to register a0 so that it can be read by main 
                                               program
	ret

```

To execute this, we will write a testbench for the cpu core, and extract the hex file containing our C program, and store it inside the memory, from which the cpu core will execute the program.
Then, the cpu will process the contents of the memory, and displays the result of the C program that is sum of numbers from 1 to N, on the Standard display.

Below is the script file “`rv32im.sh`” to generate the hex file of our C program and load it into the memory and execute the C program on our RISC-V CPU Core written in Verilog.

```bash

riscv64-unknown-elf-gcc -c -mabi=ilp32 -march=rv32im -o 1to9_custom.o 1to9_custom.c 
riscv64-unknown-elf-gcc -c -mabi=ilp32 -march=rv32im -o load.o load.S

riscv64-unknown-elf-gcc -c -mabi=ilp32 -march=rv32im -o syscalls.o syscalls.c
riscv64-unknown-elf-gcc -mabi=ilp32 -march=rv32im -Wl,--gc-sections -o firmware.elf load.o 1to9_custom.o syscalls.o -T riscv.ld -lstdc++
chmod -x firmware.elf
riscv64-unknown-elf-gcc -mabi=ilp32 -march=rv32im -nostdlib -o start.elf start.S -T start.ld -lstdc++
chmod -x start.elf
riscv64-unknown-elf-objcopy -O verilog start.elf start.tmp
riscv64-unknown-elf-objcopy -O verilog firmware.elf firmware.tmp
cat start.tmp firmware.tmp > firmware.hex
python3 hex8tohex32.py firmware.hex > firmware32.hex
rm -f start.tmp firmware.tmp
iverilog -o testbench.vvp testbench.v picorv32.v
chmod -x testbench.vvp
vvp -N testbench.vvp

```

Now, we have to run the above script as shown below :



| ![Types_of_ISA](./../Images/c_exec_riscv_core_op.png) |
| :--------------------------------------------------: |
|          Output of the C program executed on RISCV CPU core      |


You can see above, the output of the C program implemented on RISC-V CPU Core written in Verilog.
