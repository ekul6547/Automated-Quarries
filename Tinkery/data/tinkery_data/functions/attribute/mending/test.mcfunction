execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:nautilus_shell"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"mending"}] run function tinkery_data:attribute/mending/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:nautilus_shell"}] run function tinkery_data:attribute/mending/add