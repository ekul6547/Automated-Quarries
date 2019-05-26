execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:redstone"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"movespeed"}] run function tinkery_data:attribute/movespeed/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:redstone"}] run function tinkery_data:attribute/movespeed/add