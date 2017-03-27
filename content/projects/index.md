---
date: 2017-03-03T09:53:03-08:00
title: Active Projects
weight: 10 
---

## MicroBrewer

Purdue MicroBrewer quickly and easily generates various RISCV-powered microcontrollers from an XML configuration file and a library of peripherals, providing the configured HDL, drivers, documentation, and scripts for FPGA synthesis. This generated microcontroller can then be flashed onto an FPGA. An open sourced board will be provided to support the FPGA. The end goal is to empower students, universities, makers, and other interested parties who may not even necessarily have digital design experience to be able to create fully customized microcontrollers, synthesized on FPGAs, for use in projects, classrooms, and research simply by defining an XML configuration file.

Source code for MicroBrewer is being gathered into a single repository that can be publicly released.  The project will appear on our github page shortly.

## RISCV-Business

RISCV-Business is a highly configurable core writ- ten in an industry standard hardware description language. The top level architecture cleanly splits functionality of the core into sub-components referred to as configurable components. Configurable components have well defined interfaces within the architecture of the core, allowing for components to be swapped out without impacting functionality of other parts of the design. RISCV-Business includes a interface for extending the base integer ISA with both standard and non-standard RISC-V instruction set extensions that will be referred to as RISC-MGMT (RISC Massively Generic Modification Tie-in).

[RISCV-Business Source Code](https://github.com/JakeStevens/RISCVBusiness)

## PurdUeVM

PurdUeVM project involves verifying modules of the AFT chip using a standard verification methodology – UVM (Universal Verification Methodology). A generic framework of the UVM based verification environment is developed and automated to create testbenches that are tailored for specific modules.

Source code is currently being finalized and the project will show up on our github page shortly.

## SoC Foundation Flow

SoC Foundation Flow (SFF) is a wrapper for the WAF build system aiming at separating the discovery of HDL dependencies and the actual synthesis and simulation of hardware.  SFF will output a list of files in the correct order based on dependencies.  This list may be fed to various simulation tools.  SFF also supports views; views allow you to have different versions of files groupted together with tags.  This feature is useful for MicroBrewer and RISCV-Business by allowing different versions of auto-generated code to exist simultaneously without the use of version control software.

[WAF Source Code](https://github.com/mattaw/SoCFoundationFlow)
