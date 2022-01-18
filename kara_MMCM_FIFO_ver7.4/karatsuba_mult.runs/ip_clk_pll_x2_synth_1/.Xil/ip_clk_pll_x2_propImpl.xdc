set_property SRC_FILE_INFO {cfile:c:/1desktop/kara_MMCM_FIFO_ver7.4/karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2.xdc rfile:../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.2
