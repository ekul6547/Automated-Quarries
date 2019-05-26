scoreboard players set #system QuarryCount 1

execute as @s at @s if score @e[tag=q_Current,limit=1] QuarryIgnore matches 1 if block ~ ~ ~ #quarry:ignore_stones run scoreboard players set #system QuarryCount 0
execute as @s at @s if score #system QuarryCount matches 1 if block ~ ~ ~ #quarry:ignore_op run scoreboard players set #system QuarryCount 0