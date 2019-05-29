execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:paper",tag:{BluePrint:{id:"empty"}}}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Conversion Blueprint\"}",Lore:['{"text":"Putting a damaged item in the slot"}','{"text":"will make the item tinkery compatible."}']},CustomModelData:1000,BluePrint:{id:"conversion",slots:[{s:13b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:paper",tag:{BluePrint:{id:"empty"}}}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_pickaxe"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Pickaxe Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"pickaxe",slots:[{s:3b},{s:4b},{s:5b},{s:13b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_pickaxe"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_shovel"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Shovel Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"shovel",slots:[{s:4b},{s:13b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_shovel"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_hoe"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Hoe Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"hoe",slots:[{s:3b},{s:4b},{s:13b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_hoe"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_axe"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Axe Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"axe",slots:[{s:3b},{s:4b},{s:12b},{s:13b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_axe"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_sword"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Sword Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"sword",slots:[{s:4b},{s:13b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:wooden_sword"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:shield"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Shield Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"shield",slots:[{s:4b},{s:5b},{s:13b},{s:14b},{s:22b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:shield"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:bow"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Bow Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"bow",slots:[{s:4b},{s:5b},{s:12b},{s:14b},{s:22b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:bow"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:crossbow"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Crossbow Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"crossbow",slots:[{s:3b},{s:4b},{s:5b},{s:12b},{s:13b},{s:14b},{s:22b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:crossbow"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_helmet"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Helmet Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"helmet",slots:[{s:3b},{s:4b},{s:5b},{s:12b},{s:14b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_helmet"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_chestplate"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Chestplate Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"chestplate",slots:[{s:3b},{s:5b},{s:12b},{s:13b},{s:14b},{s:21b},{s:22b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_chestplate"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_leggings"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Leggings Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"leggings",slots:[{s:3b},{s:4b},{s:5b},{s:12b},{s:14b},{s:21b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_leggings"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_boots"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Boots Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"boots",slots:[{s:12b},{s:14b},{s:21b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:leather_boots"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:stick"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"The 'Why would this do anything?' Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"single",slots:[{s:13b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:stick"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:trident"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Trident Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"trident",slots:[{s:5b},{s:13b},{s:21b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:trident"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:elytra"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Elytra Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"elytra",slots:[{s:3b},{s:4b},{s:5b},{s:12b},{s:13b},{s:14b},{s:21b},{s:22b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:elytra"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:shears"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Shears Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"shears",slots:[{s:5b},{s:13b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:shears"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:flint_and_steel"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Flint and Steel Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"flint_and_steel",slots:[{s:5b},{s:13b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:flint_and_steel"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:fishing_rod"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Fishing Rod Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"fishing_rod",slots:[{s:5b},{s:13b},{s:14b},{s:21b},{s:23b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:fishing_rod"}] run scoreboard players set @s t_output 1

execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:carrot_on_a_stick"}] run data modify block ~ ~0.6 ~ Items append value {Slot:15b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Carrot On a Stick Blueprint\"}"},CustomModelData:1000,BluePrint:{id:"carrot_on_a_stick",slots:[{s:3b},{s:13b}]}}}
execute if data block ~ ~0.6 ~ Items[{Slot:11b,id:"minecraft:carrot_on_a_stick"}] run scoreboard players set @s t_output 1