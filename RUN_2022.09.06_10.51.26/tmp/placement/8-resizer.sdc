###############################################################################
# Created by write_sdc
# Tue Sep  6 10:52:01 2022
###############################################################################
current_design iiitb_counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clkin -period 65.0000 
set_clock_uncertainty 0.2500 clkin
set_input_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {CK}]
set_input_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {RN}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[0]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[1]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[2]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[3]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[4]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[5]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[6]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Q[7]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qu[0]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qu[1]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qu[2]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qu[3]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qz[0]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qz[1]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qz[2]}]
set_output_delay 13.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {Qz[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {Q[7]}]
set_load -pin_load 0.0334 [get_ports {Q[6]}]
set_load -pin_load 0.0334 [get_ports {Q[5]}]
set_load -pin_load 0.0334 [get_ports {Q[4]}]
set_load -pin_load 0.0334 [get_ports {Q[3]}]
set_load -pin_load 0.0334 [get_ports {Q[2]}]
set_load -pin_load 0.0334 [get_ports {Q[1]}]
set_load -pin_load 0.0334 [get_ports {Q[0]}]
set_load -pin_load 0.0334 [get_ports {Qu[3]}]
set_load -pin_load 0.0334 [get_ports {Qu[2]}]
set_load -pin_load 0.0334 [get_ports {Qu[1]}]
set_load -pin_load 0.0334 [get_ports {Qu[0]}]
set_load -pin_load 0.0334 [get_ports {Qz[3]}]
set_load -pin_load 0.0334 [get_ports {Qz[2]}]
set_load -pin_load 0.0334 [get_ports {Qz[1]}]
set_load -pin_load 0.0334 [get_ports {Qz[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {CK}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {RN}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
