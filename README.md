# iiitb_counter

## Introduction

A counter is a device that stores the number of times an event has occured. An 8-bit counter can represent a maximum of
256 values. It can count from 0-255. An 8-bit counter contains 8 JK flip-flops.



## Applications

Counters can be used for anything that counts.The following are the most common applications

- Digital Clock
- Timers
- Alarm
- Analog to Digital Conversion
- Triangular Wave Generator

## Blocked Diagram of Counter

<p align="center">
  <img width="600" length ="500" src="/images/counter.png">
</p>

## About iverilog 
Icarus Verilog is an implementation of the Verilog hardware description language.
## About GTKWave
GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing

### Installing iverilog and GTKWave

#### For Ubuntu

Open your terminal and type the following to install iverilog and GTKWave
```
$   sudo apt-get update
$   sudo apt-get install iverilog gtkwave
```


### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/born2win685/iiitb_counter
$   cd iiitb_counter
$   iverilog iiitb_counter.v iiitb_counter_tb.v
$   ./a.out
$   gtkwave iiitb_counter.vcd
```

## Functional Characteristics
Simulation Results
<p align="center">
  <img  src="/images/gtkwave_counter.png">
</p>



## Synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys

- note: Identify the .lib file path in cloned folder and change the path in highlighted text to indentified path




#### to synthesize
```
$   yosys
$   yosys>    script yosys_run.sh
```

#### to see diffarent types of cells after synthesys
```
$   yosys>    stat
```
#### to generate schematics
```
$   yosys>    show
```


## Contributors 

- **B Sathiya Naraayanan** 
- **Kunal Ghosh** 



## Acknowledgments


- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.

## Contact Information

- B Sathiya Naraayanan, IMT2020534, International Institute of Information Technology, Bangalore  ,Sathiya.Naraayanan@iiitb.ac.in
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com

## References

- [Fastlad tutorial](https://www.instructables.com/Using-Falstads-Circuit-Simulator/)
- [Counters tutorial](https://www.youtube.com/watch?v=iaIu5SYmWVM&list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm&index=179)
- [Verilog](https://www.fpga4student.com/)

