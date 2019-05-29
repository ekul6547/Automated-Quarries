scoreboard players set #lapis pack_loaded 1
datapack disable "file/LapisCore"
datapack disable "file/LapisCore v0.1.zip"
datapack disable "file/LapisCore v0.2.zip"
datapack disable "file/LapisCore v0.3.zip"
datapack disable "file/LapisCore.zip"
datapack enable "file/LapisCore" first
datapack enable "file/LapisCore.zip" first

tellraw @a ["",{"text":"\nInitial Load for ","color":"blue"},{"text":"[LapisCore] v0.4","color":"dark_blue"},{"text":" By RE:Lapis","color":"gray"}]
tellraw @a ["",{"text":"Datapacks may (re)load twice after this. This is normal.","color":"blue"}]