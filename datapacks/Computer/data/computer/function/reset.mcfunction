gamerule commandModificationBlockLimit 2147483647
gamerule maxCommandChainLength 2147483647

scoreboard objectives remove FixedValue
scoreboard objectives remove Computer

team remove RED
team remove GREEN
team remove GOLD
team remove BLUE
data remove storage computer:memory hexa
data remove storage computer:memory bin
data remove storage computer:memory mul


scoreboard objectives add FixedValue dummy
scoreboard objectives add Computer dummy
scoreboard objectives add stats dummy


scoreboard objectives setdisplay sidebar Computer


team add RED
team modify RED color red

team add GREEN
team modify GREEN color green

team add GOLD
team modify GOLD color gold

team add BLUE
team modify BLUE color blue

team join RED PC
team join GOLD N
team join GOLD Z
team join GOLD C
team join GOLD V

scoreboard players set 0 FixedValue 0
scoreboard players set 1 FixedValue 1
scoreboard players set 2 FixedValue 2
scoreboard players set 4 FixedValue 4
scoreboard players set 8 FixedValue 8
scoreboard players set 16 FixedValue 16
scoreboard players set 32 FixedValue 32
scoreboard players set 64 FixedValue 64
scoreboard players set 128 FixedValue 128
scoreboard players set 256 FixedValue 256
scoreboard players set 512 FixedValue 512
scoreboard players set 1024 FixedValue 1024
scoreboard players set 4096 FixedValue 4096
scoreboard players set 65536 FixedValue 65536
scoreboard players set 1048576 FixedValue 1048576 
scoreboard players set 16777216 FixedValue 16777216 
scoreboard players set 268435456 FixedValue 268435456

scoreboard players set cycle stats 0
scoreboard players set read stats 0
scoreboard players set write stats 0
scoreboard players set error stats 0
scoreboard players set done stats 0

kill @e[type=armor_stand]
summon armor_stand -509 0 -512 {CustomName:'[{"text":"pc"}]',CustomNameVisible:1b,Team:RED, Tags:["pc"], NoGravity:1b}
summon armor_stand -509 0 -512 {CustomName:'[{"text":"write"}]',CustomNameVisible:1b,Team:RED, Tags:["write"], NoGravity:1b}
summon armor_stand -4 -58 9 {CustomName:'[{"text":"screen"}]',CustomNameVisible:1b,Team:RED, Tags:["screen"], NoGravity:1b}


scoreboard objectives add A2 dummy
scoreboard objectives add add32 dummy
scoreboard objectives add add12 dummy
scoreboard objectives add read8 dummy
scoreboard objectives add xor dummy
scoreboard objectives add or dummy
scoreboard objectives add and dummy

scoreboard objectives add tests dummy

scoreboard players set increase_pc Computer 1
gamerule spawnChunkRadius 32

function computer:screen/init_screen
function computer:reset_scoreboard
