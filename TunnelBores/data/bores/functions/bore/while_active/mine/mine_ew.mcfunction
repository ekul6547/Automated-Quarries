#east or west
scoreboard players set #bores.vminecount const 0
execute if score #bores.hasmined const matches 0 if score #bores.minecount const matches ..4 run function bores:bore/while_active/mine/minepillar
execute if score #bores.hasmined const matches 0 if score #bores.minecount const matches ..4 run scoreboard players add #bores.minecount const 1
execute if score #bores.hasmined const matches 0 if score #bores.minecount const matches ..4 positioned ~ ~ ~1 run function bores:bore/while_active/mine/mine_ew