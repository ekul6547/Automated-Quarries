scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:emerald"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:end_crystal"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:2b}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:emerald"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:diamond_sword"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:5b}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:orange_concrete"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:spider_eye",tag:{CustomModelData:102,Power:{current:1000}}}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:orange_concrete"}]} run scoreboard players set #system WorkbenchCount 0

#craft
execute at @s if score #system WorkbenchCount matches 1 run function quarry:wbrecipes/katana_craft