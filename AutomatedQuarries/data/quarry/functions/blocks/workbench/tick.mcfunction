execute as @e[tag=q_Workbench_p] at @s run function quarry:blocks/workbench/place
execute as @e[tag=q_Workbench] at @s unless block ~ ~0.5 ~ minecraft:dropper run function quarry:blocks/workbench/destroy
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:squid_spawn_egg"}}] run function quarry:blocks/workbench/itemcheck

execute as @e[tag=q_Workbench] run function quarry:blocks/workbench/main