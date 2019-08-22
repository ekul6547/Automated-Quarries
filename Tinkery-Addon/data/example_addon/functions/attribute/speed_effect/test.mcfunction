#Test if adding onto the tool, but this is the first time
execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:sugar"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}] run function example_addon:attribute/speed_effect/init

#Add more material to the tool
execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:sugar"}] run function example_addon:attribute/speed_effect/add