execute at @s run function lapis:blocks/workbench/summon
execute as @s at @s run data modify entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:squid_spawn_egg"}}] Item.Count set from entity @s SelectedItem.Count
replaceitem entity @s weapon.mainhand air