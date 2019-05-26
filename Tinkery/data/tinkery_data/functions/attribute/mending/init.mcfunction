function tinkery:rd
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"mending",level:1,matBuild:0,next:8}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Mending","color":"dark_green"}'
execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData
scoreboard players add #clear t_dum0 2
execute store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players get #clear t_dum0