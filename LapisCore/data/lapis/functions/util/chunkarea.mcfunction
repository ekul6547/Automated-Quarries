scoreboard players operation #chunk X = @s chunkX
scoreboard players operation #chunk Y = @s Y
scoreboard players operation #chunk Z = @s chunkZ

scoreboard players operation #chunk chunkX = #chunk X
scoreboard players operation #chunk chunkZ = #chunk Z

execute if score @s X matches 0.. run scoreboard players add #chunk chunkX 1
execute if score @s Z matches 0.. run scoreboard players add #chunk chunkZ 1
execute if score @s X matches ..0 run scoreboard players add #chunk chunkX 1
execute if score @s Z matches ..0 run scoreboard players add #chunk chunkZ 1

scoreboard players operation #chunk X *= #chunk const
scoreboard players operation #chunk Z *= #chunk const
scoreboard players operation #chunk chunkX *= #chunk const
scoreboard players operation #chunk chunkZ *= #chunk const