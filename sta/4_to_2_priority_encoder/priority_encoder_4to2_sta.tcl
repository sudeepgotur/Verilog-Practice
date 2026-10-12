
# Load Nangate standard-cell library
read_liberty /home/sudeep/vlsi/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.lib

# Read technology-mapped netlist
read_verilog synthesis/4to2priorityencoder/priority_encoder_4to2_45nm.v

# Link design
link_design priority_encoder_4to2

# Read timing constraints
read_sdc sta/4to2_encoder/priority_encoder_4to2.sdc

# Check timing constraints
check_setup

# Maximum delay analysis
report_checks -path_delay max > sta/4to2_encoder/max_timing.rpt

# Minimum delay analysis
report_checks -path_delay min > sta/4to2_encoder/min_timing.rpt

# Total negative slack
report_tns > sta/4to2_encoder/tns.rpt

# Worst negative slack
report_wns > sta/4to2_encoder/wns.rpt

