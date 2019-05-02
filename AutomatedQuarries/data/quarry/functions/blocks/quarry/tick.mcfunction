execute as @e[tag=q_Quarry_p] at @s run function quarry:blocks/quarry/place
execute as @e[tag=q_Quarry] at @s unless block ~ ~0.5 ~ minecraft:dropper run function quarry:blocks/quarry/destroy

#do upgrades
execute unless entity @e[tag=q_Quarry,tag=q_UP] run function quarry:blocks/quarry/upgrades/schedule
execute as @e[tag=q_UP,sort=random,limit=1] run function quarry:blocks/quarry/upgrades/calculate

execute as @e[tag=q_Quarry] run function quarry:blocks/quarry/main