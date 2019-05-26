execute as @s if entity @s[tag=s_Terminal] run function storage:system/wireless/close_menu
kill @s
kill @e[type=item,distance=..3,nbt=!{Item:{id:"minecraft:squid_spawn_egg"}},nbt=!{Item:{id:"minecraft:carrot_on_a_stick"}}]