onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_flipflop/j_i
add wave -noupdate -format Logic /tb_flipflop/k_i
add wave -noupdate -format Logic /tb_flipflop/clk_i
add wave -noupdate -format Logic /tb_flipflop/q_o

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {0 ps}
WaveRestoreZoom {0 ps} {1 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -signalnamewidth 0
configure wave -justifyvalue left