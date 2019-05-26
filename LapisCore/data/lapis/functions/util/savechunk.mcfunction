execute as @s run function lapis:util/savepos
scoreboard players set #chunk const 16
#Chunk
scoreboard players operation @s chunkX = @s X
scoreboard players operation @s chunkY = @s Y
scoreboard players operation @s chunkZ = @s Z

scoreboard players operation @s chunkX /= #chunk const
scoreboard players operation @s chunkY /= #chunk const
scoreboard players operation @s chunkZ /= #chunk const