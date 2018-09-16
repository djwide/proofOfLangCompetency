transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/datapath.vhdl}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/regfile.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/decoder3_8.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/reg16.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/mux8_1.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/alu.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/adder.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/onebit.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/subtracter.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/complimenter.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/mux2_1.vhd}
vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/tristatebuffer.vhd}

vcom -93 -work work {C:/Users/x62865/Documents/EE375/Datapath/simulation/modelsim/datapath.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  datapath_vhd_tst

add wave *
view structure
view signals
run -all
