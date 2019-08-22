#Initial add for the addon
#Add enchantments, attributes and NBT here
function tinkery:rd
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"speed_effect",level:1,matBuild:0,next:32}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Speed Bonus","color":"white"}'