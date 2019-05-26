#Do Modifier stuff
execute as @s at @s if block ~ ~0.6 ~ minecraft:barrel[open=true] run function tinkery:blocks/constructor/switchgui
#execute as @s at @s if block ~ ~0.6 ~ minecraft:barrel[open=false] run scoreboard players set @s t_menu 0

execute as @s at @s run function tinkery:blocks/disablehopperbelow
execute as @s at @s run function tinkery:blocks/disablehopperabove

scoreboard players set #tinkery const 40
scoreboard players add @s L_Age 1
scoreboard players operation @s L_Age %= #tinkery const