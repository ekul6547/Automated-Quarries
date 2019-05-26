execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:ender_pearl"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"loyalty"}] run function tinkery_data:attribute/loyalty/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:ender_pearl"}] run function tinkery_data:attribute/loyalty/add