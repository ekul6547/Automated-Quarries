scoreboard players operation @s t_pre = @s t_menu
scoreboard players set @s t_menu 0
execute if data block ~ ~0.6 ~ Items[{Slot:10b}].tag.BluePrint unless data block ~ ~0.6 ~ Items[{Slot:10b}].tag.BluePrint{id:"empty"} run scoreboard players set @s t_menu 1

scoreboard players operation @s t_output_pre = @s t_output
scoreboard players set @s t_output 0
execute as @s at @s run function tinkery:blocks/constructor/can_construct
execute as @s at @s if score @s t_menu matches 1 if score @s t_air matches 0 run function #tinkery_data:blueprint/construct

execute as @s at @s if score @s t_output matches 1 run function tinkery:blocks/constructor/reduce
execute at @s run function tinkery:blocks/constructor/guis/_change