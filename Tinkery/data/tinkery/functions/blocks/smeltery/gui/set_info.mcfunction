execute unless data block ~ ~ ~ Items[{Slot:22b}] run function tinkery:blocks/smeltery/outputs/debug
function tinkery:rd
data modify block ~ ~ ~ Items append value {id:"minecraft:barrier",Slot:22b,Count:1b,tag:{display:{Name:"{\"text\":\"Smeltery Blocks incorrect\",\"italic\":false}",Lore:[]},MenuItem:1,CustomModelData:111}}
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.CustomModelData set value 105
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Name set value "{\"text\":\"Smeltery Info\",\"italic\":false}"
execute if score @s t_s_debug matches 1.. run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append value "{\"text\":\"Click to disable unit info\",\"italic\":false,\"color\":\"gray\"}"
#execute if score @s t_s_debug matches 0 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append value "{\"text\":\"Click to enable unit info\",\"italic\":false}"

scoreboard players operation #tinkery t_dum9 = @s t_s_level
execute if score @s t_smeltery_on matches 1 run data modify block 0 1 0 Text1 set value '[{"text":"Smeltery Level: ","color":"gray","italic":false},{"score":{"name":"#tinkery","objective":"t_dum9"},"color":"white","italic":false}]'
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append from block 0 1 0 Text1

scoreboard players operation #tinkery t_dum9 = @s t_s_fuel
execute if score @s t_smeltery_on matches 1 run data modify block 0 1 0 Text1 set value '[{"text":"Fuel remaining: ","color":"gold","italic":false},{"score":{"name":"#tinkery","objective":"t_dum9"},"color":"white","italic":false}]'
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append from block 0 1 0 Text1

scoreboard players set #tinkery const 10
scoreboard players operation #tinkery t_dum9 = @s t_s_heat
scoreboard players operation #tinkery t_dum9 /= #tinkery const
execute if score @s t_smeltery_on matches 1 run data modify block 0 1 0 Text1 set value '[{"text":"Heat: ","color":"dark_red","italic":false},{"score":{"name":"#tinkery","objective":"t_dum9"},"color":"white","italic":false},{"text":"%","color":"dark_red","italic":false}]'
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append from block 0 1 0 Text1

scoreboard players set #tinkery const 180
scoreboard players operation @s t_s_capacity = @s t_s_level
scoreboard players operation @s t_s_capacity *= #tinkery const

scoreboard players operation #tinkery t_dum0 = @s t_s_capacity
scoreboard players operation #tinkery t_dum1 = @s t_s_current
scoreboard players operation #tinkery t_dum2 = @s t_s_capacity
scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1
scoreboard players set #tinkery const 2
scoreboard players operation #tinkery t_dum2 /= #tinkery const


execute if score #tinkery t_dum0 > #tinkery t_dum2 run data modify block 0 1 0 Text1 set value '[{"text":"Capacity remaining: ","color":"green","italic":false},{"score":{"name":"#tinkery","objective":"t_dum0"},"color":"white","italic":false}]'
execute if score #tinkery t_dum0 matches 21.. if score #tinkery t_dum0 <= #tinkery t_dum2 run data modify block 0 1 0 Text1 set value '[{"text":"Capacity remaining: ","color":"gold","italic":false},{"score":{"name":"#tinkery","objective":"t_dum0"},"color":"white","italic":false}]'
execute if score #tinkery t_dum0 matches ..20 run data modify block 0 1 0 Text1 set value '[{"text":"Capacity remaining: ","color":"red","italic":false},{"score":{"name":"#tinkery","objective":"t_dum0"},"color":"white","italic":false}]'
execute if score #tinkery t_dum0 matches ..-1 run data modify block 0 1 0 Text1 set value '[{"text":"Capacity remaining: ","color":"dark_red","italic":false},{"score":{"name":"#tinkery","objective":"t_dum0"},"color":"white","italic":false}]'
execute if score @s t_smeltery_on matches 1 run data modify block ~ ~ ~ Items[{Slot:22b}].tag.display.Lore append from block 0 1 0 Text1