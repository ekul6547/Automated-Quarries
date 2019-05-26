#Run if datapack is loaded
execute if score #lapis pack_loaded matches 1 run function lapis:main

execute if score #lapis pack_loaded matches -10 run function lapis:uninstall
execute if score #lapis pack_loaded matches -9..-1 run scoreboard players remove #lapis pack_loaded 1