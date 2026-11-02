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


# Mouse clicks: written to 0x0FFE0104 = 268304644
# Values: 0=nothing, 1=left_click, 2=right_click (left click has priority)
# Only write if register is 0 (consumer cleared it); don't reset flag until consumed
execute if data storage computer:ram_268304644 {value:0} if score _left_click alu matches 1 run data modify storage computer:ram_268304644 value set value 1
execute if data storage computer:ram_268304644 {value:0} if score _right_click alu matches 1 run data modify storage computer:ram_268304644 value set value 2
execute unless data storage computer:ram_268304644 {value:0} run scoreboard players set _left_click alu 0
execute unless data storage computer:ram_268304644 {value:0} run scoreboard players set _right_click alu 0