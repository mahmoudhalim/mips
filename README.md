# MIPS
This repository contains a Verilog implementation of a 32-bit single-cycle MIPS processor.

**Features:**

 * Implements a subset of the MIPS instruction set, including:
    * Arithmetic: `add`, `sub`, `addi`
    * Logic: `and`, `or`
    * Control flow: `beq`, `j`
    * Memory access: `lw`, `sw`

**Usage:**

1. Modify the `sim/memfile.dat` file with your MIPS assembly code.
2. Run the simulation script (`make sim`).
3. Observe the simulation output to check the processor's behavior.

**References:**

* [Digital Design and Computer Architecture](https://www.google.com.eg/books/edition/Digital_Design_and_Computer_Architecture/ZyrjlPlpoFEC?hl=en&gbpv=0) by David Harris and Sarah Harris
