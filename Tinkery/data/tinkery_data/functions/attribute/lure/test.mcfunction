execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:glowstone_dust"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"lure"}] run function tinkery_data:attribute/lure/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:glowstone_dust"}] run function tinkery_data:attribute/lure/add