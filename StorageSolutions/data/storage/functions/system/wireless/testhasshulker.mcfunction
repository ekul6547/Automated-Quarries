scoreboard players set $storage.shulkerCount s_shulker 0
scoreboard players set $storage.shulkerCount.temp s_shulker 0
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set value []

data modify entity @s Items[{Slot:8b}].tag.ShulkerCount append from entity @s Items[{id:"minecraft:shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:white_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:orange_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:magenta_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:light_blue_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:yellow_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:lime_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:pink_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:gray_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:light_gray_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:cyan_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:purple_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:blue_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:brown_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:green_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:red_shulker_box"}]
function storage:system/wireless/_hasadd
data modify entity @s Items[{Slot:8b}].tag.ShulkerCount set from entity @s Items[{id:"minecraft:black_shulker_box"}]
function storage:system/wireless/_hasadd

execute if score $storage.shulkerCount s_shulker matches 2.. run scoreboard players set @s s_shulker -1
#tellraw @p {"nbt":"Items[{Slot:8b}].tag.ShulkerCount","entity":"@s"}
#tellraw @p {"score":{"name":"$storage.shulkerCount","objective":"s_shulker"}}