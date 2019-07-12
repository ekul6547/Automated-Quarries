execute if score @s t_smeltery_on matches 1 run execute if block ~2 ~ ~ minecraft:barrel run scoreboard players add @s t_s_level 1
execute if score @s t_smeltery_on matches 1 run execute if block ~-2 ~ ~ minecraft:barrel run scoreboard players add @s t_s_level 1
execute if score @s t_smeltery_on matches 1 run execute if block ~ ~ ~2 minecraft:barrel run scoreboard players add @s t_s_level 1
execute if score @s t_smeltery_on matches 1 run execute if block ~ ~ ~-2 minecraft:barrel run scoreboard players add @s t_s_level 1

execute if score @s t_s_level matches 2.. run scoreboard players set @s t_smeltery_on 0

execute if score @s t_smeltery_on matches 1 run execute unless block ~-1 ~ ~ minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~-1 ~ ~1 minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~-1 ~ ~-1 minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~ ~ ~1 minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~ ~ ~-1 minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~1 ~ ~ minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~1 ~ ~1 minecraft:air run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~1 ~ ~-1 minecraft:air run scoreboard players set @s t_smeltery_on 0

execute if score @s t_smeltery_on matches 1 run execute unless block ~2 ~ ~1 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~2 ~ ~ #tinkery_data:smeltery_blocks_extra run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~2 ~ ~-1 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0

execute if score @s t_smeltery_on matches 1 run execute unless block ~-2 ~ ~1 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~-2 ~ ~ #tinkery_data:smeltery_blocks_extra run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~-2 ~ ~-1 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0

execute if score @s t_smeltery_on matches 1 run execute unless block ~-1 ~ ~-2 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~ ~ ~-2 #tinkery_data:smeltery_blocks_extra run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~1 ~ ~-2 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0

execute if score @s t_smeltery_on matches 1 run execute unless block ~-1 ~ ~2 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~ ~ ~2 #tinkery_data:smeltery_blocks_extra run scoreboard players set @s t_smeltery_on 0
execute if score @s t_smeltery_on matches 1 run execute unless block ~1 ~ ~2 #tinkery_data:smeltery_blocks run scoreboard players set @s t_smeltery_on 0

scoreboard players operation @s t_s_level = @s t_smeltery_on