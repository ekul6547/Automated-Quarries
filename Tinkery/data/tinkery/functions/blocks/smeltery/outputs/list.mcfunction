data modify entity @s ArmorItems[0].tag.Smeltery.Outputs set value []
setblock 0 0 0 minecraft:bedrock
setblock 0 1 0 minecraft:oak_sign replace
scoreboard players set @s t_s_current 0
function #tinkery_data:smeltery/list
scoreboard players add @s t_s_current 179
scoreboard players set #tinkery const 180
scoreboard players operation @s t_s_current /= #tinkery const
data remove entity @s ArmorItems[0].tag.Smeltery.Items[{Amount:0}]