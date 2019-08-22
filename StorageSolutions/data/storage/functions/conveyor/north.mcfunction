data modify entity @s Motion[2] set value 0.3d
execute if entity @s[type=item] if block ~ ~ ~1 minecraft:magenta_glazed_terracotta run data modify entity @s Motion[1] set value 0.4d
execute if entity @s[type=item] if block ~ ~ ~1 minecraft:magenta_glazed_terracotta run data modify entity @s Motion[2] set value 0.075d
execute unless entity @s[type=item] if block ~ ~ ~1 minecraft:magenta_glazed_terracotta run data modify entity @s Motion[1] set value 0.5d
execute unless entity @s[type=item] if block ~ ~ ~1 minecraft:magenta_glazed_terracotta run data modify entity @s Motion[2] set value 0.2d
scoreboard players operation @s X /= #storage const
scoreboard players operation @s X *= #storage const
scoreboard players add @s X 50