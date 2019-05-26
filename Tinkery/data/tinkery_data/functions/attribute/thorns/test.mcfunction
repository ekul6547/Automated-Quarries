execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cactus"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"thorns"}] run function tinkery_data:attribute/thorns/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cactus"}] run function tinkery_data:attribute/thorns/add