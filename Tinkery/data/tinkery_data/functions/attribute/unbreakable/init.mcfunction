execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"unbreakable",level:1,matBuild:0,next:-1}
execute at @s run data remove block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}]
execute at @s run data remove block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}]
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Unbreakable:1b}

scoreboard players set @s t_output 1