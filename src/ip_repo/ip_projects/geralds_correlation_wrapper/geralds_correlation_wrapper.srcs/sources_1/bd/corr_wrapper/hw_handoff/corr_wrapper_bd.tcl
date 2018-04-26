
################################################################
# This is a generated script based on design: corr_wrapper
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source corr_wrapper_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name corr_wrapper

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set correlation_val_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 correlation_val_axi ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {16} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.FREQ_HZ {10000000} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $correlation_val_axi
  set sig1_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 sig1_axis ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {10000000} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {1} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {1} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {2} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $sig1_axis
  set sig2_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 sig2_axis ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {10000000} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {1} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {1} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {2} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $sig2_axis

  # Create ports
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set sclk [ create_bd_port -dir I -type clk sclk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {10000000} \
 ] $sclk

  # Create instance: c_shift_ram_0, and set properties
  set c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_0 ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.CE {false} \
CONFIG.DefaultData {0} \
CONFIG.Depth {5} \
CONFIG.SCLR {true} \
CONFIG.SINIT {false} \
CONFIG.SSET {false} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $c_shift_ram_0

  # Create instance: cordic_2, and set properties
  set cordic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_2 ]
  set_property -dict [ list \
CONFIG.Coarse_Rotation {false} \
CONFIG.Compensation_Scaling {No_Scale_Compensation} \
CONFIG.Data_Format {UnsignedInteger} \
CONFIG.Functional_Selection {Square_Root} \
CONFIG.Input_Width {48} \
CONFIG.Output_Width {25} \
CONFIG.Pipelining_Mode {Optimal} \
CONFIG.cartesian_has_tlast {false} \
CONFIG.cartesian_has_tuser {false} \
CONFIG.flow_control {Blocking} \
CONFIG.out_tlast_behv {Null} \
CONFIG.out_tready {false} \
 ] $cordic_2

  # Create instance: cordic_3, and set properties
  set cordic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_3 ]
  set_property -dict [ list \
CONFIG.Coarse_Rotation {false} \
CONFIG.Compensation_Scaling {No_Scale_Compensation} \
CONFIG.Data_Format {UnsignedInteger} \
CONFIG.Functional_Selection {Square_Root} \
CONFIG.Input_Width {48} \
CONFIG.Output_Width {25} \
CONFIG.Pipelining_Mode {Optimal} \
CONFIG.cartesian_has_tlast {false} \
CONFIG.cartesian_has_tuser {false} \
CONFIG.flow_control {Blocking} \
CONFIG.out_tlast_behv {Null} \
CONFIG.out_tready {false} \
 ] $cordic_3

  # Create instance: div_gen_0, and set properties
  set div_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:div_gen:5.1 div_gen_0 ]
  set_property -dict [ list \
CONFIG.divide_by_zero_detect {true} \
CONFIG.dividend_and_quotient_width {64} \
CONFIG.divisor_has_tuser {false} \
CONFIG.divisor_width {64} \
CONFIG.fractional_width {64} \
CONFIG.latency {66} \
CONFIG.operand_sign {Unsigned} \
CONFIG.remainder_type {Remainder} \
 ] $div_gen_0

  # Create instance: dp_out, and set properties
  set dp_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 dp_out ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {000000000000000000000000000000000000000000000000} \
CONFIG.CE {false} \
CONFIG.DefaultData {000000000000000000000000000000000000000000000000} \
CONFIG.Depth {19} \
CONFIG.SCLR {true} \
CONFIG.SyncInitVal {000000000000000000000000000000000000000000000000} \
CONFIG.Width {48} \
 ] $dp_out

  # Create instance: dp_valid, and set properties
  set dp_valid [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 dp_valid ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.DefaultData {0} \
CONFIG.Depth {19} \
CONFIG.SCLR {true} \
CONFIG.ShiftRegType {Fixed_Length} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $dp_valid

  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [ list \
CONFIG.OutputWidthHigh {63} \
CONFIG.PipeStages {5} \
CONFIG.PortAType {Unsigned} \
CONFIG.PortAWidth {32} \
CONFIG.PortBType {Unsigned} \
CONFIG.PortBWidth {32} \
 ] $mult_gen_0

  # Create instance: projection_correlation_calculator_v1_0_0, and set properties
  set projection_correlation_calculator_v1_0_0 [ create_bd_cell -type ip -vlnv user.org:user:projection_correlation_calculator_v1_0:1.0 projection_correlation_calculator_v1_0_0 ]
  set_property -dict [ list \
CONFIG.C_fft_AXIS_TDATA_WIDTH {16} \
CONFIG.C_fft_FIFO_BLOCK_SIZE {10} \
CONFIG.DOT_PRODUCT_SIZE {48} \
 ] $projection_correlation_calculator_v1_0_0

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /projection_correlation_calculator_v1_0_0/correlation_out_axi]

  # Create instance: sqrt_ready_dp_valid, and set properties
  set sqrt_ready_dp_valid [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 sqrt_ready_dp_valid ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $sqrt_ready_dp_valid

  # Create instance: sqrts_ready, and set properties
  set sqrts_ready [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 sqrts_ready ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $sqrts_ready

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {8} \
CONFIG.IN1_WIDTH {48} \
CONFIG.IN2_WIDTH {8} \
CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {95} \
CONFIG.DIN_TO {64} \
CONFIG.DIN_WIDTH {128} \
CONFIG.DOUT_WIDTH {32} \
 ] $xlslice_0

  # Create instance: zero_constant, and set properties
  set zero_constant [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 zero_constant ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {8} \
 ] $zero_constant

  # Create interface connections
  connect_bd_intf_net -intf_net correlation_out_axi_1 [get_bd_intf_ports correlation_val_axi] [get_bd_intf_pins projection_correlation_calculator_v1_0_0/correlation_out_axi]
  connect_bd_intf_net -intf_net golden_fft_axis_1 [get_bd_intf_ports sig1_axis] [get_bd_intf_pins projection_correlation_calculator_v1_0_0/golden_fft_axis]
  connect_bd_intf_net -intf_net signal_fft_axis_1 [get_bd_intf_ports sig2_axis] [get_bd_intf_pins projection_correlation_calculator_v1_0_0/signal_fft_axis]

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports sclk] [get_bd_pins c_shift_ram_0/CLK] [get_bd_pins cordic_2/aclk] [get_bd_pins cordic_3/aclk] [get_bd_pins div_gen_0/aclk] [get_bd_pins dp_out/CLK] [get_bd_pins dp_valid/CLK] [get_bd_pins mult_gen_0/CLK] [get_bd_pins projection_correlation_calculator_v1_0_0/correlation_out_axi_aclk] [get_bd_pins projection_correlation_calculator_v1_0_0/golden_fft_axis_aclk] [get_bd_pins projection_correlation_calculator_v1_0_0/signal_fft_axis_aclk]
  connect_bd_net -net c_shift_ram_0_Q [get_bd_pins c_shift_ram_0/Q] [get_bd_pins div_gen_0/s_axis_divisor_tvalid]
  connect_bd_net -net cordic_2_m_axis_dout_tdata [get_bd_pins cordic_2/m_axis_dout_tdata] [get_bd_pins mult_gen_0/B]
  connect_bd_net -net cordic_2_m_axis_dout_tvalid [get_bd_pins cordic_2/m_axis_dout_tvalid] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net cordic_2_s_axis_cartesian_tready [get_bd_pins cordic_2/s_axis_cartesian_tready] [get_bd_pins sqrts_ready/Op1]
  connect_bd_net -net cordic_3_m_axis_dout_tdata [get_bd_pins cordic_3/m_axis_dout_tdata] [get_bd_pins mult_gen_0/A]
  connect_bd_net -net cordic_3_m_axis_dout_tvalid [get_bd_pins cordic_3/m_axis_dout_tvalid] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net cordic_3_s_axis_cartesian_tready [get_bd_pins cordic_3/s_axis_cartesian_tready] [get_bd_pins sqrts_ready/Op2]
  connect_bd_net -net correlation_out_axi_aresetn_1 [get_bd_ports aresetn] [get_bd_pins projection_correlation_calculator_v1_0_0/correlation_out_axi_aresetn] [get_bd_pins projection_correlation_calculator_v1_0_0/golden_fft_axis_aresetn] [get_bd_pins projection_correlation_calculator_v1_0_0/signal_fft_axis_aresetn] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net div_gen_0_m_axis_dout_tdata [get_bd_pins div_gen_0/m_axis_dout_tdata] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net div_gen_0_m_axis_dout_tvalid [get_bd_pins div_gen_0/m_axis_dout_tvalid] [get_bd_pins projection_correlation_calculator_v1_0_0/correlation_normalized_valid]
  connect_bd_net -net dp_out_Q [get_bd_pins dp_out/Q] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net dp_valid_Q [get_bd_pins div_gen_0/s_axis_dividend_tvalid] [get_bd_pins dp_valid/Q]
  connect_bd_net -net mult_gen_0_P [get_bd_pins div_gen_0/s_axis_divisor_tdata] [get_bd_pins mult_gen_0/P]
  connect_bd_net -net projection_correlation_calculator_v1_0_0_dot_product [get_bd_pins dp_out/D] [get_bd_pins projection_correlation_calculator_v1_0_0/dot_product]
  connect_bd_net -net projection_correlation_calculator_v1_0_0_dot_product_valid [get_bd_pins projection_correlation_calculator_v1_0_0/dot_product_valid] [get_bd_pins sqrt_ready_dp_valid/Op2]
  connect_bd_net -net projection_correlation_calculator_v1_0_0_mag1 [get_bd_pins cordic_3/s_axis_cartesian_tdata] [get_bd_pins projection_correlation_calculator_v1_0_0/mag1]
  connect_bd_net -net projection_correlation_calculator_v1_0_0_mag2 [get_bd_pins cordic_2/s_axis_cartesian_tdata] [get_bd_pins projection_correlation_calculator_v1_0_0/mag2]
  connect_bd_net -net sqrt_ready_dp_valid_Res [get_bd_pins cordic_2/s_axis_cartesian_tvalid] [get_bd_pins cordic_3/s_axis_cartesian_tvalid] [get_bd_pins dp_valid/D] [get_bd_pins sqrt_ready_dp_valid/Res]
  connect_bd_net -net sqrts_ready_Res [get_bd_pins projection_correlation_calculator_v1_0_0/dot_product_ready] [get_bd_pins sqrt_ready_dp_valid/Op1] [get_bd_pins sqrts_ready/Res]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins c_shift_ram_0/SCLR] [get_bd_pins dp_out/SCLR] [get_bd_pins dp_valid/SCLR] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins c_shift_ram_0/D] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins div_gen_0/s_axis_dividend_tdata] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_0/In2] [get_bd_pins zero_constant/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins projection_correlation_calculator_v1_0_0/correlation_normalized] [get_bd_pins xlslice_0/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces correlation_val_axi] [get_bd_addr_segs projection_correlation_calculator_v1_0_0/correlation_out_axi/reg0] SEG_projection_correlation_calculator_v1_0_0_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


