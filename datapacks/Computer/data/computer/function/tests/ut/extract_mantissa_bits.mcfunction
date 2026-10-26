# auto-generated
# Unit test for computer:alu/float/extract_mantissa_bits
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0.0f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.0,23) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.0,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4194304 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4194304 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4194304 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,23) ","color":"gold"},{"text":"result: expected 4194304 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.25f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2097152 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2097152 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2097152 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.25,23) ","color":"gold"},{"text":"result: expected 2097152 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.25,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.75f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6291456 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6291456 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6291456 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.75,23) ","color":"gold"},{"text":"result: expected 6291456 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.75,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.125f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1048576 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1048576 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1048576 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.125,23) ","color":"gold"},{"text":"result: expected 1048576 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.125,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.875f
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 7340032 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 7340032 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 7340032 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.875,23) ","color":"gold"},{"text":"result: expected 7340032 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.875,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
data modify storage computer:alu n set value 1
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,1) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,4) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.5,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.75f
data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/float/extract_mantissa_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 12 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 12 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 12 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.75,4) ","color":"gold"},{"text":"result: expected 12 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/extract_mantissa_bits(0.75,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS extract_mantissa_bits ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL extract_mantissa_bits ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "extract_mantissa_bits"
