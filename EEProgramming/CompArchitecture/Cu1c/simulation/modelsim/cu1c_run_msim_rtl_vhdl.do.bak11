transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Cu1c/cu1c.vhd}

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Cu1c/simulation/modelsim/cu1c_vhd_tst.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  cu1c_vhd_tst

add wave *
view structure
view signals
run -all
