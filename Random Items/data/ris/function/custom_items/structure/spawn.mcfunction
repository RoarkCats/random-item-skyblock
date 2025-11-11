execute store result score rng ris.rng run random value 0..452


execute if score rng ris.rng matches 0..15 run function ris:custom_items/structure/group/end_city

execute if score rng ris.rng matches 16..27 run function ris:custom_items/structure/group/fossil

execute if score rng ris.rng matches 28 run place template igloo/bottom
execute if score rng ris.rng matches 29 run place template igloo/middle
execute if score rng ris.rng matches 30 run place template igloo/top

execute if score rng ris.rng matches 31 run place template pillager_outpost/feature_cage1
execute if score rng ris.rng matches 32 run place template pillager_outpost/feature_cage2
execute if score rng ris.rng matches 33 run place template pillager_outpost/feature_cage_with_allays
execute if score rng ris.rng matches 34 run place template pillager_outpost/feature_logs
execute if score rng ris.rng matches 35 run place template pillager_outpost/feature_targets
execute if score rng ris.rng matches 36 run place template pillager_outpost/feature_tent1
execute if score rng ris.rng matches 37 run place template pillager_outpost/feature_tent2
execute if score rng ris.rng matches 38 run place template pillager_outpost/watchtower
execute if score rng ris.rng matches 39 run place template pillager_outpost/watchtower_overgrown

execute if score rng ris.rng matches 40..55 run function ris:custom_items/structure/group/shipwreck

execute if score rng ris.rng matches 56..87 run function ris:custom_items/structure/group/underwater_ruin

execute if score rng ris.rng matches 88..152 run function ris:custom_items/structure/group/village

execute if score rng ris.rng matches 153..217 run function ris:custom_items/structure/group/woodland_mansion

execute if score rng ris.rng matches 218 run place template ruined_portal/giant_portal_1
execute if score rng ris.rng matches 219 run place template ruined_portal/giant_portal_2
execute if score rng ris.rng matches 220 run place template ruined_portal/giant_portal_3
execute if score rng ris.rng matches 221 run place template ruined_portal/portal_1
execute if score rng ris.rng matches 222 run place template ruined_portal/portal_2
execute if score rng ris.rng matches 223 run place template ruined_portal/portal_3
execute if score rng ris.rng matches 224 run place template ruined_portal/portal_4
execute if score rng ris.rng matches 225 run place template ruined_portal/portal_5
execute if score rng ris.rng matches 226 run place template ruined_portal/portal_6
execute if score rng ris.rng matches 227 run place template ruined_portal/portal_7
execute if score rng ris.rng matches 228 run place template ruined_portal/portal_8
execute if score rng ris.rng matches 229 run place template ruined_portal/portal_9
execute if score rng ris.rng matches 230 run place template ruined_portal/portal_10

execute if score rng ris.rng matches 231..240 run function ris:custom_items/structure/group/nether_fossils

execute if score rng ris.rng matches 241..327 run function ris:custom_items/structure/group/bastion

execute if score rng ris.rng matches 328..368 run function ris:custom_items/structure/group/ancient_city

execute if score rng ris.rng matches 369..389 run function ris:custom_items/structure/group/trail_ruins

execute if score rng ris.rng matches 390..452 run function ris:custom_items/structure/group/trial_chambers


scoreboard players set #clear_spawned_blocks ris.rng 48
function ris:custom_items/structure/clear_spawned_blocks

playsound block.anvil.land block @a ~ ~ ~ 2

kill @s[type=item]

execute on origin run advancement grant @s only ris:pieces_of_a_whole structure_block