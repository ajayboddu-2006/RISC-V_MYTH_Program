# **Introduction to RISC-V ISA and GNU Compiler Toolchain**  

The **RISC-V Instruction Set Architecture (ISA)** is an **open-source, modular, and scalable** ISA designed for a wide range of computing applications, from embedded systems to high-performance computing. Unlike proprietary ISAs, **RISC-V** is freely available, allowing for innovation and customization in processor design. It follows a **Reduced Instruction Set Computing (RISC)** approach, enabling **simpler, faster, and more efficient instruction execution**.  

The **GNU Compiler Toolchain (GCC)** plays a crucial role in **compiling and optimizing** programs written in high-level languages like **C and C++** into **RISC-V assembly and machine code**. It consists of several tools, including:  
- **GNU Compiler Collection (GCC):** Converts high-level code into assembly.  
- **GNU Assembler (GAS):** Translates assembly into machine code.  
- **GNU Linker (LD):** Links compiled code to create executable programs.  
- **GNU Debugger (GDB):** Assists in debugging RISC-V applications.  

Together, the **RISC-V ISA and GNU Toolchain** enable **efficient software development and execution** on RISC-V processors, bridging the gap between **software applications and underlying hardware**.



## **Hardware and Software Interaction in RISC Computing**  

In modern computing, **hardware and software** work together to efficiently execute instructions. Hardware consists of **processors, memory, and input-output devices**, while software provides the **instructions** that control hardware operations. The **Reduced Instruction Set Computing (RISC)** architecture enhances this interaction by utilizing a **simplified set of instructions** that execute in a **single clock cycle**, improving **speed and efficiency**.  

RISC programming focuses on writing **low-level code** that interacts directly with the **processor**, enabling **better performance** in **embedded systems, microcontrollers, and high-speed computing applications**. The connection between **hardware and software** in **RISC systems** ensures:  
- **Streamlined execution**  
- **Reduced power consumption**  
- **Efficient resource utilization**  

This makes **RISC architecture** ideal for **real-time applications, operating systems, and performance-critical tasks**.  

---

## **Instruction Set Architecture (ISA)**  

An Instruction Set Architecture (ISA) is part of the abstract model of a computer that defines how the CPU is controlled by the software. The ISA acts as an interface between the hardware and the software, specifying both what the processor is capable of doing as well as how it gets done.
The ISA provides the only way through which a user is able to interact with the hardware. It can be viewed as a programmer’s manual because it’s the portion of the machine that’s visible to the assembly language programmer, the compiler writer, and the application programmer.
The ISA defines the supported data types, the registers, how the hardware manages main memory, key features (such as virtual memory), which instructions a microprocessor can execute, and the input/output model of multiple ISA implementations. The ISA can be extended by adding instructions or other capabilities, or by adding support for larger addresses and data values.

#Image

---

## **RISC-V Instruction set Architecture**

RISC-V is an open-source instruction set architecture used to develop custom processors for a variety of applications, from embedded designs to supercomputers. 
Unlike proprietary processor architectures, RISC-V is an open-source instruction set architecture (ISA) used for the development of custom processors targeting a variety of end applications. Originally developed at the University of California, Berkeley, the RISC-V ISA is considered the fifth generation of processors built on the concept of the reduced instruction set computer (RISC). Due to its openness and its technical merits, it has become very popular in recent years 

#Image

---

## **Translation between Software to Hardware :**

#Image 

---

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

---

## **Role of Hardware Description Language in bridging the gap between RISC Assembly language and Hardware :**

Hardware Description Languages (HDLs) like Verilog, SystemVerilog, and VHDL play a crucial role in bridging the gap between RISC assembly language and hardware implementation. While RISC assembly defines a set of instructions that software uses to communicate with the processor, HDL is used to design the underlying hardware that executes these instructions efficiently. HDL enables the implementation of processor components such as the arithmetic logic unit (ALU), registers, control unit, and memory interfaces, ensuring proper execution of the instruction pipeline, including fetch, decode, execute, memory access, and write-back stages. By defining the datapath and control logic, HDL allows designers to create optimized microarchitectures, such as pipelined, superscalar, or out-of-order execution units, enhancing processor performance. 

---

## **How Application Softwares are implemmented on Hardware?**

#Image

Application software is executed on hardware through the use of system software, which acts as an intermediary between the two. System software, such as operating systems, device drivers, and firmware, provides essential services that allow application programs to interact with hardware components efficiently. 


---

## **System Software:**

#Image 

### Operating System :
In system software, the operating system (OS) acts as a bridge between application software and hardware. When an application runs, the OS translates its high-level operations into corresponding C/C++/Java functions or system calls. These functions interact with the OS kernel, which manages resources like memory, CPU scheduling, file systems, and input/output operations. 


### Compiler :
The compiler translates these C/C++/Java functions into corresponding RISC-V ISA (Instruction Set Architecture) instructions. This conversion process involves compilation, assembly, and linking, where high-level code is broken down into RISC-V machine instructions that the processor can execute. 

### Assembler :
The assembler converts RISC-V assembly instructions into machine language, which is a binary format that the hardware can directly execute. This process is called assembly, where human-readable assembly instructions are translated into opcode and operand representations understood by the processor. 

---

## **RISC Instructions: The Abstract Interface Between C Language and Physical Hardware**
RISC (Reduced Instruction Set Computing) instructions serve as an abstract interface between high-level languages like C and the underlying physical hardware. When a C program is written, it is compiled into RISC-V assembly instructions, which are then converted into machine code that the hardware can execute.
This abstraction allows software developers to write programs without needing to understand the intricate details of hardware implementation. At the same time, the hardware executes standardized RISC instructions, ensuring efficiency, portability, and performance optimization. This makes RISC architectures, such as RISC-V, a key bridge between software and hardware in modern computing systems.

---

## **Role of Hardware Description Language (HDL) Between System Software and Hardware**

Between system software and hardware, Hardware Description Language (HDL) acts as a bridge that enables the implementation of software instructions into physical hardware behavior. 
While system software, including compilers, assemblers, and operating systems, translates high-level application code into machine instructions, these instructions need to be executed efficiently by the underlying hardware. 
HDLs are used to design and describe the digital circuits and processor architectures that execute system software instructions. 

#Image 

---

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

# image

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

# image


From the above RISC Instructions to implement the above C programs for Addition, Multiplication and Division, are categorized into special groups of Instructions as follows :


### **Pseudo Instructions :**
Pseudo instructions in RISC-V are simplified assembly instructions that make programming easier but do not directly correspond to actual machine instructions. The assembler translates them into one or more actual RISC-V instructions. They help improve code readability and reduce programming complexity. 
`**Eg :** mv, li, ret etc...`

### **Base Integer Instructions :(RV64I)**
The Base Integer Instruction Set in RISC-V serves as the foundation of the architecture, supporting essential operations such as arithmetic, logic, memory access, and control flow. It follows a load-store architecture, where computations are performed using registers while memory is accessed only through explicit load and store instructions. These instructions enable efficient processing and modularity, making them suitable for various applications ranging from embedded systems to high-performance computing. The base instruction set includes fundamental arithmetic and logical operations, as well as branch and jump instructions for program control. 
Nomenclature for these kind of Instructions is `RV64I`
`**Eg:** ld, addi, lw, sd, lu etc...`

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

# Image


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

# Image

### **Single and Double Precision Floating point extension (RV64F & RV64D) :**

The Single (RV64F) and Double Precision (RV64D) Floating-Point Extensions in RISC-V provide hardware support for floating-point arithmetic, enabling efficient computation for scientific, graphics, and AI applications. RV64F supports 32-bit (single-precision) floating-point operations, while RV64D extends this to 64-bit (double-precision) calculations. These extensions include addition, subtraction, multiplication, division, fused multiply-add (FMA), comparisons, and type conversions between integer and floating-point formats. 
Nomenclature for Single Precision Floating Point Extension Instructionsis `RV64F.`
Nomenclature for Double Precision Floating Point Extension Instructionsis `RV64D.`
Processor which supports operations related to `Base Integer Instructions, Multiply Extension Instructions, Single Precision Floating Point Extension Instructionsis and Double Precision Floating point Extension Instructions` is known as `RV64IMFD CPU Core`.
`**Eg:** flw, fmv, fmul, fdiv etc...`

Let’s consider the followinf RISC  Instructions....

# Image

### **Application Binary Interface (ABI) :**

The Application Binary Interface (ABI) defines the conventions for how software interacts with the underlying hardware and system software at the binary level. It specifies details such as register usage, function calling conventions, system calls, memory layout, and data type sizes. The ABI ensures compatibility between compiled programs, operating systems, and libraries, allowing executables to run seamlessly on different implementations of the same architecture. In RISC-V, the ABI standardizes how registers are assigned for function arguments, return values, and temporary storage, enabling efficient execution and interoperability across software components. Applications Bianry Interface enables users to directly interact with the memory registers to perform RISC-V operations.

# Image

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

# Image

Now to compile the above program using GCC RISC compiler, run the below commmand in terminal

```
riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
```

To disassemble the code, run the below command

```
risc64-unknown-elf-objdump -d sum1ton.o
```

Now you can view the Disassemble section of `**<main> **` as follows :

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
