# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNT_SPEED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GAIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "THRESH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOGGLE_DATA" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNT_SPEED { PARAM_VALUE.COUNT_SPEED } {
	# Procedure called to update COUNT_SPEED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_SPEED { PARAM_VALUE.COUNT_SPEED } {
	# Procedure called to validate COUNT_SPEED
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.GAIN { PARAM_VALUE.GAIN } {
	# Procedure called to update GAIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GAIN { PARAM_VALUE.GAIN } {
	# Procedure called to validate GAIN
	return true
}

proc update_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to update MAX_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to validate MAX_COUNT
	return true
}

proc update_PARAM_VALUE.THRESH { PARAM_VALUE.THRESH } {
	# Procedure called to update THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.THRESH { PARAM_VALUE.THRESH } {
	# Procedure called to validate THRESH
	return true
}

proc update_PARAM_VALUE.TOGGLE_DATA { PARAM_VALUE.TOGGLE_DATA } {
	# Procedure called to update TOGGLE_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOGGLE_DATA { PARAM_VALUE.TOGGLE_DATA } {
	# Procedure called to validate TOGGLE_DATA
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MAX_COUNT { MODELPARAM_VALUE.MAX_COUNT PARAM_VALUE.MAX_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNT}] ${MODELPARAM_VALUE.MAX_COUNT}
}

proc update_MODELPARAM_VALUE.THRESH { MODELPARAM_VALUE.THRESH PARAM_VALUE.THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.THRESH}] ${MODELPARAM_VALUE.THRESH}
}

proc update_MODELPARAM_VALUE.COUNT_SPEED { MODELPARAM_VALUE.COUNT_SPEED PARAM_VALUE.COUNT_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_SPEED}] ${MODELPARAM_VALUE.COUNT_SPEED}
}

proc update_MODELPARAM_VALUE.GAIN { MODELPARAM_VALUE.GAIN PARAM_VALUE.GAIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GAIN}] ${MODELPARAM_VALUE.GAIN}
}

proc update_MODELPARAM_VALUE.TOGGLE_DATA { MODELPARAM_VALUE.TOGGLE_DATA PARAM_VALUE.TOGGLE_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOGGLE_DATA}] ${MODELPARAM_VALUE.TOGGLE_DATA}
}

