# Generate 31 random bits and return in computer:alu result
# Uses predicate computer:random (50% chance) for each bit

scoreboard players set _rand alu 0

execute if predicate computer:random run scoreboard players add _rand alu 1
execute if predicate computer:random run scoreboard players add _rand alu 2
execute if predicate computer:random run scoreboard players add _rand alu 4
execute if predicate computer:random run scoreboard players add _rand alu 8
execute if predicate computer:random run scoreboard players add _rand alu 16
execute if predicate computer:random run scoreboard players add _rand alu 32
execute if predicate computer:random run scoreboard players add _rand alu 64
execute if predicate computer:random run scoreboard players add _rand alu 128
execute if predicate computer:random run scoreboard players add _rand alu 256
execute if predicate computer:random run scoreboard players add _rand alu 512
execute if predicate computer:random run scoreboard players add _rand alu 1024
execute if predicate computer:random run scoreboard players add _rand alu 2048
execute if predicate computer:random run scoreboard players add _rand alu 4096
execute if predicate computer:random run scoreboard players add _rand alu 8192
execute if predicate computer:random run scoreboard players add _rand alu 16384
execute if predicate computer:random run scoreboard players add _rand alu 32768
execute if predicate computer:random run scoreboard players add _rand alu 65536
execute if predicate computer:random run scoreboard players add _rand alu 131072
execute if predicate computer:random run scoreboard players add _rand alu 262144
execute if predicate computer:random run scoreboard players add _rand alu 524288
execute if predicate computer:random run scoreboard players add _rand alu 1048576
execute if predicate computer:random run scoreboard players add _rand alu 2097152
execute if predicate computer:random run scoreboard players add _rand alu 4194304
execute if predicate computer:random run scoreboard players add _rand alu 8388608
execute if predicate computer:random run scoreboard players add _rand alu 16777216
execute if predicate computer:random run scoreboard players add _rand alu 33554432
execute if predicate computer:random run scoreboard players add _rand alu 67108864
execute if predicate computer:random run scoreboard players add _rand alu 134217728
execute if predicate computer:random run scoreboard players add _rand alu 268435456
execute if predicate computer:random run scoreboard players add _rand alu 536870912
execute if predicate computer:random run scoreboard players add _rand alu 1073741824

execute store result storage computer:alu result int 1 run scoreboard players get _rand alu
