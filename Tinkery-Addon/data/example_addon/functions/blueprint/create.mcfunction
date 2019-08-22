#This is where you turn an item into a blueprint

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:emerald"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Charm Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"charm",slots:[{s:3b},{s:5b},{s:13b},{s:21b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:emerald"}] run scoreboard players set @s t_output 1