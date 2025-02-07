scoreboard players add tick Time 1


execute if score tick Time matches 20 run scoreboard players add seconds Time 1
execute if score tick Time matches 20 run scoreboard players set tick Time 0

execute if score seconds Time matches 60 run scoreboard players add minutes Time 1
execute if score seconds Time matches 60 run scoreboard players set seconds Time 0

execute if score minutes Time matches 60 run scoreboard players add heure Time 1
execute if score minutes Time matches 60 run scoreboard players set minutes Time 0

execute if score heure Time matches 24 run scoreboard players add day Time 1
execute if score heure Time matches 24 run scoreboard players set heure Time 0

execute if score day Time matches 7 run scoreboard players add week Time 1
execute if score day Time matches 7 run scoreboard players set day Time 0

bossbar set bromine:timer name {"color":"green","bold":true,"text":"Timer ","extra":[{"score":{"name":"week","objective":"Time"}},{"text":"w "},{"score":{"name":"day","objective":"Time"}},{"text":"d "},{"score":{"name":"heure","objective":"Time"}},{"text":"h "},{"score":{"name":"minutes","objective":"Time"}},{"text":"m "},{"score":{"name":"seconds","objective":"Time"}},{"text":"s"}]}
execute store result bossbar bromine:timer value run scoreboard players get seconds Time