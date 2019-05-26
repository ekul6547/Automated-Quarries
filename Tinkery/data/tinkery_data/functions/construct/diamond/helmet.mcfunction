#Set temporary output
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:3b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:4b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:12b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:14b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
#title @p actionbar {"score":{"name":"#tinkertest","objective":"t_output"}}

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:diamond_helmet",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:3,Operation:0,UUIDMost:587875,UUIDLeast:59879},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:2,Operation:0,UUIDMost:24621,UUIDLeast:103151,Slot:"head"},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"head",Amount:394,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"head",Amount:394,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"diamond",Type:"helmet",Addons:[],itemdur:361},CustomModelData:1000,display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}']}}}

execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1