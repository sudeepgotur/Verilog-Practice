create_clock -name CLK -period 10

set_input_delay 2 -clock CLK [get_ports D0]
set_input_delay 2 -clock CLK [get_ports D1]
set_input_delay 2 -clock CLK [get_ports D2]
set_input_delay 2 -clock CLK [get_ports D3]

set_output_delay 2 -clock CLK [get_ports Y0]
set_output_delay 2 -clock CLK [get_ports Y1]
set_output_delay 2 -clock CLK [get_ports valid]

