function tinkery:rd

execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"lapis"}}].Amount
execute if score #tinkery t_dum0 matches ..0 run data remove entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"lapis"}}]
scoreboard players operation @s t_s_current += #tinkery t_dum0

#Place at front of list or just add to list?
execute if score #tinkery t_dum0 matches 1.. if data entity @s ArmorItems[0].tag.Smeltery{TempString:"lapis"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs prepend value {id:"lapis",Item:{id:"minecraft:lapis_lazuli",Count:1b,Slot:25b,tag:{display:{Name:'{"text":"Lapis Lazuli","color":"dark_blue","italic":false}'},MenuItem:1}}}
execute if score #tinkery t_dum0 matches 1.. unless data entity @s ArmorItems[0].tag.Smeltery{TempString:"lapis"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs append value {id:"lapis",Item:{id:"minecraft:lapis_lazuli",Count:1b,Slot:25b,tag:{display:{Name:'{"text":"Lapis Lazuli","color":"dark_blue","italic":false}'},MenuItem:1}}}

execute if score @s t_s_debug matches 1.. run function tinkery_data:smeltery/materials/_sign_text/units
execute if score @s t_s_debug matches 1.. run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"lapis"}].Item.tag.display.Lore append from block 0 1 0 Text1
scoreboard players set #tinkery const 180
execute if score #tinkery t_dum0 >= #tinkery const run function tinkery_data:smeltery/materials/_sign_text/gems
execute if score #tinkery t_dum0 >= #tinkery const run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"lapis"}].Item.tag.display.Lore append from block 0 1 0 Text1
scoreboard players set #tinkery const 1620
execute if score #tinkery t_dum0 >= #tinkery const run function tinkery_data:smeltery/materials/_sign_text/blocks
execute if score #tinkery t_dum0 >= #tinkery const run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"lapis"}].Item.tag.display.Lore append from block 0 1 0 Text1

execute if score #tinkery t_dum0 matches 1.. run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"lapis"}].Item.tag.TinkeryMat set from entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"lapis"}}].TinkeryMat 
execute if data entity @s ArmorItems[0].tag.Smeltery{TempString:"lapis"} run data modify entity @s ArmorItems[0].tag.Smeltery.Outputs[{id:"lapis"}].Active set value 1b