#Set temporary output
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:3b,id:"minecraft:iron_bars"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:4b,id:"minecraft:iron_bars"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:iron_bars"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:12b,id:"minecraft:iron_bars"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:14b,id:"minecraft:iron_bars"}] run scoreboard players set #tinkertest t_output 0
#title @p actionbar {"score":{"name":"#tinkertest","objective":"t_output"}}

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:chainmail_helmet",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:2,Operation:0,UUIDMost:587875,UUIDLeast:59879},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"head",Amount:212,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"head",Amount:212,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"chainmail",Type:"helmet",Addons:[],itemdur:163},CustomModelData:1000,display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}']}}}

execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1