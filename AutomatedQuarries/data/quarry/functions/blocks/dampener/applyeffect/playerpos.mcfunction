scoreboard players set #system const 16
execute as @a run scoreboard players operation @s q_d_X = @s actX
execute as @a run scoreboard players operation @s q_d_Z = @s actZ
scoreboard players operation @a q_d_X -= @s actX
scoreboard players operation @a q_d_Z -= @s actZ
scoreboard players operation @a q_d_X /= #system const
scoreboard players operation @a q_d_Z /= #system const
execute as @a if score @s q_d_X matches -48..48 if score @s q_d_Z matches -48..48 run scoreboard players set @s q_d_in 1