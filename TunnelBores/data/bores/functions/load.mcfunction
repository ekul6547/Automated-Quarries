scoreboard objectives add BoresBook trigger

scoreboard objectives add bores.age dummy
scoreboard objectives add bores.max dummy
scoreboard objectives add bores.level dummy
scoreboard objectives add bores.move dummy
scoreboard objectives add bores.id dummy
scoreboard objectives add bores.r dummy
scoreboard objectives add bores.g dummy
scoreboard objectives add bores.b dummy
scoreboard objectives add bores.x dummy
scoreboard objectives add bores.y dummy
scoreboard objectives add bores.z dummy
scoreboard objectives add bores.tele dummy
scoreboard objectives add bores.lava dummy
scoreboard objectives add bores.fortune dummy
scoreboard objectives add bores.sponge dummy
scoreboard objectives add bores.bridge dummy
scoreboard objectives add bores.fuel dummy

scoreboard players set #bores pack_loaded 1
scoreboard players set #bores.spinspeed const 100
execute unless score $bores.id bores.id matches 0.. run scoreboard players set $bores.id bores.id 1
execute unless score $bores.ageSpeed bores.age matches 0.. run scoreboard players set $bores.ageSpeed bores.age 1

tellraw @a ["",{"text":"Loaded "},{"text":"[Tunnel Bores] v0.1","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger BoresBook"},"hoverEvent":{"action":"show_text","value":"Click here to get the tutorial book"}},{"text":" By RE:Lapis","color":"gray"}]