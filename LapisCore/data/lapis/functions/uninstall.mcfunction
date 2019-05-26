kill @e[tag=kill_uni]
kill @e[tag=Block]

#Important ones
scoreboard objectives remove pack_loaded
scoreboard objectives remove L_Age

scoreboard objectives remove step_sneaking

#General X,Y,Z for current position
scoreboard objectives remove X
scoreboard objectives remove Y
scoreboard objectives remove Z
scoreboard objectives remove actX
scoreboard objectives remove actY
scoreboard objectives remove actZ
scoreboard objectives remove preX
scoreboard objectives remove preY
scoreboard objectives remove preZ
scoreboard objectives remove chunkX
scoreboard objectives remove chunkY
scoreboard objectives remove chunkZ
scoreboard objectives remove lookX
scoreboard objectives remove lookY
scoreboard objectives remove lookZ
scoreboard objectives remove prelookX
scoreboard objectives remove prelookY
scoreboard objectives remove prelookZ
scoreboard objectives remove lookSet
scoreboard objectives remove lookCount
scoreboard objectives remove direction

#Changeable constant used for math
scoreboard objectives remove const

scoreboard objectives remove LapisBook

#Admin Menu
scoreboard objectives remove LapisAdminMenu
scoreboard objectives remove LapisAdmin
scoreboard objectives remove LapisAdmin2

#Workbench
#WorkbenchItems - 1 = no items, don't bother checking for crafting   -   0 = has items, check for crafting
scoreboard objectives remove WorkbenchItems
scoreboard objectives remove WorkbenchCount


tellraw @a ["",{"text":"Uninstalled "},{"text":"[LapisCore] v0.3","color":"dark_blue"},{"text":" By RE:Lapis","color":"gray"}]