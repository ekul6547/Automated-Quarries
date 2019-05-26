#Set temporary output
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:3b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:4b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:12b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:14b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:21b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:23b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
#title @p actionbar {"score":{"name":"#tinkertest","objective":"t_output"}}

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:diamond_leggings",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"legs",Amount:6,Operation:0,UUIDMost:653456,UUIDLeast:63563},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:2,Operation:0,UUIDMost:24623,UUIDLeast:103153,Slot:"legs"},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"legs",Amount:512,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"legs",Amount:512,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"diamond",Type:"leggings",Addons:[],itemdur:493},CustomModelData:1000,display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}']}}}

execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1