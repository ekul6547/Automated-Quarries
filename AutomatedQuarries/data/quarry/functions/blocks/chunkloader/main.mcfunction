#Show chunk area
execute as @s at @s if block ~ ~2 ~ minecraft:torch run function quarry:util/showchunk
scoreboard players remove @s[scores={q_Age=0..}] q_Age 1
execute as @s[scores={q_Age=..0}] run function quarry:blocks/chunkloader/fuel/checkfuel
execute as @s at @s if entity @a[distance=..4] run function quarry:blocks/chunkloader/titleinfo