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

function bores:bore/tick

execute as @a if score @s BoresBook matches 1.. run function bores:book/summonmain
scoreboard players enable @a BoresBook