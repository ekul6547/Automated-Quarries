data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set value {}
execute at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set from entity @s Items[{Slot:17b}]
execute as @s at @s run data modify entity @s Items set value []
execute at @s run data modify entity @s Items[{Slot:17b}] set from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM
execute as @s at @s run function storage:system/wireless/set_navbar