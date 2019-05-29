#This will called for every player that has a TinkeryItem in their main hand

execute as @s if data entity @s SelectedItem.tag.Tinkery.Addons[{id:"mending"}] if score #tinkery L_Age matches 1 run function tinkery_data:tick/mending/main
execute as @s if data entity @s SelectedItem.tag.Tinkery.Addons[{id:"feeding"}] run function tinkery_data:tick/feeding/main
execute as @s if data entity @s SelectedItem.tag.Tinkery.Addons[{id:"night_vision"}] run function tinkery_data:tick/night_vision/main
execute as @s if data entity @s SelectedItem.tag.Tinkery.Addons[{id:"jump_boost"}] run function tinkery_data:tick/jump_boost/main