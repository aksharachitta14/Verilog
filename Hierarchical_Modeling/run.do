#--> Compilation:-
vlog comp_4bit.sv

#--> Elaboration:- 
vsim -novopt -suppress 12110 top 

#--> Simulation:-
run -all 
