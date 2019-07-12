execute at @s store success score #itemdamage QuarryIgnore run data get block ~ ~0.5 ~ Items[{Slot:5b}].tag.Power.damage

execute as @s at @s store result score @s qmin_x run data get block ~ ~0.5 ~ Items[{Slot:5b}].tag.Power.current
execute as @s at @s store result score @s qmax_x run data get block ~ ~0.5 ~ Items[{Slot:5b}].tag.Power.max
execute as @s at @s if score @s qmin_x < @s qmax_x run scoreboard players operation @s qmin_x += @s qmin_z
execute as @s at @s store result block ~ ~0.5 ~ Items[{Slot:5b}].tag.Power.current int 1 run scoreboard players get @s qmin_x

execute as @s at @s if score @s qmin_x matches 5.. run data modify block ~ ~0.5 ~ Items[{Slot:5b}].tag.CustomModelData set value 101
execute as @s at @s if score @s qmin_x matches 1000.. if data block ~ ~0.5 ~ Items[{Slot:5b,id:"minecraft:spider_eye"}] run data modify block ~ ~0.5 ~ Items[{Slot:5b}].tag.CustomModelData set value 102
execute as @s at @s if score @s qmin_x < @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:5b}].tag.display.Lore[1] set value "{\"text\":\"Charging\",\"color\":\"dark_red\"}"
execute as @s at @s if score @s qmin_x >= @s qmax_x run data modify block ~ ~0.5 ~ Items[{Slot:5b}].tag.display.Lore[1] set value "{\"text\":\"Charge complete\",\"color\":\"dark_green\"}"

#Durability
#qmax_z = max durability
#qmin_x = current power
#qmax_x = max power
#qmin_z = scale multiplyer
scoreboard players set #itemdamage qmin_z 100
execute at @s if score #itemdamage QuarryIgnore matches 1.. store result score #itemdamage qmax_z run data get block ~ ~0.5 ~ Items[{Slot:5b}].tag.Power.damage
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
execute at @s if score #itemdamage QuarryIgnore matches 1.. store result block ~ ~0.5 ~ Items[{Slot:5b}].tag.Damage int 1 run scoreboard players get #itemdamage qmax_z