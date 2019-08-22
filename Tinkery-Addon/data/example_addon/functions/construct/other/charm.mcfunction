#Set temporary output

#What items in what slots. Available slots are 3, 4, 5, 12, 13, 14, 21, 22, 23
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:3b,id:"minecraft:coal"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:iron_ingot"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:13b,id:"minecraft:emerald"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:21b,id:"minecraft:gold_ingot"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:23b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0

#Set the output slot to the item
#generic.attackSpeed is offset by +4 by default, so a tool of 1.6 attackSpeed has a modifier of -2.4
#generic.attackDamage is offset by +1 in the same way

#tinkery.durability and tinkery.maxDurability are the two modifiers that manage the custom durability
#It does not matter what their "Slot" is, as that is just to show
#Please see the .mcfunction file at data/tinkery/functions/damage/damage{slot}.mcfunction to see which tools/items have their damage tracked automatically

#The MOST IMPORTANT part is the Tinkery:{} tag
#   Tinkery:{Material:"diamond",Type:"charm",Addons:[],itemdur:10}
# material - the item used to repair it. These are called from the #tinkery_data:attribute/repair function tag
# Type - the type of tool. This is used to determin what is called from #tinkery_data:attribute/*
# Addons - where all of the addons/modifiers are stored. It must be created, but can be left empty.
# itemdur - the default duration of the base item; subtract 2. So a wooden_pickaxe has 59 durability, so itemdur is 57

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:emerald",tag:{AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"offhand",Amount:1024,Operation:0,UUIDMost:10370,UUIDLeast:142026},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"offhand",Amount:-1,Operation:0,UUIDMost:89806,UUIDLeast:116685},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"offhand",Amount:1024,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"offhand",Amount:1024,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"diamond",Type:"charm",Addons:[],itemdur:0},display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}'],Name:'{"text":"Charm"}'}}}


#Settign t_output to 1 reduces all of the stack sizes of the items in the grid by 1
execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1