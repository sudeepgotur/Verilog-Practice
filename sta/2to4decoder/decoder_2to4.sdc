create_clock -name VCLK -period 10

set_input_delay 0 -clock VCLK [get_ports A]
set_input_delay 0 -clock VCLK [get_ports B]

set_output_delay 0 -clock VCLK [get_ports Y0]
set_output_delay 0 -clock VCLK [get_ports Y1]
set_output_delay 0 -clock VCLK [get_ports Y2]
set_output_delay 0 -clock VCLK [get_ports Y3]
