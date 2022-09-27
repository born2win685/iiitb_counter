# iiitb_counter

# Table of contents
 - [1 Introduction](#Introduction)<br>
 - [2 Applications](#Applications)<br>
 - [3 Block Diagram of Counter](#Block-Diagram-of-Counter)<br>
 - [3 GTKWave and iverilog](#GTKWave-and-iverilog)<br>
   - [3.1 Installing iverilog and GTKWave](#Installing-iverilog-and-GTKWave-for-Ubuntu)<br>
   - [3.2 Functional Simulation](#Functional-Simulation)<br>
   - [3.3 Functional Characteristics](#Functional-Characteristics)<br>
 - [4 Synthesis of verilog code](#Synthesis-of-verilog-code)<br>
    - [4.1 About Yosys](#About-Yosys)<br>
    - [4.2 Synthesising process](#Synthesising-process)<br>
    - [4.3 Ouput](#Output)<br>
 - [5 Gate level Simulation](#Gate-level-Simulation)<br>
 - [6 Layout](#Layout)<br>
    - [6.1 Openlane](#Openlane)<br>
    - [6.2 Magic](#Magic)<br>
    - [6.3 Generating Layout with existing library cells](#Generating-Layout-with-existing-library-cells)<br>
    - [6.4 Customizing the layout](#Customizing-the-layout)<br>
       - [6.4.1 sky130_vsdinv cell creation](#sky130_vsdinv-cell-creation)<br>
       - [6.4.2 layout of inverter cell](#layout-of-inverter-cell)<br>
       - [6.4.3 Generating lef file](Generating-lef-file)<br>
    - [6.5 Generating Layout which inculdes custom made sky130_vsdinv](#Generating-Layout-which-inculdes-custom-made-sky130_vsdinv)<br>
       - [6.5.1 Openlane](#Openlane)<br>
       - [6.5.2 Synthesis](#Synthesis)<br>
       - [6.5.3 Floorplan](#Floorplan)<br>
       - [6.5.4 Placement](#Placement)<br>
       - [6.5.5 CTS](#CTS)<br>
       - [6.5.6 Routing](#Routing)<br>
 - [7 Results](#Results)<br>
    - [7.1 Post-Synthesis gate Count]
    - [7.1 Area](#Area)<br>
    - [7.2 Power](#Power)<br>
 - [8 Contributors](#Contributors )<br>
 - [9 Acknowledgments](#Acknowledgments)<br>
 - [10 Contact Information](#Contact-Information)<br>
 - [11 References](#References)<br>

# Introduction

A counter is a device that stores the number of times an event has occured. An 8-bit counter can represent a maximum of
256 values. It can count from 0-255. An 8-bit counter contains 8 JK flip-flops.



# Applications

Counters can be used for anything that counts.The following are the most common applications

- Digital Clock
- Timers
- Alarm
- Analog to Digital Conversion
- Triangular Wave Generator

# Block Diagram of Counter

<p align="center">
  <img width="600" length ="500" src="/images/counter.png">
</p>

# GTKWave and iverilog
Icarus Verilog is an implementation of the Verilog hardware description language

GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing

## Installing iverilog and GTKWave for Ubuntu

Open your terminal and type the following to install iverilog and GTKWave
```
$   sudo apt-get update
$   sudo apt-get install iverilog gtkwave
```


## Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/born2win685/iiitb_counter
$   cd iiitb_counter
$   iverilog iiitb_counter.v iiitb_counter_tb.v
$   ./a.out
$   gtkwave iiitb_counter.vcd
```
<p align="center">
  <img  src="/images/gtk_o1.png">
</p>


# Functional Characteristics
Simulation Results
<p align="center">
  <img  src="/images/o1.png">
</p>



# Synthesis of verilog code

## About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys

- note: Identify the .lib file path in cloned folder and change the path in highlighted text to indentified path

 

## Synthesising process

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

## Output
<p align="center">
  <img  src="/images/synth.png">
</p>

<p align="center">
  <img width="600" length ="500"  src="/images/stat.png">
</p>

# Gate level Simulation

GLS stands for gate level simulation. When we write the RTL code, we test it by giving it some stimulus through the testbench and check it for the desired specifications. Similarly, we run the netlist as the design under test (dut) with the same testbench. Gate level simulation is done to verify the logical correctness of the design after synthesis. Also, it ensures the timing of the design.The same test becnch was used here,but the vcd file's name is changed to differentiate between the old file.
Commands to run the GLS are given below.
```
iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 iiitb_counter_netlist.v iiitb_counter_tb.v verilog_model/primitives.v verilog_model/sky130_fd_sc_hd.v 
./a.out
gtkwave iiitb_counter_tb_synth.vcd

```

<p align="center">
  <img  src="/images/gtk_o2.png">
</p>


Using the created vcd file,we can get the functional characteristics using gtkwave,which is as follows
<p align="center">
  <img  src="/images/o2.png">
</p>

# Layout

## Openlane
OpenLane is an automated RTL to GDSII flow based on several components including OpenROAD, Yosys, Magic, Netgen, CVC, SPEF-Extractor, CU-GR, Klayout and a number of custom scripts for design exploration and optimization. The flow performs full ASIC implementation steps from RTL all the way down to GDSII.

more at https://github.com/The-OpenROAD-Project/OpenLane

**Installation instructions** 
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

## Magic
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
$   sudo apt-get install libncurses-layout without sky130_vsdinvdev
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

## Generating Layout with existing library cells


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
%   ./flow.tcl -design iiitb_counter
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

**layout without sky130_vsdinv**
<p align="center">
  <img width="600" length ="500"  src="/images/layout_1.png">
</p>

## Customizing the layout
### sky130_vsdinv cell creation

Lets design a custom cell and include in library and get it in final layout.
clone the vsdcelldesign repo using following command
```
$ git clone https://github.com/nickson-jose/vsdstdcelldesign
```
<p align="center">
  <img  src="/images/git_clone.png">
</p>

copy sky130A.tech to vsdstdcelldesign directory and run the following command

```
$ magic -T sky130A.tech sky130_inv.mag 
```

### layout of inverter cell


<p align="center">
  <img   src="/images/layout_inverter.png">
</p>

Now, to extract the spice netlist, type the following commands in the tcl console. Here, parasitic capacitances and resistances of the inverter is extracted by  `cthresh 0 rthresh 0`.

```
extract all
ext2spice cthresh 0 rthresh 0
ext2spice
``` 
<p align="center">
  <img src="/images/spice_extract.png">
</p><br>

### Generating lef file
Type the following command in tkcon terminal to generate **.lef** file

```
% lef write sky130_vsdinv
```

<p align="center">
  <img  src="/images/writing.png">
</p>


The extracted lef file is shown below.

```
VERSION 5.7 ;
  NOWIREEXTENSIONATPIN ON ;
  DIVIDERCHAR "/" ;
  BUSBITCHARS "[]" ;
MACRO sky130_inv
  CLASS CORE ;
  FOREIGN sky130_inv ;
  ORIGIN 0.000 0.000 ;
  SIZE 1.380 BY 2.720 ;
  SITE unithd ;
  PIN A
    DIRECTION INPUT ;
    USE SIGNAL ;
    ANTENNAGATEAREA 0.165600 ;
    PORT
      LAYER li1 ;
        RECT 0.060 1.180 0.510 1.690 ;
    END
  END A
  PIN Y
    DIRECTION OUTPUT ;
    USE SIGNAL ;
    ANTENNADIFFAREA 0.287800 ;
    PORT
      LAYER li1 ;
        RECT 0.760 1.960 1.100 2.330 ;
        RECT 0.880 1.690 1.050 1.960 ;
        RECT 0.880 1.180 1.330 1.690 ;
        RECT 0.880 0.760 1.050 1.180 ;
        RECT 0.780 0.410 1.130 0.760 ;
    END
  END Y
  PIN VPWR
    DIRECTION INOUT ;
    USE POWER ;
    PORT
      LAYER nwell ;
        RECT -0.200 1.140 1.570 3.040 ;
      LAYER li1 ;
        RECT -0.200 2.580 1.430 2.900 ;
        RECT 0.180 2.330 0.350 2.580 ;
        RECT 0.100 1.970 0.440 2.330 ;
      LAYER mcon ;
        RECT 0.230 2.640 0.400 2.810 ;
        RECT 1.000 2.650 1.170 2.820 ;
      LAYER met1 ;
        RECT -0.200 2.480 1.570 2.960 ;
    END
  END VPWR
  PIN VGND
    DIRECTION INOUT ;
    USE GROUND ;
    PORT
      LAYER li1 ;
        RECT 0.100 0.410 0.450 0.760 ;
        RECT 0.150 0.210 0.380 0.410 ;
        RECT 0.000 -0.150 1.460 0.210 ;
      LAYER mcon ;
        RECT 0.210 -0.090 0.380 0.080 ;
        RECT 1.050 -0.090 1.220 0.080 ;
      LAYER met1 ;
        RECT -0.110 -0.240 1.570 0.240 ;
    END
  END VGND
END sky130_inv
END LIBRARY

```

Copy the generated lef file and the lib files from vsdcelldesign/libs to designs/iiit_counter/src.

<p align="center">
  <img  src="/images/copy_files.png">
</p>




## Generating Layout which inculdes custom made sky130_vsdinv

### Openlane

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

Now, we can observe that the `sky130_vsdinv` is included in `merged.nom.lef` file.
<p align="center">
  <img src="/images/merge_nom.png">
</p><br>


### Synthesis

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

The stats are present in synthesized netlist in results folder. 

<p align="center">
  <img src="/images/post_synth_stat.png">
</p><br>



Here, we notice that our custom cell `sky130_vsdinv` is displayed in the netlist generated.
<p align="center">
  <img src="/images/vsd_synth.png">
</p><br>

Also, sta report post synthesis can be viewed by going to the location `logs\synthesis\2-sta.log`

<p align="center">
  <img src="/images/worst_slack.png">
</p><br>

### Floorplan
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
  <img   src="/images/lf.png">
</p>

Die Area and Core Area can be viewed in the `reports/floorplan` directory.
<p align="center">
  <img src="/images/die.png">
</p><br>

<p align="center">
  <img src="/images/core.png">
</p><br>

### Placement

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

<p align="center">
  <img  src="/images/lp_zoom.png">
</p>

<p align="center">
  <img  src="/images/placement_vsd.png">
</p>


### CTS

Clock tree synteshsis is used to create the clock distribution network that is used to deliver the clock to all sequential elements. The main goal is to create a network with minimal skew across the chip. H-trees are a common network topology that is used to achieve this goal.

run the following command to perform CTS
```
% run_cts
```
<p align="center">
  <img  src="/images/l_5.png">
</p>

The netlist with clock buffers can be viewed by going to the location `results\cts\iiitb_counter.v`.
And,the sta report post synthesis can be viewed by going to the location `logs\synthesis\12-cts.log`


### Routing

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
  <img  src="/images/lr.png">
</p>



we can locate sky130_vsdinv using cell manager 

<p align="center">
  <img  src="/images/vsdinv.png">
</p>

Zoomed version of the cell.
<p align="center">
  <img  src="/images/vsdinv_zoom.png">
</p>


# Results 

## Post Layout synthesis gate count

<p align="center">
  <img src="/images/post_synth_stat.png">
</p><br>

```
Gate Count = 40
```

## Performance

```
$ sta <br>

OpenSTA> read_liberty -max /home/bsn_685/Desktop/sem_5/asic/OpenLane/designs/iiitb_counter/src/sky130_fd_sc_hd__fast.lib <br>

OpenSTA> read_liberty -min /home/bsn_685/Desktop/sem_5/asic/OpenLane/designs/iiitb_counter/src/sky130_fd_sc_hd__slow.lib <br>

OpenSTA> read_verilog /home/bsn_685/Desktop/sem_5/asic/OpenLane/designs/iiitb_counter/runs/RUN_2022.09.27_18.01.44/results/routing/iiitb_counter.resized.v <br>        

OpenSTA> link_design iiitb_counter <br>

OpenSTA> read_sdc /home/bsn_685/Desktop/sem_5/asic/OpenLane/designs/iiitb_counter/runs/RUN_2022.09.27_18.01.44/results/cts/iiitb_counter.sdc <br>

OpenSTA> read_spef /home/bsn_685/Desktop/sem_5/asic/OpenLane/designs/iiitb_counter/runs/RUN_2022.09.27_18.01.44/results/routing/iiitb_counter.nom.spef <br>

OpenSTA> set_propagated_clock [all_clocks] <br>

OpenSTA> report_checks <br>

OpenSTA> report_clock_properties <br>
```
<p align="center">
  <img src="/images/osta_1.png">
</p><br>

<p align="center">
  <img src="/images/osta_2.png">
</p><br>

```
Performance = 1/(clock period - slack) = 1/(65 - 51.21)ns = 72.516Mhz 
```

## Area

```
The area of the chip is 3769.966 sq micrometers.
```

<p align="center">
  <img  src="/images/area.png">
</p>

## 4. Flip-Flop to Standard cell ratio

<p align="center">
  <img src="/images/post_synth_stat.png">
</p><br>

Flip Flop ratio is as follows

```
 no.of flip flops / total no. of cells = 8/40
 flip flop ratio = 0.2 
```

## Power

<p align="center">
  <img  src="/images/power.png">
</p>

```
 Internal Power = 0.529 uW (74.4%) </b></I><br>
 Switching Power = 0.69 uW (25.6%) </b></I><br>
 Leakage Power = 0.351 nW (0.00%) </b></I><br>
 Total Power = 1.22 uW (100%) </b></I><br>
```

# Contributors 

- **B Sathiya Naraayanan** 
- **Kunal Ghosh** 



# Acknowledgments


- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.

# Contact Information

- B Sathiya Naraayanan, IMT2020534, International Institute of Information Technology, Bangalore  ,Sathiya.Naraayanan@iiitb.ac.in
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com

# References

- [Fastlad tutorial](https://www.instructables.com/Using-Falstads-Circuit-Simulator/)
- [Counters tutorial](https://www.youtube.com/watch?v=iaIu5SYmWVM&list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm&index=179)
- [Verilog](https://www.fpga4student.com/)

