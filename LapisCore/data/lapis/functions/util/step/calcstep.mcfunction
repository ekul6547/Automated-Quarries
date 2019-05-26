#Move in dirction player is facing (north east south west)
execute as @s at @s if score #step direction matches 0 run tp @s ~ ~0.2 ~-1
execute as @s at @s if score #step direction matches 1 run tp @s ~1 ~0.2 ~
execute as @s at @s if score #step direction matches 2 run tp @s ~ ~0.2 ~1
execute as @s at @s if score #step direction matches 3 run tp @s ~-1 ~0.2 ~

scoreboard players set #step const 1
#if block ~ ~ ~ can step up and ~ ~1 ~ is not solid
execute as @s at @s unless block ~ ~ ~ #lapis:no_step_blocks if block ~ ~1 ~ #lapis:no_step_blocks run scoreboard players set #step const 0