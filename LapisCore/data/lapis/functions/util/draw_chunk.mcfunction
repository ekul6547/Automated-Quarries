#execute as q_PDraw

scoreboard players set #system QuarryColor 10

execute store result entity @s Pos[1] double 1 run scoreboard players get #chunk Y

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk X
execute store result entity @s Pos[2] double 1 run scoreboard players get #chunk Z
execute as @s run function lapis:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk chunkX
execute as @s run function lapis:particle_box/particle_tall

execute store result entity @s Pos[2] double 1 run scoreboard players get #chunk chunkZ
execute as @s run function lapis:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk X
execute as @s run function lapis:particle_box/particle_tall