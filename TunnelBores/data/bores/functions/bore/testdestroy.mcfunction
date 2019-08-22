scoreboard players set #bores.destroy const 0
scoreboard players set #bores.chair.match const 0
scoreboard players set #bores.cont.match const 0
execute as @e[tag=bores.commandChair,distance=..5] if score @s bores.id = $bores.id const run scoreboard players set #bores.chair.match const 1
execute as @e[tag=bores.container,distance=..7] if score @s bores.id = $bores.id const run scoreboard players set #bores.cont.match const 1
execute unless score #bores.chair.match const matches 1 run scoreboard players set #bores.destroy const 1
execute unless score #bores.cont.match const matches 1 run scoreboard players set #bores.destroy const 1

execute if score #bores.destroy const matches 1 run function bores:bore/destroy