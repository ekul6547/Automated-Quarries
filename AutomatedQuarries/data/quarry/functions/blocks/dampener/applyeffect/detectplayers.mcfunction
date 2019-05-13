#Do for all players within 48 blocks
execute as @s run function quarry:util/savepos
execute as @s run function quarry:blocks/dampener/applyeffect/playerpos
execute as @a if score @s q_d_X matches -50..50 if score @s q_d_Z matches -50..50 run tag @s add q_dampen_queue
execute as @s at @s run function quarry:blocks/dampener/applyeffect/testplayers