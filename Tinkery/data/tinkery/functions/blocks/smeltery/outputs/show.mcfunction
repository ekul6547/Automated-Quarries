data remove block ~ ~ ~ Items[{Slot:25b}]
execute if data entity @s ArmorItems[0].tag.Smeltery.Outputs[{Active:1b}] run data modify block ~ ~ ~ Items append from entity @s ArmorItems[0].tag.Smeltery.Outputs[{Active:1b}].Item
execute unless data block ~ ~ ~ Items[{Slot:25b}] run data modify block ~ ~ ~ Items append from entity @s ArmorItems[0].tag.Smeltery.Outputs[0].Item
data modify block ~ ~ ~ Items[{Slot:25b}].tag.display.Lore append value '{"text":"Click to refresh list","italic":false,"color":"dark_gray"}'
data modify entity @s ArmorItems[0].tag.Smeltery.TempString set from block ~ ~ ~ Items[{Slot:25b}].tag.TinkeryMat.id
data remove entity @s ArmorItems[0].tag.Smeltery.Outputs[{Active:1b}].Active