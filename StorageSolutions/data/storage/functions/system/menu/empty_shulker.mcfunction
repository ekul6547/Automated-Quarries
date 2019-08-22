data modify entity @s ArmorItems[0].tag.TEMPITEM set value {}
execute as @s at @s run data modify entity @s ArmorItems[0].tag.TEMPITEMS set from block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items
execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items set value []
execute as @s at @s run data modify entity @s ArmorItems[0].tag.TEMPITEM set from block ~ ~0.6 ~ Items[{Slot:17b}]

execute as @s at @s run data modify block ~ ~0.6 ~ Items set from entity @s ArmorItems[0].tag.TEMPITEMS
execute as @s at @s run function storage:system/menu/set_navbar
execute as @s at @s run data modify block ~ ~0.6 ~ Items append from entity @s ArmorItems[0].tag.TEMPITEM

execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:8b}]
execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:17b}]
execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:26b}]
execute as @s at @s if data block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag{Items:[]} run data remove block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag

data modify entity @s ArmorItems[0].tag.TEMPITEMS set value []
data modify entity @s ArmorItems[0].tag.TEMPITEM set value {}
#execute as @s run function storage:system/menu/save_page