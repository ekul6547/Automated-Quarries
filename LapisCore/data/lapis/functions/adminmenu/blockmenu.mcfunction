gamerule sendCommandFeedback false
tellraw @s ["",{"text":"\nBlocks","color":"dark_green"}]
tellraw @s ["",{"text":"[Workbench]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/function lapis:blocks/workbench/summon"}}]