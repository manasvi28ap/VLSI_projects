# 🔢 BCD Up/Down Counter Using Verilog HDL

A synchronous **BCD (Binary-Coded Decimal) Up/Down Counter** designed and implemented using **Verilog HDL**. The counter counts through the decimal digits **0 to 9** in up-counting mode and **9 to 0** in down-counting mode.

The design includes reset and direction control and was verified through RTL simulation and waveform analysis using **Xilinx Vivado**.

---

## 📌 Project Overview

The BCD Up/Down Counter operates in two modes:

* **Up Counting:** `0 → 1 → 2 → ... → 9 → 0`
* **Down Counting:** `9 → 8 → 7 → ... → 0 → 9`

The counter automatically rolls over at the BCD boundaries, ensuring that only valid decimal digits from **0 to 9** are generated.

---

## 🎯 Objectives

* Design a BCD counter using Verilog HDL
* Implement both up-counting and down-counting operations
* Handle BCD rollover conditions
* Implement synchronous sequential logic
* Verify the design using simulation waveforms
* Analyze the synthesized RTL implementation

---

## ⚙️ Inputs & Outputs

| Signal    | Direction | Description                 |
| --------- | --------- | --------------------------- |
| `clk`     | Input     | Clock signal                |
| `rst`     | Input     | Reset signal                |
| `up_down` | Input     | Selects up or down counting |
| `count`   | Output    | 4-bit BCD counter output    |

The `up_down` control determines the counting direction.

```text
up_down = 1  →  Up Counter
up_down = 0  →  Down Counter
```

---

## 🏗️ Counter Operation

### Up-Counting

When `up_down = 1`, the counter increments from 0 to 9.

```text
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 0
```

When the counter reaches `9`, the next clock cycle returns the output to `0`.

### Down-Counting

When `up_down = 0`, the counter decrements from 9 to 0.

```text
9 → 8 → 7 → 6 → 5 → 4 → 3 → 2 → 1 → 0 → 9
```

When the counter reaches `0`, the next clock cycle returns the output to `9`.

---

## 🔄 Block Diagram

```text
             ┌──────────────┐
             │     Clock    │
             └──────┬───────┘
                    │
                    ▼
             ┌──────────────┐
             │    Reset     │
             │   & Control  │
             └──────┬───────┘
                    │
             ┌──────▼───────┐
             │  Up/Down     │
             │   Control    │
             └──────┬───────┘
                    │
                    ▼
             ┌──────────────┐
             │   BCD        │
             │   Counter    │
             └──────┬───────┘
                    │
                    ▼
             ┌──────────────┐
             │  4-bit BCD   │
             │    Output    │
             └──────────────┘
```

---

## 🧪 Verification

The counter was verified using a Verilog testbench in **Xilinx Vivado**.

The simulation verifies:

* Reset operation
* BCD up-counting
* BCD down-counting
* `9 → 0` rollover during up-counting
* `0 → 9` rollover during down-counting
* Correct response to direction control

### Expected BCD Sequence

| Mode | Sequence                                    |
| ---- | ------------------------------------------- |
| Up   | `0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 0` |
| Down | `9 → 8 → 7 → 6 → 5 → 4 → 3 → 2 → 1 → 0 → 9` |

---

## 🛠️ Tools & Technologies

* **Verilog HDL**
* **Xilinx Vivado**
* **RTL Simulation**
* **Waveform Analysis**
* **FPGA Design**

---

## 📁 Project Structure

```text
BCD-UpDown-Counter/
│
├── bcd_counter.v/
│   
│
├── bcd_counter_tb.v/
│   
│
├── images/
│
│
└── README.md
```

---

## 🚀 Future Improvements

* Extend the design to a multi-digit BCD counter
* Add configurable counting limits
* Implement programmable counting direction
* Optimize the design for timing and power
* Integrate the counter with other RTL modules

---

## 📚 Learning Outcomes

Through this project, I gained practical experience in:

* Designing synchronous counters using Verilog
* Implementing BCD counting logic
* Designing up/down control logic
* Handling rollover conditions
* Writing Verilog testbenches
* Debugging RTL through simulation waveforms
* Synthesizing and analyzing RTL designs using Vivado

---

## 👩‍💻 Author

**AP Manasvi**

B.Tech – Electronics & Communication Engineering
VLSI Specialization
