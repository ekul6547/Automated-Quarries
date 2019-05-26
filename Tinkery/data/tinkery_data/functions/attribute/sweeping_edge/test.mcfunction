execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:feather"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"sweeping"}] run function tinkery_data:attribute/sweeping_edge/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:feather"}] run function tinkery_data:attribute/sweeping_edge/add