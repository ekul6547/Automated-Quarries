execute if score #system q_Loaded matches 1.. unless entity @e[tag=q_PDraw] run summon minecraft:area_effect_cloud 0 0 0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PDraw","q_kill_uni"]}
execute if score #system q_Loaded matches 1.. unless entity @e[tag=q_PEnd] run summon minecraft:area_effect_cloud 0 0 0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PEnd","q_kill_uni"]}
execute if score #system q_Loaded matches 1.. unless entity @e[tag=q_master_lock] run summon minecraft:item_frame 0 -20 0 {CustomName:"\"This iis master lock. Name has to be long\"",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Invulnerable:1,ItemDropChance:0,Item:{id:"minecraft:paper",Count:1b,tag:{UUIDMost:0L,UUIDLeast:0L}},Tags:["q_master_lock","q_kill_uni"]}

execute if score #system q_Loaded matches 1.. as @a if score @s QuarryBook matches 1.. run function quarry:book/summon
execute if score #system q_Loaded matches 1.. run scoreboard players enable @a QuarryBook
execute if score #system q_Loaded matches 1.. run function quarry:blocks/blockmain
execute if score #system q_Loaded matches 1.. run function quarry:items/itemmain