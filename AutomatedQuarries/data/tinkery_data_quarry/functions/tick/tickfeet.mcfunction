#This will called for every player that has a TinkeryItem in their main hand

execute as @s if data entity @s Inventory[{Slot:100b}].tag.Tinkery.Addons[{id:"chargeable"}] run function tinkery_data_quarry:tick/chargeable/feet