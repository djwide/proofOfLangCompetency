transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {CPU_chip_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Cpu_chip/simulation/modelsim/CPU_chip_vhd_tst.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=CPU_chip_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  CPU_chip_vhd_tst

add wave *
view structure
view signals
run -all
