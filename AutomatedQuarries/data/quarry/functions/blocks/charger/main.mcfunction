execute if score @s qmin_z matches 0 run scoreboard players set @s qmin_z 5
execute as @s at @s if score @s q_Age matches ..0 if data block ~ ~0.5 ~ Items[] run function quarry:blocks/charger/charge/chargeslots
execute as @s at @s if score @s q_Age matches 35 if data block ~ ~0.5 ~ Items[] run function quarry:blocks/charger/charge/repeateroff
execute as @s at @s unless data block ~ ~0.5 ~ Items[] run function quarry:blocks/charger/charge/repeateron
scoreboard players remove @s q_Age 1