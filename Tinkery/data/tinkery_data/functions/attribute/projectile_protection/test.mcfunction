execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cobweb"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"projectile_protection"}] run function tinkery_data:attribute/projectile_protection/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:cobweb"}] run function tinkery_data:attribute/projectile_protection/add