execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:obsidian"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}] run function tinkery_data:attribute/durability/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:obsidian"}] run function tinkery_data:attribute/durability/add