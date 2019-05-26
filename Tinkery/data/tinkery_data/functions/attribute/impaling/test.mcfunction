execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:dakr_prismarine"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"impaling"}] run function tinkery_data:attribute/impaling/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:dark_prismarine"}] run function tinkery_data:attribute/impaling/add