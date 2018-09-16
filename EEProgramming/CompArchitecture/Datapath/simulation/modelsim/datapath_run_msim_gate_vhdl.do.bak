transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {datapath.vho}

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/simulation/modelsim/datapath.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=datapath_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  datapath_vhd_tst

add wave *
view structure
view signals
run -all
