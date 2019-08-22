#pack_loaded codes
#0/invalid - uninstalled
#1 - installed and running
#-9..-1 - please uninstall datapack

#Run if datapack is loaded
execute if score #bores pack_loaded matches 1 run function bores:main
execute if score #lapis pack_loaded matches -7 run function bores:uninstall