execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:piston"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"knockback"}] run function tinkery_data:attribute/knockback/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:piston"}] run function tinkery_data:attribute/knockback/add