execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:emerald"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"toughness"}] run function tinkery_data:attribute/toughness/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:emerald"}] run function tinkery_data:attribute/toughness/add