transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/x62865/Documents/EE375/HW1/regFileSmall.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/HW1/reg8.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/HW1/decode2x4.vhd}

