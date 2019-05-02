scoreboard players operation #chunk q_X = @s q_chunkX
scoreboard players operation #chunk q_Y = @s q_Y
scoreboard players operation #chunk q_Z = @s q_chunkZ

scoreboard players operation #chunk q_chunkX = #chunk q_X
scoreboard players operation #chunk q_chunkZ = #chunk q_Z

execute if score @s q_X matches 0.. run scoreboard players add #chunk q_chunkX 1
execute if score @s q_Z matches 0.. run scoreboard players add #chunk q_chunkZ 1
execute if score @s q_X matches ..0 run scoreboard players add #chunk q_chunkX 1
execute if score @s q_Z matches ..0 run scoreboard players add #chunk q_chunkZ 1

scoreboard players operation #chunk q_X *= #chunk q_const
scoreboard players operation #chunk q_Z *= #chunk q_const
scoreboard players operation #chunk q_chunkX *= #chunk q_const
scoreboard players operation #chunk q_chunkZ *= #chunk q_const