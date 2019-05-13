#Shift array by 1
execute as @s run data modify entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array append from entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0]
execute as @s run data remove entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0]
execute as @s store result score @s q_d_index run data get entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0].index
#Test new Array[0]
execute as @s if score @s q_d_result matches 0 run function quarry:blocks/dampener/joined/_containsloopmain
#Restart Loop
execute as @s unless score @s q_d_index = @s q_d_loop_start if score @s q_d_result matches 0 run function quarry:blocks/dampener/joined/_containsloop