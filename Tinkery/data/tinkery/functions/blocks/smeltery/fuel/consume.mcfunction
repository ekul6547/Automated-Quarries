execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:18b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get #clear t_dum0