#Tick Quarry
# if block ~ ~1.5 ~ minecraft:torch 
execute as @s at @s if score @s QuarryParticles matches 1.. if entity @p[distance=..64] run function quarry:particle_box/draw_box
execute as @s[tag=!q_Finished] at @s run function quarry:blocks/quarry/age
execute as @s[tag=q_Finished,tag=!q_Finished_P] at @s run function quarry:blocks/quarry/finished