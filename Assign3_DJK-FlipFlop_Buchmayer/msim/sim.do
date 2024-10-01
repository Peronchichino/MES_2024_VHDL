vsim -t ns -novopt -lib work work.tb_flipflop
view *
do flipflop_wave.do
run 5000 ns