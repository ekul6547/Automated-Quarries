execute unless score @s q_direction matches 3 run scoreboard players add @s qmin_x 1
execute if score @s q_direction matches 3 run scoreboard players remove @s qmax_x 2
execute unless score @s q_direction matches 1 run scoreboard players remove @s qmax_x 1
execute if score @s q_direction matches 1 run scoreboard players add @s qmin_x 2