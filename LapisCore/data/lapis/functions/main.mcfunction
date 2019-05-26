gamerule sendCommandFeedback true

execute unless entity @e[tag=master_lock] run summon minecraft:item_frame 0 -20 0 {CustomName:"\"This is master lock. Name has to be long\"",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Invulnerable:1,ItemDropChance:0,Item:{id:"minecraft:paper",Count:1b,tag:{UUIDMost:0L,UUIDLeast:0L}},Tags:["master_lock","kill_uni"]}
scoreboard players set #testent const 0
execute as @e[tag=q_PDraw] run scoreboard players add #testent const 1
execute if score #testent const matches 2.. run kill @e[tag=q_PDraw]
execute unless entity @e[tag=q_PDraw] run summon minecraft:area_effect_cloud 0 0 0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PDraw","kill_uni"]}

execute as @a if score @s LapisBook matches 1 run function lapis:book/summonmain
scoreboard players enable @a LapisBook

execute as @e[tag=Workbench] if score @s WorkbenchItems matches 0 run function #lapis:lapis_craft

execute as @a run function lapis:util/savechunk
execute store success score #forceload pack_loaded run forceload query 0 0
execute as @a if score #lapis L_Age matches 1 if score #forceload pack_loaded matches 0 run tellraw @s [{"text":"Please run command:"},{"text":"\n/forceload add 0 0","color":"blue","clickEvent":{"action":"run_command","value":"/forceload add 0 0"}}]

scoreboard players set #lapis const 100
scoreboard players add #lapis L_Age 1
scoreboard players operation #lapis L_Age %= #lapis const

#Reset the menu - for this pack only
execute as @a if score @s LapisAdmin2 matches 1 run scoreboard players set @a LapisAdmin 0
execute as @a if score @s LapisAdmin2 matches 1 run scoreboard players set @a LapisAdmin2 0
execute as @a if score @s LapisAdmin matches 1..9000 run scoreboard players set @a LapisAdmin2 1

#Show the menu when triggered
execute as @a if score @s LapisAdminMenu matches 1.. run scoreboard players set @s LapisAdmin 1
scoreboard players reset @a LapisAdminMenu
scoreboard players enable @a[gamemode=creative] LapisAdminMenu
scoreboard players enable @a[scores={LapisOverride=1}] LapisAdminMenu

###ABOVE THIS LINE IS FOR LAPIS CORE DATAPACK ONLY###

#LapisAdmin - holds the menu code
#LapisAdminMenu - holds the trigger

#LapisAdmin Codes
#0 - don't display
#1 - Main menu
#2 - Shortcut menu
#3 - Blocks
#4 - Items
#5 - Summon
#-1 - Uninstall Confirm

#The if score here for LapisAdmin2 is so the menu doesn't show twice, it is uneeded in other datapacks

execute as @a if score @s LapisAdmin matches 1.. if score @s LapisAdmin2 matches 0 run function lapis:adminmenu/mainmenu

function lapis:blocks/blockmain