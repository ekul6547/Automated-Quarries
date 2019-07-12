execute if entity @s[nbt={Facing:2b}] positioned ~ ~ ~-0.6 run function tinkery_data:smeltery/materials/coal/ingot/summon
execute if entity @s[nbt={Facing:3b}] positioned ~ ~ ~0.6 run function tinkery_data:smeltery/materials/coal/ingot/summon
execute if entity @s[nbt={Facing:4b}] positioned ~-0.6 ~ ~ run function tinkery_data:smeltery/materials/coal/ingot/summon
execute if entity @s[nbt={Facing:5b}] positioned ~0.6 ~ ~ run function tinkery_data:smeltery/materials/coal/ingot/summon
scoreboard players remove #tinkery t_dum0 360
scoreboard players set #tinkery t_output 1