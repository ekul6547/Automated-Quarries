#Run as player

execute as @s run function tinkery:damage/calcstats

execute as @s if entity @s[gamemode=!spectator] if data entity @s SelectedItem.tag.Tinkery run function #tinkery_data:tick/hand
execute as @s if entity @s[gamemode=!spectator] if data entity @s Inventory[{Slot:-106b}].tag.Tinkery run function #tinkery_data:tick/off_hand
execute as @s if entity @s[gamemode=!spectator] if data entity @s Inventory[{Slot:100b}].tag.Tinkery run function #tinkery_data:tick/feet
execute as @s if entity @s[gamemode=!spectator] if data entity @s Inventory[{Slot:101b}].tag.Tinkery run function #tinkery_data:tick/legs
execute as @s if entity @s[gamemode=!spectator] if data entity @s Inventory[{Slot:102b}].tag.Tinkery run function #tinkery_data:tick/chest
execute as @s if entity @s[gamemode=!spectator] if data entity @s Inventory[{Slot:103b}].tag.Tinkery run function #tinkery_data:tick/head

execute as @s run function tinkery:damage/resetstats