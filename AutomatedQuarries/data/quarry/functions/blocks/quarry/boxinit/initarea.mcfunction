execute as @s store result score @s quarry_x run data get entity @s Pos[0] 1
execute as @s store result score @s quarry_y run data get entity @s Pos[1] 1
execute as @s store result score @s quarry_z run data get entity @s Pos[2] 1

scoreboard players operation @s qmin_x = @s quarry_x
scoreboard players operation @s qmax_x = @s quarry_x
scoreboard players operation @s qmin_z = @s quarry_z
scoreboard players operation @s qmax_z = @s quarry_z

scoreboard players operation @s q_mine_x = @s quarry_x
scoreboard players operation @s q_mine_y = @s quarry_y
scoreboard players operation @s q_mine_z = @s quarry_z
scoreboard players operation @s q_place_x = @s quarry_x
scoreboard players operation @s q_place_y = @s quarry_y
scoreboard players operation @s q_place_z = @s quarry_z

scoreboard players add @s q_mine_y 4


scoreboard players set @s q_Age 0
scoreboard players set @s QuarrySpeed 1
scoreboard players set @s QuarryMineStone 0
scoreboard players set @s QuarryFortune 0
scoreboard players set @s QuarryParticles 1

tellraw @a[distance=..4] {"text":"Quarry Initialised","bold":true}