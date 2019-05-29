execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:rabbit_foot"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"jump_boost"}] run function tinkery_data:attribute/jump_boost/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:rabbit_foot"}] run function tinkery_data:attribute/jump_boost/add