# Write player input to address 0x0FFE0100
# Coordinates: (-253,255,384) to (-256,255,384)
# Bit layout: [0]=forward [1]=backward [2]=left [3]=right [4]=jump [5]=sneak [6]=sprint

# Read predicates into write bits
execute as @p if predicate computer:input/forward run scoreboard players set write_0 Computer 1
execute as @p unless predicate computer:input/forward run scoreboard players set write_0 Computer 0

execute as @p if predicate computer:input/backward run scoreboard players set write_1 Computer 1
execute as @p unless predicate computer:input/backward run scoreboard players set write_1 Computer 0

execute as @p if predicate computer:input/left run scoreboard players set write_2 Computer 1
execute as @p unless predicate computer:input/left run scoreboard players set write_2 Computer 0

execute as @p if predicate computer:input/right run scoreboard players set write_3 Computer 1
execute as @p unless predicate computer:input/right run scoreboard players set write_3 Computer 0

execute as @p if predicate computer:input/jump run scoreboard players set write_4 Computer 1
execute as @p unless predicate computer:input/jump run scoreboard players set write_4 Computer 0

execute as @p if predicate computer:input/sneak run scoreboard players set write_5 Computer 1
execute as @p unless predicate computer:input/sneak run scoreboard players set write_5 Computer 0

execute as @p if predicate computer:input/sprint run scoreboard players set write_6 Computer 1
execute as @p unless predicate computer:input/sprint run scoreboard players set write_6 Computer 0

scoreboard players set write_7 Computer 0

# Write byte 0 (bits 0-7) at (-253, 255, 384)
execute positioned -253 255 384 run function computer:write/write_8bits

# Bytes 1-2-3 are always 0 (air)
setblock -254 255 384 minecraft:air
setblock -255 255 384 minecraft:air
setblock -256 255 384 minecraft:air
