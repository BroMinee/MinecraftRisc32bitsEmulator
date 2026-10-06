tellraw @a [" - ", {"nbt":"failed[0]","storage":"computer:test","color":"red", "interpret": true}]
data remove storage computer:test failed[0]
execute if data storage computer:test failed[0] run function computer:tests/show_failed_tests