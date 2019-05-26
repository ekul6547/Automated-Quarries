scoreboard players set @s t_pre 0
execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b}] run scoreboard players set @s t_pre 1
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}] run scoreboard players set @s t_pre 1
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:10b}].tag.BluePrint{id:"empty"} run scoreboard players set @s t_pre 1

scoreboard players operation @s t_output_pre = @s t_output
scoreboard players set @s t_output 0
execute as @s at @s if score @s t_pre matches 0 run function #tinkery_data:blueprint/create

execute as @s at @s if score @s t_output matches 1 run function tinkery:blocks/blueprinter/reduce