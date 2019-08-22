execute as @s run function storage:system/menu/close_menu
kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:barrel"}}]
kill @e[type=item,distance=..3,nbt=!{Item:{id:"minecraft:squid_spawn_egg"}}]
execute at @s run function storage:blocks/terminal/summon
kill @s