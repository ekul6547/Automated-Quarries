#move block to 10 0 10
execute at @s run clone ~ ~ ~ ~ ~ ~ 10 0 10 replace move
#move to place location
execute store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_place_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_place_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_place_z
scoreboard players operation @s q_direction = @e[tag=q_Current,limit=1] q_direction
#spawn drop
#loot spawn ~ ~ ~ mine 10 0 10 minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:1}]}

execute as @e[tag=q_Current,limit=1] run function quarry:blocks/quarry/mine/loot


#destroy block
setblock 10 0 10 air replace