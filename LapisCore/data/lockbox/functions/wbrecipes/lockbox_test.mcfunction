#Example crafting
#Test each slot, if 1 is incorrect, ignore this recipe
#For empty slot use:
#if data block ~ ~0.5 ~ {Items[{Slot:0b}]} run
#You can also test for {Count}, but keep in mind this tests for exact count, not minimum count (although you can do that with execute store)
scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:2b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:chest"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:5b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:iron_ingot"}]} run scoreboard players set #system WorkbenchCount 0

#craft
execute at @s if score #system WorkbenchCount matches 1 run function lockbox:wbrecipes/lockbox_craft