# Verilog Basics

Welcome to the **VLSI PROJECTS ** repository!

# RTL Design & PPA Optimization Projects

A collection of **digital RTL design projects** developed using Verilog/SystemVerilog, with a focus on **functional correctness, synthesis, and PPA optimization**.

The projects range from fundamental digital systems and control-oriented designs to processors and hardware accelerators. Alongside developing each design, I explore RTL-level techniques to reduce **power consumption and area utilization** while improving or meeting **timing constraints**.

## 🎯 Objective

The primary objective of this repository is to gain practical experience in:

* RTL design and digital system architecture
* Verilog/SystemVerilog development
* Functional simulation and verification
* Synthesis and implementation
* Timing analysis
* Power analysis
* Area/resource utilization
* **Power, Performance & Area (PPA) optimization**

Rather than focusing only on making a design function correctly, each project is progressively analyzed and optimized to understand the relationship between **RTL architecture and hardware implementation results**.

## 🚀 Projects

| #  | Project                            | Design Area            | Optimization Focus       |
| -- | ---------------------------------- | ---------------------- | ------------------------ |
| 1  | 🧮 Calculator                      | Digital Datapath       | Power, Area, Timing      |
| 2  | 🔀 Multi-Bit Barrel Shifter        | Combinational Datapath | Area, Timing             |
| 3  | 🔢 BCD Up/Down Counter             | Sequential Logic       | Power, Area, Timing      |
| 4  | 🚦 Traffic Light Controller        | FSM / Control Logic    | Area, Timing, Power      |
| 5  | 🥤 Vending Machine                 | FSM / Control Logic    | Area, Power, Timing      |
| 6  | 🧺 Washing Machine Controller      | FSM / Control Logic    | Area, Power, Timing      |
| 7  | 📦 FIFO                            | Memory / Data Buffer   | Area, Timing, Power      |
| 8  | 🖥️ RISC-V Processor               | Processor Architecture | Power, Area, Timing      |
| 9  | 🖥️ MIPS Processor                 | Processor Architecture | Power, Area, Timing      |
| 10 | 🤖 GPU Unit for K-Means Clustering | Hardware Accelerator   | Power, Area, Performance |

## 🔬 Design & Optimization Methodology

Each project follows a common hardware-design workflow:

```text
Design Specification
        ↓
RTL Architecture
        ↓
Verilog/SystemVerilog Implementation
        ↓
Functional Simulation & Verification
        ↓
Synthesis
        ↓
Power / Area / Timing Analysis
        ↓
RTL-Level Optimization
        ↓
Re-synthesis
        ↓
PPA Comparison
```

The optimized design is compared against the original implementation to evaluate the effect of architectural and RTL-level modifications.

## 📊 PPA Analysis

Where applicable, project results will be documented using metrics such as:

| Metric              | Baseline | Optimized | Improvement |
| ------------------- | -------: | --------: | ----------: |
| Power               |        — |         — |           — |
| LUT / Area          |        — |         — |           — |
| Flip-Flops          |        — |         — |           — |
| Critical Path Delay |        — |         — |           — |
| Maximum Frequency   |        — |         — |           — |
| Timing Slack        |        — |         — |           — |

Actual results will be added after synthesis and implementation.

## 🛠️ Tools & Technologies

* **Verilog / SystemVerilog**
* **Xilinx Vivado**
* RTL Simulation
* Synthesis
* Static Timing Analysis
* Power Analysis
* FPGA Resource Utilization Analysis
* Git & GitHub

## 📁 Repository Structure

```text
RTL-Design-Projects/
│
├── Calculator/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── Multi-Bit-Barrel-Shifter/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── BCD-Up-Down-Counter/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── Traffic-Light-Controller/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── Vending-Machine/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── Washing-Machine/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── FIFO/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── RISC-V-Processor/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
├── MIPS-Processor/
│   ├── rtl/
│   ├── testbench/
│   ├── simulation/
│   ├── results/
│   └── README.md
│
└── GPU-KMeans-Accelerator/
    ├── rtl/
    ├── testbench/
    ├── simulation/
    ├── results/
    └── README.md
```

## 📈 Learning & Development Goals

Through these projects, I am developing practical skills in:

* RTL architecture and coding
* Combinational and sequential logic
* FSM-based system design
* Datapath and control-path design
* Processor architecture
* Hardware acceleration
* Simulation and verification
* Synthesis and implementation
* Timing constraint analysis
* Power and area optimization
* PPA-driven hardware design

## 🔄 Optimization Philosophy

For each design, the goal is to move beyond **"Does it work?"** toward:

> **"How efficiently can it work in hardware?"**

The projects are therefore developed iteratively:

**Design → Verify → Synthesize → Measure → Optimize → Compare**

## 📌 Status

This repository is a continuously evolving collection of RTL designs and optimization experiments. New projects, synthesis results, waveforms, and PPA comparisons will be added as development progresses.

## 👩‍💻 Author

**Manasvi**

B.Tech – Electronics and Communication Engineering (VLSI)

KL University

Interested in Digital Design, RTL Development, FPGA Design, and VLSI.

---

⭐ This repository is part of my VLSI learning journey. More projects and improvements will be added as I continue exploring digital design and hardware development.
