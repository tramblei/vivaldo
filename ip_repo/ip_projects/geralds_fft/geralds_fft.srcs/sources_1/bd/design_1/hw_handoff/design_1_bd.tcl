
################################################################
# This is a generated script based on design: design_1
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
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

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
  set M_AXIS_RESULT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_RESULT ]

  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set event_data_in_channel_halt [ create_bd_port -dir O -type intr event_data_in_channel_halt ]
  set event_data_out_channel_halt [ create_bd_port -dir O -type intr event_data_out_channel_halt ]
  set event_frame_started [ create_bd_port -dir O -type intr event_frame_started ]
  set event_status_channel_halt [ create_bd_port -dir O -type intr event_status_channel_halt ]
  set event_tlast_missing [ create_bd_port -dir O -type intr event_tlast_missing ]
  set event_tlast_unexpected [ create_bd_port -dir O -type intr event_tlast_unexpected ]
  set s_axis_data [ create_bd_port -dir I -from 11 -to 0 -type data s_axis_data ]
  set s_axis_last [ create_bd_port -dir I s_axis_last ]
  set s_axis_ready [ create_bd_port -dir O s_axis_ready ]
  set s_axis_tvalid [ create_bd_port -dir I s_axis_tvalid ]

  # Create instance: add, and set properties
  set add [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 add ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Add} \
CONFIG.C_Latency {12} \
CONFIG.C_Mult_Usage {Full_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Has_B_TLAST {true} \
CONFIG.Operation_Type {Add_Subtract} \
CONFIG.RESULT_TLAST_Behv {AND_all_TLASTs} \
CONFIG.Result_Precision_Type {Single} \
 ] $add

  # Create instance: floating_point_0, and set properties
  set floating_point_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_0 ]
  set_property -dict [ list \
CONFIG.A_Precision_Type {Uint32} \
CONFIG.C_A_Exponent_Width {32} \
CONFIG.C_Accum_Input_Msb {32} \
CONFIG.C_Accum_Lsb {-31} \
CONFIG.C_Accum_Msb {32} \
CONFIG.C_Latency {6} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Operation_Type {Fixed_to_float} \
CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_0

  # Create instance: flt_to_int, and set properties
  set flt_to_int [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 flt_to_int ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Both} \
CONFIG.C_Has_OVERFLOW {true} \
CONFIG.C_Latency {7} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {32} \
CONFIG.C_Result_Fraction_Width {0} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Operation_Type {Float_to_fixed} \
CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
CONFIG.Result_Precision_Type {Custom} \
 ] $flt_to_int

  # Create instance: forward_fft, and set properties
  set forward_fft [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 forward_fft ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0x0001} \
CONFIG.CONST_WIDTH {16} \
 ] $forward_fft

  # Create instance: forward_fft1, and set properties
  set forward_fft1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 forward_fft1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0x0001} \
CONFIG.CONST_WIDTH {1} \
 ] $forward_fft1

  # Create instance: imaginary, and set properties
  set imaginary [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 imaginary ]
  set_property -dict [ list \
CONFIG.DIN_FROM {63} \
CONFIG.DIN_TO {32} \
CONFIG.DIN_WIDTH {64} \
CONFIG.DOUT_WIDTH {32} \
 ] $imaginary

  # Create instance: multiply, and set properties
  set multiply [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 multiply ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Both} \
CONFIG.C_Latency {9} \
CONFIG.C_Mult_Usage {Medium_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Has_B_TLAST {true} \
CONFIG.Maximum_Latency {true} \
CONFIG.Operation_Type {Multiply} \
CONFIG.RESULT_TLAST_Behv {AND_all_TLASTs} \
CONFIG.Result_Precision_Type {Single} \
 ] $multiply

  # Create instance: multiply1, and set properties
  set multiply1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 multiply1 ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Both} \
CONFIG.C_Has_INVALID_OP {true} \
CONFIG.C_Latency {9} \
CONFIG.C_Mult_Usage {Medium_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Has_B_TLAST {true} \
CONFIG.Operation_Type {Multiply} \
CONFIG.RESULT_TLAST_Behv {AND_all_TLASTs} \
CONFIG.Result_Precision_Type {Single} \
 ] $multiply1

  # Create instance: real_part, and set properties
  set real_part [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 real_part ]
  set_property -dict [ list \
CONFIG.DIN_FROM {31} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {64} \
CONFIG.DOUT_WIDTH {32} \
 ] $real_part

  # Create instance: sqrtf, and set properties
  set sqrtf [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 sqrtf ]
  set_property -dict [ list \
CONFIG.C_Latency {29} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_A_TLAST {true} \
CONFIG.Operation_Type {Square_root} \
CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
CONFIG.Result_Precision_Type {Single} \
 ] $sqrtf

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_SIZE {2} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_SIZE {2} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
CONFIG.C_SIZE {2} \
 ] $util_vector_logic_2

  # Create instance: xfft_1, and set properties
  set xfft_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.0 xfft_1 ]
  set_property -dict [ list \
CONFIG.aresetn {true} \
CONFIG.complex_mult_type {use_mults_performance} \
CONFIG.data_format {floating_point} \
CONFIG.implementation_options {automatically_select} \
CONFIG.memory_options_phase_factors {block_ram} \
CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
CONFIG.output_ordering {natural_order} \
CONFIG.ovflo {false} \
CONFIG.phase_factor_width {24} \
CONFIG.rounding_modes {truncation} \
CONFIG.run_time_configurable_transform_length {false} \
CONFIG.scaling_options {scaled} \
CONFIG.target_clock_frequency {100} \
CONFIG.throttle_scheme {nonrealtime} \
CONFIG.transform_length {1024} \
 ] $xfft_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {32} \
CONFIG.IN1_WIDTH {32} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {20} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net add_M_AXIS_RESULT [get_bd_intf_pins add/M_AXIS_RESULT] [get_bd_intf_pins sqrtf/S_AXIS_A]
  connect_bd_intf_net -intf_net flt_to_int_M_AXIS_RESULT [get_bd_intf_ports M_AXIS_RESULT] [get_bd_intf_pins flt_to_int/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net multiply1_M_AXIS_RESULT [get_bd_intf_pins add/S_AXIS_B] [get_bd_intf_pins multiply1/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net multiply_M_AXIS_RESULT [get_bd_intf_pins add/S_AXIS_A] [get_bd_intf_pins multiply/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net sqrtf_M_AXIS_RESULT [get_bd_intf_pins flt_to_int/S_AXIS_A] [get_bd_intf_pins sqrtf/M_AXIS_RESULT]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins add/aclk] [get_bd_pins floating_point_0/aclk] [get_bd_pins flt_to_int/aclk] [get_bd_pins multiply/aclk] [get_bd_pins multiply1/aclk] [get_bd_pins sqrtf/aclk] [get_bd_pins xfft_1/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins add/aresetn] [get_bd_pins floating_point_0/aresetn] [get_bd_pins flt_to_int/aresetn] [get_bd_pins multiply/aresetn] [get_bd_pins multiply1/aresetn] [get_bd_pins sqrtf/aresetn] [get_bd_pins xfft_1/aresetn]
  connect_bd_net -net floating_point_0_m_axis_result_tdata [get_bd_pins floating_point_0/m_axis_result_tdata] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net floating_point_0_m_axis_result_tlast [get_bd_pins floating_point_0/m_axis_result_tlast] [get_bd_pins xfft_1/s_axis_data_tlast]
  connect_bd_net -net floating_point_0_m_axis_result_tvalid [get_bd_pins floating_point_0/m_axis_result_tvalid] [get_bd_pins xfft_1/s_axis_data_tvalid]
  connect_bd_net -net floating_point_0_s_axis_a_tready [get_bd_ports s_axis_ready] [get_bd_pins floating_point_0/s_axis_a_tready]
  connect_bd_net -net forward_fft1_dout [get_bd_pins forward_fft1/dout] [get_bd_pins xfft_1/s_axis_config_tvalid]
  connect_bd_net -net forward_fft_dout [get_bd_pins forward_fft/dout] [get_bd_pins xfft_1/s_axis_config_tdata]
  connect_bd_net -net imaginary_Dout [get_bd_pins imaginary/Dout] [get_bd_pins multiply1/s_axis_a_tdata] [get_bd_pins multiply1/s_axis_b_tdata]
  connect_bd_net -net int_in_1 [get_bd_ports s_axis_data] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net int_in_valid [get_bd_ports s_axis_tvalid] [get_bd_pins floating_point_0/s_axis_a_tvalid]
  connect_bd_net -net multiply1_s_axis_a_tready [get_bd_pins multiply1/s_axis_a_tready] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net multiply1_s_axis_b_tready [get_bd_pins multiply1/s_axis_b_tready] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net multiply_s_axis_a_tready [get_bd_pins multiply/s_axis_a_tready] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net multiply_s_axis_b_tready [get_bd_pins multiply/s_axis_b_tready] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net real_part_Dout [get_bd_pins multiply/s_axis_a_tdata] [get_bd_pins multiply/s_axis_b_tdata] [get_bd_pins real_part/Dout]
  connect_bd_net -net s_axis_last_1 [get_bd_ports s_axis_last] [get_bd_pins floating_point_0/s_axis_a_tlast]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins xfft_1/m_axis_data_tready]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_0/Op2] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net xfft_1_event_data_in_channel_halt [get_bd_ports event_data_in_channel_halt] [get_bd_pins xfft_1/event_data_in_channel_halt]
  connect_bd_net -net xfft_1_event_data_out_channel_halt [get_bd_ports event_data_out_channel_halt] [get_bd_pins xfft_1/event_data_out_channel_halt]
  connect_bd_net -net xfft_1_event_frame_started [get_bd_ports event_frame_started] [get_bd_pins xfft_1/event_frame_started]
  connect_bd_net -net xfft_1_event_status_channel_halt [get_bd_ports event_status_channel_halt] [get_bd_pins xfft_1/event_status_channel_halt]
  connect_bd_net -net xfft_1_event_tlast_missing [get_bd_ports event_tlast_missing] [get_bd_pins xfft_1/event_tlast_missing]
  connect_bd_net -net xfft_1_event_tlast_unexpected [get_bd_ports event_tlast_unexpected] [get_bd_pins xfft_1/event_tlast_unexpected]
  connect_bd_net -net xfft_1_m_axis_data_tdata [get_bd_pins imaginary/Din] [get_bd_pins real_part/Din] [get_bd_pins xfft_1/m_axis_data_tdata]
  connect_bd_net -net xfft_1_m_axis_data_tlast [get_bd_pins multiply/s_axis_a_tlast] [get_bd_pins multiply/s_axis_b_tlast] [get_bd_pins multiply1/s_axis_a_tlast] [get_bd_pins multiply1/s_axis_b_tlast] [get_bd_pins xfft_1/m_axis_data_tlast]
  connect_bd_net -net xfft_1_m_axis_data_tvalid [get_bd_pins multiply/s_axis_a_tvalid] [get_bd_pins multiply/s_axis_b_tvalid] [get_bd_pins multiply1/s_axis_a_tvalid] [get_bd_pins multiply1/s_axis_b_tvalid] [get_bd_pins xfft_1/m_axis_data_tvalid]
  connect_bd_net -net xfft_1_s_axis_data_tready [get_bd_pins floating_point_0/m_axis_result_tready] [get_bd_pins xfft_1/s_axis_data_tready]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins floating_point_0/s_axis_a_tdata] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins xfft_1/s_axis_data_tdata] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


