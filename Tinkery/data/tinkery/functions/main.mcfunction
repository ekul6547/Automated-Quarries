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
function tinkery:blocks/blockmain
function tinkery:items/itemmain

kill @e[type=minecraft:item,nbt={Item:{tag:{DelEntity:1b}}}]
execute as @a run function tinkery:perplayer

scoreboard players set #tinkery const 100
scoreboard players add #tinkery L_Age 1
scoreboard players operation #tinkery L_Age %= #tinkery const

clear @a #lapis:all_items{MenuItem:1}