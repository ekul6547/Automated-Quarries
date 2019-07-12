scoreboard players set @s t_output 0

execute positioned ~ ~0.6 ~ unless data block ~ ~ ~ Items[{Slot:18b}] if data block ~ ~-1 ~ Items[0] run function tinkery:blocks/smeltery/fuel/find_below
execute positioned ~ ~0.6 ~ if data block ~ ~ ~ Items[{Slot:18b}] run function #tinkery_data:smeltery/refuel

execute if score @s t_output matches 1 run function tinkery:blocks/smeltery/fuel/consume
execute if score @s t_output matches 2 run data modify block ~ ~0.6 ~ Items[{Slot:18b}].id set value "minecraft:bucket"
execute if score @s t_output matches 1.. run function tinkery:blocks/smeltery/gui/set_gui