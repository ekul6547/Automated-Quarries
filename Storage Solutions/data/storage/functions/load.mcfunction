scoreboard objectives add s_open dummy
scoreboard objectives add s_pre dummy

scoreboard objectives add s_id dummy

scoreboard objectives add StorageBook trigger

#Terminal Menu
#0 - main menu
#1 - item display
scoreboard objectives add s_menu dummy
scoreboard objectives add s_control dummy

#How many drives
scoreboard objectives add s_drive dummy

#What server is selected for the menu - terminal
#Or the server's id to the system - server
scoreboard objectives add s_server dummy
scoreboard objectives add s_count dummy
scoreboard objectives add s_lock dummy
scoreboard objectives add s_can_save dummy

scoreboard objectives add s_empty dummy
scoreboard objectives add s_shulker dummy
scoreboard objectives add s_shulker_pre dummy

scoreboard objectives add SystemID trigger
scoreboard objectives add s_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add s_time minecraft.custom:minecraft.time_since_death

#Wireless
scoreboard objectives add s_w_pre dummy
scoreboard objectives add s_w_hand dummy
scoreboard objectives add s_w_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add s_w_inst dummy

scoreboard players set #storage pack_loaded 1
execute unless score #storage s_id matches 1.. run scoreboard players set #storage s_id 1


tellraw @a ["",{"text":"Loaded "},{"text":"[Storage Solutions] v0.4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger StorageBook"},"hoverEvent":{"action":"show_text","value":"Click here to get the tutorial book"}},{"text":" By RE:Lapis","color":"gray"}]