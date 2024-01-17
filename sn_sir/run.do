#vlog odd_wo_mod.sv
vlog qn7.sv
#vlog qn6.sv
#vlog qn5.sv
#vlog qn4.sv
#vlog qn3.sv
#vlog qn1.sv
vsim -novopt -suppress 12110 top
run -all
