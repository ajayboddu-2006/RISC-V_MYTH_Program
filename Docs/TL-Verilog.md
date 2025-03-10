# **Transaction-Level Verilog (TL-Verilog)**
TL-Verilog is an emerging extension to SystemVerilog that supports transaction-level design methodology. In transaction-level design, a **transaction** is an entity that moves through a microarchitecture. It is operated upon and steered through the machinery by flow components such as pipelines, arbiters, and queues. A transaction might be a **machine instruction, a flit of a packet, or a memory read/write**. The flow of a transaction can be established independently from the logic that operates on the transaction.  

---

## **Features of TL-Verilog**
### 1️⃣ Pipeline-Centric Design
- TL-Verilog introduces **implicit pipelines** using `|pipe`, making sequential logic more structured and readable.
- Eliminates the need for **explicit clocking and always blocks**.

### 2️⃣ Concise and Readable Syntax
- Reduces **boilerplate code** compared to traditional Verilog/SystemVerilog.
- Uses **hierarchical scoping (`|` notation)** for better organization.

### 3️⃣ Automatic Signal Propagation
- Variables automatically flow across pipeline stages (`@0, @1, etc.`).
- No need for manually coding **registers or delays**.

### 4️⃣ Modular and Reusable Design
- Encourages **reuse of pipeline structures**, reducing redundancy.
- **Scoped signals** prevent naming conflicts and improve clarity.

### 5️⃣ Enhanced Debugging and Simulation
- Provides built-in visualization tools like **Makerchip** for **interactive debugging**.
- Debugging is **simpler and more intuitive** due to structured pipeline stages.

### 6️⃣ Clock and Reset Abstraction
- No need to explicitly define **clocks and resets**; TL-Verilog handles them automatically.
- Reduces **errors related to clock-domain crossings**.

### 7️⃣ Integration with Existing Tools
- TL-Verilog can be **translated to standard Verilog**, making it **compatible with FPGA and ASIC toolchains**.
- Works with **open-source tools** like **Yosys, Verilator, and Makerchip**.

These features make **TL-Verilog** a modern, efficient alternative for hardware design, particularly in **complex pipeline-based architectures**.

---

# **Makerchip IDE: A Cloud-Based IDE for TL-Verilog**
**Makerchip** is a **cloud-based integrated development environment (IDE)** designed specifically for TL-Verilog, enabling efficient **digital hardware design, simulation, and debugging**. It simplifies **RISC-V, FPGA, and ASIC** development by providing an **interactive and user-friendly** environment.

## **Key Features of Makerchip IDE**
### 🔹 Web-Based and Accessible
- **No installation required**; accessible via any web browser.
- Supports **real-time collaboration and sharing**.

### 🔹 Support for TL-Verilog
- Built-in support for **TL-Verilog syntax** and hierarchical design.
- Reduces complexity by **automatically handling pipelining and clocking**.

### 🔹 Integrated Simulation and Debugging
- Provides **real-time waveform visualization** for debugging.
- Supports **interactive simulation** to verify designs efficiently.

### 🔹 Seamless Verilog Integration
- Converts **TL-Verilog to standard Verilog** for FPGA/ASIC synthesis.
- Works with **open-source tools** like **Yosys, Verilator, and OpenROAD**.

### 🔹 M4 Macro Preprocessor Support
- Enables **parameterized design** and **macro-based code generation**.
- Helps in **modularizing large designs efficiently**.

## **Why Use Makerchip IDE?**
✔ **Reduces development time** with automated pipelines.  
✔ **Enhances readability** compared to traditional Verilog.  
✔ **Ideal for RISC-V and complex digital designs.**  


# **Projects on TL-Verilog :**

This repository showcases various TL-Verilog projects implemented using Makerchip IDE. The projects are categorized into Combinational Circuits, Sequential Circuits, Pipelining, Validity covering a range of basic to advanced digital design concepts. Each project includes a direct link to Makerchip, allowing you to simulate and explore the code interactively.

Whether you're learning TL-Verilog, exploring hardware design methodologies, or working on RISC-V and FPGA-based applications, this collection serves as a valuable reference.


# **TL-Verilog Projects**

This repository contains various **TL-Verilog** projects implemented using **Makerchip IDE**. The projects are categorized into **Validity, Pipelining, Sequential Circuits, and Combinational Circuits**.
 Each project includes a direct link to Makerchip, allowing you to simulate and explore the code interactively.

---


## **Combinational Circuits**
- [Combinational Calculator](path/to/Combinational_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/098hkYY)  
- [4x1 Multiplexer](path/to/Mux_4x1.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/08qh6wO)  
- [Pythagoras Combinational](path/to/Pythagoras_Combinational.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/076hAWz)  
- [Ripple Carry Adder (RCA)](path/to/RCA.tlv) - [Makerchip](https://makerchip.com/sandbox/073fmhN5r/0Nxh0Vm)  
- [2x1 Multiplexer](path/to/Mux_2x1.tlv) - [Makerchip](https://makerchip.com/sandbox/073fmhN5r/0Mjhqxm)  
- [Logic Gates](path/to/Logic_Gates.tlv) - [Makerchip](https://makerchip.com/sandbox/0lYfohqE9/03lhpRr)  

---

## **Sequential Circuits**
- [Sequential Calculator](path/to/Sequential_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0k5hOq4)  
- [Counter](path/to/Counter.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0g5hAYw)  
- [Fibonacci](path/to/Fibonacci.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/00ghGrm)  

---

## **Pipelining**
- [Pipelining Sequential 2-cycle Calculator](path/to/Pipelining_Sequential_2cycle_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0qjh874)  
- [Pipelining Sequential Calculator](path/to/Pipelining_Sequential_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0oYhrKJ)  
- [Pipelined Error Block](path/to/Pipelined_Error_Block.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0nZh76n)  
- [Pipelined Pythagoras](path/to/Pipelined_Pythagoras.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0lOh2z6)  
- [Fibonacci Sequential Pipelined](path/to/Fibonacci_Sequential_Pipelined.tlv) - [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0mwhjR8)  

---

## **Validity**
- [Validity Sequential Calculator](path/to/Validity_Sequential_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/073fmhNyx/0AnhN18)  
- [Validity Distance Calculator using Pythagoras Theorem](path/to/Validity_Distance_Calculator.tlv) - [Makerchip](https://makerchip.com/sandbox/073fmhNyx/0vgh7yK)  



