execute as @s if entity @s[tag=s_Terminal] run function storage:system/wireless/close_menu
function storage:system/wireless/testforshulker
execute at @s if score $storage.shulker s_shulker matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["storage.dropShulker"],Motion:[0d,0.2d,0d]}
data modify entity @e[type=item,tag=storage.dropShulker,limit=1] Item set from entity @s Items[{Slot:17b}]
tag @e[type=item,tag=storage.dropShulker] remove storage.dropShulker
tag @e[type=item] add dont_kill
kill @s
kill @e[type=item,tag=!dont_kill]
tag @e[type=item,tag=dont_kill] remove dont_kill