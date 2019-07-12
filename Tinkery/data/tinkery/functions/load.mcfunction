scoreboard objectives add TinkeryBook trigger

scoreboard objectives add t_dum0 dummy
scoreboard objectives add t_dum1 dummy
scoreboard objectives add t_dum2 dummy
scoreboard objectives add t_dum3 dummy
scoreboard objectives add t_dum4 dummy
scoreboard objectives add t_dum5 dummy
scoreboard objectives add t_dum6 dummy
scoreboard objectives add t_dum7 dummy
scoreboard objectives add t_dum8 dummy
scoreboard objectives add t_dum9 dummy

scoreboard objectives add t_air dummy
scoreboard objectives add t_preair dummy

scoreboard objectives add t_tool_used dummy
scoreboard objectives add t_damagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add t_damagetaken minecraft.custom:minecraft.damage_taken

scoreboard objectives add t_pick_wood minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add t_pick_stone minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add t_pick_iron minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add t_pick_gold minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add t_pick_diamond minecraft.used:minecraft.diamond_pickaxe

scoreboard objectives add t_axe_wood minecraft.used:minecraft.wooden_axe
scoreboard objectives add t_axe_stone minecraft.used:minecraft.stone_axe
scoreboard objectives add t_axe_iron minecraft.used:minecraft.iron_axe
scoreboard objectives add t_axe_gold minecraft.used:minecraft.golden_axe
scoreboard objectives add t_axe_diamond minecraft.used:minecraft.diamond_axe

scoreboard objectives add t_shovel_wood minecraft.used:minecraft.wooden_shovel
scoreboard objectives add t_shovel_stone minecraft.used:minecraft.stone_shovel
scoreboard objectives add t_shovel_iron minecraft.used:minecraft.iron_shovel
scoreboard objectives add t_shovel_gold minecraft.used:minecraft.golden_shovel
scoreboard objectives add t_shovel_diamond minecraft.used:minecraft.diamond_shovel

scoreboard objectives add t_sword_wood minecraft.used:minecraft.wooden_sword
scoreboard objectives add t_sword_stone minecraft.used:minecraft.stone_sword
scoreboard objectives add t_sword_iron minecraft.used:minecraft.iron_sword
scoreboard objectives add t_sword_gold minecraft.used:minecraft.golden_sword
scoreboard objectives add t_sword_diamond minecraft.used:minecraft.diamond_sword

scoreboard objectives add t_bow minecraft.used:minecraft.bow
scoreboard objectives add t_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add t_shield minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add t_trident minecraft.used:minecraft.trident
scoreboard objectives add t_elytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add t_shears minecraft.used:minecraft.shears
scoreboard objectives add t_flint_steel minecraft.used:minecraft.flint_and_steel
scoreboard objectives add t_fishing_rod minecraft.used:minecraft.fishing_rod
scoreboard objectives add t_carrot_stick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add t_horse_drop minecraft.dropped:minecraft.leather_horse_armor

scoreboard objectives add t_sneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add t_menu dummy
scoreboard objectives add t_pre dummy

scoreboard objectives add t_output dummy
scoreboard objectives add t_output_pre dummy

scoreboard objectives add t_smeltery_on dummy
scoreboard objectives add t_s_level dummy
scoreboard objectives add t_s_fuel dummy
scoreboard objectives add t_s_fuel_count dummy
scoreboard objectives add t_s_heat dummy
scoreboard objectives add t_s_current dummy
scoreboard objectives add t_s_capacity dummy
scoreboard objectives add t_s_debug dummy

scoreboard players set #tinker pack_loaded 1
function tinkery:setmats

tellraw @a ["",{"text":"Loaded "},{"text":"[Tinkery] v0.3","color":"green","clickEvent":{"action":"run_command","value":"/trigger TinkeryBook"},"hoverEvent":{"action":"show_text","value":"Click here to get the tutorial book"}},{"text":" By RE:Lapis","color":"gray"}]