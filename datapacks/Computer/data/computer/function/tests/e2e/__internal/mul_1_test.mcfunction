scoreboard players set mul_1 tests 1
scoreboard players add total tests 1
data modify storage computer:test expected set value 12
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu pc
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"pc: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x0
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x0: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x1
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x1: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x2
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x2: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x3
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x3: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x4
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x4: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x5
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x5: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x6
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x6: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x7
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x7: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x8
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x8: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x9
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x9: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x10
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x10: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x11
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x11: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x12
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x12: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 224
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x13
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x13: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 14
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x14
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x14: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 16
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x15
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x15: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x16
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x16: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x17
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x17: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x18
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x18: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x19
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x19: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x20
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x20: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x21
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x21: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x22
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x22: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x23
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x23: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x24
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x24: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x25
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x25: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x26
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x26: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x27
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x27: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x28
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x28: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x29
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x29: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x30
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x30: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:cpu x31
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"x31: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f0
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f0: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f1
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f1: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f2
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f2: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f3
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f3: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f4
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f4: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f5
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f5: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f6
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f6: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f7
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f7: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f8
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f8: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f9
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f9: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f10
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f10: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f11
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f11: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f12
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f12: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f13
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f13: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f14
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f14: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f15
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f15: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f16
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f16: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f17
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f17: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f18
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f18: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f19
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f19: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f20
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f20: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f21
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f21: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f22
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f22: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f23
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f23: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f24
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f24: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f25
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f25: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f26
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f26: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f27
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f27: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f28
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f28: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f29
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f29: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f30
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f30: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
data modify storage computer:test expected set value 0
data modify storage computer:alu a set from storage computer:cpu f31
function computer:alu/float/float_to_raw_int_bits
execute store result score _expected tests run data get storage computer:test expected
execute store result score _got tests run data get storage computer:alu result
execute unless score _got tests = _expected tests run scoreboard players set mul_1 tests 0
execute unless score _got tests = _expected tests run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"f31: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"score":{"name":"_expected","objective":"tests"},"bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"_got","objective":"tests"},"bold":true,"color":"red"}]
execute if score mul_1 tests matches 1 run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Test mul_1 passed","bold":true,"color":"green"}]
execute if score mul_1 tests matches 0 run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Test mul_1 failed","bold":true,"color":"red"}]
execute if score mul_1 tests matches 1 run scoreboard players add successed tests 1
execute if score mul_1 tests matches 0 run scoreboard players add failed tests 1
execute if score mul_1 tests matches 0 run data modify storage computer:test failed append value "mul_1"
