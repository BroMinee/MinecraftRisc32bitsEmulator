# auto-generated
# Unit test for computer:alu/float/float_div
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 6.0f
data modify storage computer:alu b set value 2.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if data storage computer:alu {result: 3.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 3.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 3.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(6.0,2.0) ","color":"gold"},{"text":"result: expected 3.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(6.0,2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.0f
data modify storage computer:alu b set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if score error stats matches 1 run scoreboard players add _ut_pass tests 1
execute unless score error stats matches 1 run scoreboard players add _ut_fail tests 1
execute unless score error stats matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(1.0,0.0) ","color":"gold"},{"text":"expected ERROR but no error","color":"white"}]
scoreboard players set error stats 0
data modify storage computer:alu stack set value []

data modify storage computer:alu a set value -1.0f
data modify storage computer:alu b set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if score error stats matches 1 run scoreboard players add _ut_pass tests 1
execute unless score error stats matches 1 run scoreboard players add _ut_fail tests 1
execute unless score error stats matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(-1.0,0.0) ","color":"gold"},{"text":"expected ERROR but no error","color":"white"}]
scoreboard players set error stats 0
data modify storage computer:alu stack set value []

data modify storage computer:alu a set value 0.0f
data modify storage computer:alu b set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if score error stats matches 1 run scoreboard players add _ut_pass tests 1
execute unless score error stats matches 1 run scoreboard players add _ut_fail tests 1
execute unless score error stats matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(0.0,0.0) ","color":"gold"},{"text":"expected ERROR but no error","color":"white"}]
scoreboard players set error stats 0
data modify storage computer:alu stack set value []

data modify storage computer:alu a set value 1.0f
data modify storage computer:alu b set value 3.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if data storage computer:alu {result: 0.3333333432674408f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.3333333432674408f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.3333333432674408f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(1.0,3.0) ","color":"gold"},{"text":"result: expected 0.3333333432674408 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(1.0,3.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 10.0f
data modify storage computer:alu b set value 4.0f
scoreboard players set error stats 0
function computer:alu/float/float_div
execute if data storage computer:alu {result: 2.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 2.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 2.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(10.0,4.0) ","color":"gold"},{"text":"result: expected 2.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_div(10.0,4.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_div ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_div ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_div"
