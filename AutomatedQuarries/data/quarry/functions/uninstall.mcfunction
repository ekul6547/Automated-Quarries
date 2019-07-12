kill @e[tag=q_Block]
kill @e[tag=q_kill_uni]
#Changeable constant used for math
scoreboard objectives remove q_const
scoreboard objectives remove q_Age

scoreboard objectives remove QuarryBook

scoreboard objectives remove q_direction

scoreboard objectives remove q_sneaking
scoreboard objectives remove q_timeup

scoreboard objectives remove QuarrySlotCount
scoreboard objectives remove QuarryCount
scoreboard objectives remove QuarryColor

#Quarry Upgrades
scoreboard objectives remove QuarryFortune
scoreboard objectives remove QuarryMineStone
scoreboard objectives remove QuarryParticles
scoreboard objectives remove QuarrySpeed
scoreboard objectives remove QuarrySpeedSize
scoreboard objectives remove QuarrySlimeSize
scoreboard objectives remove QuarryIgnore

#Min and max area
scoreboard objectives remove qmin_x
scoreboard objectives remove qmin_z
scoreboard objectives remove qmax_x
scoreboard objectives remove qmax_z
#Actual block position
scoreboard objectives remove quarry_x
scoreboard objectives remove quarry_y
scoreboard objectives remove quarry_z
#The current block to mine
scoreboard objectives remove q_mine_x
scoreboard objectives remove q_mine_y
scoreboard objectives remove q_mine_z
#The place where to deposit loot
scoreboard objectives remove q_place_x
scoreboard objectives remove q_place_y
scoreboard objectives remove q_place_z


#Chunkloader
#This will be q_Age / 60 for display
scoreboard objectives remove q_Seconds

#Lock
scoreboard objectives remove q_UUIDMost
scoreboard objectives remove q_UUIDLeast

#Dampener
scoreboard objectives remove q_d_loop_start
scoreboard objectives remove q_d_index
scoreboard objectives remove q_d_sneak
scoreboard objectives remove q_d_current
scoreboard objectives remove q_d_result
scoreboard objectives remove q_d_timer
scoreboard objectives remove q_d_X
scoreboard objectives remove q_d_Z
scoreboard objectives remove q_d_in
scoreboard objectives remove q_d_pre
scoreboard objectives remove OwnerOptions
scoreboard objectives remove RequestTrigger

scoreboard players set #quarry pack_loaded -1

tellraw @a ["",{"text":"Uninstalled [Automated Quarries] v0.9","color":"white"},{"text":" by Re:Lapis","color":"gray"}]