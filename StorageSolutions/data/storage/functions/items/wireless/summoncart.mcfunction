execute at @s run summon minecraft:chest_minecart ^ ^1 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["s_WirelessCart","s_w_newcart","s_Terminal"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:glass"},DisplayOffset:-1,CustomName:'{"text":"Wireless Terminal"}'}
execute at @s run summon minecraft:furnace_minecart ^ ^1 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["s_WirelessCart","s_w_newcart"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:birch_trapdoor",Properties:{facing:"south",open:"true",half:"top"}},DisplayOffset:-6}
execute at @s run summon minecraft:furnace_minecart ^ ^1 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["s_WirelessCart","s_w_newcart"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:black_concrete"},DisplayOffset:-0}
execute at @s run summon minecraft:armor_stand ^ ^1 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["s_WirelessCart","s_w_newcart","s_w_temp"],ArmorItems:[{},{},{},{id:"minecraft:redstone_torch",Count:1b,tag:{TEMPITEM:{},TEMPITEMS:[]}}],Invisible:1b,Pose:{Head:[0f,-90f,0f]}}

scoreboard players add #swireless s_w_inst 1
scoreboard players operation @s s_w_inst = #swireless s_w_inst
scoreboard players operation @e[tag=s_w_newcart,sort=nearest] s_w_inst = #swireless s_w_inst
scoreboard players operation @e[tag=s_w_newcart,tag=s_Terminal,sort=nearest] s_id = @s s_id
execute as @e[tag=s_w_newcart,tag=s_Terminal,sort=nearest] at @s run function storage:items/wireless/cartcontrol

tag @e[tag=s_w_newcart] remove s_w_newcart