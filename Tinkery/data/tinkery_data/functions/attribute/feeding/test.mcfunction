execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cake"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"feeding"}] run function tinkery_data:attribute/feeding/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cake"}] run function tinkery_data:attribute/feeding/add