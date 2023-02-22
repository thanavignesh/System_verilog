compile:
		vlib work;
		vlog -sv bit_byte.sv;
simulate:
		vsim bit_byte -l output.log -c -do "run -all; exit;"
all:
		vlib work;
		vlog -sv bit_byte.sv;
		vsim bit_byte -l output.log -c -do "run -all; exit;"
clear:
		clear
