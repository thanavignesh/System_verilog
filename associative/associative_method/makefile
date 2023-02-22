compile:
	vlib work;
	vlog -sv associate_method.sv

simulate:
	vsim associate_array -l associative_mthod.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

