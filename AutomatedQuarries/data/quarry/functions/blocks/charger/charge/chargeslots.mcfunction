#scoreboard players set #lapis.debug const 1
execute if data block ~ ~0.5 ~ Items[{Slot:0b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:0b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive
#scoreboard players set #lapis.debug const 0

execute if data block ~ ~0.5 ~ Items[{Slot:1b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:1b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:2b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:2b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:3b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:3b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:4b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:4b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:5b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:5b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:6b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:6b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:7b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:7b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive

execute if data block ~ ~0.5 ~ Items[{Slot:8b,Count:1b}].tag.Power run data modify block ~ ~0.5 ~ Items[{Slot:8b}].tag.ChargeActive set value 1b
execute if data block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}] run function quarry:blocks/charger/charge/charge_active
data remove block ~ ~0.5 ~ Items[{tag:{ChargeActive:1b}}].tag.ChargeActive



function quarry:blocks/charger/charge/repeateron
scoreboard players set @s q_Age 40