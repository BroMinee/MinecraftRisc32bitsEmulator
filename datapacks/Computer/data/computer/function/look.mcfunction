execute if block ~ ~ ~ quartz_block run execute as @e[type=text_display,sort=nearest,limit=1,distance=..5] run return run function computer:look_hit
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run return run function computer:look

# If we reach here, we are outside the screen area
data modify storage computer:ram_268304648 value set value -1
data modify storage computer:ram_268304652 value set value -1