function tinkery:rd

execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].matBuild
execute at @s store result score #tinkery t_dum1 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].next
execute at @s store result score #tinkery t_dum2 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].level

scoreboard players add #tinkery t_dum0 1
#Per level
scoreboard players set #tinkery t_dum3 8
#Increase level
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players add #tinkery t_dum2 1
#Per * new level
scoreboard players operation #tinkery t_dum3 *= #tinkery t_dum2
#Subtract new level cost
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].matBuild int 1 run scoreboard players get #tinkery t_dum0
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].level int 1 run scoreboard players get #tinkery t_dum2
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"durability"}].next int 1 run scoreboard players get #tinkery t_dum3

#Durability per level
execute at @s store result score #tinkery t_dum5 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.startingdur
#Increase by 1/3 of the starting amount per level
scoreboard players operation #tinkery t_dum4 = #tinkery t_dum5
scoreboard players set #tinkery t_dum6 3
scoreboard players operation #tinkery t_dum4 /= #tinkery t_dum6
scoreboard players operation #tinkery t_dum2 *= #tinkery t_dum4
#Add onto original durability
scoreboard players operation #tinkery t_dum2 += #tinkery t_dum5

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount int 1 run scoreboard players get #tinkery t_dum2

scoreboard players set @s t_output 1