#Move To player
execute unless score #step q_direction matches -1 as @s run data modify entity @e[tag=q_PEnd,limit=1] Pos set from entity @s Pos
#Test for solids
execute unless score #step q_direction matches -1 as @e[tag=q_PEnd,limit=1] run function quarry:util/step/calcstep
#Tp upwards
execute if score #step q_direction matches 0 as @s at @s if score #step q_const matches 0 run tp @s ~ ~1 ~-0.3
execute if score #step q_direction matches 1 as @s at @s if score #step q_const matches 0 run tp @s ~0.3 ~1 ~
execute if score #step q_direction matches 2 as @s at @s if score #step q_const matches 0 run tp @s ~ ~1 ~0.3
execute if score #step q_direction matches 3 as @s at @s if score #step q_const matches 0 run tp @s ~-0.3 ~1 ~
