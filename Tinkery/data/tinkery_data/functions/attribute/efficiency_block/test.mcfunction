execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:redstone_block"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed"}] run function tinkery_data:attribute/efficiency_block/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:redstone_block"}] run function tinkery_data:attribute/efficiency_block/add