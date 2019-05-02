execute at @s run function quarry:blocks/workbench/summon
execute as @s at @s run data modify entity @e[tag=New_Item,limit=1,sort=nearest] Item.Count set from entity @s SelectedItem.Count
replaceitem entity @s weapon.mainhand air