# 7-Segment Display Decoder — Verilog / Nexys A7

A hex-to-7-segment display decoder implemented in Verilog, targeting the **Nexys A7 FPGA board**.

## Description

Reads a 4-bit switch input and drives digit 0 of the 7-segment display to show the
corresponding hex character (0–F).

## Operations

| Switch (sw) | Display |
|-------------|---------|
| 0000        | 0       |
| 0001        | 1       |
| ...         | ...     |
| 1001        | 9       |
| 1010        | A       |
| 1011        | b       |
| 1100        | C       |
| 1101        | d       |
| 1110        | E       |
| 1111        | F       |

## Files

| File | Description |
|------|-------------|
| `src/seven_segment.v` | Top-level module + hex7seg decoder |
| `sim/tb_seven_segment.v` | Testbench (applies 0x0–0xF) |
| `constraints/seven_segment.xdc` | Nexys A7 pin constraints |

## Simulation (Vivado)

1. Add `src/seven_segment.v` and `sim/tb_seven_segment.v` to your Vivado project
2. Set `tb_seven_segment` as the simulation top module
3. Run **Behavioral Simulation**

## FPGA Implementation

1. Add all three files to a Vivado project targeting **xc7a100tcsg324-1** (Nexys A7)
2. Run Synthesis → Implementation → Generate Bitstream
3. Program the board via **Open Hardware Manager**
