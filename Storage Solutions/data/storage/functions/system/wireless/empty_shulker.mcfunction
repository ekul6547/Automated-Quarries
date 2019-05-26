data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set value {}
execute as @s at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS set from entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items
execute as @s at @s run data modify entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items set value []
execute as @s at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set from entity @s Items[{Slot:17b}]

execute as @s at @s run data modify entity @s Items set from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS
execute as @s at @s run function storage:system/wireless/set_navbar
execute as @s at @s run data modify entity @s Items append from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM

execute as @s at @s run data modify entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:8b}]
execute as @s at @s run data modify entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:17b}]
execute as @s at @s run data modify entity @s Items[{Slot:17b}].tag.BlockEntityTag.Items append from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS[{Slot:26b}]
execute as @s at @s if data entity @s Items[{Slot:17b}].tag.BlockEntityTag{Items:[]} run data remove entity @s Items[{Slot:17b}].tag.BlockEntityTag

data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS set value []
data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set value {}
#execute as @s run function storage:system/menu/save_page