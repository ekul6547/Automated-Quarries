scoreboard players set #append QuarryIgnore 1
execute at @s as @e[type=armor_stand,tag=q_Dampener,distance=..4,limit=1] at @s run function quarry:blocks/dampener/joined/append
execute as @s run function quarry:blocks/dampener/request/_reset
execute as @s if score #append QuarryIgnore matches 0 run tellraw @s {"text":"Request Granted","color":"green"}
execute as @s if score #append QuarryIgnore matches 1 run tellraw @s {"text":"You are no longer in range of dampener to accept the request.","color":"red"}