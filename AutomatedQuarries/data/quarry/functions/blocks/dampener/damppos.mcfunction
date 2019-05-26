scoreboard players set #system const 16
execute as @e[tag=q_Dampener,tag=!q_Dampener_init] run scoreboard players operation @s q_d_X = @s actX
execute as @e[tag=q_Dampener,tag=!q_Dampener_init] run scoreboard players operation @s q_d_Z = @s actZ
scoreboard players operation @e[tag=q_Dampener,tag=!q_Dampener_init] q_d_X -= @s actX
scoreboard players operation @e[tag=q_Dampener,tag=!q_Dampener_init] q_d_Z -= @s actZ
scoreboard players operation @e[tag=q_Dampener,tag=!q_Dampener_init] q_d_X /= #system const
scoreboard players operation @e[tag=q_Dampener,tag=!q_Dampener_init] q_d_Z /= #system const