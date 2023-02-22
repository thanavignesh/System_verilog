compile:
	vlib work;
	vlog -sv associate.sv

simulate:
	vsim associate -l associative_array.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear
