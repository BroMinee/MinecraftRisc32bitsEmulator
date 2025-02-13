# should be run "as" armor stand PC
data modify storage computer:memory type set value "Opcode read"
function computer:cycle/readopcode
function computer:instruction/_dispatcher
function computer:cycle/increasepc
