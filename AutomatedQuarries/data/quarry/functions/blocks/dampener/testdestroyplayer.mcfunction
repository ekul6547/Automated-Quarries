tag @s add array_test
execute as @e[tag=q_dampen_data,limit=1,sort=nearest] if score @s q_d_result matches 0 run function quarry:blocks/dampener/joined/_isowner
tag @s remove array_test