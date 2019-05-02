execute as @s at @s if score @s QuarryFortune matches 0 run function quarry:blocks/quarry/mine/loot_normal
execute as @s at @s if score @s QuarryFortune matches 1 run function quarry:blocks/quarry/mine/loot_fortune_1
execute as @s at @s if score @s QuarryFortune matches 2 run function quarry:blocks/quarry/mine/loot_fortune_2
execute as @s at @s if score @s QuarryFortune matches 3 run function quarry:blocks/quarry/mine/loot_fortune_3
execute as @s at @s if score @s QuarryFortune matches 4 run function quarry:blocks/quarry/mine/loot_fortune_4
execute as @s at @s if score @s QuarryFortune matches -1 run function quarry:blocks/quarry/mine/loot_silk_touch