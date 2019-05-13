#Position
scoreboard players operation @s q_preX = @s q_actX
scoreboard players operation @s q_preY = @s q_actY
scoreboard players operation @s q_preZ = @s q_actZ
execute store result score @s q_actX run data get entity @s Pos[0] 16
execute store result score @s q_actY run data get entity @s Pos[1] 16
execute store result score @s q_actZ run data get entity @s Pos[2] 16
scoreboard players set #system q_const 16
scoreboard players operation @s q_X = @s q_actX
scoreboard players operation @s q_Y = @s q_actY
scoreboard players operation @s q_Z = @s q_actZ
scoreboard players operation @s q_X /= #system q_const
scoreboard players operation @s q_Y /= #system q_const
scoreboard players operation @s q_Z /= #system q_const