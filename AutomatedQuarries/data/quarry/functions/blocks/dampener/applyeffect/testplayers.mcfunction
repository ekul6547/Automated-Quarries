tag @a[tag=array_test] remove array_test
execute at @s run tag @a[tag=q_dampen_queue,limit=1] add array_test
execute as @s at @s run function quarry:blocks/dampener/joined/contains
#If not in array, set to adventure, but only if within 32 blocks

#Exit
execute as @a[tag=array_test,limit=1] if score @s q_d_in matches 0 if score @s q_d_pre matches 1 run tellraw @s ["",{"text":"You have left ","color":"dark_green"},{"nbt":"ArmorItems[0].tag.display.Name","entity":"@e[tag=q_Dampener,limit=1,sort=nearest]","interpret":"true"}]

#Enter without permission
execute if score @s q_d_result matches 0 as @a[tag=array_test,limit=1] if score @s q_d_in matches 1 if score @s q_d_pre matches 0 run tellraw @s ["",{"text":"You have entered "},{"nbt":"ArmorItems[0].tag.display.Name","entity":"@e[tag=q_Dampener,limit=1,sort=nearest]","color":"aqua","interpret":"true"},{"text":"\nYou do not have permission to build here.","color":"dark_red"}]

#Enter with permission
execute unless score @s q_d_result matches 0 as @a[tag=array_test,limit=1] if score @s q_d_in matches 1 if score @s q_d_pre matches 0 run tellraw @s ["",{"text":"You have entered "},{"nbt":"ArmorItems[0].tag.display.Name","entity":"@e[tag=q_Dampener,limit=1,sort=nearest]","color":"aqua","interpret":"true"},{"text":"\nYou are able to build here.","color":"dark_green"}]


#Change gamemode
execute if score @s q_d_result matches 0 as @a[limit=1,tag=array_test,gamemode=!creative,gamemode=!spectator] if score @s q_d_in matches 1 run gamemode adventure
execute unless score @s q_d_result matches 0 as @a[limit=1,tag=array_test,gamemode=!creative,gamemode=!spectator] run gamemode survival
execute as @a[limit=1,tag=array_test,gamemode=!creative,gamemode=!spectator] if score @s q_d_in matches 0 run gamemode survival

tag @a[tag=array_test] remove q_dampen_queue
tag @a[tag=array_test] remove array_test

execute if entity @a[limit=1,tag=q_dampen_queue] as @s at @s run function quarry:blocks/dampener/applyeffect/testplayers