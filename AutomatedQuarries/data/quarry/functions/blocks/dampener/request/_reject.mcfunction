execute as @s if score @s q_d_timer matches 2400 run tellraw @s {"text":"Area Request timed out","color":"red"}
execute as @s unless score @s q_d_timer matches 2400 run tellraw @s {"text":"Area Request rejected","color":"red"}
execute as @s run function quarry:blocks/dampener/request/_reset