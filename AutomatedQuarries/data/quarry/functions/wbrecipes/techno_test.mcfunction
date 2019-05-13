scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:redstone"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:emerald"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:2b,id:"minecraft:redstone"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:black_concrete"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:nether_star"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:5b,id:"minecraft:black_concrete"}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:spider_eye",tag:{CustomModelData:100,Power:{current:1000}}}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:spider_eye",tag:{CustomModelData:100,Power:{current:1000}}}]} run scoreboard players set #system WorkbenchCount 0

execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:diamond_helmet"}]} run function quarry:wbrecipes/techno_craft
execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:diamond_chestplate"}]} run function quarry:wbrecipes/techno_craft
execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:diamond_leggings"}]} run function quarry:wbrecipes/techno_craft
execute at @s if score #system WorkbenchCount matches 1 run execute if data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:diamond_boots"}]} run function quarry:wbrecipes/techno_craft