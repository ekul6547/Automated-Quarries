scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:emerald_block"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:nether_star"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:2b,id:"minecraft:emerald_block"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:nether_star"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:spider_eye",tag:{CustomModelData:102,Power:{current:1000}}}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:5b,id:"minecraft:nether_star"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:emerald_block"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:nether_star"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:emerald_block"}]} run scoreboard players set #system WorkbenchCount 0

#craft
execute at @s if score #system WorkbenchCount matches 1 run function quarry:wbrecipes/dampener_craft