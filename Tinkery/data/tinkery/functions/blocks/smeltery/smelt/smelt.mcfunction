scoreboard players set @s t_output 0

execute if score @s L_Age matches 3 run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Active set value 1b
execute if score @s L_Age matches 5 run data modify block ~ ~ ~ Items[{Slot:1b}].tag.Active set value 1b
execute if score @s L_Age matches 7 run data modify block ~ ~ ~ Items[{Slot:2b}].tag.Active set value 1b
execute if score @s L_Age matches 9 run data modify block ~ ~ ~ Items[{Slot:3b}].tag.Active set value 1b
execute if score @s L_Age matches 11 run data modify block ~ ~ ~ Items[{Slot:4b}].tag.Active set value 1b
execute if score @s L_Age matches 13 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.Active set value 1b
execute if score @s L_Age matches 15 run data modify block ~ ~ ~ Items[{Slot:6b}].tag.Active set value 1b
execute if score @s L_Age matches 17 run data modify block ~ ~ ~ Items[{Slot:7b}].tag.Active set value 1b
execute if score @s L_Age matches 19 run data modify block ~ ~ ~ Items[{Slot:8b}].tag.Active set value 1b

execute if data block ~ ~ ~ Items[{tag:{Active:1b}}] run function #tinkery_data:smeltery/smelt

execute if score @s t_output matches 1 run function tinkery:blocks/smeltery/smelt/consume
execute if score @s t_output matches 2 run function tinkery:blocks/smeltery/smelt/setbucket
execute if score @s t_output matches 1.. run scoreboard players add #smeltery t_output 1

data modify entity @s ArmorItems[0].tag.Smeltery.TempData.tag set from block ~ ~ ~ Items[{tag:{Active:1b}}].tag
scoreboard players set #tinkery const 1
execute as @s if data block ~ ~ ~ Items[{tag:{Active:1b}}] store success score #tinkery const run data modify entity @s ArmorItems[0].tag.Smeltery.TempData set value {tag:{Active:1b}}
execute if score #tinkery const matches 0 run data remove block ~ ~ ~ Items[{tag:{Active:1b}}].tag
data remove block ~ ~ ~ Items[].tag.Active