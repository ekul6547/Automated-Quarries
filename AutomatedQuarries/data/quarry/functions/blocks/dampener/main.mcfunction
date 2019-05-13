execute at @s as @a[distance=5..10] if score @s OwnerOptions matches 0 run scoreboard players reset @s OwnerOptions
execute as @s at @s positioned ~ ~1 ~ if score @p[distance=..1] q_d_sneak matches 1.. if score @s q_Age matches 20.. run function quarry:blocks/dampener/joined/testappend
scoreboard players add @s q_Age 1
execute as @s at @s run function quarry:blocks/dampener/applyeffect/detectplayers