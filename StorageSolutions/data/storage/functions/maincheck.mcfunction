#Run if datapack is loaded
execute if score #storage pack_loaded matches 1 run function storage:main

execute if score #lapis pack_loaded matches -9 run function storage:uninstall