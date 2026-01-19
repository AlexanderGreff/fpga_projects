← [Back to projects index](../README.md)
# Video Card – FPGA + MicroBlaze Project

## Overview
Custom FPGA-based video card with sprite rendering, AXI-Lite control,
and MicroBlaze firmware.

## Repository Map

### Architecture
- [System diagrams](diagrams/README.md)

### Hardware
- [Hardware overview](hw/README.md)
  - **[Custom Video Card IP](hw/ip/custom/README.md) – Main Project Deliverable**
  - [Vendor IP](hw/ip/vendor/README.md)
  - [MicroBlaze Block Design](hw/mb_bd/README.md)
  - [Top-level SystemVerilog](hw/top/README.md)

### Software
- [Software overview](sw/README.md)
  - [Application logic](sw/app/README.md)
  - [USB library (lw_usb)](sw/libs/lw_usb/README.md)
