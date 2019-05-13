scoreboard players set #system q_const 16
scoreboard players operation @a q_d_X = @a q_actX
scoreboard players operation @a q_d_Z = @a q_actZ
scoreboard players operation @a q_d_X -= @s q_actX
scoreboard players operation @a q_d_Z -= @s q_actZ
scoreboard players operation @a q_d_X /= #system q_const
scoreboard players operation @a q_d_Z /= #system q_const
execute as @a if score @s q_d_X matches -48..48 if score @s q_d_Z matches -48..48 run scoreboard players set @s q_d_in 1