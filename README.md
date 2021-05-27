# Open Source RTL Design
This repository contains the usage of tools like iverilog, gtkwave and yosys for open-source RTL Design. The content is documentation of tasks carried out during VSD "RTL Design Using Verilog With SKY130 Technology".

## Table of Contents

- [Open Source Tool Chain](#heading-1)
  * [iverilog](#sub-heading-1)
  * [gtkwave](#sub-heading-2)
  * [SKY130 libraries](#sub-heading-3)
  * [yosys](#sub-heading-4)
- [Modelling Concepts](#heading-2)
  * [Multiplexer](#sub-heading-5)

- [Open Source Tool Chain](#heading)
  * [iverilog](#sub-heading)
  * [gtkwave](#sub-heading)
  * [SKY130 Libraries](#sub-heading)
  * [yosys](#sub-heading)
- [Modelling Concepts](#heading-1)
  * [mux](#sub-heading-1)

## Open Source Tool Chain

Usually front-end RTL design is carried out using huge EDA Tools from different vendors. Even though many of the tools come with free limited versions its better to give a try for development using open-source tools. Below is the list of tools used by this repo.

### iverilog

iverilog is the tool used for compiling and simulation purpose. Simulation is the process of creating models that mimic the behavior of the device. Tool performs macro preprocessing, compilation, elaboration, optional optimizations and finally code generation. For more details about the tool refer the [wiki](https://iverilog.fandom.com/wiki/User_Guide).

* Use following command to install iverilog on Ubuntu machine

```
sudo apt install iverilog
```

* Compile the design files and associated test bench using following command, it produces a executable

```
iverilog design_file.v test_bench.v
```

* Execute the a.out file to produce vcd file

```
./a.out
```

### gtkwave

The simulator generates value change dump (.vcd) file this can be viewed as wave using gtkwave waveform viewer.

* Use following command to install gtkwave on Ubuntu machine

```
sudo apt install gtkwave
```

* Run following command to view the waveform

```
gtkwave test_bench.vcd
```

### SKY130 Libraries

sky130 pdk library is used for mapping the purpose during synthesis. The design gets mapped to standard cell definitions present in "sky130_fd_sc_hd__tt_025C_1v80.lib" library. The necessary files for synthesis are well organized in the [git repository](https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop.git).

* Clone the repository using following command

```
git clone https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop.git
```

### yosys

yosys is used for synthesis. Synthesizer takes the design file and technology library file as input and produces netlist. Syntesis is the process in which the design is mapped to standard cells defined in the technology library. Here we are using SKY130 Technology library file. For further details about the tool refer the [documentation](http://www.clifford.at/yosys/documentation.html).

* Use following command to install yosys on Ubuntu machine

```
sudo apt install yosys
```
