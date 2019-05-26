#Run as cart
execute as @s unless entity @s[tag=s_Terminal] if score @s s_w_inst = @a[tag=s_w_tempcart,limit=1] s_w_inst at @a[tag=s_w_tempcart,limit=1] positioned ~ ~1 ~ run tp @s ^ ^0.3 ^1.5
execute as @s if entity @s[tag=s_Terminal] if score @s s_w_inst = @a[tag=s_w_tempcart,limit=1] s_w_inst at @a[tag=s_w_tempcart,limit=1] positioned ~ ~1 ~ run tp @s ^ ^0.3 ^1.499
execute store result entity @s Rotation[0] float 1.0 run data get entity @a[tag=s_w_tempcart,limit=1] Rotation[0] 1.0
execute store result entity @s Rotation[1] float 1.0 run data get entity @a[tag=s_w_tempcart,limit=1] Rotation[1] -1.0
execute as @s at @s run tp @s ~ ~ ~ ~90 ~-90
execute as @s at @s if entity @s[tag=s_w_temp] at @e[tag=s_Terminal,tag=s_WirelessCart,sort=nearest,limit=1] run tp @s ~ ~-1 ~
