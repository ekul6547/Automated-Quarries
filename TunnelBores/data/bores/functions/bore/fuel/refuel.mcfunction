scoreboard players set #bores.fuel const 0
function #bores_recipes:refuel
scoreboard players operation @s bores.fuel += #bores.fuel const
execute if score @s bores.fuel matches 1.. run tag @s add bores.active
data modify entity @s ArmorItems[3].tag.BoreFuel set value []