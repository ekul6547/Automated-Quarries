scoreboard players set #system QuarryCount 1

#scoreboard players set #system QuarryColor 4
#execute as @s run function quarry:particle_box/particle

execute as @s if score @e[tag=q_Current,limit=1] QuarryIgnore matches 1.. if score #system QuarryCount matches 1 run function quarry:blocks/quarry/mine/checkignore_stones
execute as @s if score #system QuarryCount matches 1 run function quarry:blocks/quarry/mine/checkignore_op