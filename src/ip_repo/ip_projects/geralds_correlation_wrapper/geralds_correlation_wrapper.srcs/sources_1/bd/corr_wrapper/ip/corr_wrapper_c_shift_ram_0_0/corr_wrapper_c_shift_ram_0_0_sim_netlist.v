// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Mar  4 15:00:40 2018
// Host        : jcalhome running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top corr_wrapper_c_shift_ram_0_0 -prefix
//               corr_wrapper_c_shift_ram_0_0_ corr_wrapper_c_shift_ram_0_0_sim_netlist.v
// Design      : corr_wrapper_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "corr_wrapper_c_shift_ram_0_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module corr_wrapper_c_shift_ram_0_0
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
  (* c_depth = "5" *) 
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
  corr_wrapper_c_shift_ram_0_0_c_shift_ram_v12_0_10 U0
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
(* C_DEPTH = "5" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module corr_wrapper_c_shift_ram_0_0_c_shift_ram_v12_0_10
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
  (* c_depth = "5" *) 
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
  corr_wrapper_c_shift_ram_0_0_c_shift_ram_v12_0_10_viv i_synth
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
kuK3duJT7R3nPk0USAdVCDvt3ip7sv6RcMKX09K95RmO5HRXwXWdTYzLY3QVNBNEPzcdqUeHhZMb
7NFtFcmSE+dT+bja5vtucVz4gq9v54dekKnN6JK9wpQFdh7jTlQk0Zd5AOGWSUXndJk2/CTalxIW
3b8tW95jq/N3fT/5Tv1UrQBqZ85OLPOpXeQ+2UgghLlF/TypmQdzW0Ed01M8S7rzcwxuHeIVwOwI
x8j6twCGv3kz4CdBblLX31eTr40+D/sqzlf351lzfRmFoaJ+u7NMiX7LrT5MxtWi/sl0jmfIcHXy
+dSyBWj9Uxwwf/z1mGmG/b1nMOlPFTuEn6MkRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
07HjJjJravGCc/4ZI9gWUl6z4Z2ecjo2YepLYGa9sFaHiX+8jQidZXHrw0+Y8qa/xqsHoi4ygU+C
2bvmDreTx1KM4jKngYDmAPxgEv+4QjGAxhjdI7SyxbcfONSToyNTb0veIyhWGG26jtfIelQyg1mv
6B4ViydbezeErglt+vPut03SL3sxAf9AzVdohCyGdR24Cq4QHmSwDXCcG5BU9n9wf8vArYR4s1Ex
yn6JRSOM23z6XQFN5v5/cUHeUwXi6baC3qmKDaITPfwwves0N3/5wrMtgnNSrdiU4/PvthoZF+TG
EcoPxGOQ78VVmLCCnKugcBBaDFvHX02OScrR+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5376)
`pragma protect data_block
+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
DpDLQVLnLp94Ag4=
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
