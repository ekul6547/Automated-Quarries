#Set temporary output
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:3b,id:"minecraft:gold_ingot"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:4b,id:"minecraft:gold_ingot"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:gold_ingot"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:13b,id:"minecraft:stick"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:22b,id:"minecraft:stick"}] run scoreboard players set #tinkertest t_output 0
#title @p actionbar {"score":{"name":"#tinkertest","objective":"t_output"}}

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:golden_pickaxe",tag:{AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"mainhand",Amount:-2.8,Operation:0,UUIDMost:10370,UUIDLeast:142026},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:1,Operation:0,UUIDMost:89806,UUIDLeast:116685},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"mainhand",Amount:128,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"mainhand",Amount:128,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"gold",Type:"pickaxe",Addons:[],itemdur:30},CustomModelData:1000,display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}']}}}

execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1