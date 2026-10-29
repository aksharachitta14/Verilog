#--> Compilation:-
vlog example3.v +define+DATAFLOW

#--> Elaboration:- 
vsim -novopt -suppress 12110 top

#--> Simulation:-
run -all 
