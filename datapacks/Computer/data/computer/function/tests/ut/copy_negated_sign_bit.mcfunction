# auto-generated
# Unit test for computer:alu/int/copy_negated_sign_bit
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,1) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,2147483647) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-2147483648) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,1065353216) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-1082130432) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(0,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,0) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,1) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-1) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,2147483647) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-2147483648) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,1065353216) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-1082130432) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-1) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-2147483648) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,1065353216) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-1082130432) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-1) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-2147483648) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,1065353216) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-1082130432) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(2147483647,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,1) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,2147483647) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-2147483648) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,1065353216) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-1082130432) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-2147483648,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,0) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,1) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-1) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,2147483647) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-2147483648) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,1065353216) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-1082130432) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(1065353216,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,0) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,1) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-1) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,2147483647) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-2147483648) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value 1065353216
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,1065353216) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
data modify storage computer:alu b set value -1082130432
scoreboard players set error stats 0
function computer:alu/int/copy_negated_sign_bit
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-1082130432) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/copy_negated_sign_bit(-1082130432,-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS copy_negated_sign_bit ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL copy_negated_sign_bit ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "copy_negated_sign_bit"
