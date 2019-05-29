#Important ones
scoreboard objectives add pack_loaded dummy
scoreboard objectives add L_Age dummy

execute unless score #lapis pack_loaded matches 1 run function lapis:loadinit
scoreboard objectives add step_sneaking minecraft.custom:minecraft.sneak_time

#General X,Y,Z for current position
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add actX dummy
scoreboard objectives add actY dummy
scoreboard objectives add actZ dummy
scoreboard objectives add preX dummy
scoreboard objectives add preY dummy
scoreboard objectives add preZ dummy
scoreboard objectives add chunkX dummy
scoreboard objectives add chunkY dummy
scoreboard objectives add chunkZ dummy
scoreboard objectives add lookX dummy
scoreboard objectives add lookY dummy
scoreboard objectives add lookZ dummy
scoreboard objectives add prelookX dummy
scoreboard objectives add prelookY dummy
scoreboard objectives add prelookZ dummy
scoreboard objectives add lookSet dummy
scoreboard objectives add lookCount dummy
scoreboard objectives add direction dummy

#Changeable constant used for math
scoreboard objectives add const dummy

scoreboard objectives add LapisBook trigger

#Admin Menu
scoreboard objectives add LapisAdminMenu trigger
scoreboard objectives add LapisAdmin dummy
scoreboard objectives add LapisAdmin2 dummy
scoreboard objectives add LapisOverride dummy

#Workbench
#WorkbenchItems - 1 = no items, don't bother checking for crafting   -   0 = has items, check for crafting
scoreboard objectives add WorkbenchItems dummy
scoreboard objectives add WorkbenchCount dummy

#Constants
scoreboard players set #lapis pack_loaded 1
scoreboard players set * LapisAdmin 0
scoreboard players set * LapisAdmin2 0


tellraw @a ["",{"text":"Loaded "},{"text":"[LapisCore] v0.4","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger LapisBook"},"hoverEvent":{"action":"show_text","value":"Click here to get the tutorial book"}},{"text":" By RE:Lapis","color":"gray"}]