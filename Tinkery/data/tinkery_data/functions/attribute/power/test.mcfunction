execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:quartz"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}] run function tinkery_data:attribute/power/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:quartz"}] run function tinkery_data:attribute/power/add