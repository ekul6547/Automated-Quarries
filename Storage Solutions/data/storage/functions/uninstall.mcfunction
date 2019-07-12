scoreboard objectives remove s_open
scoreboard objectives remove s_pre

scoreboard objectives remove s_id
scoreboard objectives remove StorageBook

#Terminal Menu
#0 - main menu
#1 - item display
scoreboard objectives remove s_menu
scoreboard objectives remove s_control

#How many drives
scoreboard objectives remove s_drive

#What server is selected for the menu - terminal
#Or the server's id to the system - server
scoreboard objectives remove s_server
scoreboard objectives remove s_count
scoreboard objectives remove s_lock
scoreboard objectives remove s_can_save

scoreboard objectives remove s_empty
scoreboard objectives remove s_shulker
scoreboard objectives remove s_shulker_pre

scoreboard objectives remove SystemID
scoreboard objectives remove s_sneak
scoreboard objectives remove s_time

#Wireless
scoreboard objectives remove s_w_pre
scoreboard objectives remove s_w_hand
scoreboard objectives remove s_w_use
scoreboard objectives remove s_w_inst


scoreboard players set #storage pack_loaded -1
tellraw @a ["",{"text":"Uninstalled "},{"text":"[Storage Solutions] v0.5","color":"gold"},{"text":" By RE:Lapis","color":"gray"}]