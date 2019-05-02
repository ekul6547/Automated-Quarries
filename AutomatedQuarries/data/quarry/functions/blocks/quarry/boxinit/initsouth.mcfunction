execute as @s run function quarry:blocks/quarry/boxinit/initarea

scoreboard players remove @s qmin_x 5
scoreboard players add @s qmax_x 6
scoreboard players remove @s qmin_z 11
scoreboard players remove @s qmax_z 0
scoreboard players add @s quarry_y 2

scoreboard players add @s q_place_z 1

scoreboard players operation @s q_mine_x = @s qmin_x
scoreboard players operation @s q_mine_z = @s qmin_z
scoreboard players set @s q_direction 2