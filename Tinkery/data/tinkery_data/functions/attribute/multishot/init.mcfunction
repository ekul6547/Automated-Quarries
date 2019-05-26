execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"multi_shot",level:1,matBuild:0,next:-1}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Multi-Shot","color":"aqua"}'
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Enchantments:[]}
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:multi_shot"}] run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments append value {id:"minecraft:multi_shot",lvl:1s}

scoreboard players set @s t_output 1