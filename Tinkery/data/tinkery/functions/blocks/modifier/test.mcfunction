scoreboard players set @s t_pre 0
execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b}] run scoreboard players set @s t_pre 1

scoreboard players operation @s t_output_pre = @s t_output
scoreboard players set @s t_output 0
execute as @s at @s if score @s t_pre matches 1 if score @s t_output matches 0 if data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery run function #tinkery_data:attribute/repair
execute as @s at @s if score @s t_pre matches 1 if score @s t_output matches 0 if data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery run function #tinkery_data:attribute/_call

execute as @s at @s if score @s t_output matches 1 run function tinkery:blocks/modifier/reduce