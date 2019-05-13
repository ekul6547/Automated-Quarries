gamerule sendCommandFeedback false
scoreboard players enable @s OwnerOptions
tellraw @s {"text":"[Rename]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger OwnerOptions set 1"},"hoverEvent":{"action":"show_text","value":"This will rename your area to the name of the item in your main hand."}}