data modify entity @s ArmorItems[0].tag.TEMPITEM set value {}
execute at @s run data modify entity @s ArmorItems[0].tag.TEMPITEM set from block ~ ~0.6 ~ Items[{Slot:17b}]
execute as @s at @s run data modify block ~ ~0.6 ~ Items set value []
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}] set from entity @s ArmorItems[0].tag.TEMPITEM
execute as @s at @s run function storage:system/menu/set_navbar