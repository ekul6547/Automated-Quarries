execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:feather"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"feather_falling"}] run function tinkery_data:attribute/feather_falling/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:feather"}] run function tinkery_data:attribute/feather_falling/add