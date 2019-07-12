execute if score @s t_smeltery_on matches 1.. if score @s t_s_current matches 1.. unless entity @e[tag=t_smelt_fluid,distance=..3] run function tinkery:blocks/smeltery/fluid/summon
execute if score @s t_smeltery_on matches 1.. if score @s t_s_current matches 1.. if entity @e[tag=t_smelt_fluid,distance=..3] run function tinkery:blocks/smeltery/fluid/setfluid
execute unless score @s t_smeltery_on matches 1.. as @e[tag=t_smelt_fluid,distance=..3] run kill @s
execute unless score @s t_s_current matches 1.. as @e[tag=t_smelt_fluid,distance=..3] run kill @s