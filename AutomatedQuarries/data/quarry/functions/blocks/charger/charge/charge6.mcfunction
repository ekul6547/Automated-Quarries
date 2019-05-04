execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,id:"minecraft:spider_eye",tag:{CustomModelData:101}}] run data modify block ~ ~0.5 ~ Items[{Slot:6b}] merge value {Slot:6b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Drill\"}",Lore:["{\"text\":\"Bar Indicates charge\",\"color\":\"gold\"}","{\"text\":\"Needs Charging\",\"color\":\"dark_red\"}"]},CustomModelData:101,QuarryReplace:1,Power:{current:1,max:1561},Damage:1560,Enchantments:[{id:"minecraft:unbreaking",lvl:3},{id:"minecraft:efficiency",lvl:5}],HideFlags:33}}

execute as @s at @s store result score @s qmin_x run data get block ~ ~0.5 ~ Items[{Slot:6b}].tag.Power.current
execute as @s at @s store result score @s qmax_x run data get block ~ ~0.5 ~ Items[{Slot:6b}].tag.Power.max
execute as @s at @s if score @s qmin_x < @s qmax_x run scoreboard players operation @s qmin_x += @s qmin_z
execute as @s at @s store result block ~ ~0.5 ~ Items[{Slot:6b}].tag.Power.current int 1 run scoreboard players get @s qmin_x

execute as @s at @s if score @s qmin_x < @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:6b}].tag.display.Lore[1] set value "{\"text\":\"Charging\",\"color\":\"dark_red\"}"
execute as @s at @s if score @s qmin_x >= @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:6b}].tag.display.Lore[1] set value "{\"text\":\"Charge complete\",\"color\":\"dark_green\"}"

#Drill durability
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,id:"minecraft:diamond_pickaxe",tag:{CustomModelData:101}}] run scoreboard players operation #drill qmin_x = @s qmin_x
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,id:"minecraft:diamond_pickaxe",tag:{CustomModelData:101}}] run scoreboard players operation #drill qmin_z = #drill qmax_x
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,id:"minecraft:diamond_pickaxe",tag:{CustomModelData:101}}] run scoreboard players operation #drill qmin_z -= #drill qmin_x
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,id:"minecraft:diamond_pickaxe",tag:{CustomModelData:101}}] store result block ~ ~0.5 ~ Items[{Slot:6b}].tag.Damage int 1 run scoreboard players get #drill qmin_z