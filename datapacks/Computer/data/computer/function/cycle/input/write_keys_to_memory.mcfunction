# Write player input to address 0x0FFE0100 = 268304640
# Bit layout: [0]=forward [1]=backward [2]=left [3]=right [4]=jump [5]=sneak [6]=sprint
# Writes directly to storage (no macro) since address is known at compile time

scoreboard players set _keys alu 0

execute as @p if predicate computer:input/forward run scoreboard players add _keys alu 1
execute as @p if predicate computer:input/backward run scoreboard players add _keys alu 2
execute as @p if predicate computer:input/left run scoreboard players add _keys alu 4
execute as @p if predicate computer:input/right run scoreboard players add _keys alu 8
execute as @p if predicate computer:input/jump run scoreboard players add _keys alu 16
execute as @p if predicate computer:input/sneak run scoreboard players add _keys alu 32
execute as @p if predicate computer:input/sprint run scoreboard players add _keys alu 64

execute store result storage computer:ram_268304640 value int 1 run scoreboard players get _keys alu