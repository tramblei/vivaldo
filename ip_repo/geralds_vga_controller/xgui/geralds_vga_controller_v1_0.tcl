# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "HORIZONTAL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_B_PORCH_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_F_PORCH_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNC_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BLUE_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_GREEN_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_RED_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERTICAL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_B_PORCH_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_F_PORCH_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNC_LINES" -parent ${Page_0}


}

proc update_PARAM_VALUE.HORIZONTAL_WIDTH { PARAM_VALUE.HORIZONTAL_WIDTH } {
	# Procedure called to update HORIZONTAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HORIZONTAL_WIDTH { PARAM_VALUE.HORIZONTAL_WIDTH } {
	# Procedure called to validate HORIZONTAL_WIDTH
	return true
}

proc update_PARAM_VALUE.H_B_PORCH_CYCLES { PARAM_VALUE.H_B_PORCH_CYCLES } {
	# Procedure called to update H_B_PORCH_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_B_PORCH_CYCLES { PARAM_VALUE.H_B_PORCH_CYCLES } {
	# Procedure called to validate H_B_PORCH_CYCLES
	return true
}

proc update_PARAM_VALUE.H_F_PORCH_CYCLES { PARAM_VALUE.H_F_PORCH_CYCLES } {
	# Procedure called to update H_F_PORCH_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_F_PORCH_CYCLES { PARAM_VALUE.H_F_PORCH_CYCLES } {
	# Procedure called to validate H_F_PORCH_CYCLES
	return true
}

proc update_PARAM_VALUE.H_SYNC_CYCLES { PARAM_VALUE.H_SYNC_CYCLES } {
	# Procedure called to update H_SYNC_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC_CYCLES { PARAM_VALUE.H_SYNC_CYCLES } {
	# Procedure called to validate H_SYNC_CYCLES
	return true
}

proc update_PARAM_VALUE.NUM_BLUE_BITS { PARAM_VALUE.NUM_BLUE_BITS } {
	# Procedure called to update NUM_BLUE_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BLUE_BITS { PARAM_VALUE.NUM_BLUE_BITS } {
	# Procedure called to validate NUM_BLUE_BITS
	return true
}

proc update_PARAM_VALUE.NUM_GREEN_BITS { PARAM_VALUE.NUM_GREEN_BITS } {
	# Procedure called to update NUM_GREEN_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_GREEN_BITS { PARAM_VALUE.NUM_GREEN_BITS } {
	# Procedure called to validate NUM_GREEN_BITS
	return true
}

proc update_PARAM_VALUE.NUM_RED_BITS { PARAM_VALUE.NUM_RED_BITS } {
	# Procedure called to update NUM_RED_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_RED_BITS { PARAM_VALUE.NUM_RED_BITS } {
	# Procedure called to validate NUM_RED_BITS
	return true
}

proc update_PARAM_VALUE.VERTICAL_WIDTH { PARAM_VALUE.VERTICAL_WIDTH } {
	# Procedure called to update VERTICAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERTICAL_WIDTH { PARAM_VALUE.VERTICAL_WIDTH } {
	# Procedure called to validate VERTICAL_WIDTH
	return true
}

proc update_PARAM_VALUE.V_B_PORCH_CYCLES { PARAM_VALUE.V_B_PORCH_CYCLES } {
	# Procedure called to update V_B_PORCH_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_B_PORCH_CYCLES { PARAM_VALUE.V_B_PORCH_CYCLES } {
	# Procedure called to validate V_B_PORCH_CYCLES
	return true
}

proc update_PARAM_VALUE.V_F_PORCH_CYCLES { PARAM_VALUE.V_F_PORCH_CYCLES } {
	# Procedure called to update V_F_PORCH_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_F_PORCH_CYCLES { PARAM_VALUE.V_F_PORCH_CYCLES } {
	# Procedure called to validate V_F_PORCH_CYCLES
	return true
}

proc update_PARAM_VALUE.V_SYNC_LINES { PARAM_VALUE.V_SYNC_LINES } {
	# Procedure called to update V_SYNC_LINES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC_LINES { PARAM_VALUE.V_SYNC_LINES } {
	# Procedure called to validate V_SYNC_LINES
	return true
}


proc update_MODELPARAM_VALUE.NUM_RED_BITS { MODELPARAM_VALUE.NUM_RED_BITS PARAM_VALUE.NUM_RED_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_RED_BITS}] ${MODELPARAM_VALUE.NUM_RED_BITS}
}

proc update_MODELPARAM_VALUE.NUM_GREEN_BITS { MODELPARAM_VALUE.NUM_GREEN_BITS PARAM_VALUE.NUM_GREEN_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_GREEN_BITS}] ${MODELPARAM_VALUE.NUM_GREEN_BITS}
}

proc update_MODELPARAM_VALUE.NUM_BLUE_BITS { MODELPARAM_VALUE.NUM_BLUE_BITS PARAM_VALUE.NUM_BLUE_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BLUE_BITS}] ${MODELPARAM_VALUE.NUM_BLUE_BITS}
}

proc update_MODELPARAM_VALUE.HORIZONTAL_WIDTH { MODELPARAM_VALUE.HORIZONTAL_WIDTH PARAM_VALUE.HORIZONTAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HORIZONTAL_WIDTH}] ${MODELPARAM_VALUE.HORIZONTAL_WIDTH}
}

proc update_MODELPARAM_VALUE.VERTICAL_WIDTH { MODELPARAM_VALUE.VERTICAL_WIDTH PARAM_VALUE.VERTICAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERTICAL_WIDTH}] ${MODELPARAM_VALUE.VERTICAL_WIDTH}
}

proc update_MODELPARAM_VALUE.H_F_PORCH_CYCLES { MODELPARAM_VALUE.H_F_PORCH_CYCLES PARAM_VALUE.H_F_PORCH_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_F_PORCH_CYCLES}] ${MODELPARAM_VALUE.H_F_PORCH_CYCLES}
}

proc update_MODELPARAM_VALUE.H_B_PORCH_CYCLES { MODELPARAM_VALUE.H_B_PORCH_CYCLES PARAM_VALUE.H_B_PORCH_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_B_PORCH_CYCLES}] ${MODELPARAM_VALUE.H_B_PORCH_CYCLES}
}

proc update_MODELPARAM_VALUE.H_SYNC_CYCLES { MODELPARAM_VALUE.H_SYNC_CYCLES PARAM_VALUE.H_SYNC_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC_CYCLES}] ${MODELPARAM_VALUE.H_SYNC_CYCLES}
}

proc update_MODELPARAM_VALUE.V_F_PORCH_CYCLES { MODELPARAM_VALUE.V_F_PORCH_CYCLES PARAM_VALUE.V_F_PORCH_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_F_PORCH_CYCLES}] ${MODELPARAM_VALUE.V_F_PORCH_CYCLES}
}

proc update_MODELPARAM_VALUE.V_B_PORCH_CYCLES { MODELPARAM_VALUE.V_B_PORCH_CYCLES PARAM_VALUE.V_B_PORCH_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_B_PORCH_CYCLES}] ${MODELPARAM_VALUE.V_B_PORCH_CYCLES}
}

proc update_MODELPARAM_VALUE.V_SYNC_LINES { MODELPARAM_VALUE.V_SYNC_LINES PARAM_VALUE.V_SYNC_LINES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC_LINES}] ${MODELPARAM_VALUE.V_SYNC_LINES}
}

