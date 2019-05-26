execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:soul_sand"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"respiration"}] run function tinkery_data:attribute/respiration/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:soul_sand"}] run function tinkery_data:attribute/respiration/add