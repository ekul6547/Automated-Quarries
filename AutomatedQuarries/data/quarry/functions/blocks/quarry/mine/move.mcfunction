scoreboard players add @s q_mine_x 1
execute as @s if score @s q_mine_x >= @s qmax_x run scoreboard players add @s q_mine_z 1
execute as @s if score @s q_mine_x >= @s qmax_x run scoreboard players operation @s q_mine_x = @s qmin_x
execute as @s if score @s q_mine_z >= @s qmax_z run scoreboard players remove @s q_mine_y 1
execute as @s if score @s q_mine_z >= @s qmax_z run scoreboard players operation @s q_mine_z = @s qmin_z
execute as @s if score @s q_mine_y matches ..1 run tag @s add q_Finished