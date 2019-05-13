gamerule sendCommandFeedback false
execute at @s run tag @e[tag=q_Dampener,sort=nearest,limit=1,distance=..3] add q_d_rename
execute as @s at @s if data entity @s SelectedItem.tag.display.Name run data modify entity @e[tag=q_Dampener,tag=q_d_rename,limit=1] ArmorItems[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
tellraw @s ["",{"text":"Renamed area to "},{"nbt":"ArmorItems[0].tag.display.Name","entity":"@e[tag=q_Dampener,tag=q_d_rename,limit=1]","color":"aqua","interpret":"true"}]
tag @e[tag=q_d_rename] remove q_d_rename