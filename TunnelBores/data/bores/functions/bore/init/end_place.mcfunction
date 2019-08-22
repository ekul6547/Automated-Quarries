scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2
execute store result score @s bores.x run data get entity @s Pos[0]
execute store result score @s bores.y run data get entity @s Pos[1]
execute store result score @s bores.z run data get entity @s Pos[2]
scoreboard players set #bores.math const 10
scoreboard players operation @s bores.x *= #bores.math const
scoreboard players operation @s bores.y *= #bores.math const
scoreboard players operation @s bores.z *= #bores.math const
scoreboard players add @s bores.x 5
scoreboard players add @s bores.y 5
scoreboard players add @s bores.z 5
tag @s remove bores.new