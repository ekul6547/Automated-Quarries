#This will called for every player that has a TinkeryItem in their off hand

#The #tinkery L_Age score cycles up to 100, then resets to 0
#This means it resets every 5 seconds

execute as @s if data entity @s Inventory[{Slot:-106b}].tag.Tinkery.Addons[{id:"speed_effect"}] if score #tinkery L_Age matches 1 run function example_addon:tick/speed_effect/offhand