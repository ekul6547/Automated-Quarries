execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_block"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}] run function tinkery_data:attribute/luck_of_the_sea_block/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_block"}] run function tinkery_data:attribute/luck_of_the_sea_block/add