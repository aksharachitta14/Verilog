#--> Compilation:-
vlog example4.v

#--> Elaboration:- 
vsim -novopt -suppress 12110 top 

#--> Simulation:-
run -all 
