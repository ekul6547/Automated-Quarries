execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:0b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:1b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:2b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:3b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:4b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:5b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:6b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:7b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute store result score #clear WorkbenchCount run data get block ~ ~0.5 ~ Items[{Slot:8b}].Count
scoreboard players remove #clear WorkbenchCount 1
execute store result block ~ ~0.5 ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get #clear WorkbenchCount

execute at @s positioned ~ ~2 ~ run function tinkery_data:smeltery/materials/steel/block/summon