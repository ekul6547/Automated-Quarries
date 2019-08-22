scoreboard players operation @s bores.id = $bores.id bores.id
scoreboard players add $bores.id bores.id 1
function bores:bore/storeid

execute store result score @s bores.fortune run data get entity @s ArmorItems[3].tag.BoreStats.fortune
execute store result score @s bores.max run data get entity @s ArmorItems[3].tag.BoreStats.dig
execute store result score @s bores.move run data get entity @s ArmorItems[3].tag.BoreStats.move
execute store result score @s bores.level run data get entity @s ArmorItems[3].tag.BoreStats.level
execute store result score @s bores.bridge run data get entity @s ArmorItems[3].tag.BoreStats.bridge
execute store result score @s bores.lava run data get entity @s ArmorItems[3].tag.BoreStats.lava
execute store result score @s bores.sponge run data get entity @s ArmorItems[3].tag.BoreStats.sponge
execute store result score @s bores.tele run data get entity @s ArmorItems[3].tag.BoreStats.tele

execute store result entity @s HandItems[0].tag.display.color int 1 run data get entity @s ArmorItems[3].tag.BoreStats.color
execute store result entity @s HandItems[1].tag.display.color int 1 run data get entity @s ArmorItems[3].tag.BoreStats.color
execute store result entity @s ArmorItems[3].tag.display.color int 1 run data get entity @s ArmorItems[3].tag.BoreStats.color