function tinkery:rd

execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"obsidian"}}].Amount
execute if score #tinkery t_dum0 matches ..0 run data remove entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"obsidian"}}]
scoreboard players operation @s t_s_current += #tinkery t_dum0

#Place at front of list or just add to list?
execute if score #tinkery t_dum0 matches 1.. if data entity @s ArmorItems[0].tag.Smeltery{TempString:"obsidian"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs prepend value {id:"obsidian",Item:{id:"minecraft:obsidian",Count:1b,Slot:25b,tag:{display:{Name:'{"text":"Obsidian","color":"dark_purple","italic":false}'},MenuItem:1}}}
execute if score #tinkery t_dum0 matches 1.. unless data entity @s ArmorItems[0].tag.Smeltery{TempString:"obsidian"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs append value {id:"obsidian",Item:{id:"minecraft:obsidian",Count:1b,Slot:25b,tag:{display:{Name:'{"text":"Obsidian","color":"dark_purple","italic":false}'},MenuItem:1}}}

execute if score @s t_s_debug matches 1.. run function tinkery_data:smeltery/materials/_sign_text/units
execute if score @s t_s_debug matches 1.. run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"obsidian"}].Item.tag.display.Lore append from block 0 1 0 Text1
scoreboard players set #tinkery const 720
execute if score #tinkery t_dum0 >= #tinkery const run function tinkery_data:smeltery/materials/_sign_text/blocks
execute if score #tinkery t_dum0 >= #tinkery const run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"obsidian"}].Item.tag.display.Lore append from block 0 1 0 Text1

execute if score #tinkery t_dum0 matches 1.. run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"obsidian"}].Item.tag.TinkeryMat set from entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"obsidian"}}].TinkeryMat 
execute if data entity @s ArmorItems[0].tag.Smeltery{TempString:"obsidian"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"obsidian"}].Active set value 1b