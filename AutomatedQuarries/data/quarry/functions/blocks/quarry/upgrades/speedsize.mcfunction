execute as @s at @s if block ~ ~0.5 ~ minecraft:dropper{Items:[{id:"minecraft:redstone_block"}]} run execute as @s at @s store result score #quarry QuarrySpeed run data get block ~ ~0.5 ~ Items[{id:"minecraft:redstone_block"}].Count

scoreboard players operation #quarry QuarrySpeed /= #quarry QuarrySpeedSize
scoreboard players operation @s QuarrySpeed += #quarry QuarrySpeed