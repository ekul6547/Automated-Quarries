execute if score #bores.fuel const matches ..0 as @e[type=chest_minecart,tag=bores.container] if score @s bores.id = $bores.id const if data entity @s Items[{id:"minecraft:blaze_rod"}] run tag @s add bores.refuel
execute if entity @e[type=chest_minecart,tag=bores.refuel,limit=1] run data modify entity @s ArmorItems[3].tag.BoreFuel append from entity @e[type=chest_minecart,tag=bores.refuel,limit=1] Items[{id:"minecraft:blaze_rod"}]
execute if entity @e[type=chest_minecart,tag=bores.refuel,limit=1] store result score #bores.refuel.temp const run data get entity @s ArmorItems[3].tag.BoreFuel[0].Count
scoreboard players remove #bores.refuel.temp const 1
execute if entity @e[type=chest_minecart,tag=bores.refuel,limit=1] store result entity @s ArmorItems[3].tag.BoreFuel[0].Count byte 1 run scoreboard players get #bores.refuel.temp const
execute if entity @e[type=chest_minecart,tag=bores.refuel,limit=1] run data modify entity @e[type=chest_minecart,tag=bores.refuel,limit=1] Items append from entity @s ArmorItems[3].tag.BoreFuel[{id:"minecraft:blaze_rod"}]
execute if entity @e[type=chest_minecart,tag=bores.refuel,limit=1] run scoreboard players add #bores.fuel const 21600
tag @e[tag=bores.refuel] remove bores.refuel