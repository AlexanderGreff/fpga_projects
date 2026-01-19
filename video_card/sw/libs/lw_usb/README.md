# Lightweight USB Library (lw_usb)

This directory contains a minimal USB host library for MicroBlaze firmware, supporting USB device communication and HID input.

## Structure
- **include/**: Header files for USB protocol, device handling, and configuration.
- **src/**: Source files implementing USB host logic, device enumeration, and data transfer.

## Key Files
- [HID.h](include/HID.h): Human Interface Device protocol definitions.
- [MAX3421E.h](include/MAX3421E.h): Interface for the MAX3421E USB host controller chip.
- [transfer.h](include/transfer.h): USB data transfer routines.
- [USB.h](include/USB.h): Core USB host functions and device management.
- [HID.c](src/HID.c): HID device handling implementation.
- [MAX3421E.c](src/MAX3421E.c): Driver for MAX3421E USB host controller.
- [transfer.c](src/transfer.c): Implementation of USB data transfer logic.

## Usage
Include and link this library in your MicroBlaze firmware to enable USB host functionality and HID device support.

For more details, see individual header and source files.