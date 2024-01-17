#vlog implication.sv
#vlog dist.sv
#vlog dist1.sv
#vlog even_num.sv
#vlog odd_num.sv
vlog rani_qn.sv
#vlog soft1.sv
vsim -novopt -suppress 12110 top
run -all
