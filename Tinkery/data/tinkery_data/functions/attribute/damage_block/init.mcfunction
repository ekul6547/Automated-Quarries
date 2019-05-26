execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"damage",level:0,matBuild:0,next:64}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Sharpened","color":"white"}'
execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData
scoreboard players add #clear t_dum0 4
execute store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players get #clear t_dum0