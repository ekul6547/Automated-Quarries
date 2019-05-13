execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:0b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge0
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:1b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge1
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:2b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge2
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:3b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge3
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:4b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge4
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:5b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge5
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:6b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge6
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:7b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge7
execute as @s at @s if data block ~ ~0.5 ~ Items[{Slot:8b,Count:1b}].tag.Power run function quarry:blocks/charger/charge/charge8
execute as @s at @s run function quarry:blocks/charger/charge/repeateron
scoreboard players set @s q_Age 40