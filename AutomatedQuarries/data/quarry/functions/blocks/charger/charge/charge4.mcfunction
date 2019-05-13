execute at @s store success score #itemdamage QuarryIgnore run data get block ~ ~0.5 ~ Items[{Slot:4b}].tag.Power.damage

#Drill
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:4b,id:"minecraft:spider_eye",tag:{CustomModelData:101}}] run data modify block ~ ~0.5 ~ Items[{Slot:4b}] merge value {Slot:4b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Drill\"}",Lore:["{\"text\":\"Bar Indicates charge\",\"color\":\"gold\"}","{\"text\":\"Needs Charging\",\"color\":\"dark_red\"}"]},CustomModelData:101,QuarryReplace:1,Power:{current:1,max:1561,damage:1561},Damage:1560}}

#Katana
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:4b,id:"minecraft:spider_eye",tag:{CustomModelData:102}}] run data modify block ~ ~0.5 ~ Items[{Slot:4b}] merge value {Slot:4b,id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Neo-Katana\"}",Lore:["{\"text\":\"Bar Indicates charge\",\"color\":\"gold\"}","{\"text\":\"Charging\",\"color\":\"dark_red\"}"]},CustomModelData:102,QuarryReplace:1,Power:{current:1,max:1561,damage:1561},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:10,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"offhand",Amount:10,Operation:0,UUIDMost:36113,UUIDLeast:115363},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"mainhand",Amount:1024,Operation:0,UUIDMost:55690,UUIDLeast:147290},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"offhand",Amount:1024,Operation:0,UUIDMost:34547,UUIDLeast:174196}]}}

execute as @s at @s store result score @s qmin_x run data get block ~ ~0.5 ~ Items[{Slot:4b}].tag.Power.current
execute as @s at @s store result score @s qmax_x run data get block ~ ~0.5 ~ Items[{Slot:4b}].tag.Power.max
execute as @s at @s if score @s qmin_x < @s qmax_x run scoreboard players operation @s qmin_x += @s qmin_z
execute as @s at @s store result block ~ ~0.5 ~ Items[{Slot:4b}].tag.Power.current int 1 run scoreboard players get @s qmin_x

execute as @s at @s if score @s qmin_x < @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:4b}].tag.display.Lore[1] set value "{\"text\":\"Charging\",\"color\":\"dark_red\"}"
execute as @s at @s if score @s qmin_x >= @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:4b}].tag.display.Lore[1] set value "{\"text\":\"Charge complete\",\"color\":\"dark_green\"}"

#Durability
#qmax_z = max durability
#qmin_x = current power
#qmax_x = max power
#qmin_z = scale multiplyer
scoreboard players set #itemdamage qmin_z 100
execute at @s if score #itemdamage QuarryIgnore matches 1.. store result score #itemdamage qmax_z run data get block ~ ~0.5 ~ Items[{Slot:4b}].tag.Power.damage
execute as @s if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmin_x = @s qmin_x
execute as @s if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmax_x = @s qmax_x
#current power * 100
execute if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmin_x *= #itemdamage qmin_z
#current power / max power
execute if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmin_x /= #itemdamage qmax_x
#current power * max durability
execute if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmin_x *= #itemdamage qmax_z
#current power / 100
execute if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmin_x /= #itemdamage qmin_z
#max durability - current power
execute if score #itemdamage QuarryIgnore matches 1.. run scoreboard players operation #itemdamage qmax_z -= #itemdamage qmin_x
execute at @s if score #itemdamage QuarryIgnore matches 1.. store result block ~ ~0.5 ~ Items[{Slot:4b}].tag.Damage int 1 run scoreboard players get #itemdamage qmax_z