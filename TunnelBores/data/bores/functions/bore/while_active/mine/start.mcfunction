scoreboard players set #bores.minecount const 0
scoreboard players set #bores.hasmined const 0
scoreboard players set #bores.blockedhere const 0
execute if score @s direction matches 0 at @s positioned ~-2 ~ ~-0.5 run function bores:bore/while_active/mine/mine_ns
execute if score @s direction matches 2 at @s positioned ~-2 ~ ~0.5 run function bores:bore/while_active/mine/mine_ns
execute if score @s direction matches 1 at @s positioned ~0.5 ~ ~-2 run function bores:bore/while_active/mine/mine_ew
execute if score @s direction matches 3 at @s positioned ~-0.5 ~ ~-2 run function bores:bore/while_active/mine/mine_ew