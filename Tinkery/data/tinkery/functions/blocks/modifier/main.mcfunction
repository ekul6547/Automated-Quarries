#Do Modifier stuff
execute as @s at @s if score @s L_Age matches 1 if block ~ ~0.6 ~ minecraft:barrel[open=true] run function tinkery:blocks/modifier/set_gui

execute as @s at @s if block ~ ~0.6 ~ minecraft:barrel[open=true] run function tinkery:blocks/modifier/test

execute as @s at @s run function tinkery:blocks/disablehopperbelow

scoreboard players set #tinkery const 40
scoreboard players add @s L_Age 1
scoreboard players operation @s L_Age %= #tinkery const