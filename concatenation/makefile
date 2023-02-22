compile :
		vlib work;
		vlog -sv concatenation.sv
simulate:
		vsim concatenation -l concatenation_op.log -c -do "run -all; exit;"
all:
		vlib work;
		vlog -sv concatenation.sv
		vsim concatenation -l concatenation_op.log -c -do "run -all; exit;"
