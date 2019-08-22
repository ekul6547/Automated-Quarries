data modify entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats set value {}
execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.dig byte 1 run scoreboard players get #bores.construct.digspeed const
execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.move byte 1 run scoreboard players get #bores.construct.movespeed const
execute if score #bores.construct.digspeed const matches 40.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Very Slow","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 20.. unless score #bores.construct.digspeed const matches 40.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Slow","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 15.. unless score #bores.construct.digspeed const matches 20.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Medium","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 10.. unless score #bores.construct.digspeed const matches 15.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Slightly quick","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 5.. unless score #bores.construct.digspeed const matches 10.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Fast","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 2.. unless score #bores.construct.digspeed const matches 5.. run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Very Fast","italic":false,"color":"dark_green"}'
execute if score #bores.construct.digspeed const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Speed: Fastest","italic":false,"color":"dark_green"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.level byte 1 run scoreboard players get #bores.construct.level const
execute if score #bores.construct.level const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 1","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 2 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 2","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 3 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 3","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 4 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 4","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 5 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 5","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 6 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 6","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 7 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 7","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 8 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 8","italic":false,"color":"dark_purple"}'
execute if score #bores.construct.level const matches 9 run data modify entity @s Item.tag.display.Lore append value '{"text":"Mining Level: 9","italic":false,"color":"dark_purple"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.fortune byte 1 run scoreboard players get #bores.construct.fortune const
execute if score #bores.construct.fortune const matches -1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Silk Touch","italic":false,"color":"dark_green"}'
execute if score #bores.construct.fortune const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Fortune: 1","italic":false,"color":"dark_blue"}'
execute if score #bores.construct.fortune const matches 2 run data modify entity @s Item.tag.display.Lore append value '{"text":"Fortune: 2","italic":false,"color":"dark_blue"}'
execute if score #bores.construct.fortune const matches 3 run data modify entity @s Item.tag.display.Lore append value '{"text":"Fortune: 3","italic":false,"color":"dark_blue"}'
execute if score #bores.construct.fortune const matches 4 run data modify entity @s Item.tag.display.Lore append value '{"text":"Fortune: 4","italic":false,"color":"dark_blue"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.bridge byte 1 run scoreboard players get #bores.construct.bridge const
execute if score #bores.construct.bridge const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Cobblestone Bridger","italic":false,"color":"gray"}'
execute if score #bores.construct.bridge const matches 2 run data modify entity @s Item.tag.display.Lore append value '{"text":"Gravel Bridger","italic":false,"color":"gray"}'
execute if score #bores.construct.bridge const matches 3 run data modify entity @s Item.tag.display.Lore append value '{"text":"5-wide Stone Bridger","italic":false,"color":"gray"}'
execute if score #bores.construct.bridge const matches 4 run data modify entity @s Item.tag.display.Lore append value '{"text":"5-wide Blue Ice Bridger","italic":false,"color":"gray"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.lava byte 1 run scoreboard players get #bores.construct.lava const
execute if score #bores.construct.lava const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Lava Replacer","italic":false,"color":"red"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.sponge byte 1 run scoreboard players get #bores.construct.sponge const
execute if score #bores.construct.sponge const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Spongify","italic":false,"color":"aqua"}'

execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.tele byte 1 run scoreboard players get #bores.construct.tele const
execute if score #bores.construct.tele const matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Item Teleportation","italic":false,"color":"light_purple"}'

scoreboard players set #bores.colour.gmulti const 256
scoreboard players set #bores.colour.rmulti const 65536
scoreboard players operation #bores.construct.r const %= #bores.colour.gmulti const
scoreboard players operation #bores.construct.g const %= #bores.colour.gmulti const
scoreboard players operation #bores.construct.b const %= #bores.colour.gmulti const
scoreboard players operation #bores.construct.r const *= #bores.colour.rmulti const
scoreboard players operation #bores.construct.g const *= #bores.colour.gmulti const
scoreboard players operation #bores.colour const = #bores.construct.r const
scoreboard players operation #bores.colour const += #bores.construct.g const
scoreboard players operation #bores.colour const += #bores.construct.b const
execute store result entity @s Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.color int 1 run scoreboard players get #bores.colour const