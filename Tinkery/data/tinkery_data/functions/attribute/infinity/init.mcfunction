execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"infinity",level:1,matBuild:0,next:-1}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"UNLIMITED POWER!!!","color":"aqua"}'
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Enchantments:[]}
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:infinity"}] run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments append value {id:"minecraft:infinity",lvl:1s}

scoreboard players set @s t_output 1