#Move in dirction player is facing (north east south west)
execute as @s at @s if score #step q_direction matches 0 run tp @s ~ ~0.2 ~-1
execute as @s at @s if score #step q_direction matches 1 run tp @s ~1 ~0.2 ~
execute as @s at @s if score #step q_direction matches 2 run tp @s ~ ~0.2 ~1
execute as @s at @s if score #step q_direction matches 3 run tp @s ~-1 ~0.2 ~

scoreboard players set #step q_const 1
#1 if solid - 0 if not
execute as @s at @s if block ~ ~ ~ #quarry:no_step_blocks run scoreboard players set #step q_const 0
#Save score
scoreboard players operation #step QuarryCount = #step q_const
#Reset score
scoreboard players set #step q_const 1
#If block above is 0
execute if score #step QuarryCount matches 1 as @s at @s if block ~ ~1 ~ #quarry:no_step_blocks run scoreboard players set #step q_const 0