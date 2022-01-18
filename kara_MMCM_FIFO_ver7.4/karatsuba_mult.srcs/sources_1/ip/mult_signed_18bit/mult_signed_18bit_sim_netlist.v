// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Aug  5 14:31:56 2020
// Host        : SC-201910041714 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/work/UIC_Course/DigitalCircuitsDesign/Project/karatsuba_mult/karatsuba_mult.srcs/sources_1/ip/mult_signed_18bit/mult_signed_18bit_sim_netlist.v
// Design      : mult_signed_18bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_signed_18bit,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_signed_18bit
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
  mult_signed_18bit_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_signed_18bit_mult_gen_v12_0_14
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
  mult_signed_18bit_mult_gen_v12_0_14_viv i_mult
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
beqU4rIe4whbadUu4vJw4Gg72qklOOx2mcXXOsmuqrywkEEt6L0bj3dhcxYJ92COZ0qQKrmELeYu
6Lk7G3Yf3oaFUFDfDO085tHljJAsOEcaOeHfrff+OBWbtXwgm4erRbFtdyFdRiWZOa1U5veoob2f
o2gHO+3F1bQC/B8cQV6kuhroL8UfaBi3zCMg2gkPoRBGR6Xiro2jSdABDeZR0F2Hvib61Q/P1TTM
dpdmy3vRvS8Rt4uu/olbCPhVGbn4JuUsKawc6hvIjBW+LBTuQZnuFVf83AwKCWPWoVKqhl0nKKGV
4W483S4o7fIT8tvKms18yjKzVIstHg75E0XvYQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cMrZHf4i6LWuXXVla3cbvx7VKy3RCbfSe0m8oqK3+h6BdYuZhL31D8Zm3I4AdPS+6KPMhikylICU
kVBYnVWZoMOckZt94ldjmAwO41+2nu0xLnAtMWH3bXUylt+/ANLpkAtYYdz+aUvlGdi05hjhnsxL
I/oCQu3KKS7Hcy5y7jCLJYDPCDpabh9iY/iEXk4ZTxBrBLrQaWxgaEJkVGhpAnmZuRLfBRomeNGE
QXv4fZYRxBh3HAF76mxlBQ/1x16U/V6GBAeaP/zJKmY2XTnzpUng9QpRq3rdux4qshLrNPlUFNGG
mskMdUaQY3yGYQXQayO90n8PIz/xLInoR60Kjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
v/M=
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
