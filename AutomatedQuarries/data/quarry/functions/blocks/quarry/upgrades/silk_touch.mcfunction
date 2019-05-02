scoreboard players set #quarry QuarrySlimeSize 0
execute as @s at @s if block ~ ~0.5 ~ minecraft:dropper{Items:[{id:"minecraft:slime_block"}]} run execute as @s at @s store result score #quarry QuarrySlimeSize run data get block ~ ~0.5 ~ Items[{id:"minecraft:slime_block"}].Count
execute as @s at @s if score #quarry QuarrySlimeSize matches 8.. run scoreboard players set @s QuarryFortune -1