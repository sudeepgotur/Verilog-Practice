read_liberty /home/sudeep/vlsi/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.lib

read_verilog synthesis/mux_2to1/mux_2to1_45nm.v

link_design mux_2to1

read_sdc sta/2to1mux/mux_2to1.sdc

report_checks -path_delay max > sta/2to1mux/max_timing.rpt
report_checks -path_delay min > sta/2to1mux/min_timing.rpt
report_tns > sta/2to1mux/tns.rpt
report_wns > sta/2to1mux/wns.rpt
