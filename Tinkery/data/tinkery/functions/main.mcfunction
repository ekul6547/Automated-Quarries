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

execute as @a if score @s TinkeryBook matches 1 run function tinkery:book/summonmain
execute as @a if score @s TinkeryBook matches 2 run function tinkery:book/summonattr
execute as @a if score @s TinkeryBook matches 3 run function tinkery:book/summontemplate
scoreboard players enable @a TinkeryBook

scoreboard players set #tinkery const 20
scoreboard players add #tinkery L_Age 1
scoreboard players operation #tinkery L_Age %= #lapis const

clear @a minecraft:barrier{MenuItem:1}