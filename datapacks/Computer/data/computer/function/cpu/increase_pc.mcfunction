# pc += 4
# Input:  computer:cpu pc
# Update: computer:cpu pc
#!jvmtimer start pc

data modify storage computer:cpu pc set compute default integer computer:cpu/increase_pc

#!jvmtimer end pc
