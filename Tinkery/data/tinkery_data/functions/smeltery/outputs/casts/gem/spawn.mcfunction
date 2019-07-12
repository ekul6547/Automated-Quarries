execute if data entity @s {Facing:2b} run summon minecraft:item ~ ~ ~-0.6 {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Gem Cast","color":"gold"}'},TinkeryCast:"gem",CustomModelData:1104}}}
execute if data entity @s {Facing:3b} run summon minecraft:item ~ ~ ~0.6 {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Gem Cast","color":"gold"}'},TinkeryCast:"gem",CustomModelData:1104}}}
execute if data entity @s {Facing:4b} run summon minecraft:item ~-0.6 ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Gem Cast","color":"gold"}'},TinkeryCast:"gem",CustomModelData:1104}}}
execute if data entity @s {Facing:5b} run summon minecraft:item ~0.6 ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Gem Cast","color":"gold"}'},TinkeryCast:"gem",CustomModelData:1104}}}
scoreboard players remove #tinkery t_dum0 180
scoreboard players set #tinkery t_output 1