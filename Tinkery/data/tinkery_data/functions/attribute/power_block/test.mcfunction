execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:quartz_block"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}] run function tinkery_data:attribute/power_block/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:quartz_block"}] run function tinkery_data:attribute/power_block/add