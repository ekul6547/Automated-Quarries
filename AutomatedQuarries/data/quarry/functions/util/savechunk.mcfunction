execute as @s run function quarry:util/savepos
scoreboard players set #chunk q_const 16
#Chunk
scoreboard players operation @s q_chunkX = @s q_X
scoreboard players operation @s q_chunkY = @s q_Y
scoreboard players operation @s q_chunkZ = @s q_Z

scoreboard players operation @s q_chunkX /= #chunk q_const
scoreboard players operation @s q_chunkY /= #chunk q_const
scoreboard players operation @s q_chunkZ /= #chunk q_const