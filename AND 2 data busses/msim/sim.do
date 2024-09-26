vsim -t ns -novopt -lib work work.tb_vectorgates
view *
do vectorgate_wave.do
run 3000 ns
