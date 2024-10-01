vsim -t ns -novopt -lib work work.tb_8bitadder
view *
do 8bitadder_wave.do
run 5000 ns