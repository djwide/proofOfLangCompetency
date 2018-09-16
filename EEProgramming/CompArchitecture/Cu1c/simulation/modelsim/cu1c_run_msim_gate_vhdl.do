transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {cu1c_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Cu1c/simulation/modelsim/cu1c.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=cu1c_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  cu1c_vhd_tst

add wave *
view structure
view signals
run -all
