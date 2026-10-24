# Write computer:cpu rd_val into register x<rd>
$data modify storage computer:cpu x$(rd) set from storage computer:cpu rd_val

# x0 is always 0
data modify storage computer:cpu x0 set value 0
