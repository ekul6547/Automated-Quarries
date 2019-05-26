#Position
scoreboard players operation @s preX = @s actX
scoreboard players operation @s preY = @s actY
scoreboard players operation @s preZ = @s actZ
execute store result score @s actX run data get entity @s Pos[0] 16
execute store result score @s actY run data get entity @s Pos[1] 16
execute store result score @s actZ run data get entity @s Pos[2] 16
scoreboard players set #system const 16
scoreboard players operation @s X = @s actX
scoreboard players operation @s Y = @s actY
scoreboard players operation @s Z = @s actZ
scoreboard players operation @s X /= #system const
scoreboard players operation @s Y /= #system const
scoreboard players operation @s Z /= #system const

#execute as @s if entity @s[type=minecraft:player] run function lapis:util/look/lookat