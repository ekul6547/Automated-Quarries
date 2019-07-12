#t_dum0 - valve y
#t_dum1 - controller y
#t_dum2 - level
execute store result score #tinkery t_dum0 run data get entity @s Pos[1]
scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1
execute if score #tinkery t_dum0 <= #tinkery t_dum2 run function tinkery:blocks/smeltery/valves/perframe_2