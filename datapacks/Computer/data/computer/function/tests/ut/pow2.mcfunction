# auto-generated
# Unit test for computer:alu/int/pow2
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu n set value 0
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 1
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(1) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 2
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(2) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 3
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(3) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(4) ","color":"gold"},{"text":"result: expected 16 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 5
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(5) ","color":"gold"},{"text":"result: expected 32 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 6
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 64 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 64 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 64 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(6) ","color":"gold"},{"text":"result: expected 64 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 7
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(7) ","color":"gold"},{"text":"result: expected 128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 8
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(8) ","color":"gold"},{"text":"result: expected 256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 9
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 512 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 512 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 512 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(9) ","color":"gold"},{"text":"result: expected 512 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 10
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1024 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1024 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1024 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(10) ","color":"gold"},{"text":"result: expected 1024 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 11
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2048 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2048 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2048 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(11) ","color":"gold"},{"text":"result: expected 2048 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 12
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4096 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4096 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4096 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(12) ","color":"gold"},{"text":"result: expected 4096 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 13
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8192 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8192 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8192 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(13) ","color":"gold"},{"text":"result: expected 8192 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 14
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16384 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16384 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16384 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(14) ","color":"gold"},{"text":"result: expected 16384 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 15
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(15) ","color":"gold"},{"text":"result: expected 32768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 16
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65536 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65536 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65536 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(16) ","color":"gold"},{"text":"result: expected 65536 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 17
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 131072 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 131072 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 131072 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(17) ","color":"gold"},{"text":"result: expected 131072 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 18
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 262144 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 262144 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 262144 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(18) ","color":"gold"},{"text":"result: expected 262144 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 19
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 524288 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 524288 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 524288 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(19) ","color":"gold"},{"text":"result: expected 524288 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 20
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1048576 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1048576 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1048576 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(20) ","color":"gold"},{"text":"result: expected 1048576 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 21
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2097152 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2097152 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2097152 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(21) ","color":"gold"},{"text":"result: expected 2097152 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 22
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4194304 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4194304 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4194304 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(22) ","color":"gold"},{"text":"result: expected 4194304 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8388608 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8388608 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8388608 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(23) ","color":"gold"},{"text":"result: expected 8388608 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 24
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(24) ","color":"gold"},{"text":"result: expected 16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 25
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 33554432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 33554432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 33554432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(25) ","color":"gold"},{"text":"result: expected 33554432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 26
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 67108864 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 67108864 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 67108864 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(26) ","color":"gold"},{"text":"result: expected 67108864 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 27
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 134217728 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 134217728 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 134217728 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(27) ","color":"gold"},{"text":"result: expected 134217728 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 28
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 268435456 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 268435456 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 268435456 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(28) ","color":"gold"},{"text":"result: expected 268435456 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 29
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 536870912 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 536870912 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 536870912 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(29) ","color":"gold"},{"text":"result: expected 536870912 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu n set value 30
scoreboard players set error stats 0
function computer:alu/int/pow2
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/pow2(30) ","color":"gold"},{"text":"result: expected 1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS pow2 ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL pow2 ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "pow2"
