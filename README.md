# FPGA_Project

Brief Description of the Project:-

This project aims to implement a **POSIT adder/subtractor on FPGA hardware and compare its performance against IEEE-754 arithmetic**, based on insights from **Hardware Implementation of POSITs and Their Application in FPGAs**. The POSIT format, introduced to improve precision and range while minimizing unused states, requires unique handling due to its variable-length fields (sign, regime, exponent, mantissa). Unlike IEEE-754, POSITs demand dynamic decoding, alignment, and normalization for addition/subtraction. This task will create a parameterized POSIT adder/subtractor, allowing adjustments in bit-width and exponent size, following methodologies from **Parameterized Posit Arithmetic Hardware Generator**. By synthesizing and evaluating this design, we aim to gain insights into POSITs' hardware efficiency and feasibility as an alternative floating-point format in high-performance FPGA applications.







