# FPGA 2D Convolution Design on ZynQ-7000

## Introduction
This project implements the design and deployment of a 2D convolution algorithm on the ZynQ-7000 FPGA. The algorithm is written in C, verified through C simulation, synthesized into RTL using Vivado HLS, and deployed on the FPGA to evaluate performance and resource usage.

## Objectives
- Design the 2D convolution algorithm.
- Synthesize and deploy on ZynQ-7000.
- Optimize performance and hardware resource usage.

## Usage Instructions
1. **Install Vivado & SDK**: Install Vivado Design Suite and Xilinx SDK to synthesize and program the FPGA.
2. **Develop and test the C algorithm**: Test the C code with a testbench.
3. **Synthesize C code into RTL**: Use Vivado HLS to synthesize the C code into RTL.
4. **Deploy on FPGA**: Generate the bitstream file and load it onto the ZynQ-7000 to test performance.
5. **Evaluate performance**: Measure the resource usage and performance of the hardware on the FPGA.

## Results
The project successfully implements the 2D convolution algorithm on the ZynQ-7000 FPGA, achieving optimized performance and efficient resource usage.

## Contact
If you have any questions, please open an issue on GitHub.
