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

execute as @a if score @s LapisAdmin matches 1.. run function lockbox:adminmenu/menu
function lockbox:blocks/blockmain