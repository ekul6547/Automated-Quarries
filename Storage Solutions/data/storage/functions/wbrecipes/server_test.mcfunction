scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:redstone_block"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:2b,id:"minecraft:gold_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:ender_eye"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:trapped_chest"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:5b,id:"minecraft:ender_eye"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:gold_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:redstone_block"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0

#craft
execute at @s if score #system WorkbenchCount matches 1 run function storage:wbrecipes/server_craft