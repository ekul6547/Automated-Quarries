execute if score @s bores.lava matches 1 run function bores:bore/while_active/mine/lava_replace
execute if score @s bores.sponge matches 1 if block ~ ~ ~ minecraft:water run function bores:bore/while_active/mine/water_sponge
execute unless block ~ ~ ~ #bores:bore_ignore run scoreboard players set #bores.blockedhere const 1
execute if score @s bores.level matches 1 unless block ~ ~ ~ #bores:level_1 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 2 unless block ~ ~ ~ #bores:level_2 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 3 unless block ~ ~ ~ #bores:level_3 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 4 unless block ~ ~ ~ #bores:level_4 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 5 unless block ~ ~ ~ #bores:level_5 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 6 unless block ~ ~ ~ #bores:level_6 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 7 unless block ~ ~ ~ #bores:level_7 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 8 unless block ~ ~ ~ #bores:level_8 run function bores:bore/while_active/mine/minehere
execute if score @s bores.level matches 9 unless block ~ ~ ~ #bores:level_9 run function bores:bore/while_active/mine/minehere