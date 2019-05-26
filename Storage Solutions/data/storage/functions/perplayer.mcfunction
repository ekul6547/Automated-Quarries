execute as @s if score @s StorageBook matches 1 run function storage:book/summonmain
scoreboard players enable @s StorageBook

execute as @s if score @s SystemID matches 1.. run function storage:system/ids/change_id
execute as @s if score @s SystemID matches -1000 run function storage:system/ids/set_personal
execute as @s at @s positioned ~ ~-1.5 ~ unless score @s SystemID matches 0 run scoreboard players reset @s SystemID

execute as @s at @s positioned ~ ~-1.5 ~ if entity @e[tag=s_suggestID,distance=..1,sort=nearest,limit=1] if score @s s_sneak matches 1.. if score @s s_time matches 1 run function storage:system/ids/suggest_change
execute as @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:150}} if score @s s_sneak matches 1.. if score @s s_time matches 1 run function storage:system/ids/say_personal
execute as @s at @s positioned ~ ~-1.5 ~ if entity @e[tag=s_Controller,distance=..1,sort=nearest,limit=1] if score @s s_sneak matches 1.. if score @s s_time matches 1 run function storage:system/ids/suggest_personal

scoreboard players set @s s_sneak 0
clear @s minecraft:barrier{MenuItem:1}
clear @s minecraft:barrier{MenuItem:2}
clear @s minecraft:barrier{MenuItem:3}