
← [Back to project root](../README.md)

## Diagrams


<p align="center">
	<img src="../diagrams/microblaze-soc-block-diagram.png" alt="MicroBlaze SoC Block Diagram" style="max-width: 100%;" />
	<br/>
	<em>Figure 1: MicroBlaze SoC block diagram, custom IP in red</em>
</p>

<p align="center">
	<img src="../diagrams/module_hierarchy.png" alt="HDMI Text Controller Datapath" style="max-width: 100%;" />
	<br/>
	<em>Figure 2: Custom IP datapath</em>
</p>

# Hardware Overview

## Structure
- [`ip/custom`](ip/custom/README.md) – custom video card IP, main deliverable
- [`ip/vendor`](ip/vendor/README.md) – Xilinx / RealDigital IP
- [`mb_bd`](mb_bd/README.md) – MicroBlaze system
- [`top`](top/README.md) – top-level SV integration
