function bores:bore/while_active/spin

execute if score @s bores.age >= @s bores.max at @s run function bores:bore/while_active/mine/start
execute if score @s bores.age >= @s bores.max at @s run function bores:bore/while_active/move/start

scoreboard players operation @s bores.age %= @s bores.max
scoreboard players operation @s bores.age += $bores.ageSpeed bores.age

function bores:bore/fuel/reduce