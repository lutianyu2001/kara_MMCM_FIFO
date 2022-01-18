// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Aug  5 14:31:56 2020
// Host        : SC-201910041714 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_signed_18bit_sim_netlist.v
// Design      : mult_signed_18bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_signed_18bit,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "18" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "35" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [17:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [35:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qDiFOwV3RM7VGSE4Y7orpfLk9lA/ekSfT6psKSRVJjzZbyRPpU1jPzKyTKzkSsXgyQdMXlYkKu52
JMGZxzIkZ4W4IVie1VKxNXWUrkfPxTZMDbs7Of8R0GJSXeHQ3G3PZHRy/g20SuG17TsPCWW9ZCJJ
/h+Scu7emHxJne3QOa7zFraV2L9RKA1DFdzUOUvx8Mzo3UntrjXpOq5CCxX/MUyNXS+uvRy3LYhz
J7s7tVFOTF+96k08OpMB3AjzDHT7AVyccww23sz7IgnKn2HB02JSLK2xPH09UbZjr4fPD/f71Mke
E88qp4LOGZcY3PqNuUkKgZDTQCYEje7XB9VqbA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ya29z1NGDa2LmIWhi8WEgO2VylFX8WnTwLPa6bPBHGcrw++w1lP55C4ZEI/K05tK3puwVQ9LLtKn
c9yxy57OpZSDaYcUkRERZ5PKMs/PLF4AbSkVr6KRHBzReNFuNUyR2E3Z9a6451U86Ozo5JQBn+wM
dWr1HcjEL5z+FOp5l8/Tyc+rGBqQKOTeZ+kplgKC1mYeTDOs40LM3kff8uEuK5GeIgzELWsXzEP5
JJtCNakj1px1gq5V1ck9hxu28cCDvkEud84MggNcPkwWSzNS22jO+dXpGyCCWdI2ZDtDiQ8kJlFe
HrXJjJDanMPDVjgOS3knKNIiLMOT/Bh1htzM4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
CQ8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
