# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CORRELATION_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_correlation_out_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_correlation_out_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_fft_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_fft_FIFO_BLOCK_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_BITS" -parent ${Page_0}

  ipgui::add_param $IPINST -name "CORRELATION_SHIFT"
  ipgui::add_param $IPINST -name "DOT_PRODUCT_SIZE"

}

proc update_PARAM_VALUE.CORRELATION_SHIFT { PARAM_VALUE.CORRELATION_SHIFT } {
	# Procedure called to update CORRELATION_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CORRELATION_SHIFT { PARAM_VALUE.CORRELATION_SHIFT } {
	# Procedure called to validate CORRELATION_SHIFT
	return true
}

proc update_PARAM_VALUE.CORRELATION_SIZE { PARAM_VALUE.CORRELATION_SIZE } {
	# Procedure called to update CORRELATION_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CORRELATION_SIZE { PARAM_VALUE.CORRELATION_SIZE } {
	# Procedure called to validate CORRELATION_SIZE
	return true
}

proc update_PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH { PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH } {
	# Procedure called to update C_correlation_out_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH { PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_correlation_out_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH { PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH } {
	# Procedure called to update C_correlation_out_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH { PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH } {
	# Procedure called to validate C_correlation_out_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH { PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_fft_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH { PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_fft_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE { PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE } {
	# Procedure called to update C_fft_FIFO_BLOCK_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE { PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE } {
	# Procedure called to validate C_fft_FIFO_BLOCK_SIZE
	return true
}

proc update_PARAM_VALUE.DOT_PRODUCT_SIZE { PARAM_VALUE.DOT_PRODUCT_SIZE } {
	# Procedure called to update DOT_PRODUCT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DOT_PRODUCT_SIZE { PARAM_VALUE.DOT_PRODUCT_SIZE } {
	# Procedure called to validate DOT_PRODUCT_SIZE
	return true
}

proc update_PARAM_VALUE.FFT_BITS { PARAM_VALUE.FFT_BITS } {
	# Procedure called to update FFT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_BITS { PARAM_VALUE.FFT_BITS } {
	# Procedure called to validate FFT_BITS
	return true
}


proc update_MODELPARAM_VALUE.CORRELATION_SIZE { MODELPARAM_VALUE.CORRELATION_SIZE PARAM_VALUE.CORRELATION_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CORRELATION_SIZE}] ${MODELPARAM_VALUE.CORRELATION_SIZE}
}

proc update_MODELPARAM_VALUE.FFT_BITS { MODELPARAM_VALUE.FFT_BITS PARAM_VALUE.FFT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_BITS}] ${MODELPARAM_VALUE.FFT_BITS}
}

proc update_MODELPARAM_VALUE.C_fft_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_fft_AXIS_TDATA_WIDTH PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_fft_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_fft_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_fft_FIFO_BLOCK_SIZE { MODELPARAM_VALUE.C_fft_FIFO_BLOCK_SIZE PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_fft_FIFO_BLOCK_SIZE}] ${MODELPARAM_VALUE.C_fft_FIFO_BLOCK_SIZE}
}

proc update_MODELPARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_correlation_out_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_correlation_out_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.CORRELATION_SHIFT { MODELPARAM_VALUE.CORRELATION_SHIFT PARAM_VALUE.CORRELATION_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CORRELATION_SHIFT}] ${MODELPARAM_VALUE.CORRELATION_SHIFT}
}

proc update_MODELPARAM_VALUE.DOT_PRODUCT_SIZE { MODELPARAM_VALUE.DOT_PRODUCT_SIZE PARAM_VALUE.DOT_PRODUCT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DOT_PRODUCT_SIZE}] ${MODELPARAM_VALUE.DOT_PRODUCT_SIZE}
}

