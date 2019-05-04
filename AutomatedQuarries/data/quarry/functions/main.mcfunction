execute unless entity @e[tag=q_PDraw] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PDraw"]}
execute unless entity @e[tag=q_PEnd] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PEnd"]}
execute unless entity @e[tag=q_master_lock] run summon minecraft:squid 0 -20 0 {CustomName:"\"Name me to master lock string\"",CustomNameVisible:1,NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1,Invulnerable:1,DeathLootTable:empty,Tags:["q_master_lock"]}

execute as @a if score @s QuarryBook matches 1.. run function quarry:book/summon
scoreboard players enable @a QuarryBook
function quarry:blocks/blockmain
function quarry:items/itemmain