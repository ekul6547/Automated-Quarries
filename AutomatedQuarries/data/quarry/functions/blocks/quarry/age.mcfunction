scoreboard players operation @s q_Age += @s QuarrySpeed

execute as @s if score @s q_Age >= #quarry q_Age run function quarry:blocks/quarry/titleinfo
execute as @s if score @s q_Age >= #quarry q_Age run function quarry:blocks/quarry/mine/startmine