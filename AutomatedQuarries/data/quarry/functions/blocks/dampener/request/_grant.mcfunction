execute as @e[type=armor_stand,tag=q_Dampener,distance=..4,limit=1] run function quarry:blocks/dampener/joined/append
execute as @s run function quarry:blocks/dampener/request/_reset
tellraw @s {"text":"Request Granted","color":"green"}