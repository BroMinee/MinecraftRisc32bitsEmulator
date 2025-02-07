gamerule commandModificationBlockLimit 2147483647
gamerule maxCommandChainLength 2147483647

scoreboard objectives remove FixedValue
scoreboard objectives remove Computer
scoreboard objectives remove goto

team remove RED
team remove GREEN
team remove GOLD
team remove BLUE
data remove storage computer:memory hexa
data remove storage computer:memory bin



scoreboard objectives add FixedValue dummy
scoreboard objectives add Computer dummy
scoreboard objectives add r0 dummy
scoreboard objectives add r1 dummy
scoreboard objectives add r2 dummy
scoreboard objectives add r3 dummy
scoreboard objectives add r4 dummy
scoreboard objectives add r5 dummy
scoreboard objectives add r6 dummy
scoreboard objectives add r7 dummy
scoreboard objectives add r8 dummy
scoreboard objectives add r9 dummy
scoreboard objectives add r10 dummy
scoreboard objectives add r11 dummy
scoreboard objectives add r12 dummy
scoreboard objectives add sp dummy
scoreboard objectives add lr dummy
scoreboard objectives add pc dummy
scoreboard objectives add cpsr dummy
scoreboard objectives add cpsr_new dummy
scoreboard objectives add spsr dummy
scoreboard objectives add goto dummy
scoreboard objectives add read dummy
scoreboard objectives add output_register dummy
scoreboard objectives add input_register dummy
scoreboard objectives add convert_register dummy


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


kill @e[type=armor_stand]
summon armor_stand 0 0 0 {CustomName:'[{"text":"pc"}]',CustomNameVisible:1b,Team:RED, Tags:["pc"], NoGravity:1b}
summon armor_stand -4 -58 1 {CustomName:'[{"text":"zero"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 -1 {CustomName:'[{"text":"ra"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 -3 {CustomName:'[{"text":"sp"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 -5 {CustomName:'[{"text":"gp"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -2 -58 -7 {CustomName:'[{"text":"tp"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 0 -58 -7 {CustomName:'[{"text":"t0"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 2 -58 -7 {CustomName:'[{"text":"t1"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 4 -58 -7 {CustomName:'[{"text":"t2"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 6 -58 -7 {CustomName:'[{"text":"s0"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 8 -58 -7 {CustomName:'[{"text":"s1"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 -5 {CustomName:'[{"text":"a0"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 -3 {CustomName:'[{"text":"a1"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 -1 {CustomName:'[{"text":"a2"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 1 {CustomName:'[{"text":"a3"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 3 {CustomName:'[{"text":"a4"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 5 {CustomName:'[{"text":"a5"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 7 {CustomName:'[{"text":"a6"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 9 {CustomName:'[{"text":"a7"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 11 {CustomName:'[{"text":"s2"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 13 {CustomName:'[{"text":"s3"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 15 {CustomName:'[{"text":"s4"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 10 -58 17 {CustomName:'[{"text":"s5"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 8 -58 19 {CustomName:'[{"text":"s6"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 6 -58 19 {CustomName:'[{"text":"s7"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 4 -58 19 {CustomName:'[{"text":"s8"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 2 -58 19 {CustomName:'[{"text":"s9"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand 0 -58 19 {CustomName:'[{"text":"s10"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -2 -58 19 {CustomName:'[{"text":"s11"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 17 {CustomName:'[{"text":"t3"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 15 {CustomName:'[{"text":"t4"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 13 {CustomName:'[{"text":"t5"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 11 {CustomName:'[{"text":"t6"}]',CustomNameVisible:1b,Team:RED}
summon armor_stand -4 -58 9 {CustomName:'[{"text":"screen"}]',CustomNameVisible:1b,Team:RED, Tags:["screen"], NoGravity:1b}


scoreboard objectives add A2 dummy
scoreboard objectives add add32 dummy
scoreboard objectives add read8 dummy




function computer:screen/init_screen

tellraw @a {"text":"Hello World!","color":"gold"}