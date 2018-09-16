onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu_chip_vhd_tst/clk
add wave -noupdate /cpu_chip_vhd_tst/reset
add wave -noupdate /cpu_chip_vhd_tst/run
add wave -noupdate /cpu_chip_vhd_tst/dut/mem_rd
add wave -noupdate /cpu_chip_vhd_tst/dut/mem_wr
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/Addr_bus
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/Data_bus
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/ROM_data
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/RAM_data
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R0out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R1out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R2out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R3out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R4out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R5out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R6out
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/R7out
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/RW
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/N
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/Z
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/LD
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/ST
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CNTLWD
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CNST
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/CurrState
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/NextState
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/CurrOp
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/NextOp
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/CurrPC
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/CurrSP
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/CurrIR
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/CurrOffset
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/NextPC
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/NextSP
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/NextIR
add wave -noupdate -radix hexadecimal /cpu_chip_vhd_tst/dut/CPU1/CU/NextOffset
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/CurrStatus
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/NextStatus
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/PCa_EN
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/SP_EN
add wave -noupdate /cpu_chip_vhd_tst/dut/CPU1/CU/PCd_EN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {84695 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 291
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
WaveRestoreZoom {0 ps} {348900 ps}
