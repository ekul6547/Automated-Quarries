scoreboard players set @s q_d_index -1
execute as @s store result score @s q_d_loop_start run data get entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0].index
execute as @s run function quarry:blocks/dampener/joined/_containsloop
execute as @s run scoreboard players set @s q_d_loop_start -1