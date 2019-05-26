execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_block"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"looting"}] run function tinkery_data:attribute/looting_block/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_block"}] run function tinkery_data:attribute/looting_block/add