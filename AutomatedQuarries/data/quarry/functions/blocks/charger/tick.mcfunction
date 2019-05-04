execute as @e[tag=q_Charger_p] at @s run function quarry:blocks/charger/place
execute as @e[tag=q_Charger] at @s unless block ~ ~0.5 ~ minecraft:dropper run function quarry:blocks/charger/destroy
execute as @e[tag=q_Charger] run function quarry:blocks/charger/main