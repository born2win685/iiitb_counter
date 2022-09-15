set ::env(PDK) {sky130A}
set ::env(STD_CELL_LIBRARY) {sky130_fd_sc_hd}
set ::env(DESIGN_NAME) {iiitb_counter}
set ::env(VERILOG_FILES) {/openlane/designs/iiitb_counter/src/iiitb_counter.v}
set ::env(CLOCK_PORT) {clkin}
set ::env(CLOCK_NET) {clkin}
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) {1}
set ::env(CLOCK_PERIOD) {65}
set ::env(PL_TARGET_DENSITY) {0.7}
set ::env(FP_SIZING) {relative}
set ::env(FP_CORE_UTIL) {20}
set ::env(LIB_SYNTH) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__typical.lib}
set ::env(LIB_FASTEST) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__fast.lib}
set ::env(LIB_SLOWEST) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__slow.lib}
set ::env(LIB_TYPICAL) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__typical.lib}
set ::env(TEST_EXTERNAL_GLOB) {dir::/src/iiitb_counter}