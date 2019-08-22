execute unless score @s q_direction matches 0 run scoreboard players remove @s qmin_z 1
execute if score @s q_direction matches 0 run scoreboard players add @s qmax_z 2
execute unless score @s q_direction matches 2 run scoreboard players add @s qmax_z 1
execute if score @s q_direction matches 2 run scoreboard players remove @s qmin_z 2