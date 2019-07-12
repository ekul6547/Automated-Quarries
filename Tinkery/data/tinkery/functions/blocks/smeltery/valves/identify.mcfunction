#particle dust 1.0 1.0 0.0 1.0 ~ ~ ~ 0 10 0 0 10
function tinkery:rd
execute store result score #tinkery t_dum1 run data get entity @s Pos[1]
execute store result score #tinkery t_dum2 run scoreboard players get @s t_s_level
execute positioned ~-1 ~ ~-3 as @e[type=minecraft:item_frame,dx=1.5,dz=1,dy=256] if data entity @s {Facing:2b,Item:{id:"minecraft:leather_horse_armor",tag:{Valve:1b}}} run function tinkery:blocks/smeltery/valves/perframe
execute positioned ~-1 ~ ~2 as @e[type=minecraft:item_frame,dx=1.5,dz=1,dy=256] if data entity @s {Facing:3b,Item:{id:"minecraft:leather_horse_armor",tag:{Valve:1b}}} run function tinkery:blocks/smeltery/valves/perframe
execute positioned ~-3 ~ ~-1 as @e[type=minecraft:item_frame,dx=1.5,dz=1,dy=256] if data entity @s {Facing:4b,Item:{id:"minecraft:leather_horse_armor",tag:{Valve:1b}}} run function tinkery:blocks/smeltery/valves/perframe
execute positioned ~2 ~ ~-1 as @e[type=minecraft:item_frame,dx=1.5,dz=1,dy=256] if data entity @s {Facing:5b,Item:{id:"minecraft:leather_horse_armor",tag:{Valve:1b}}} run function tinkery:blocks/smeltery/valves/perframe