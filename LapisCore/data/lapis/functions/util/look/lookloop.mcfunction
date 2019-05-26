scoreboard players add #look lookCount 1
execute at @s unless block ~ ~ ~ #lapis:ignore_look_blocks run scoreboard players set #look lookSet 1
execute if score #look lookSet matches 0 at @s as @s rotated as @p[tag=l_looker] run tp @s ^ ^ ^0.25
#title @p actionbar ["",{"entity":"@s","nbt":"Pos"}]
execute if score #look lookSet matches 0 if score #look lookCount matches ..100 as @s run function lapis:util/look/lookloop