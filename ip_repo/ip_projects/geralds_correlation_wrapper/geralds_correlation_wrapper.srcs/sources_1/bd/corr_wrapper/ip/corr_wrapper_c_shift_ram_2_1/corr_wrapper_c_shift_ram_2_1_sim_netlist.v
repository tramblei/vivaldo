// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 17 16:35:47 2018
// Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_c_shift_ram_2_1/corr_wrapper_c_shift_ram_2_1_sim_netlist.v
// Design      : corr_wrapper_c_shift_ram_2_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "corr_wrapper_c_shift_ram_2_1,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module corr_wrapper_c_shift_ram_2_1
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "19" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  corr_wrapper_c_shift_ram_2_1_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "19" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module corr_wrapper_c_shift_ram_2_1_c_shift_ram_v12_0_10
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "19" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  corr_wrapper_c_shift_ram_2_1_c_shift_ram_v12_0_10_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZPVr6gPhgA50m5jEg/cloU5pPzs5ur+MQW36xOcR8MdF8wWaUr8zIKTkcmQ2+yydX1fZ4Dyi3sIY
TpR8Ac269Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m4q9MtEWGVJ85SvGPq9Dz0jIl7zWLDc7qOxdMPlcTg9T1T9M5FPPiGgkxREX6nE7+9JKkFDwnsA9
8+fSm6Oi0bE3MkKI9FO2ZXM7K+4Rk8vDA92zhdLKaJ34nA7vjScrX2b/LBmzP8q6nQDO40WeaUg8
L807mVHk8Be+E1biF6U=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aatvZnYN0uh5k7QSlNnnB6bvhD3FbME0tc3JI5aMmMGgeBi70uOFdm+jeJ/aiZunLfXWyCxoMCdc
dBKB//l+xg2I91pEyCdzuoUrT048IsBLQwoZokH799mJgNx9daihUGv5ybbWk1i/wA12WcjDOJJC
Er52KQagyjyU7tEBN74=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dJns6s7QA8cdhO4jfiphF7PmkVvVC6Dhh0L6aFNskwPuc6Jos8rWXR3Jsgb9Qh/ak0KSbr9NkeLv
RgWhqRWe6LELfKQmcczmKfG1JTRag1Ex4E/VjixkGn64jC/UtyXNaVM5yfO4VMr/fepoyu097gcT
77pUFtteJrLFft6+LFiCSz1u1409YDqqA4/3ehiUO5JOTCVkxneqaqe+aoE9AvaxJhXMmJbXxuX2
8tKWpWklIhCC6AmEZ6vWD2uWzR5I+9OwtvmDMR4Kdzhy9mgzB/ud3Zwi7GCYMIYw3y7JpPsofCgb
v7QgaSwvHIaUuArSLJSXzaiJo+vv2cUDfF7Kbw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D2SIfMgicSOsDpsKHm+y5JCS0B9zepyfPIW5qstyEt9dSu53QxJ8dnCG/hq1rHPPNh7Ynj1WE5Vr
omRCeZE+4pAJd56hxgT6gDGsB9CWHv564ekGt+/ni622rk32WJgUuR1+z1V93RmKfyOTETzifJzW
c87TjOtsORPS4hAn8ZDvknAumyZPKMcIx2qqbUG6HkU0plfnmrKVtvmQFuscX/So3RuqQmaVrgEV
NxM86dJR4oU66dzjwOUynRyBsQ6WtLWtBkJ2Q58nTXYozeEQ2np76d0RpZpbLNyp0May2HmzXMGV
nCucai8VYz/d2AjP0bysze55WqGsL+qEO8jKzQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tMh7AxjNYMBJGMu4nT7+MUezQs9H8HlH2v9U7UVzGDM33uFa169W7t3PYXdwUnixdASrg4Ii+jDe
wcKq5RtvD55ebjKBFk+AJkdG5+4o0RsJmF8MRdgGUjYsu+yc0E70kG7GISyz5If8VZRuf5sfEebp
MAVhUoIklYMjXV0641B+WCQ851H+VAB7G65Z3dPbNwkIDySVa6ZdOY8Mh7SSRTyPs2u1iaLTACcr
cNLUc3i16RbKgf7QG7DMwDeInwsRMlfNO7eZeGEpaTeNPJNGd4TDVZJBkI1mLP8U6MFEOk+3GROr
H6jgeyhRsDgX3tTSgmba6DM90HFy2Y2meS+LLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Fvu6UbVUMBbhcUVwsTc6cL/+etNfobD++CnM/PGMk+W5oxuL/gCbjAuMkXQ5l7D4Yj4hQUjQNqcZ
etCXQZRfFBwmzW8SIrY6KhsVq4KuC84COCfj7qSa5ijM+CbwDpkoBFu6nhbkUWHMZljn/i/8CpDE
OKFwhW/r8gOgd39FpaYQ6UMbLsCGh8TOfBg0bmr58spReK6M1fuPOrKnFpAy3/q/qcFfSE63sMRw
3i0E3P0IAU3Ikf6gTckgkKFHjKHCNsCBSacV2Chl97pFv8lVB40w3z1YEKjcEFZEu2ogIhaV+q3g
AIWPHW03Ce1BmFPEvNoa4vAxxj4Vwty/Onmp4Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
h/wOX5oTdkgBl6aaq+S6JygwYfrUlh/QYz+M9eSU50Lyw5T65tg/x6P2I2SQxIuNACaSH8U2h8RP
KIrdQe2mG8IBBXnFcM6zCepNo8r2EnYzJDUpV9pvJ/L5QyIjYzjgo3ZLcqkq7B8V0vpU4gC967+g
1fjPLL+qNDffAYb+MK1cXPWqgqTIndC6cf9dSJZ5W5nX8+T/IXo+aDdQ5A/tzpcCH/SIKPIEtbc9
9PMA7DJW1gLlt6q5IlElHjLIBvzPr7bCL38610wHguf0x3N1DHfYFBpf/Es5Uf3KPiPyk6DvPFCY
9gkjXI9MlhBh31zfU2UCM4bqCpWgGQoRE0Sk8w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5488)
`pragma protect data_block
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
+KgVCQusqocwcs9zFoL9uA==
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
