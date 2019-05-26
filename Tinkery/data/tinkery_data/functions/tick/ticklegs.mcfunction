#This will called for every player that has a TinkeryItem in their main hand

execute as @s if data entity @s Inventory[{Slot:101b}].tag.Tinkery.Addons[{id:"mending"}] if score #tinkery L_Age matches 1 run function tinkery_data:tick/mending/legs
execute as @s at @s if data entity @s Inventory[{Slot:101b}].tag.Tinkery.Addons[{id:"auto_step"}] run function lapis:util/step/callstep