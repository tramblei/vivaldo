# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_TO_TARGET_FRQ_RATIO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_signal_in_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_signal_out_START_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_signal_out_TDATA_WIDTH" -parent ${Page_0}

  ipgui::add_param $IPINST -name "FFT_SIZE"

}

proc update_PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO { PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO } {
	# Procedure called to update CLK_TO_TARGET_FRQ_RATIO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO { PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO } {
	# Procedure called to validate CLK_TO_TARGET_FRQ_RATIO
	return true
}

proc update_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to update COUNTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to validate COUNTER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_signal_in_TDATA_WIDTH { PARAM_VALUE.C_signal_in_TDATA_WIDTH } {
	# Procedure called to update C_signal_in_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_signal_in_TDATA_WIDTH { PARAM_VALUE.C_signal_in_TDATA_WIDTH } {
	# Procedure called to validate C_signal_in_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_signal_out_START_COUNT { PARAM_VALUE.C_signal_out_START_COUNT } {
	# Procedure called to update C_signal_out_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_signal_out_START_COUNT { PARAM_VALUE.C_signal_out_START_COUNT } {
	# Procedure called to validate C_signal_out_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_signal_out_TDATA_WIDTH { PARAM_VALUE.C_signal_out_TDATA_WIDTH } {
	# Procedure called to update C_signal_out_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_signal_out_TDATA_WIDTH { PARAM_VALUE.C_signal_out_TDATA_WIDTH } {
	# Procedure called to validate C_signal_out_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FFT_SIZE { PARAM_VALUE.FFT_SIZE } {
	# Procedure called to update FFT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_SIZE { PARAM_VALUE.FFT_SIZE } {
	# Procedure called to validate FFT_SIZE
	return true
}


proc update_MODELPARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO { MODELPARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO}] ${MODELPARAM_VALUE.CLK_TO_TARGET_FRQ_RATIO}
}

proc update_MODELPARAM_VALUE.COUNTER_WIDTH { MODELPARAM_VALUE.COUNTER_WIDTH PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNTER_WIDTH}] ${MODELPARAM_VALUE.COUNTER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_signal_in_TDATA_WIDTH { MODELPARAM_VALUE.C_signal_in_TDATA_WIDTH PARAM_VALUE.C_signal_in_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_signal_in_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_signal_in_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_signal_out_TDATA_WIDTH { MODELPARAM_VALUE.C_signal_out_TDATA_WIDTH PARAM_VALUE.C_signal_out_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_signal_out_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_signal_out_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_signal_out_START_COUNT { MODELPARAM_VALUE.C_signal_out_START_COUNT PARAM_VALUE.C_signal_out_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_signal_out_START_COUNT}] ${MODELPARAM_VALUE.C_signal_out_START_COUNT}
}

proc update_MODELPARAM_VALUE.FFT_SIZE { MODELPARAM_VALUE.FFT_SIZE PARAM_VALUE.FFT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_SIZE}] ${MODELPARAM_VALUE.FFT_SIZE}
}

