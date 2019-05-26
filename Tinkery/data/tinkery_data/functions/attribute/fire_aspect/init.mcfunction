execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"fire_aspect",level:0,matBuild:0,next:64}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Lukewarm","color":"gold"}'
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Enchantments:[]}
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:fire_aspect"}] run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:0s}
execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData
scoreboard players add #clear t_dum0 8
execute store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players get #clear t_dum0