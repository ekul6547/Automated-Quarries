execute as @s at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS set from entity @s Items
execute as @s at @s run function storage:system/wireless/clear

execute as @s at @s run data modify entity @s Items append from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:17b}]
data remove entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:8b}]
data remove entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:17b}]
data remove entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:26b}]

execute as @s at @s run data modify entity @s Items[{Slot:17b}] merge value {tag:{BlockEntityTag:{Items:[]}}}
execute as @s at @s run data modify entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items set from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS

data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS set value []

#execute as @s run function storage:system/menu/save_page