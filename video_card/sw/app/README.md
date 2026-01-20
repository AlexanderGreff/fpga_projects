← [Back to software overview](../README.md)

# Application Logic

MicroBlaze firmware controlling sprites, USB input, and game state.

## MicroBlaze Software Architecture


<p align="center">
	<img src="../../diagrams/microblaze-sw-architecture.png" alt="MicroBlaze Software Architecture" style="width: 150%; height: 150%; max-width: none; max-height: none;" />
</p>

*Figure: MicroBlaze software architecture for sprite, USB, and game state control.*

## Source Files & Headers

### [include/](include/)

- [CallCpp_c.h](include/CallCpp_c.h): C interface for calling C++ functions from C code.
- [CallCpp.hpp](include/CallCpp.hpp): C++ header for cross-language function calls.
- [EnemiesContainer.hpp](include/EnemiesContainer.hpp): Manages enemy sprite data and logic.
- [GameRecord.hpp](include/GameRecord.hpp): Stores and manages game state records.
- [MissilesContainer.hpp](include/MissilesContainer.hpp): Handles missile sprite data and operations.
- [platform_config.h](include/platform_config.h): Platform-specific configuration settings.
- [platform.h](include/platform.h): Platform abstraction and hardware interface definitions.
- [RegistersDef.h](include/RegistersDef.h): Register definitions for hardware communication.
- [SpriteContainer.hpp](include/SpriteContainer.hpp): Manages all sprite objects and their states.
- [SpriteRecord.hpp](include/SpriteRecord.hpp): Stores individual sprite records and attributes.

### [src/](src/)

- [lw_usb_main.c](src/lw_usb_main.c): Main application logic for USB input and game control.
- [platform.c](src/platform.c): Platform-specific initialization and hardware routines.
- [SpriteInfo.cpp](src/SpriteInfo.cpp): C++ implementation and single compilation unit.
