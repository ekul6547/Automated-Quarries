
execute as @s run function tinkery:damage/main
execute as @s run function tinkery:items/valve/head

execute if score @s TinkeryBook matches 1 run function tinkery:book/summonmain
execute if score @s TinkeryBook matches 2 run function tinkery:book/summonattr
execute if score @s TinkeryBook matches 3 run function tinkery:book/summontemplate
execute if score @s TinkeryBook matches 4 run function tinkery:book/summonsmelterymain
execute if score @s TinkeryBook matches 100.. run function #tinkery_data:smeltery/books/_decode
scoreboard players enable @s TinkeryBook

scoreboard players set @s t_sneaking 0