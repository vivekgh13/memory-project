# memory project

# Memory Design and Verification (UVM)

## Overview

This project implements a parameterized memory design in Verilog and verifies it using both a basic Verilog testbench and a UVM-based testbench.

---

## Project Structure

```
rtl/
  mem.v

tb_uvm/
  test/        # UVM testcases
  env/         # driver, monitor, agent, scoreboard, env
  seq/         # sequences
  interface/   # interface
  top/         # top module
  pkg/         # package file
```

---

## Design Details

* Parameterized memory
* Supports read and write operations
* Configurable address and data width

---

## Verification

### Verilog Testbench

* Basic functional verification of memory

### UVM Testbench

The UVM environment includes:

* Driver
* Monitor
* Agent
* Environment
* Scoreboard
* Sequences and Tests

---

## Testcases

* one_wr_one_rd Test (`mem_one_test`)
* full_wr_rd Test (`mem_full_test`)

---

## Tools

* QuestaSim / ModelSim / EDA Playground

---

## How to Run

1. Compile RTL and UVM files
2. Run simulation with test name

Example:

```
vsim +UVM_TESTNAME=mem_one_test
```

---

## Learning Outcomes

* Built UVM components from scratch
* Understood UVM flow (sequence → driver → monitor → scoreboard)
* Gained hands-on experience in verification methodology
