onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /regfilesmall_vhd_tst/Clk
add wave -noupdate -radix hexadecimal /regfilesmall_vhd_tst/dataIn
add wave -noupdate -radix hexadecimal /regfilesmall_vhd_tst/dataOut
add wave -noupdate /regfilesmall_vhd_tst/rAddrRd
add wave -noupdate /regfilesmall_vhd_tst/rAddrWr
add wave -noupdate /regfilesmall_vhd_tst/Rst
add wave -noupdate /regfilesmall_vhd_tst/rWE
add wave -noupdate /regfilesmall_vhd_tst/i1/R3we
add wave -noupdate /regfilesmall_vhd_tst/i1/R2we
add wave -noupdate /regfilesmall_vhd_tst/i1/R1we
add wave -noupdate /regfilesmall_vhd_tst/i1/R0we
add wave -noupdate /regfilesmall_vhd_tst/i1/R3data
add wave -noupdate /regfilesmall_vhd_tst/i1/R2data
add wave -noupdate /regfilesmall_vhd_tst/i1/R1data
add wave -noupdate /regfilesmall_vhd_tst/i1/R0data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {321 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
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
WaveRestoreZoom {0 ps} {119552 ps}
