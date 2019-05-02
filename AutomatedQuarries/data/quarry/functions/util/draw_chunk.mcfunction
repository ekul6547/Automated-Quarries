#execute as q_PDraw

scoreboard players set #system QuarryColor 10

execute store result entity @s Pos[1] double 1 run scoreboard players get #chunk q_Y

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk q_X
execute store result entity @s Pos[2] double 1 run scoreboard players get #chunk q_Z
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk q_chunkX
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[2] double 1 run scoreboard players get #chunk q_chunkZ
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #chunk q_X
execute as @s run function quarry:particle_box/particle_tall