# **Transaction-Level Verilog (TL-Verilog)**
TL-Verilog is an emerging extension to SystemVerilog that supports transaction-level design methodology. In transaction-level design, a transaction is an entity that moves through a microarchitecture. It is operated upon and steered through the machinery by flow components such as pipelines, arbiters, and queues. A transaction might be a machine instruction, a flit of a packet, or a memory read/write. The flow of a transaction can be established independently from the logic that operates on the transaction.  

---

## Features of TL-Verilog
### Pipeline-Centric Design
- TL-Verilog introduces **implicit pipelines** using `|pipe`, making sequential logic more structured and readable.
- Eliminates the need for **explicit clocking and always blocks**.

### Concise and Readable Syntax
- Reduces **boilerplate code** compared to traditional Verilog/SystemVerilog.
- Uses **hierarchical scoping (`|` notation)** for better organization.

### Automatic Signal Propagation
- Variables automatically flow across pipeline stages (`@0, @1, etc.`).
- No need for manually coding **registers or delays**.

### Modular and Reusable Design
- Encourages **reuse of pipeline structures**, reducing redundancy.
- **Scoped signals** prevent naming conflicts and improve clarity.

### Enhanced Debugging and Simulation
- Provides built-in visualization tools like **Makerchip** for **interactive debugging**.
- Debugging is **simpler and more intuitive** due to structured pipeline stages.

### Clock and Reset Abstraction
- No need to explicitly define **clocks and resets**; TL-Verilog handles them automatically.
- Reduces **errors related to clock-domain crossings**.

### Integration with Existing Tools
- TL-Verilog can be **translated to standard Verilog**, making it **compatible with FPGA and ASIC toolchains**.
- Works with **open-source tools** like **Yosys, Verilator, and Makerchip**.

These features make **TL-Verilog** a modern, efficient alternative for hardware design, particularly in **complex pipeline-based architectures**.

---

# **Makerchip IDE: A Cloud-Based IDE for TL-Verilog**
**Makerchip** is a **cloud-based integrated development environment (IDE)** designed specifically for TL-Verilog, enabling efficient **digital hardware design, simulation, and debugging**. It simplifies **RISC-V, FPGA, and ASIC** development by providing an **interactive and user-friendly** environment.

## **Key Features of Makerchip IDE**
### Web-Based and Accessible
- **No installation required**; accessible via any web browser.
- Supports **real-time collaboration and sharing**.

### Support for TL-Verilog
- Built-in support for **TL-Verilog syntax** and hierarchical design.
- Reduces complexity by **automatically handling pipelining and clocking**.

### Integrated Simulation and Debugging
- Provides **real-time waveform visualization** for debugging.
- Supports **interactive simulation** to verify designs efficiently.

### Seamless Verilog Integration
- Converts **TL-Verilog to standard Verilog** for FPGA/ASIC synthesis.
- Works with **open-source tools** like **Yosys, Verilator, and OpenROAD**.

### M4 Macro Preprocessor Support
- Enables **parameterized design** and **macro-based code generation**.
- Helps in **modularizing large designs efficiently**.

## **Why Use Makerchip IDE?**
✔ **Reduces development time** with automated pipelines.  
✔ **Enhances readability** compared to traditional Verilog.  
✔ **Ideal for RISC-V and complex digital designs.**  


## Projects on TL-Verilog :

This repository showcases various TL-Verilog projects implemented using Makerchip IDE. The projects are categorized into Combinational Circuits, Sequential Circuits, Pipelining, Validity covering a range of basic to advanced digital design concepts. Each project includes a direct link to Makerchip, allowing you to simulate and explore the code interactively.

Whether you're learning TL-Verilog, exploring hardware design methodologies, or working on RISC-V and FPGA-based applications, this collection serves as a valuable reference.

---

| **Category**                | **Project Name**                     | **Source Code**                                | **Makerchip Link** | **Output Snapshot** |
|-----------------------------|--------------------------------------|------------------------------------------------|-------------------------|---------------|
| **Combinational Circuits**  | Logic Gates                         | [Logic Gates](./../TL-Verilog_Projects/Combinational_Circuits/Logic_gates/Logic_gates.tlv)             | [Makerchip](https://makerchip.com/sandbox/0lYfohqE9/03lhpRr) | [Screenshot](path/to/screenshots/logic_gates.png) |
|                             | 2:1 MUX                             | [MUX_2X1](./../TL-Verilog_Projects/Combinational_Circuits/MUX_2X1/MUX_2X1.tlv)                     | [Makerchip](https://makerchip.com/sandbox/073fmhN5r/0Mjhqxm) | [Screenshot](path/to/screenshots/mux_2x1.png) |
|                             | 4:1 MUX                             | [MUX_4X1](./../TL-Verilog_Projects/Combinational_Circuits/MUX_4X1/MUX_4X1.tlv)                     | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/08qh6wO) | [Screenshot](path/to/screenshots/mux_4x1.png) |
|                             | Ripple Carry Adder (RCA)            | [RCA](./../TL-Verilog_Projects/Combinational_Circuits/Ripple_Carry_Adder/Ripple_Carry_Adder.tlv)                             | [Makerchip](https://makerchip.com/sandbox/073fmhN5r/0Nxh0Vm) | [Screenshot](path/to/screenshots/rca.png) |
|                             | Pythagoras (Combinational)          | [Pythagoras](./../TL-Verilog_Projects/Combinational_Circuits/Combinational_Pythagoras_Theorm/Combinational_Pythagoras_Theorm.tlv)          | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/076hAWz) | [Screenshot](path/to/screenshots/pythagoras_comb.png) |
|                             | Combinational Calculator          | [Comb_Calculator](./../TL-Verilog_Projects/Combinational_Circuits/Combinational_Calculator/Combinational_Calculator.tlv)          | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/098hkYY) | [Screenshot](path/to/screenshots/pythagoras_comb.png) |
| **Sequential Circuits**     | Sequential Calculator               | [Sequential Calculator](./../TL-Verilog_Projects/Sequential_Circuits/Sequential_Calculator/Sequential_Calculator.tlv) | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0k5hOq4) | [Screenshot](path/to/screenshots/sequential_calculator.png) |
|                             | Counter                             | [Counter](./../TL-Verilog_Projects/Sequential_Circuits/Counter/Counter.tlv)                     | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0g5hAYw) | [Screenshot](path/to/screenshots/counter.png) |
|                             | Fibonacci                           | [Fibonacci](./../TL-Verilog_Projects/Sequential_Circuits/Fibonacci_sequence/Fibonacci_sequence.tlv)                 | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/00ghGrm) | [Screenshot](path/to/screenshots/fibonacci.png) |
| **Pipelining Circuits**     | Pipelined Sequential Calculator     | [Pipelined Calculator](./../TL-Verilog_Projects/Pipelining/Pipelined_Sequential_Calculator/Pipelined_Sequential_Calculator.tlv) | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0oYhrKJ) | [Screenshot](path/to/screenshots/pipelined_calculator.png) |
|                             | 2-Cycle Pipelined Calculator        | [2-Cycle Calculator](./../TL-Verilog_Projects/Pipelining/2_cycle_pipelined_calculator/2_cycle_pipelined_calculator.tlv) | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0qjh874) | [Screenshot](path/to/screenshots/2cycle_calculator.png) |
|                             | Pipelined Error Block               | [Error Block](./../TL-Verilog_Projects/Pipelining/Error_Conditions_within_Computation_pipeline/Error_Conditions_within_Computation_pipeline.tlv)             | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0nZh76n) | [Screenshot](path/to/screenshots/error_block.png) |
|                             | Pipelined Pythagoras                | [Pipelined Pythagoras](./../TL-Verilog_Projects/Pipelining/Pipelined_Pythagoras_theorm/Pipelined_Pythagoras_theorm.tlv) | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0lOh2z6) | [Screenshot](path/to/screenshots/pipelined_pythagoras.png) |
|                             | Pipelined Fibonacci                 | [Pipelined Fibonacci](./../TL-Verilog_Projects/Pipelining/Pipelined_Fibonacci_sequence/Pipelined_Fibonacci_sequence.tlv) | [Makerchip](https://makerchip.com/sandbox/0rkfAhy2Z/0mwhjR8) | [Screenshot](path/to/screenshots/pipelined_fibonacci.png) |
| **Validity Circuits**       | Sequential Validity Calculator      | [Validity Calculator](./../TL-Verilog_Projects/Validity/2_cycle_Calculator_with_Validity/2_cycle_Calculator_with_Validity.tlv) | [Makerchip](https://makerchip.com/sandbox/073fmhNyx/0AnhN18) | [Screenshot](path/to/screenshots/validity_calculator.png) |
|                             | Distance_Calculation_with_validity      | [Pythagoras Validity](./../TL-Verilog_Projects/Validity/Distance_Computation_with_validity/Distance_Computation_with_validity.tlv) | [Makerchip](https://makerchip.com/sandbox/073fmhNyx/0vgh7yK) | [Screenshot](path/to/screenshots/pythagoras_validity.png) |

---

