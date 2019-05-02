execute as @e[tag=q_Chunkload_p] at @s run function quarry:blocks/chunkloader/place
execute as @e[tag=q_Chunkload] at @s unless block ~ ~0.5 ~ minecraft:barrel run function quarry:blocks/chunkloader/destroy

execute as @e[tag=q_Chunkload] run function quarry:blocks/chunkloader/main