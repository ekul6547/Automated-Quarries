#This will called for every player that has a TinkeryItem in their off hand

#The #tinkery L_Age score cycles up to 100, then resets to 0
#This means it resets every 5 seconds

execute as @s if data entity @s Inventory[{Slot:-106b}].tag.Tinkery{Type:"hammer"} run function tinkery_hammers:tick/hammer/offhand