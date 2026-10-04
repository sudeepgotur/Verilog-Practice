create_clock -name CLK -period 10

set_input_delay 2 -clock CLK [get_ports I0]
set_input_delay 2 -clock CLK [get_ports I1]
set_input_delay 2 -clock CLK [get_ports I2]
set_input_delay 2 -clock CLK [get_ports I3]
set_input_delay 2 -clock CLK [get_ports S0]
set_input_delay 2 -clock CLK [get_ports S1]

set_output_delay 2 -clock CLK [get_ports Y]
