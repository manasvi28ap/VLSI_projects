# 🧮 RTL Calculator Using Verilog HDL

A compact **RTL calculator designed and implemented using Verilog HDL** to perform basic arithmetic operations using a resource-efficient hardware architecture.

The design focuses on **hardware reuse and reduced power consumption** by using a shared arithmetic unit instead of implementing separate hardware blocks for each operation.

---

## 📌 Project Overview

This project implements a digital calculator capable of performing:

* ➕ Addition
* ➖ Subtraction
* ✖️ Multiplication
* ➗ Division

The calculator uses a **single-adder-based architecture with repeated arithmetic operations**, allowing hardware resources to be reused across multiple operations.

The design was developed and simulated using **Xilinx Vivado**.

---

## 🎯 Objectives

* Design a functional RTL calculator using Verilog HDL
* Implement multiple arithmetic operations using shared hardware
* Reduce redundant arithmetic hardware
* Analyze **power and resource utilization**
* Verify the design through RTL simulation and waveform analysis
* Synthesize the design and evaluate hardware utilization

---

## 🏗️ Architecture

The calculator consists of:

* **Input registers** for operands
* **Opcode control** for selecting the arithmetic operation
* **Accumulator register** for storing intermediate results
* **Shared adder arithmetic unit**
* **Counter/control logic** for iterative multiplication and division
* **Result register** for storing the final output

### Basic Flow

```text
        ┌───────────────┐
        │   Operands    │
        │    A & B      │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │  Input /      │
        │   Registers   │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │ Opcode /      │
        │ Control Logic │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │ Shared        │
        │ Adder Unit    │
        └───────┬───────┘
                │
        ┌───────▼───────┐
        │ Accumulator / │
        │ Control       │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │    Result     │
        └───────────────┘
```

---

## ⚙️ Design Approach

Instead of using independent hardware blocks for addition, subtraction, multiplication and division, the design reuses arithmetic resources wherever possible.

### Addition

The operands are added directly using the shared arithmetic unit.

### Subtraction

Subtraction is implemented using arithmetic operations with the available adder structure.

### Multiplication

Multiplication is performed using **repeated addition**, reducing the need for a dedicated multiplier block.

### Division

Division is implemented iteratively using repeated arithmetic operations and a counter to control the number of cycles.

This approach trades some execution cycles for **hardware resource reuse**.

---

## 🧪 Verification

The design was verified using a Verilog testbench in **Xilinx Vivado**.

The testbench checks the calculator for different operand combinations and arithmetic operations.

### Verification includes:

* Addition
* Subtraction
* Multiplication
* Division
* Reset operation
* Start/control behavior
* Result generation

Simulation waveforms were analyzed to verify the correctness of the RTL implementation.

---

## 📊 Hardware Analysis

The design was synthesized in Vivado to compare its hardware characteristics.

| Parameter               | Observation                                      |
| ----------------------- | ------------------------------------------------ |
| Arithmetic architecture | Shared / iterative                               |
| Multiplication          | Repeated addition                                |
| Division                | Iterative arithmetic                             |
| RTL Language            | Verilog HDL                                      |
| Simulation              | Xilinx Vivado                                    |
| Synthesis               | Xilinx Vivado                                    |
| Main optimization       | Hardware reuse                                   |
| Power                   | Reduced compared with the initial implementation |
| Utilization             | Evaluated after architectural modification       |

The optimized architecture showed approximately **0.5 W reduction in estimated power** compared with the earlier implementation.

---

## 🚀 Key Features

* Multi-operation RTL calculator
* Resource-sharing architecture
* Single/shared arithmetic unit
* Iterative multiplication
* Iterative division
* Register-based datapath
* Control logic for multi-cycle operations
* RTL simulation and waveform verification
* FPGA-oriented Verilog design
* Power and utilization analysis

---

## 🛠️ Tools & Technologies

* **Verilog HDL**
* **Xilinx Vivado**
* **RTL Simulation**
* **Logic Synthesis**
* **Waveform Analysis**
* **FPGA Design**

---

## 📁 Project Structure

```text
Calculator/
│
├── calculator.v/
│  
│
├── calculator_tb.v/
│   └──
│
├── images/
│   ├── schematic.png
│   ├── waveform.png
│   └── synthesis.png
│
└── README.md
```

---

## 📈 Future Improvements

* Add support for larger operand widths
* Improve division architecture
* Add signed arithmetic
* Add overflow and error detection
* Optimize timing for multi-cycle operations
* Implement the calculator on an FPGA board
* Perform detailed **power, area and timing comparison**
* Explore FSM-based control optimization

---

## 💡 Learning Outcomes

Through this project, I gained practical experience in:

* RTL design using Verilog HDL
* Sequential and combinational logic
* Register-transfer-level architecture
* Hardware resource sharing
* Iterative arithmetic implementation
* Testbench development
* Simulation and waveform debugging
* FPGA synthesis
* Power and resource utilization analysis

---

## 👩‍💻 Author

**AP Manasvi**

B.Tech – Electronics & Communication Engineering
VLSI Specialization

