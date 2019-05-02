scoreboard players set #system QuarryColor 1

execute store result entity @s Pos[1] double 1 run scoreboard players get #system quarry_y

execute store result entity @s Pos[0] double 1 run scoreboard players get #system qmin_x
execute store result entity @s Pos[2] double 1 run scoreboard players get #system qmin_z
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #system qmax_x
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[2] double 1 run scoreboard players get #system qmax_z
execute as @s run function quarry:particle_box/particle_tall

execute store result entity @s Pos[0] double 1 run scoreboard players get #system qmin_x
execute as @s run function quarry:particle_box/particle_tall

scoreboard players set #system QuarryColor 5

execute store result entity @s Pos[0] double 1 run scoreboard players get #system q_place_x
execute store result entity @s Pos[2] double 1 run scoreboard players get #system q_place_z
execute as @s run function quarry:particle_box/particle

scoreboard players set #system QuarryColor 14

execute store result entity @s Pos[0] double 1 run scoreboard players get #system q_mine_x
execute store result entity @s Pos[1] double 1 run scoreboard players get #system q_mine_y
execute store result entity @s Pos[2] double 1 run scoreboard players get #system q_mine_z
execute as @s run function quarry:particle_box/particle