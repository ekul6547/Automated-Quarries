execute as @s at @s run data modify entity @s ArmorItems[0].tag.TEMPITEMS set from block ~ ~0.6 ~ Items
execute as @s at @s run function storage:system/menu/clear

execute as @s at @s run data modify block ~ ~0.6 ~ Items append from entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:17b}]
data remove entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:8b}]
data remove entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:17b}]
data remove entity @s ArmorItems[0].tag.TEMPITEMS[{Slot:26b}]

execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}] merge value {tag:{BlockEntityTag:{Items:[]}}}
execute as @s at @s run data modify block ~ ~0.6 ~ Items[{Slot:17b}].tag.BlockEntityTag.Items set from entity @s ArmorItems[0].tag.TEMPITEMS

data modify entity @s ArmorItems[0].tag.TEMPITEMS set value []

#execute as @s run function storage:system/menu/save_page