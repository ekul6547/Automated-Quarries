execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:0b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge0
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:1b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge1
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:2b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge2
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:3b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge3
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:4b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge4
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:5b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge5
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:6b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge6
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:7b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge7
execute as @s at @s store success score #charger QuarryIgnore run execute if data block ~ ~0.5 ~ Items[{Slot:8b,Count:1b}].tag.Power
execute as @s if score #charger QuarryIgnore matches 1.. run function quarry:blocks/charger/charge/charge8

#Spin Item frame
#execute as @s if score @s q_direction matches ..0 run scoreboard players set @s q_direction 8
#scoreboard players remove @s q_direction 1
#execute as @s at @s positioned ~ ~1.5 ~ run execute store result entity @e[type=minecraft:item_frame,tag=charger_item,sort=nearest,limit=1] ItemRotation byte 1 run scoreboard players get @s q_direction

execute as @s at @s run function quarry:blocks/charger/charge/repeateron

scoreboard players set @s q_Age 40