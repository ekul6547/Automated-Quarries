execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:scute"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"armor"}] run function tinkery_data:attribute/armor/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:scute"}] run function tinkery_data:attribute/armor/add