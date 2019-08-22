#Close menu first, and clear for no item drops

execute as @s at @s unless entity @p[distance=..5] run function storage:items/wireless/dokill
execute as @s at @s unless score @s s_w_inst = @p[distance=..5] s_w_inst run function storage:items/wireless/dokill