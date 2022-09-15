# Run configs
set ::env(PDK_ROOT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks}
set ::env(BASE_SDC_FILE) {/openlane/scripts/base.sdc}
set ::env(BOTTOM_MARGIN_MULT) {4}
set ::env(CARRY_SELECT_ADDER_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/csa_map.v}
set ::env(CELLS_LEF) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef}
set ::env(CELLS_LEF_OPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef}
set ::env(CELL_CLK_PORT) {CLK}
set ::env(CELL_PAD_EXCLUDE) {sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_ef_sc_hd__decap* sky130_fd_sc_hd__fill*}
set ::env(CHECK_ASSIGN_STATEMENTS) {0}
set ::env(CHECK_UNMAPPED_CELLS) {1}
set ::env(CLK_BUFFER) {sky130_fd_sc_hd__clkbuf_4}
set ::env(CLK_BUFFER_INPUT) {A}
set ::env(CLK_BUFFER_OUTPUT) {X}
set ::env(CLOCK_BUFFER_FANOUT) {16}
set ::env(CLOCK_NET) {clkin}
set ::env(CLOCK_PERIOD) {65}
set ::env(CLOCK_PORT) {clkin}
set ::env(CLOCK_TREE_SYNTH) {1}
set ::env(CLOCK_WIRE_RC_LAYER) {met5}
set ::env(CONFIGS) {general.tcl checkers.tcl synthesis.tcl floorplan.tcl cts.tcl placement.tcl routing.tcl extraction.tcl lvs.tcl}
set ::env(CTS_CLK_BUFFER_LIST) {sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_2}
set ::env(CTS_CLK_MAX_WIRE_LENGTH) {0}
set ::env(CTS_DISABLE_POST_PROCESSING) {0}
set ::env(CTS_DISTANCE_BETWEEN_BUFFERS) {0}
set ::env(CTS_MAX_CAP) {1.53169}
set ::env(CTS_REPORT_TIMING) {1}
set ::env(CTS_ROOT_BUFFER) {sky130_fd_sc_hd__clkbuf_16}
set ::env(CTS_SINK_CLUSTERING_MAX_DIAMETER) {50}
set ::env(CTS_SINK_CLUSTERING_SIZE) {25}
set ::env(CTS_SQR_CAP) {0.258e-3}
set ::env(CTS_SQR_RES) {0.125}
set ::env(CTS_TARGET_SKEW) {200}
set ::env(CTS_TECH_DIR) {N/A}
set ::env(CTS_TOLERANCE) {100}
set ::env(CVC_SCRIPTS_DIR) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/cvc}
set ::env(DATA_WIRE_RC_LAYER) {met2}
set ::env(DECAP_CELL) {sky130_ef_sc_hd__decap_12 sky130_fd_sc_hd__decap_8 sky130_fd_sc_hd__decap_6 sky130_fd_sc_hd__decap_4 sky130_fd_sc_hd__decap_3}
set ::env(DEFAULT_MAX_TRAN) {0.75}
set ::env(DEF_UNITS_PER_MICRON) {1000}
set ::env(DESIGN_CONFIG) {/openlane/designs/iiitb_counter/config.json}
set ::env(DESIGN_DIR) {/openlane/designs/iiitb_counter}
set ::env(DESIGN_IS_CORE) {1}
set ::env(DESIGN_NAME) {iiitb_counter}
set ::env(DETAILED_ROUTER) {tritonroute}
set ::env(DIODE_CELL) {sky130_fd_sc_hd__diode_2}
set ::env(DIODE_CELL_PIN) {DIODE}
set ::env(DIODE_INSERTION_STRATEGY) {3}
set ::env(DIODE_PADDING) {2}
set ::env(DPL_CELL_PADDING) {4}
set ::env(DRC_EXCLUDE_CELL_LIST) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/drc_exclude.cells}
set ::env(DRC_EXCLUDE_CELL_LIST_OPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/drc_exclude.cells}
set ::env(DRT_OPT_ITERS) {64}
set ::env(ECO_ENABLE) {0}
set ::env(ECO_FINISH) {0}
set ::env(ECO_ITER) {0}
set ::env(ECO_SKIP_PIN) {1}
set ::env(FAKEDIODE_CELL) {sky130_ef_sc_hd__fakediode_2}
set ::env(FILL_CELL) {sky130_fd_sc_hd__fill*}
set ::env(FILL_INSERTION) {1}
set ::env(FP_ASPECT_RATIO) {1}
set ::env(FP_CORE_MARGIN) {0}
set ::env(FP_CORE_UTIL) {20}
set ::env(FP_ENDCAP_CELL) {sky130_fd_sc_hd__decap_3}
set ::env(FP_IO_HEXTEND) {-1}
set ::env(FP_IO_HLAYER) {met3}
set ::env(FP_IO_HLENGTH) {4}
set ::env(FP_IO_HTHICKNESS_MULT) {2}
set ::env(FP_IO_MIN_DISTANCE) {3}
set ::env(FP_IO_MODE) {1}
set ::env(FP_IO_UNMATCHED_ERROR) {1}
set ::env(FP_IO_VEXTEND) {-1}
set ::env(FP_IO_VLAYER) {met2}
set ::env(FP_IO_VLENGTH) {4}
set ::env(FP_IO_VTHICKNESS_MULT) {2}
set ::env(FP_PDN_AUTO_ADJUST) {1}
set ::env(FP_PDN_CHECK_NODES) {1}
set ::env(FP_PDN_CORE_RING) {0}
set ::env(FP_PDN_CORE_RING_HOFFSET) {6}
set ::env(FP_PDN_CORE_RING_HSPACING) {1.7}
set ::env(FP_PDN_CORE_RING_HWIDTH) {1.6}
set ::env(FP_PDN_CORE_RING_VOFFSET) {6}
set ::env(FP_PDN_CORE_RING_VSPACING) {1.7}
set ::env(FP_PDN_CORE_RING_VWIDTH) {1.6}
set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) {1}
set ::env(FP_PDN_ENABLE_MACROS_GRID) {1}
set ::env(FP_PDN_ENABLE_RAILS) {1}
set ::env(FP_PDN_HOFFSET) {16.65}
set ::env(FP_PDN_HORIZONTAL_HALO) {10}
set ::env(FP_PDN_HPITCH) {153.18}
set ::env(FP_PDN_HSPACING) {1.7}
set ::env(FP_PDN_HWIDTH) {1.6}
set ::env(FP_PDN_IRDROP) {1}
set ::env(FP_PDN_LOWER_LAYER) {met4}
set ::env(FP_PDN_RAILS_LAYER) {met1}
set ::env(FP_PDN_RAIL_OFFSET) {0}
set ::env(FP_PDN_RAIL_WIDTH) {0.48}
set ::env(FP_PDN_UPPER_LAYER) {met5}
set ::env(FP_PDN_VERTICAL_HALO) {10}
set ::env(FP_PDN_VOFFSET) {16.32}
set ::env(FP_PDN_VPITCH) {153.6}
set ::env(FP_PDN_VSPACING) {1.7}
set ::env(FP_PDN_VWIDTH) {1.6}
set ::env(FP_SIZING) {relative}
set ::env(FP_TAPCELL_DIST) {13}
set ::env(FP_TAP_HORIZONTAL_HALO) {10}
set ::env(FP_TAP_VERTICAL_HALO) {10}
set ::env(FP_WELLTAP_CELL) {sky130_fd_sc_hd__tapvpwrvgnd_1}
set ::env(FULL_ADDER_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/fa_map.v}
set ::env(GDS_FILES) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds}
set ::env(GDS_FILES_OPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds}
set ::env(GENERATE_FINAL_SUMMARY_REPORT) {1}
set ::env(GLB_CFG_FILE) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/config.tcl}
set ::env(GLB_OPTIMIZE_MIRRORING) {1}
set ::env(GLB_RESIZER_ALLOW_SETUP_VIOS) {0}
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) {50}
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) {0.05}
set ::env(GLB_RESIZER_MAX_CAP_MARGIN) {10}
set ::env(GLB_RESIZER_MAX_SLEW_MARGIN) {10}
set ::env(GLB_RESIZER_MAX_WIRE_LENGTH) {0}
set ::env(GLB_RESIZER_SETUP_MAX_BUFFER_PERCENT) {50}
set ::env(GLB_RESIZER_SETUP_SLACK_MARGIN) {0.025}
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) {1}
set ::env(GLOBAL_ROUTER) {fastroute}
set ::env(GND_PIN) {VGND}
set ::env(GPIO_PADS_LEF) { /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_io/lef/sky130_fd_io.lef /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef }
set ::env(GPIO_PADS_LEF_CORE_SIDE) { /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/custom_cells/lef/sky130_fd_io_core.lef /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/custom_cells/lef/sky130_ef_io_core.lef }
set ::env(GPIO_PADS_VERILOG) { /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_io/verilog/sky130_ef_io.v /home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_io/verilog/sky130_ef_io__gpiov2_pad_wrapped.v }
set ::env(GPL_CELL_PADDING) {0}
set ::env(GRT_ADJUSTMENT) {0.3}
set ::env(GRT_ALLOW_CONGESTION) {0}
set ::env(GRT_ANT_ITERS) {3}
set ::env(GRT_ESTIMATE_PARASITICS) {1}
set ::env(GRT_LAYER_ADJUSTMENTS) {0.99,0,0,0,0,0}
set ::env(GRT_MACRO_EXTENSION) {0}
set ::env(GRT_MAX_DIODE_INS_ITERS) {1}
set ::env(GRT_OVERFLOW_ITERS) {50}
set ::env(IO_PCT) {0.2}
set ::env(KLAYOUT_DRC_KLAYOUT_GDS) {0}
set ::env(KLAYOUT_DRC_TECH_SCRIPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/klayout/drc/sky130A_mr.drc}
set ::env(KLAYOUT_PROPERTIES) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/klayout/tech/sky130A.lyp}
set ::env(KLAYOUT_TECH) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/klayout/tech/sky130A.lyt}
set ::env(KLAYOUT_XOR_GDS) {1}
set ::env(KLAYOUT_XOR_XML) {1}
set ::env(LEC_ENABLE) {0}
set ::env(LEFT_MARGIN_MULT) {12}
set ::env(LIB_FASTEST) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__fast.lib}
set ::env(LIB_SLOWEST) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__slow.lib}
set ::env(LIB_SLOWEST_OPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib}
set ::env(LIB_SYNTH) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__typical.lib}
set ::env(LIB_TYPICAL) {/openlane/designs/iiitb_counter/src/sky130_fd_sc_hd__typical.lib}
set ::env(LOGS_DIR) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs}
set ::env(LVS_CONNECT_BY_LABEL) {0}
set ::env(LVS_INSERT_POWER_PINS) {1}
set ::env(MACRO_BLOCKAGES_LAYER) {li1 met1 met2 met3 met4}
set ::env(MAGIC_CONVERT_DRC_TO_RDB) {1}
set ::env(MAGIC_DISABLE_HIER_GDS) {1}
set ::env(MAGIC_DRC_USE_GDS) {1}
set ::env(MAGIC_EXT_USE_GDS) {0}
set ::env(MAGIC_GENERATE_GDS) {1}
set ::env(MAGIC_GENERATE_LEF) {1}
set ::env(MAGIC_GENERATE_MAGLEF) {1}
set ::env(MAGIC_INCLUDE_GDS_POINTERS) {0}
set ::env(MAGIC_MAGICRC) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.magicrc}
set ::env(MAGIC_PAD) {0}
set ::env(MAGIC_TECH_FILE) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech}
set ::env(MAGIC_WRITE_FULL_LEF) {0}
set ::env(MAGIC_ZEROIZE_ORIGIN) {0}
set ::env(NETGEN_SETUP_FILE) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/netgen/sky130A_setup.tcl}
set ::env(NO_SYNTH_CELL_LIST) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/no_synth.cells}
set ::env(OPENLANE_VERBOSE) {0}
set ::env(PDKPATH) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A}
set ::env(PDN_CFG) {/openlane/scripts/openroad/pdn_cfg.tcl}
set ::env(PLACE_SITE) {unithd}
set ::env(PLACE_SITE_HEIGHT) {2.720}
set ::env(PLACE_SITE_WIDTH) {0.460}
set ::env(PL_BASIC_PLACEMENT) {0}
set ::env(PL_ESTIMATE_PARASITICS) {1}
set ::env(PL_LIB) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib}
set ::env(PL_MACRO_CHANNEL) {0 0}
set ::env(PL_MACRO_HALO) {0 0}
set ::env(PL_MAX_DISPLACEMENT_X) {500}
set ::env(PL_MAX_DISPLACEMENT_Y) {100}
set ::env(PL_OPTIMIZE_MIRRORING) {1}
set ::env(PL_RANDOM_GLB_PLACEMENT) {0}
set ::env(PL_RANDOM_INITIAL_PLACEMENT) {0}
set ::env(PL_RESIZER_ALLOW_SETUP_VIOS) {0}
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) {1}
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) {1}
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) {1}
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) {50}
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) {0.1}
set ::env(PL_RESIZER_MAX_CAP_MARGIN) {20}
set ::env(PL_RESIZER_MAX_SLEW_MARGIN) {20}
set ::env(PL_RESIZER_MAX_WIRE_LENGTH) {0}
set ::env(PL_RESIZER_REPAIR_TIE_FANOUT) {1}
set ::env(PL_RESIZER_SETUP_MAX_BUFFER_PERCENT) {50}
set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) {0.05}
set ::env(PL_RESIZER_TIE_SEPERATION) {0}
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) {1}
set ::env(PL_ROUTABILITY_DRIVEN) {1}
set ::env(PL_SKIP_INITIAL_PLACEMENT) {0}
set ::env(PL_TARGET_DENSITY) {0.7}
set ::env(PL_TIME_DRIVEN) {1}
set ::env(PRIMARY_SIGNOFF_TOOL) {magic}
set ::env(PROCESS) {130}
set ::env(QUIT_ON_HOLD_VIOLATIONS) {1}
set ::env(QUIT_ON_ILLEGAL_OVERLAPS) {1}
set ::env(QUIT_ON_LVS_ERROR) {1}
set ::env(QUIT_ON_MAGIC_DRC) {1}
set ::env(QUIT_ON_MISMATCHES) {1}
set ::env(QUIT_ON_SETUP_VIOLATIONS) {1}
set ::env(QUIT_ON_TIMING_VIOLATIONS) {1}
set ::env(QUIT_ON_TR_DRC) {1}
set ::env(RCX_CC_MODEL) {10}
set ::env(RCX_CONTEXT_DEPTH) {5}
set ::env(RCX_CORNER_COUNT) {1}
set ::env(RCX_COUPLING_THRESHOLD) {0.1}
set ::env(RCX_MAX_RESISTANCE) {50}
set ::env(RCX_MERGE_VIA_WIRE_RES) {1}
set ::env(RCX_RULES) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/rules.openrcx.sky130A.nom.spef_extractor}
set ::env(RCX_RULES_MAX) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/rules.openrcx.sky130A.max.spef_extractor}
set ::env(RCX_RULES_MIN) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/rules.openrcx.sky130A.min.spef_extractor}
set ::env(REPORTS_DIR) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports}
set ::env(RESULTS_DIR) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results}
set ::env(RE_BUFFER_CELL) {sky130_fd_sc_hd__buf_4}
set ::env(RIGHT_MARGIN_MULT) {12}
set ::env(RIPPLE_CARRY_ADDER_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/rca_map.v}
set ::env(ROOT_CLK_BUFFER) {sky130_fd_sc_hd__clkbuf_16}
set ::env(ROUTING_CORES) {2}
set ::env(RT_MAX_LAYER) {met5}
set ::env(RT_MIN_LAYER) {met1}
set ::env(RUN_CVC) {1}
set ::env(RUN_DIR) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26}
set ::env(RUN_DRT) {1}
set ::env(RUN_IRDROP_REPORT) {1}
set ::env(RUN_KLAYOUT) {1}
set ::env(RUN_KLAYOUT_DRC) {0}
set ::env(RUN_KLAYOUT_XOR) {1}
set ::env(RUN_LVS) {1}
set ::env(RUN_MAGIC) {1}
set ::env(RUN_MAGIC_DRC) {1}
set ::env(RUN_SIMPLE_CTS) {0}
set ::env(RUN_SPEF_EXTRACTION) {1}
set ::env(RUN_TAG) {RUN_2022.09.06_10.51.26}
set ::env(SPEF_EXTRACTOR) {openrcx}
set ::env(START_TIME) {2022.09.06_10.51.26}
set ::env(STA_REPORT_POWER) {1}
set ::env(STD_CELL_GROUND_PINS) {VGND VNB}
set ::env(STD_CELL_LIBRARY) {sky130_fd_sc_hd}
set ::env(STD_CELL_LIBRARY_CDL) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl}
set ::env(STD_CELL_LIBRARY_OPT) {sky130_fd_sc_hd}
set ::env(STD_CELL_LIBRARY_OPT_CDL) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl}
set ::env(STD_CELL_POWER_PINS) {VPWR VPB}
set ::env(SYNTH_ADDER_TYPE) {YOSYS}
set ::env(SYNTH_BIN) {yosys}
set ::env(SYNTH_BUFFERING) {1}
set ::env(SYNTH_CAP_LOAD) {33.442}
set ::env(SYNTH_CLOCK_TRANSITION) {0.15}
set ::env(SYNTH_CLOCK_UNCERTAINITY) {0.25}
set ::env(SYNTH_DRIVING_CELL) {sky130_fd_sc_hd__inv_2}
set ::env(SYNTH_DRIVING_CELL_PIN) {Y}
set ::env(SYNTH_EXTRA_MAPPING_FILE) {}
set ::env(SYNTH_FLAT_TOP) {0}
set ::env(SYNTH_LATCH_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/latch_map.v}
set ::env(SYNTH_MAX_FANOUT) {10}
set ::env(SYNTH_MIN_BUF_PORT) {sky130_fd_sc_hd__buf_2 A X}
set ::env(SYNTH_MUX4_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/mux4_map.v}
set ::env(SYNTH_MUX_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/mux2_map.v}
set ::env(SYNTH_NO_FLAT) {0}
set ::env(SYNTH_READ_BLACKBOX_LIB) {0}
set ::env(SYNTH_SCRIPT) {/openlane/scripts/yosys/synth.tcl}
set ::env(SYNTH_SHARE_RESOURCES) {1}
set ::env(SYNTH_SIZING) {0}
set ::env(SYNTH_STRATEGY) {AREA 0}
set ::env(SYNTH_TIEHI_PORT) {sky130_fd_sc_hd__conb_1 HI}
set ::env(SYNTH_TIELO_PORT) {sky130_fd_sc_hd__conb_1 LO}
set ::env(SYNTH_TIMING_DERATE) {0.05}
set ::env(SYNTH_TOP_LEVEL) {0}
set ::env(TAKE_LAYOUT_SCROT) {0}
set ::env(TAP_DECAP_INSERTION) {1}
set ::env(TECH_LEF) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef}
set ::env(TECH_LEF_MAX) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__max.tlef}
set ::env(TECH_LEF_MIN) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__min.tlef}
set ::env(TECH_LEF_OPT) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef}
set ::env(TERMINAL_OUTPUT) {/dev/null}
set ::env(TEST_EXTERNAL_GLOB) {dir::/src/iiitb_counter}
set ::env(TEST_MISMATCHES) {all}
set ::env(TMP_DIR) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp}
set ::env(TOP_MARGIN_MULT) {4}
set ::env(TRACKS_INFO_FILE) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/tracks.info}
set ::env(TRISTATE_BUFFER_MAP) {/home/sathiyanarayanan/Desktop/sem_5/asic/OpenLane/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/tribuff_map.v}
set ::env(UNBUFFER_NETS) {^$}
set ::env(USE_ARC_ANTENNA_CHECK) {1}
set ::env(USE_GPIO_PADS) {0}
set ::env(VCHECK_OUTPUT) {}
set ::env(VDD_PIN) {VPWR}
set ::env(VERILOG_FILES) {/openlane/designs/iiitb_counter/src/iiitb_counter.v}
set ::env(WIRE_RC_LAYER) {met1}
set ::env(YOSYS_REWRITE_VERILOG) {0}
set ::env(cts_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/cts}
set ::env(cts_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/cts}
set ::env(cts_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/cts}
set ::env(cts_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/cts}
set ::env(eco_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/eco}
set ::env(eco_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/eco}
set ::env(eco_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/eco}
set ::env(eco_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/eco}
set ::env(floorplan_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/floorplan}
set ::env(floorplan_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/floorplan}
set ::env(floorplan_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/floorplan}
set ::env(floorplan_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/floorplan}
set ::env(placement_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/placement}
set ::env(placement_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/placement}
set ::env(placement_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/placement}
set ::env(placement_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/placement}
set ::env(routing_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/routing}
set ::env(routing_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/routing}
set ::env(routing_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/routing}
set ::env(routing_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/routing}
set ::env(signoff_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/signoff}
set ::env(signoff_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/signoff}
set ::env(signoff_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/signoff}
set ::env(signoff_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/signoff}
set ::env(synthesis_logs) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/logs/synthesis}
set ::env(synthesis_reports) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/reports/synthesis}
set ::env(synthesis_results) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/synthesis}
set ::env(synthesis_tmpfiles) {/openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/synthesis}
set ::env(SYNTH_MAX_TRAN) {0.75}
set ::env(CURRENT_DEF) /openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/results/routing/iiitb_counter.def
set ::env(CURRENT_GUIDE) /openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/routing/18-global.guide
set ::env(CURRENT_INDEX) 22
set ::env(CURRENT_NETLIST) /openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/routing/21-detailed.v
set ::env(PREV_NETLIST) /openlane/designs/iiitb_counter/runs/RUN_2022.09.06_10.51.26/tmp/routing/19-global.v
