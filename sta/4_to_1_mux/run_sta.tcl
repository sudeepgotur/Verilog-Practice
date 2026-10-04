read_liberty /home/sudeep/vlsi/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.lib

read_verilog synthesis/4to1mux/mux_4to1_45nm.v

link_design mux_4to1

read_sdc sta/4to1mux/mux_4to1.sdc

report_checks -path_delay max > sta/4to1mux/max_timing.rpt
report_checks -path_delay min > sta/4to1mux/min_timing.rpt
report_tns > sta/4to1mux/tns.rpt
report_wns > sta/4to1mux/wns.rpt
