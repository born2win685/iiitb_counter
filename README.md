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

### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys

- note: Identify the .lib file path in cloned folder and change the path in highlighted text to indentified path

 

### Synthesising process

The commands to run synthesis in yosys are given below. First create an yosys script `yosys_run.sh` and paste the below commands.
```
read_liberty -lib lib/sky130_fd_sc_hd__tt_025C_1v80.lib
# read design

read_verilog iiitb_counter.v

# generic synthesis
synth -top bcd

# mapping to mycells.lib
dfflibmap -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog iiitb_counter_netlist.v
stat
show
```


By running the following command in terminal,we can get the required ouput
```
 yosys -s yosys_run.sh
```

### Output
<p align="center">
  <img  src="/images/gsl.png">
</p>

<p align="center">
  <img width="600" length ="500"  src="/images/stat.png">
</p>

## Gate level Simulation

GLS stands for gate level simulation. When we write the RTL code, we test it by giving it some stimulus through the testbench and check it for the desired specifications. Similarly, we run the netlist as the design under test (dut) with the same testbench. Gate level simulation is done to verify the logical correctness of the design after synthesis. Also, it ensures the timing of the design.The same test becnch was used here,but the vcd file's name is changed to differentiate between the old file.
Commands to run the GLS are given below.
```
iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 iiitb_counter_netlist.v iiitb_counter_tb.v verilog_model/primitives.v verilog_model/sky130_fd_sc_hd.v 
./a.out
gtkwave iiitb_counter_tb_synth.vcd

```
Using the created vcd file,we can get the functional characteristics using gtkwave,which is as follows
<p align="center">
  <img  src="/images/gtkwave_counter_synth.png">
</p>

## Layout

### Openlane
OpenLane is an automated RTL to GDSII flow based on several components including OpenROAD, Yosys, Magic, Netgen, CVC, SPEF-Extractor, CU-GR, Klayout and a number of custom scripts for design exploration and optimization. The flow performs full ASIC implementation steps from RTL all the way down to GDSII.

more at https://github.com/The-OpenROAD-Project/OpenLane
#### Installation instructions 
```
$   apt install -y build-essential python3 python3-venv python3-pip
```
Docker installation process:
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

goto home directory->
```
$   git clone https://github.com/The-OpenROAD-Project/OpenLane.git
$   cd OpenLane/
$   sudo make
$   sudo make test
```
It takes a while to complete.If it ends with **Basic test passed** ,then openLane is installed succesfully.

### Magic
Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.

More about magic at http://opencircuitdesign.com/magic/index.html

Run following commands one by one to fulfill the system requirement.

```
$   sudo apt-get install m4
$   sudo apt-get install tcsh
$   sudo apt-get install csh
$   sudo apt-get install libx11-dev
$   sudo apt-get install tcl-dev tk-dev
$   sudo apt-get install libcairo2-dev
$   sudo apt-get install mesa-common-dev libglu1-mesa-dev
$   sudo apt-get install libncurses-dev
```
**To install magic**
goto home directory

```
$   git clone https://github.com/RTimothyEdwards/magic
$   cd magic/
$   ./configure
$   sudo make
$   sudo make install
```
We can check if it is installed properly by typing **magic** in the  terminal.

### Generating Layout with existing library cells


Open terminal in home directory
```
$   cd OpenLane/
$   cd designs/
$   mkdir iiitb_counter
$   cd iiitb_counter/
$   touch config.json
$   mkdir src
$   cd src/
$   touch iiitb_counter.v
```
After creating those files,copy the iiitb_counter.v file used prior to the one created in src.Type the following in the config.json
```
{
    "DESIGN_NAME": "iiitb_counter",
    "VERILOG_FILES": "dir::src/iiitb_counter.v",
    "CLOCK_PORT": "clkin",
    "CLOCK_NET": "clkin",
    "GLB_RESIZER_TIMING_OPTIMIZATIONS": true,
    "CLOCK_PERIOD": 10,
    "PL_TARGET_DENSITY": 0.7,
    "FP_SIZING" : "relative",
    "pdk::sky130*": {
        "FP_CORE_UTIL": 30,
        "scl::sky130_fd_sc_hd": {
            "FP_CORE_UTIL": 20
        }
    },
    
    "LIB_SYNTH": "dir::src/sky130_fd_sc_hd__typical.lib",
    "LIB_FASTEST": "dir::src/sky130_fd_sc_hd__fast.lib",
    "LIB_SLOWEST": "dir::src/sky130_fd_sc_hd__slow.lib",
    "LIB_TYPICAL": "dir::src/sky130_fd_sc_hd__typical.lib",  
    "TEST_EXTERNAL_GLOB": "dir::../iiitb_counter/src/*"


}
```
Get back to Openlane directory and do the following.
```
$   sudo make mount
%   ./flow.tcl -design iiitb_pwm_gen
```
We are going to use magic for viewing the layout.Type the following in terminal.
```
$   cd OpenLane/designs/iiitb_counter/run
$   ls
```
select most recent run directoy from list
```
$  cd RUN_2022.09.01_06.56.46
```
run following instruction
```
$   cd results/final/def
```

```
$ magic -T /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_counter.def &
  ```
layout will be open in new window
#### layout - without sky130_vsdinv
<p align="center">
  <img width="600" length ="500"  src="/images/layout_1.png">
</p>

### Customizing the layout
#### sky130_vsdinv cell creation

Lets design a custom cell and include in library and get it in final layout.
clone the vsdcelldesign repo using following command
```
$ git clone https://github.com/nickson-jose/vsdstdcelldesign
```
<p align="center">
  <img width="300" length ="400"  src="/images/git_clone.png">
</p>

copy sky130A.tech to vsdstdcelldesign directo.ry and run the following command

```
$ magic -T sky130A.tech sky130_inv.mag 
```

#### layout of inverter cell
<p align="center">
  <img width="300" length ="400"  src="/images/layout_inverter.png">
</p>

#### Generating lef file
Type the following command in tkcon terminal to generate **.lef** file

```
% lef write sky130_vsdinv
```

<p align="center">
  <img  src="/images/writing.png">
</p>


Copy the generated lef file and the lib files from vsdcelldesign/libs to designs/iiit_counter/src.

<p align="center">
  <img  src="/images/copy_files.png">
</p>




### Generating Layout which inculdes custom made sky130_vsdinv

#### Openlane

Type the following in Openlane directory
```
$ make mount
```
The following command can be used to run in interactive mode

```
$ ./flow.tcl -interactive
```

Loading the package file

```
% package require openlane 0.9
```

 preparing design to run

```
% prep -design iiitb_counter
```
Type the following command  to include the additional lef (i.e sky130_vsdinv) into the flow:

```
% set lefs [glob $::env(DESIGN_DIR)/src/*.lef]
% add_lefs -src $lefs
```
<p align="center">
  <img  src="/images/l_1.png">
</p>


#### Synthesis
Logic synthesis uses the RTL netlist to perform HDL technology mapping. The synthesis process is normally performed in two major steps:

- GTECH Mapping – Consists of mapping the HDL netlist to generic gates what are used to perform logical optimization based on AIGERs and other topologies created from the generic mapped netlist.

- Technology Mapping – Consists of mapping the post-optimized GTECH netlist to standard cells described in the PDK

Run the following command to synthesis
```
% run_synthesis
```
<p align="center">
  <img  src="/images/l_2.png">
</p>

#### Floorplan
The next step is to run the floorpla.The following command should be used.

```
% run_floorplan
```
<p align="center">
  <img  src="/images/l_3.png">
</p>

**layout after floorplan**
Run the following command in results/floorplan directory

```
$ magic -T /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_counter.def &
```
<p align="center">
  <img  src="/images/lf.png">
</p>


#### Placement

Use the following command for placement
```
% run_placement
```
<p align="center">
  <img  src="/images/l_4.png">
</p>

**layout after placement**

Run the following command in results/placement directory

```
$ magic -T /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_counter.def &
```

<p align="center">
  <img  src="/images/lp.png">
</p>



#### CTS

Clock tree synteshsis is used to create the clock distribution network that is used to deliver the clock to all sequential elements. The main goal is to create a network with minimal skew across the chip. H-trees are a common network topology that is used to achieve this goal.

run the following command to perform CTS
```
% run_cts
```
<p align="center">
  <img  src="/images/l_5.png">
</p>



#### Routing

Run the following command to run the routing

```
% run_routing
```

<p align="center">
  <img  src="/images/l_6.png">
</p>


**layout after Routing**


Run the following command in results/routing directory

```
$ magic -T /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_counter.def &
```

<p align="center">
  <img  src="/images/lr1.png">
</p>


<p align="center">
  <img  src="/images/lr2.png">
</p>


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

