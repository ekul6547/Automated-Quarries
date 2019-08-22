function bores:bore/storeid
execute if score @s direction matches 0 run function bores:bore/while_active/tele_carts/north
execute if score @s direction matches 1 run function bores:bore/while_active/tele_carts/east
execute if score @s direction matches 2 run function bores:bore/while_active/tele_carts/south
execute if score @s direction matches 3 run function bores:bore/while_active/tele_carts/west