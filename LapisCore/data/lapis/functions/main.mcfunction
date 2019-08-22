gamerule sendCommandFeedback true

execute unless entity @e[tag=master_lock] run summon minecraft:item_frame 0 -20 0 {CustomName:"\"This is master lock. Name has to be long\"",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Invulnerable:1,ItemDropChance:0,Item:{id:"minecraft:paper",Count:1b,tag:{UUIDMost:0L,UUIDLeast:0L}},Tags:["master_lock","kill_uni"]}
scoreboard players set #testent const 0
execute as @e[tag=q_PDraw] run scoreboard players add #testent const 1
execute if score #testent const matches 2.. run kill @e[tag=q_PDraw]
execute unless entity @e[tag=q_PDraw] run summon minecraft:area_effect_cloud 0 0 0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PDraw","kill_uni"]}

scoreboard players set #lapis const 100
scoreboard players add #lapis L_Age 1
scoreboard players operation #lapis L_Age %= #lapis const

execute as @a run function lapis:perplayer

execute as @e[tag=Workbench] if score @s WorkbenchItems matches 0 run function #lapis:lapis_craft

execute store success score #forceload pack_loaded run forceload query 0 0
execute if score #lapis L_Age matches 1 if score #forceload pack_loaded matches 0 as @a run forceload add 0 0
execute store success score #forceload pack_loaded run forceload query 0 0
execute if score #lapis L_Age matches 1 if score #forceload pack_loaded matches 0 as @a run tellraw @s [{"text":"Please run command:"},{"text":"\n/forceload add 0 0","color":"blue","clickEvent":{"action":"run_command","value":"/forceload add 0 0"}}]

function lapis:blocks/blockmain