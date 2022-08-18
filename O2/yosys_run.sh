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
