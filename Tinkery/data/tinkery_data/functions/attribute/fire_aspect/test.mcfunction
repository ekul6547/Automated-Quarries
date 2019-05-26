execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:blaze_rod"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"fire_aspect"}] run function tinkery_data:attribute/fire_aspect/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:blaze_rod"}] run function tinkery_data:attribute/fire_aspect/add