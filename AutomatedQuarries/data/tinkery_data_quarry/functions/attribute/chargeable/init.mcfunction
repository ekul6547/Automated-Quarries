function tinkery:rd
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"chargeable",level:0,matBuild:0,next:8}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore insert 1 value '{"text":"Chargeable","color":"dark_green"}'
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Power set value {current:1000,max:1000,damage:42}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Power.max set from block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Power.current set from block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Power.damage set from block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.itemdur


scoreboard players set @s t_output 1