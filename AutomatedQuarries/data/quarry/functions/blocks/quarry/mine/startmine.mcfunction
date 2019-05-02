tag @s add q_Current
scoreboard players set @s q_Age 0

execute as @e[tag=q_PDraw,limit=1] run function quarry:blocks/quarry/mine/startminecheck

execute as @s run function quarry:blocks/quarry/mine/move

tag @s remove q_Current