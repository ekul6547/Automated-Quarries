
execute if score @s LapisBook matches 1 run function lapis:book/summonmain
scoreboard players enable @s LapisBook

function lapis:util/savechunk

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

execute as @a if score @s LapisAdminMenu matches 1.. run function lapis:adminmenu/mainmenu
scoreboard players reset @s LapisAdminMenu
scoreboard players enable @s[gamemode=creative] LapisAdminMenu
scoreboard players enable @s[scores={LapisOverride=1}] LapisAdminMenu

execute unless score @s LoggedOut matches 0 run function #lapis:player_join
scoreboard players set @s LoggedOut 0

#If LapisStep is >= 1 this tick, try step-incline. Needs to be set to >= 1 every tick
execute if score @s LapisStep matches 1.. run function lapis:util/step/callstep
execute if score @s LapisBlockPlaced matches 2.. run scoreboard players set @s LapisBlockPlaced 0