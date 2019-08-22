#Down to up
execute if score #bores.hasmined const matches 0 if score #bores.vminecount const matches ..4 run function bores:bore/while_active/mine/testhere
execute if score #bores.hasmined const matches 0 if score #bores.vminecount const matches ..4 run scoreboard players add #bores.vminecount const 1
execute if score #bores.hasmined const matches 0 if score #bores.vminecount const matches ..4 positioned ~ ~1 ~ run function bores:bore/while_active/mine/minepillar