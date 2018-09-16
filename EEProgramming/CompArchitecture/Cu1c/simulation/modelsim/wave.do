onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cu1c_vhd_tst/clk
add wave -noupdate /cu1c_vhd_tst/rst
add wave -noupdate /cu1c_vhd_tst/run
add wave -noupdate /cu1c_vhd_tst/n
add wave -noupdate /cu1c_vhd_tst/z
add wave -noupdate /cu1c_vhd_tst/Mem_rd
add wave -noupdate /cu1c_vhd_tst/Mem_wr
add wave -noupdate /cu1c_vhd_tst/R_we
add wave -noupdate /cu1c_vhd_tst/ld_op
add wave -noupdate /cu1c_vhd_tst/st_op
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/ctl_wd
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/const_out
add wave -noupdate /cu1c_vhd_tst/CU_addr_bus
add wave -noupdate /cu1c_vhd_tst/CU_data_bus
add wave -noupdate /cu1c_vhd_tst/dut/CurrState
add wave -noupdate /cu1c_vhd_tst/dut/NextState
add wave -noupdate /cu1c_vhd_tst/dut/CurrOp
add wave -noupdate /cu1c_vhd_tst/dut/NextOp
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/CurrPC
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/CurrSP
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/CurrIR
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/CurrOffset
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/NextPC
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/NextSP
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/NextIR
add wave -noupdate -radix hexadecimal /cu1c_vhd_tst/dut/NextOffset
add wave -noupdate /cu1c_vhd_tst/dut/CurrStatus
add wave -noupdate /cu1c_vhd_tst/dut/NextStatus
add wave -noupdate /cu1c_vhd_tst/dut/PCa_EN
add wave -noupdate /cu1c_vhd_tst/dut/SP_EN
add wave -noupdate /cu1c_vhd_tst/dut/PCd_EN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9340839105 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {263461 ps} {491125 ps}
