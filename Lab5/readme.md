# Objective
Design a combinational circuit to decode a 4-bit binary input and display the corresponding hexadecimal digit on the Nexys-A7 FPGA's seven-segment display.

# Design Steps
Truth Table: Map 4-bit inputs to seven-segment outputs.
K-Map Minimization: Simplify Boolean equations for segments (A-G).
Structural Model: Uses gates and assign statements.
Behavioral Model: Uses always_comb and case statements.
Synthesis & Simulation: Verify design using Vivado and QuestaSim.
FPGA Implementation: Program and test on Nexys-A7.

# Testing & Results
Testbench: Simulates all 16 inputs to verify correctness.
Analysis: Verified display output, timing, and resource utilization in Vivado.