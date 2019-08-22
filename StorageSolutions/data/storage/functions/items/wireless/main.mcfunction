#Run as player

scoreboard players operation @s s_w_pre = @s s_w_hand
execute as @s store success score @s s_w_hand run execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:150}}

tag @s add s_w_tempcart
execute as @s if score @s s_w_pre matches 0 if score @s s_w_hand matches 1 run function storage:items/wireless/summoncart
execute at @s if score @s s_w_inst matches 1.. if score @s s_w_hand matches 1 as @e[tag=s_WirelessCart] run function storage:items/wireless/movecart
execute at @s if score @s s_w_inst matches 1.. if score @s s_w_hand matches 0 run scoreboard players set @s s_w_inst 0

tag @a[tag=s_w_tempcart] remove s_w_tempcart