execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:3b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:4b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:5b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:12b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:13b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:14b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:14b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:21b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:22b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get #clear t_dum0

execute store result score #clear t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:23b}].Count
scoreboard players remove #clear t_dum0 1
execute store result block ~ ~0.6 ~ Items[{Slot:23b}].Count byte 1 run scoreboard players get #clear t_dum0

data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery merge value {startingdur:0,startingdam:0,startingspeed:0,startinghealth:0,startingarmor:0,startingtough:0,startingknock:0,startingmovespeed:0,startingluck:0}
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingdam set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingspeed set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.attackSpeed"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingdur set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startinghealth set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingarmor set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.armor"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingtough set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.armorToughness"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingknock set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.knockbackResistance"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingmovespeed set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.movementSpeed"}].Amount
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingluck set from block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.luck"}].Amount
#execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
#execute at @s store result block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.startingdur run scoreboard players get #tinkery t_dum0