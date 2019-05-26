execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:packed_ice"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"fire_protection"}] run function tinkery_data:attribute/fire_protection/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:packed_ice"}] run function tinkery_data:attribute/fire_protection/add