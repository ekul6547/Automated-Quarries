#Do Smeltery stuff
execute as @s run scoreboard players operation @s t_pre = @s t_menu
execute at @s if block ~ ~0.5 ~ minecraft:barrel[open=true] run scoreboard players set @s t_menu 1
execute at @s if block ~ ~0.5 ~ minecraft:barrel[open=false] run scoreboard players set @s t_menu 0
execute as @s at @s if score @s L_Age matches 2 run function tinkery:blocks/smeltery/check/check
execute as @s at @s unless score @s t_menu = @s t_pre run function tinkery:blocks/smeltery/gui/set_gui

execute as @s at @s run function tinkery:blocks/disablehopperbelow
execute as @s at @s if score @s t_smeltery_on matches 1 run function tinkery:blocks/smeltery/mainon

scoreboard players set #tinkery const 20
scoreboard players add @s L_Age 1
scoreboard players operation @s L_Age %= #tinkery const