execute as @e[tag=Workbench_p] at @s run function lapis:blocks/workbench/place
execute as @e[tag=Workbench] at @s unless block ~ ~0.5 ~ minecraft:dropper run function lapis:blocks/workbench/destroy
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:squid_spawn_egg"}}] run function lapis:blocks/workbench/itemcheck

execute as @e[tag=Workbench] run function lapis:blocks/workbench/main