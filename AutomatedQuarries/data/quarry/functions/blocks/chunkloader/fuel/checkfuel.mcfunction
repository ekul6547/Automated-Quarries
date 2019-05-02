execute as @s run function quarry:blocks/chunkloader/load/checkloaded
execute at @s if data block ~ ~0.5 ~ Items[{id:"minecraft:ender_eye"}] run function quarry:blocks/chunkloader/fuel/itemcheck
execute as @s if score @s q_Loaded matches 1.. if score @s q_Age matches ..0 run function quarry:blocks/chunkloader/load/unload
execute as @s run function quarry:blocks/chunkloader/load/checkloaded