onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control/phi1
add wave -noupdate /control/phi2
add wave -noupdate /control/ctrl
add wave -noupdate /control/L
add wave -noupdate /control/M
add wave -noupdate /control/N
add wave -noupdate /control/ARdEn
add wave -noupdate /control/BRdEn
add wave -noupdate /control/WriteEn
add wave -noupdate /control/FBEn
add wave -noupdate /control/notFBEn
add wave -noupdate /control/ASelect
add wave -noupdate /control/BSelect
add wave -noupdate /control/DSelect
add wave -noupdate /control/zeroSelect
add wave -noupdate /control/shl
add wave -noupdate /control/notshl
add wave -noupdate /control/shr
add wave -noupdate /control/notshr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {63 ns}
