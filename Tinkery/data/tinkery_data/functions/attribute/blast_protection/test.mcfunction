execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:tnt"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"blast_protection"}] run function tinkery_data:attribute/blast_protection/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:tnt"}] run function tinkery_data:attribute/blast_protection/add