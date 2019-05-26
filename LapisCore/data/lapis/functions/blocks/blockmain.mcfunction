execute as @e[tag=Block,type=minecraft:armor_stand,nbt={Fire:0s}] run data merge entity @s {Fire:32767}

schedule function lapis:blocks/workbench/tick 1t