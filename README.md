# Hardware-Implementation-of-Traffic-Signal-Controller-on-FPGA-
### Project Description: Traffic Signal Controller Simulation

#### TSC Module:
- Simulates traffic signal controller behavior for north, south, east, and west directions.
- Implements state transition logic for switching between traffic light configurations.
- Operates on clock (`clk`) and includes a reset signal (`rst`) for initialization.

#### Testbench (`tsc_tb`):
- Verifies TSC module functionality.
- Provides clock and reset signals to the TSC module.
- Monitors traffic light outputs (`nl`, `sl`, `el`, `wl`) for correctness.

#### Purpose:
- Simulates traffic signal controller behavior in Verilog.
- Tests TSC module functionality under various scenarios.
- Ensures correct traffic regulation through state transitions.

#### Simulation:
- TSC module transitions states based on clock signal and logic.
- Testbench validates traffic light signals against expected patterns.
- Analysis of simulation results confirms proper TSC module operation.
