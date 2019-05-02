execute store result score #chunk QuarryCount run data get block ~ ~0.5 ~ Items[0].Count
scoreboard players remove #chunk QuarryCount 1
execute store result block ~ ~0.5 ~ Items[0].Count byte 1 run scoreboard players get #chunk QuarryCount
scoreboard players operation @s q_Age += #chunk q_Age
execute as @s if score @s q_Loaded matches ..0 run function quarry:blocks/chunkloader/load/load