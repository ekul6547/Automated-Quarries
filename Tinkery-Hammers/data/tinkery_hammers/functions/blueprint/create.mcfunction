#This is where you turn an item into a blueprint

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:stone_pickaxe"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Hammer Blueprint\"}",Lore:['{"text":"Sticks in the middle column."}','{"text":"Material on the sides"}']},CustomModelData:1128,BluePrint:{id:"hammer",slots:[{s:3b},{s:4b},{s:5b},{s:12b},{s:13b},{s:14b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:stone_pickaxe"}] run scoreboard players set @s t_output 1