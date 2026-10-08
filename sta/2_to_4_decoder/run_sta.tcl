read_liberty /home/sudeep/vlsi/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.lib

read_verilog synthesis/2to4decoder/decoder_2to4_45nm.v

link_design decoder_2to4

read_sdc sta/2to4decoder/decoder_2to4.sdc

report_checks -path_delay max > sta/2to4decoder/max_timing.rpt
report_checks -path_delay min > sta/2to4decoder/min_timing.rpt
report_tns > sta/2to4decoder/tns.rpt
report_wns > sta/2to4decoder/wns.rpt
