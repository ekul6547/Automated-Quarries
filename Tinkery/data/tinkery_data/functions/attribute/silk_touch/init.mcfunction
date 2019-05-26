execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"silk_touch",level:1,matBuild:0,next:-1}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Silky","color":"green"}'
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Enchantments:[]}
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments append value {id:"minecraft:silk_touch",lvl:1s}
execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData
scoreboard players add #clear t_dum0 4
execute store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players get #clear t_dum0

scoreboard players set @s t_output 1